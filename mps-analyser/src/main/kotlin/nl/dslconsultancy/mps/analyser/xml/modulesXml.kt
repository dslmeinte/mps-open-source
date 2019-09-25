package nl.dslconsultancy.mps.analyser.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.analyser.MpsProject
import nl.dslconsultancy.mps.analyser.render
import nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil.writeXml
import nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil.xmlFromDisk
import nl.dslconsultancy.mps.analyser.util.div
import nl.dslconsultancy.mps.analyser.util.isSorted
import nl.dslconsultancy.mps.analyser.util.lastSection
import java.nio.file.Path

@JsonRootName("project")
private data class MpsProjectAsXml(

    @JacksonXmlProperty(isAttribute = true)
    val version: Int,

    val component: ComponentXml

)

private data class ComponentXml(

    val projectModules: ProjectModulesXml

)

private data class ProjectModulesXml(

    @set:JsonProperty("modulePath")
    var projectModules: List<ProjectModule> = emptyList()

)

data class ProjectModule(

    @JacksonXmlProperty(isAttribute = true)
    val path: String,

    @JacksonXmlProperty(isAttribute = true)
    val folder: String

)
// TODO  project to a proper domain data class instead of a non-elegant (de-)serialization class

// Note: we could use @JsonAlias and such to reduce to 2 data classes (see https://medium.com/@foxjstephen/how-to-actually-parse-xml-in-java-kotlin-221a9309e6e8)


fun processModulesXml(mpsProjectPath: Path, sortModules: Boolean): MpsProject {
    val modulesXmlPath = modulesXmlPath(mpsProjectPath)
    val modulesXml = xmlFromDisk<MpsProjectAsXml>(modulesXmlPath)

    val drillDown = modulesXml.component.projectModules
    val mpsProject = MpsProject(
        mpsProjectPath.lastSection(),
        modulesXml.version,
        drillDown.projectModules.sortedBy { it.path }
    )

    println(mpsProject.render())
    if (!drillDown.projectModules.map { it.path }.isSorted()) {
        if (sortModules) {
            println("project module entries in modules XML not sorted: sorting them automatically")
            drillDown.projectModules = drillDown.projectModules.sortedBy { it.path }
            writeXml(modulesXml, modulesXmlPath)
        } else {
            println("project module entries in modules XML not sorted: add '\"sortModules\": true' to configuration JSON to sort them automatically")
        }
    }

    return mpsProject
}

fun modulesXmlPath(mpsProjectPath: Path): Path = mpsProjectPath/".mps"/"modules.xml"

