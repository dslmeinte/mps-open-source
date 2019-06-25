package nl.dslconsultancy.mps.inspector.xml

import nl.dslconsultancy.mps.inspector.Dependency
import nl.dslconsultancy.mps.inspector.Language
import nl.dslconsultancy.mps.inspector.util.XmlDomUtil.readXml
import nl.dslconsultancy.mps.inspector.util.attribute
import nl.dslconsultancy.mps.inspector.util.firstChild
import nl.dslconsultancy.mps.inspector.util.textContents
import nl.dslconsultancy.mps.inspector.util.xPathAsNodes
import java.nio.file.Path

fun readLanguageFile(path: Path): Language {
    val xmlDoc = readXml(path)

    val root = xmlDoc.firstChild()
    return Language(
        name = root.attribute("namespace"),
        uuid = root.attribute("uuid"),
        languageVersion = Integer.parseInt(root.attribute("languageVersion")),
        dependencies = xmlDoc.xPathAsNodes("//language/dependencies/dependency").map {
            Dependency(
                it.attribute("reexport") == "true",
                it.textContents()
            )
        }
    )
}

