package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.xml.asStructure
import nl.dslconsultancy.mps.inspector.xml.processModulesXml
import nl.dslconsultancy.mps.inspector.xml.readStructureXml
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

    processModulesXml(mpsProject)

    val mpsProjectOnDisk = readMpsProject(mpsProject)

    val structure1 = mpsProjectOnDisk.mpsFiles.filter { it.isStructureModel() }.first()
    val structure1Xml = readStructureXml(structure1)
    println()
    println("structure model (path=${structure1}); top-level structural nodes:")
    println(structure1Xml.asStructure().elements.joinToString("\n"))
    println()
}

