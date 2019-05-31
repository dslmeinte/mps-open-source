package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.inspector.JacksonUtil.readXml
import nl.dslconsultancy.mps.inspector.JacksonUtil.writeXml
import java.nio.file.Path

@JsonRootName("project")
data class MpsProjectAsXml(

    @JacksonXmlProperty(isAttribute = true)
    val version: Int,

    val component: Component

)

data class Component(

    @JacksonXmlProperty(isAttribute = true)
    val name: String,

    val projectModules: ProjectModules

)

data class ProjectModules(

    @set:JsonProperty("modulePath")
    var projectModules: List<ProjectModule> = ArrayList()

)

data class ProjectModule(

    @JacksonXmlProperty(isAttribute = true)
    val path: String,

    @JacksonXmlProperty(isAttribute = true)
    val folder: String

)

// Note: we could use @JsonAlias and such to reduce to 2 data classes (see https://medium.com/@foxjstephen/how-to-actually-parse-xml-in-java-kotlin-221a9309e6e8)


fun processModulesXml(mpsProject: Path) {
    val modulesXmlPath = mpsProject.resolve(".mps").resolve("modules.xml")
    val modulesXml = readXml<MpsProjectAsXml>(modulesXmlPath)
    val drillDown = modulesXml.component.projectModules
    println("found ${drillDown.projectModules.size} modules in MPS project '${modulesXml.component.name}'")
    println()

    drillDown.projectModules = drillDown.projectModules.sortedBy { it.path }
    writeXml(modulesXml, modulesXmlPath)
}

