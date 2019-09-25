package nl.dslconsultancy.mps.analyser.xml

import nl.dslconsultancy.mps.analyser.Dependency
import nl.dslconsultancy.mps.analyser.Language
import nl.dslconsultancy.mps.analyser.util.XmlDomUtil.readXml
import nl.dslconsultancy.mps.analyser.util.attribute
import nl.dslconsultancy.mps.analyser.util.firstChild
import nl.dslconsultancy.mps.analyser.util.textContents
import nl.dslconsultancy.mps.analyser.util.xPathAsNodes
import java.nio.file.Path

fun languageMetaDataXmlFromDisk(path: Path): Language {
    val xmlDoc = readXml(path)

    val root = xmlDoc.firstChild()
    return Language(
        path = path,
        name = root.attribute("namespace"),
        uuid = root.attribute("uuid"),
        languageVersion = Integer.parseInt(root.attribute("languageVersion")),
        dependencies = xmlDoc.xPathAsNodes("//language/dependencies/dependency").map {
            Dependency(
                it.attribute("reexport") == "true",
                it.textContents()
            )
        },
        modelsDir = xmlDoc.xPathAsNodes("//language/models/modelRoot[@type='default']/sourceRoot").map { it.attribute("location") }.firstOrNull() ?: "models"
    )
}

