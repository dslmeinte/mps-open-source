package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.xml.modulesXmlPath
import nl.dslconsultancy.mps.inspector.xml.processModulesXml
import java.nio.file.Files
import java.nio.file.Paths

data class Configuration(
    val mpsProjectPath: String,
    val sortModules: Boolean?,
    val usageAnalysisPath: String?
)

fun Configuration.run() {
    val mpsProjectPath = Paths.get(mpsProjectPath)
    if (!Files.exists(modulesXmlPath(mpsProjectPath))) {
        System.err.println("'$mpsProjectPath' is not a path to an MPS project")
    }
    processModulesXml(mpsProjectPath, sortModules ?: false)

    val mpsProjectOnDisk = mpsProjectFromDisk(mpsProjectPath)

    if (usageAnalysisPath != null) {
        Files.write(
            Paths.get(usageAnalysisPath),
            usage(mpsProjectOnDisk).entries.sortedBy { it.key }.map { "${it.key};${it.value}" }
        )
        println("wrote usage analysis to '$usageAnalysisPath'")
    }

    // TODO  expand configuration to trigger generation in a parametrized way
    /*
    val structure1 = modelXmlFromDisk(mpsProjectOnDisk.mpsFiles.first { it.isStructureModel() }).asStructure()
    val genPath = Paths.get("src/generated")
    writeJson(structure1, genPath.resolve("export.json"))
    Files.write(genPath.resolve("kotlin.kt"), generateFor(structure1))
     */
}

