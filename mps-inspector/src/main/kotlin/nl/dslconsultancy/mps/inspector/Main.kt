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

    val mpsProjectDecl = readModulesXml(mpsProject)
    println("found ${mpsProjectDecl.modules.size} modules in MPS project '${mpsProjectDecl.name}' with version ${mpsProjectDecl.version}")
    println(mpsProjectDecl)
    println()

    val mpsProjectOnDisk = readMpsProject(mpsProject)

    println("MPS-files on disk:")
    println(mpsProjectOnDisk.mpsFiles.joinToString("\n"))

    println()
    println("languages:")
    println(mpsProjectOnDisk.languages.joinToString("\n"))
}

