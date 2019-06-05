package nl.dslconsultancy.mps.inspector.xml

import nl.dslconsultancy.mps.inspector.util.XmlDomUtil.readXml
import nl.dslconsultancy.mps.inspector.util.attribute
import nl.dslconsultancy.mps.inspector.util.firstChild
import nl.dslconsultancy.mps.inspector.util.textContents
import nl.dslconsultancy.mps.inspector.util.xPathAsNodes
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


fun readLanguageFile(path: Path): Language {
    val xmlDoc = readXml(path)

    val root = xmlDoc.firstChild()
    return Language(
        root.attribute("namespace"),
        root.attribute("uuid"),
        Integer.parseInt(root.attribute("languageVersion")),
        xmlDoc.xPathAsNodes("//language/dependencies/dependency").map {
            Dependency(
                it.attribute("reexport") == "true",
                it.textContents()
            )
        }
    )
}

