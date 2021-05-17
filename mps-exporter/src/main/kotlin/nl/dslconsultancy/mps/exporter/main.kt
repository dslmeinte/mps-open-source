package nl.dslconsultancy.mps.exporter

import nl.dslconsultancy.mps.exporter.util.JacksonJsonUtil.writeJson
import nl.dslconsultancy.mps.exporter.xml.modelXmlFromDisk
import java.nio.file.Files
import java.nio.file.Paths
import kotlin.system.exitProcess

fun main(args: Array<String>) {
    println("MPS Exporter v0.1.0")
    if (args.isEmpty() || args[0].isEmpty()) {
        System.err.println("must provide 1 arg: the relative path to an MPS model file")
        exitProcess(1)
    }
    val modelFilePath = Paths.get(args[0])
    if (!Files.exists(modelFilePath)) {
        System.err.println("'${modelFilePath}' is not the path to a file")
        exitProcess(1)
    }
    val jsonFilePath = modelFilePath.resolveSibling(modelFilePath.fileName.toString() + ".json")
    println(jsonFilePath)
    writeJson(
        exportToJson(
            modelXmlFromDisk(modelFilePath)
        ),
        jsonFilePath
    )
}

