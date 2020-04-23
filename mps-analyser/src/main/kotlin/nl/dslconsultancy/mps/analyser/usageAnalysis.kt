package nl.dslconsultancy.mps.analyser

import nl.dslconsultancy.mps.analyser.util.CountingMap
import nl.dslconsultancy.mps.analyser.util.asCsvRow
import nl.dslconsultancy.mps.analyser.util.combine
import nl.dslconsultancy.mps.analyser.util.csvRowOf
import nl.dslconsultancy.mps.analyser.xml.*

/*
 * CountingMap is keyed with a fully-qualified name of a concept or a feature.
 * We don't key on MetaConceptXml or MetaFeatureXml because we're currently not 100%
 * sure that their .id's are always the same for the same FQname.
 */

fun usage(mpsProjectOnDisk: MpsProjectOnDisk): CountingMap<String> {
    val pathsModelFiles = mpsProjectOnDisk.mpsFiles.filter { mpsFileType(it) == MpsFileType.Model }
    val modelFiles = pathsModelFiles.map { modelXmlFromDisk(it) }

    // provide 0 counts for all concepts and their features from own, imported languages, not just (non-0 counts for) the used ones:
    val namesAllImportedLanguages = modelFiles.flatMap { mf -> mf.namesImportedLanguages() }.distinct()
    val namesOwnImportedLanguages = mpsProjectOnDisk.languages.map { it.name }.intersect(namesAllImportedLanguages)
    val ownImportedLanguages = namesOwnImportedLanguages.flatMap { n -> mpsProjectOnDisk.languages.filter { l -> l.name == n } }
    val allStructureOfOwnImportedLanguages = ownImportedLanguages.flatMap { l ->
        l.structure().concepts().flatMap { concept ->
            val fqPrefix = "${l.name}.${concept.name}"
            (concept.features.map { f -> "$fqPrefix#${f.name}" }) + fqPrefix
        }
    }.map { it to 0 }.toMap()

    // FIXME  this is not so helpful for languages that are not part of the project!

    return modelFiles
        .map { usage(it) }
        .reduce { l, r -> l.combine(r) }
        .combine(allStructureOfOwnImportedLanguages)
}

private fun usage(modelXml: ModelXml): CountingMap<String> {
    val metaConcepts = modelXml.metaConcepts()
    val allNodes = modelXml.nodes.flatMap { it.allNodes() }
    val result = hashMapOf<String, Int>()

    // count occurrences of concepts:
    allNodes.map { it.concept }
        .groupingBy { it }
        .eachCount()
        .map { (key, value) -> metaConcepts.byIndex(key).name.withoutStructurePathFragment() to value }.toMap(result)

    // count occurrences of features (i.e., the role that a node plays):
    listOf(allNodes.mapNotNull { it.role })
        .flatten()
        .groupingBy { it }
        .eachCount()
        .map { (key, value) ->
            val featureByIndex = metaConcepts.featureByIndex(key)
            "${featureByIndex.second.name.withoutStructurePathFragment()}#${featureByIndex.first.name}" to value
        }.toMap(result)

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
    val elements = languages
        .filter { l -> l.name == languageName }
        .flatMap { l -> l.structure().concepts().filter { e -> e.name == elementName } }
    if (elements.isEmpty()) {
        return listOf(key, value.toString(), "?")
    }
    val thing = if (parts.size == 1) elements.first() else elements.first().features.find { f -> f.name == parts[1]}!!
    return listOf(key, value.toString(), thing.deprecated.toString())
}

