package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil.jsonFromDisk
import java.nio.file.Files
import java.nio.file.Paths

fun main(args: Array<String>) {
    if (args.isEmpty() || args[0].isEmpty()) {
        System.err.println("must provide 1 arg: the relative path to a JSON configuration file")
        System.exit(1)
    }
    // TODO  also accept - and then read stdin?
    val configPath = Paths.get(args[0])
    if (!Files.exists(configPath)) {
        System.err.println("1st argument is not the relative path to a JSON configuration file")
        System.exit(1)
    }

    jsonFromDisk<List<Configuration>>(configPath).forEach { it.run() }
}

