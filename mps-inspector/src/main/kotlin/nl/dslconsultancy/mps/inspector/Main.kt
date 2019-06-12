package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil.readJson
import nl.dslconsultancy.mps.inspector.xml.modulesXmlPath
import nl.dslconsultancy.mps.inspector.xml.processModulesXml
import java.nio.file.Files
import java.nio.file.Paths

fun main(args: Array<String>) {
    if (args.isEmpty() || args[0].isEmpty()) {
        System.err.println("must provide 1 arg: the relative path to a JSON configuration file")
        System.exit(1)
    }
    // TODO  also accept - and then read stdin
    val configPath = Paths.get(args[0])
    if (!Files.exists(configPath)) {
        System.err.println("1st argument is not the relative path to a JSON configuration file")
        System.exit(1)
    }

    val config = readJson<Configuration>(configPath)
    val mpsProjectPath = Paths.get(config.mpsProjectPath)
    if (!Files.exists(modulesXmlPath(mpsProjectPath))) {
        System.err.println("'${config.mpsProjectPath}' is not a path to an MPS project")
    }
    processModulesXml(mpsProjectPath, config.sortModules ?: false)

    val mpsProjectOnDisk = readMpsProject(mpsProjectPath)

    if (config.usageAnalysisPath != null) {
        Files.write(Paths.get(config.usageAnalysisPath), usageAnalysis(mpsProjectOnDisk).entries.sortedBy { it.key }.map { "${it.key};${it.value}" })
        println("wrote usage analysis")
    }

    /*
    val structure1 = readModelXml(mpsProjectOnDisk.mpsFiles.first { it.isStructureModel() }).asStructure()
    val genPath = Paths.get("src/generated")
    writeJson(structure1, genPath.resolve("export.json"))
    Files.write(genPath.resolve("kotlin.kt"), generateFor(structure1))
     */
}

data class Configuration(
    val mpsProjectPath: String,
    val sortModules: Boolean?,
    val usageAnalysisPath: String?
)

