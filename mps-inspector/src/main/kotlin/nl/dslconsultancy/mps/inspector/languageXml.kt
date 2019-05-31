package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.XmlDomUtil.readXml
import java.nio.file.Files
import java.nio.file.Path

data class Language(
    val name: String,
    val uuid: String,
    val languageVersion: Int,
    val dependencies: List<Dependency>
)

data class Dependency(
    val reexport: Boolean,
    val dependencyId: String
)


fun processMpsFiles(mpsProject: Path) {
    println("all true MPS-files:")
    Files.walk(mpsProject)
        .filter { isTrueMpsFile(it) }
        .sorted()
        .forEach { println(it) }
    println()

    println("languages:")
    Files.walk(mpsProject)
        .filter { it.toString().endsWith(".mpl") }
        .map { readLanguageFile(it) }
        .forEach { println(it) }
}


fun isTrueMpsFile(path: Path): Boolean {
    val fileName = path.toString()
    return fileName.endsWith(".mpl") || fileName.endsWith(".msd") || (fileName.endsWith(".mps") && !fileName.endsWith("aspectcps-descriptorclasses.mps"))
}


fun readLanguageFile(path: Path): Language {
    val xmlDoc = readXml(path)

    val root = xmlDoc.firstChild()
    return Language(
        root.attribute("namespace"),
        root.attribute("uuid"),
        Integer.parseInt(root.attribute("languageVersion")),
        xmlDoc.xPathAsNodes("//language/dependencies/dependency").map { Dependency(it.attribute("reexport").equals("true"), it.textContents()) }
    )
}

