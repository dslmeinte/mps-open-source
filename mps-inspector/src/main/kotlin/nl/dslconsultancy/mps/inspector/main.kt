package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.core.JsonProcessingException
import com.fasterxml.jackson.databind.exc.MismatchedInputException
import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil.jsonFromString
import java.nio.file.Files
import java.nio.file.Paths
import kotlin.system.exitProcess

fun main(args: Array<String>) {
    if (args.isEmpty() || args[0].isEmpty()) {
        System.err.println("must provide 1 arg: the relative path to a JSON file with the configuration, or '-' in which case you have to provide the JSON configuration on stdin")
        exitProcess(1)
    }
    val config = when (args[0]) {
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
    }.joinToString("\n")    // put whitespace back in
    try {
        jsonFromString<ConfigurationItem>(config).run()
    } catch (e: MismatchedInputException) {
        jsonFromString<List<ConfigurationItem>>(config).forEach { it.run() }
    } catch (e: JsonProcessingException) {
        System.err.println("could not parse config input as JSON according to the configuration schema: check with JSON schema for it")
    }
}

