package nl.dslconsultancy.mps.exporter

import nl.dslconsultancy.mps.exporter.util.JacksonJsonUtil.writeJson
import nl.dslconsultancy.mps.exporter.xml.modelXmlFromDisk
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import kotlin.system.exitProcess

fun main(args: Array<String>) {
    println("MPS Exporter v0.1.0")

    var outputArg: String? = null
    val fileArgs = ArrayList<String>()
    var nextIsOutputPath = false
    args.forEach {
        when {
            nextIsOutputPath -> {
                outputArg = it
                nextIsOutputPath = false
            }
            it == "-d" -> nextIsOutputPath = true
            else -> fileArgs += it
        }
    }

    if (fileArgs.isEmpty()) {
        System.err.println("must provide at least one argument that's a relative path to an MPS model file")
        exitProcess(1)
    }

    var outputPath: Path? = null
    if (outputArg != null) {
        outputPath = Paths.get(outputArg!!)
        if (!Files.isDirectory(outputPath!!)) {
            System.err.println("'$outputPath' is not the path to a directory")
            exitProcess(1)
        } else {
            println("(configured '$outputPath' for output)")
        }
    }

    fileArgs.map { Paths.get(it) }.forEach { exportOne(it, outputPath) }
}

private fun exportOne(modelFilePath: Path, outputPath: Path?) {
    if (!Files.exists(modelFilePath)) {
        System.err.println("'$modelFilePath' is not the path to a file - skipping...")
        return
    }
    val jsonFilePath = (outputPath ?: modelFilePath.parent).resolve(modelFilePath.fileName.toString() + ".json")
    writeJson(
        exportToJson(
            modelXmlFromDisk(modelFilePath)
        ),
        jsonFilePath
    )
    println("exported '$modelFilePath' -> '$jsonFilePath'")
}

