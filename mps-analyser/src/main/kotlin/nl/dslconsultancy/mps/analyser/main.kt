package nl.dslconsultancy.mps.analyser

import java.nio.file.Files
import java.nio.file.Paths
import kotlin.system.exitProcess

fun main(args: Array<String>) {
    println("MPS Analyser v0.2.3")
    if (args.isEmpty() || args[0].isEmpty()) {
        System.err.println("must provide 1 arg: the relative path to a JSON file with the configuration, or '-' in which case you have to provide the JSON configuration on stdin")
        exitProcess(1)
    }
    when (args[0]) {
        "-" -> {
            println("reading JSON configuration from stdin")
            generateSequence(::readLine)
        }
        else -> {
            val configPath = Paths.get(args[0])
            if (!Files.exists(configPath)) {
                System.err.println("1st argument is not the relative path to a JSON configuration file")
                exitProcess(1)
            }
            Files.readAllLines(configPath).asSequence()
        }
    }.joinToString("\n").asConfiguration().forEach { it.run() }
}

