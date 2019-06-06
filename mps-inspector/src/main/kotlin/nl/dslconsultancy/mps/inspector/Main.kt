package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil.readJson
import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil.writeJson
import nl.dslconsultancy.mps.inspector.xml.asStructure
import nl.dslconsultancy.mps.inspector.xml.processModulesXml
import nl.dslconsultancy.mps.inspector.xml.readStructureXml
import java.nio.file.Files
import java.nio.file.Paths

fun main(args: Array<String>) {
    if (args.isEmpty() || args[0].isEmpty()) {
        System.err.println("must provide 1 arg: the relative path to a JSON configuration file")
        System.exit(1)
    }
    val configPath = Paths.get(args[0])
    if (!Files.exists(configPath)) {
        System.err.println("1st argument is not the relative path to a JSON configuration file")
        System.exit(1)
    }

    val config = readJson<Configuration>(configPath)
    val mpsProjectPath = Paths.get(config.mpsProjectPath)
    processModulesXml(mpsProjectPath)

    val mpsProjectOnDisk = readMpsProject(mpsProjectPath)

    val structure1 = readStructureXml(mpsProjectOnDisk.mpsFiles.first { it.isStructureModel() }).asStructure()
    val genPath = Paths.get("src/generated")
    writeJson(structure1, genPath.resolve("export.json"))
    Files.write(genPath.resolve("kotlin.kt"), generateFor(structure1))
}


data class Configuration(val mpsProjectPath: String)

