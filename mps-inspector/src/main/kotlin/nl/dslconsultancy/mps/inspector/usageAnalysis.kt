package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.CountingMap
import nl.dslconsultancy.mps.inspector.util.combine
import nl.dslconsultancy.mps.inspector.util.csvRowOf
import nl.dslconsultancy.mps.inspector.util.withHeader
import nl.dslconsultancy.mps.inspector.xml.*

fun usage(mpsProjectOnDisk: MpsProjectOnDisk): CountingMap<String> {
    val pathsModelFiles = mpsProjectOnDisk.mpsFiles
        .filter { mpsFileType(it) == MpsFileType.Model }
    val modelFiles = pathsModelFiles.map { modelXmlFromDisk(it) }
    val namesAllImportedLanguages = modelFiles.flatMap { mf -> mf.dependencies?.importedLanguages?.map { il -> il.name } ?: emptyList() }.distinct()
    val namesOwnImportedLanguages = mpsProjectOnDisk.languages.map { it.name }.intersect(namesAllImportedLanguages)
    val ownImportedLanguages = namesOwnImportedLanguages.flatMap { n -> mpsProjectOnDisk.languages.filter { l -> l.name == n } }
    val allStructureOfOwnImportedLanguages = ownImportedLanguages.flatMap { l ->
        val elements = l.structure().elements
        listOf(elements.map { e -> "${l.name}.structure.${e.name}" }, elements.flatMap { e -> e.features.map { f -> "${l.name}.structure.#${f.name}" } }).flatten()
    }.map { it to 0 }.toMap()
    return modelFiles
        .map { usage(it) }
        .reduce { l, r -> l.combine(r) }
        .combine(allStructureOfOwnImportedLanguages)
}

private fun usage(modelXml: ModelXml): CountingMap<String> {
    val metaConcepts = modelXml.metaConcepts()
    val allNodes = modelXml.nodes.flatMap { it.allNodes() }
    val result = hashMapOf<String, Int>()
    allNodes.map { it.concept }
        .groupingBy { it }
        .eachCount()
        .map { metaConcepts.byIndex(it.key).name to it.value }.toMap(result)
    listOf(allNodes.mapNotNull { it.role })
        .flatten()
        .groupingBy { it }
        .eachCount()
        .map { metaConcepts.featureByIndex(it.key).fullName() to it.value }.toMap(result)
    return result
}


fun <T> CountingMap<T>.asCsvLines(): Iterable<String> =
    entries
        .sortedBy { it.key.toString() }
        .map { csvRowOf(it.key.toString(), it.value) }
        .withHeader(csvRowOf("concept(#feature)", "\"number of usages\""))

