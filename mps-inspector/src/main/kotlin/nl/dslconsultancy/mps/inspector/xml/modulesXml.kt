package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.inspector.MpsProject
import nl.dslconsultancy.mps.inspector.render
import nl.dslconsultancy.mps.inspector.util.JacksonUtil.readXml
import nl.dslconsultancy.mps.inspector.util.JacksonUtil.writeXml
import nl.dslconsultancy.mps.inspector.util.isSorted
import java.nio.file.Path

@JsonRootName("project")
private data class MpsProjectAsXml(

    @JacksonXmlProperty(isAttribute = true)
    val version: Int,

    val component: ComponentXml

)

private data class ComponentXml(

    @JacksonXmlProperty(isAttribute = true)
    val name: String,

    val projectModules: ProjectModulesXml

)

private data class ProjectModulesXml(

    @set:JsonProperty("modulePath")
    var projectModules: List<ProjectModule> = ArrayList()

)

data class ProjectModule(

    @JacksonXmlProperty(isAttribute = true)
    val path: String,

    @JacksonXmlProperty(isAttribute = true)
    val folder: String

)
// TODO  project to a proper domain data class

// Note: we could use @JsonAlias and such to reduce to 2 data classes (see https://medium.com/@foxjstephen/how-to-actually-parse-xml-in-java-kotlin-221a9309e6e8)


fun processModulesXml(mpsProjectPath: Path): MpsProject {
    val modulesXmlPath = mpsProjectPath.resolve(".mps").resolve("modules.xml")
    val modulesXml = readXml<MpsProjectAsXml>(modulesXmlPath)

    val drillDown = modulesXml.component.projectModules
    val mpsProject = MpsProject(
        modulesXml.component.name,
        modulesXml.version,
        drillDown.projectModules.sortedBy { it.path }
    )

    println(mpsProject.render())
    if (!drillDown.projectModules.map { it.path }.isSorted()) {
        println("project module entries in modules XML not sorted: sorting them automatically")
        drillDown.projectModules = drillDown.projectModules.sortedBy { it.path }
        writeXml(modulesXml, modulesXmlPath)
    }

    return mpsProject
}

