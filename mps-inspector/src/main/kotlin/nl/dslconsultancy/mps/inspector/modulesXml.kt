package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.inspector.JacksonUtil.readXml
import nl.dslconsultancy.mps.inspector.JacksonUtil.writeXml
import java.nio.file.Path

@JsonRootName("project")
private data class MpsProjectAsXml(

    @JacksonXmlProperty(isAttribute = true)
    val version: Int,

    val component: Component

)

private data class Component(

    @JacksonXmlProperty(isAttribute = true)
    val name: String,

    val projectModules: ProjectModules

)

private data class ProjectModules(

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


data class MpsProject(val name: String, val version: Int, val modules: List<ProjectModule>)


fun processModulesXml(mpsProjectPath: Path): MpsProject {
    val modulesXmlPath = mpsProjectPath.resolve(".mps").resolve("modules.xml")
    val modulesXml = readXml<MpsProjectAsXml>(modulesXmlPath)

    val drillDown = modulesXml.component.projectModules
    val mpsProject = MpsProject(modulesXml.component.name, modulesXml.version, drillDown.projectModules.sortedBy { it.path })

    println("found ${mpsProject.modules.size} modules in MPS project '${mpsProject.name}' with version ${mpsProject.version}")
    if (!drillDown.projectModules.map { it.path }.isSorted()) {
        println("project module entries in modules XML not sorted: sorting them automatically")
        drillDown.projectModules = drillDown.projectModules.sortedBy { it.path }
        writeXml(modulesXml, modulesXmlPath)
    }

    println("")
    println(mpsProject)
    println()

    return mpsProject
}

