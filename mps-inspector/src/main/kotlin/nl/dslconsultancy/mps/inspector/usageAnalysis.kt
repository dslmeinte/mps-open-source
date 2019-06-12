package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.xml.all
import nl.dslconsultancy.mps.inspector.xml.byIndex
import nl.dslconsultancy.mps.inspector.xml.metaConcepts
import nl.dslconsultancy.mps.inspector.xml.readModelXml
import java.nio.file.Path

fun usageAnalysis(mpsProjectOnDisk: MpsProjectOnDisk): UsageAnalysis =
    mpsProjectOnDisk.mpsFiles.filter { it.mpsFileType() == MpsFileType.Model }.map { usageAnalysis(it) }.reduce { l, r -> l.combine(r) }

fun usageAnalysis(modelPath: Path): UsageAnalysis {
    val modelXml = readModelXml(modelPath)
    val metaConcepts = modelXml.metaConcepts()
    return modelXml.nodes.flatMap { it.all() }.map { it.concept }.groupingBy { it }.eachCount().map { metaConcepts.byIndex(it.key).name to it.value }.toMap()
}


fun UsageAnalysis.combine(other: UsageAnalysis): UsageAnalysis {
    val map = hashMapOf<String, Int>()
    this.toMap(map)
    other.entries.forEach {
        map += it.key to (map[it.key] ?: 0) + it.value
    }
    return map
}

typealias UsageAnalysis = Map<String, Int>

