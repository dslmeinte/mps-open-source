package nl.dslconsultancy.mps.inspector

import java.nio.file.Files
import java.nio.file.Paths

fun main(args: Array<String>) {
    if (args.isEmpty() || args[0].isEmpty()) {
        System.err.println("must provide 1 arg: the relative path to an MPS project directory")
        System.exit(1)
    }
    val mpsProject = Paths.get(args[0])
    if (!Files.exists(mpsProject)) {
        System.err.println("1st argument is not the relative path to an MPS project directory")
        System.exit(1)
    }
    val modulesXml = Files.readAllLines(mpsProject.resolve(".mps").resolve("modules.xml"))
    println("found ${modulesXml.size - 7} modules in MPS project")
}

