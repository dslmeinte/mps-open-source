package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.xml.*
import java.nio.file.Path

fun usage(mpsProjectOnDisk: MpsProjectOnDisk): CountingMap =
    mpsProjectOnDisk.mpsFiles.filter { it.mpsFileType() == MpsFileType.Model }.map { usage(it) }.reduce { l, r -> l.combine(r) }

fun usage(modelPath: Path): CountingMap {
    val modelXml = readModelXml(modelPath)
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


typealias CountingMap = Map<String, Int>

fun CountingMap.combine(other: CountingMap): CountingMap {
    val map = hashMapOf<String, Int>()
    this.toMap(map)
    other.entries.forEach {
        map += it.key to ((other[it.key] ?: 0) + it.value)
    }
    return map
}

