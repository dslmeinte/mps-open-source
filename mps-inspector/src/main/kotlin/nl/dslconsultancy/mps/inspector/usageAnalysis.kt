package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.withHeader
import nl.dslconsultancy.mps.inspector.xml.*
import java.nio.file.Path

fun usage(mpsProjectOnDisk: MpsProjectOnDisk): CountingMap =
    mpsProjectOnDisk.mpsFiles
        .filter { mpsFileType(it) == MpsFileType.Model }
        .map { usage(it) }
        .reduce(CountingMap::combine)

private fun usage(modelPath: Path): CountingMap {
    val modelXml = modelXmlFromDiskSafe(modelPath) ?: return emptyMap()
    // (Using S(t)AX should be much more efficient.)
    val metaConcepts = modelXml.metaConcepts()
    val allNodes = modelXml.nodes.flatMap { it.allNodes() }
    val result = hashMapOf<String, Int>()
    allNodes.map { it.concept }
        .groupingBy { it }.eachCount()
        .map { metaConcepts.byIndex(it.key).name to it.value }.toMap(result)
    listOf(allNodes.mapNotNull { it.role })
        .flatten()
        .groupingBy { it }.eachCount()
        .map { metaConcepts.featureByIndex(it.key).fullName() to it.value }.toMap(result)
    return result
}

private fun modelXmlFromDiskSafe(modelPath: Path): ModelXml? =
    try {
        modelXmlFromDisk(modelPath)
    } catch (e: Exception) {
        System.err.println("could not read '$modelPath' as MPS model XML due to: ${e.message}")
        e.printStackTrace(System.err)
        System.err.println()
        null
    }


typealias CountingMap = Map<String, Int>

fun CountingMap.combine(other: CountingMap): CountingMap {
    val map = hashMapOf<String, Int>()
    toMap(map)
    other.entries.forEach {
        map += it.key to ((other[it.key] ?: 0) + it.value)
    }
    return map
}


fun CountingMap.asCsvLines(): Iterable<String> =
    entries.sortedBy { it.key }.map { "${it.key};${it.value}" }.withHeader("concept(#feature),\"number of usages\"")

