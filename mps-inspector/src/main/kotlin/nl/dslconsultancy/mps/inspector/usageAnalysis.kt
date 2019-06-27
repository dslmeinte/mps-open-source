package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.CountingMap
import nl.dslconsultancy.mps.inspector.util.asCsvRow
import nl.dslconsultancy.mps.inspector.util.combine
import nl.dslconsultancy.mps.inspector.util.csvRowOf
import nl.dslconsultancy.mps.inspector.xml.*

fun usage(mpsProjectOnDisk: MpsProjectOnDisk): CountingMap<String> {
    val pathsModelFiles = mpsProjectOnDisk.mpsFiles
        .filter { mpsFileType(it) == MpsFileType.Model }
    val modelFiles = pathsModelFiles.map { modelXmlFromDisk(it) }

    val namesAllImportedLanguages = modelFiles.flatMap { mf -> mf.namesImportedLanguages() }.distinct()
    val namesOwnImportedLanguages = mpsProjectOnDisk.languages.map { it.name }.intersect(namesAllImportedLanguages)
    val ownImportedLanguages = namesOwnImportedLanguages.flatMap { n -> mpsProjectOnDisk.languages.filter { l -> l.name == n } }

    val allStructureOfOwnImportedLanguages = ownImportedLanguages.flatMap { l ->
        val elements = l.structure().elements
        elements.flatMap { e ->
            val fqPrefix = "${l.name}.${e.name}"
            (e.features.map { f -> "$fqPrefix#${f.name}" }) + fqPrefix
        }
    }.map { it to 0 }.toMap()

    return modelFiles
        .map { usage(it) }
        .reduce { l, r -> l.combine(r) }
        .combine(allStructureOfOwnImportedLanguages)
}

// TODO  key on join(MetaConceptXml, MetaFeatureXml) instead of String
private fun usage(modelXml: ModelXml): CountingMap<String> {
    val metaConcepts = modelXml.metaConcepts()
    val allNodes = modelXml.nodes.flatMap { it.allNodes() }
    val result = hashMapOf<String, Int>()
    allNodes.map { it.concept }
        .groupingBy { it }
        .eachCount()
        .map { metaConcepts.byIndex(it.key).name.withoutStructurePathFragment() to it.value }.toMap(result)
    listOf(allNodes.mapNotNull { it.role })
        .flatten()
        .groupingBy { it }
        .eachCount()
        .map { metaConcepts.featureByIndex(it.key).fullName().withoutStructurePathFragment() to it.value }.toMap(result)
    return result
}

private fun String.withoutStructurePathFragment(): String = this.replace(".structure", "")

fun CountingMap<String>.asCsvLines(mpsProjectOnDisk: MpsProjectOnDisk): Iterable<String> =
    listOf(csvRowOf("concept(#feature)", "\"number of usages\"")) +
        entries
            .sortedBy { it.key }
            .map { it.asRow(mpsProjectOnDisk.languages).asCsvRow() }


private fun Map.Entry<String, Int>.asRow(languages: List<Language>): Iterable<String> {
    val parts = key.split('#')
    val index = parts[0].lastIndexOf('.')
    val languageName = parts[0].substring(0, index)
    val elementName = parts[0].substring(index + 1)
    val elements = languages.filter { l -> l.name == languageName }.flatMap { l -> l.structure().elements.filter { e -> e.name == elementName } }
    if (elements.isEmpty()) {
        return listOf(key, value.toString(), "?")
    }
    val thing = if (parts.size == 1) elements.first() else elements.first().features.find { f -> f.name == parts[1]}!!
    return listOf(key, value.toString(), thing.deprecated.toString())
}

