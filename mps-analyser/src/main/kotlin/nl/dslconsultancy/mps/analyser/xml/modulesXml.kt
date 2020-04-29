package nl.dslconsultancy.mps.analyser.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.analyser.MpsProject
import nl.dslconsultancy.mps.analyser.modulesXmlPath
import nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil.xmlFromDisk
import nl.dslconsultancy.mps.analyser.util.lastSection
import java.nio.file.Path


/**
 * Holds a representation of the `modules.xml` file located under `.mps/` in an MPS project.
 */
@JsonRootName("project")
data class ModulesXml(

    @JacksonXmlProperty(isAttribute = true)
    val version: Int,

    val component: ComponentXml

)

data class ComponentXml(

    val projectModules: ProjectModulesXml

)

data class ProjectModulesXml(

    @set:JsonProperty("modulePath")
    var projectModules: List<ProjectModuleXml> = emptyList()

)

data class ProjectModuleXml(

    @JacksonXmlProperty(isAttribute = true)
    val path: String,

    @JacksonXmlProperty(isAttribute = true)
    val folder: String

)
// TODO  project to a proper domain data class instead of a non-elegant (de-)serialization class

// Note: we could use @JsonAlias and such to reduce to 2 data classes (see https://medium.com/@foxjstephen/how-to-actually-parse-xml-in-java-kotlin-221a9309e6e8)


/**
 * Reads a modules XML file in the MPS project under the given path.
 * @return a [representation of the modules XML file][MpsProject]
 */
fun modulesXmlIn(mpsProjectPath: Path): MpsProject {
    val modulesXml = xmlFromDisk<ModulesXml>(modulesXmlPath(mpsProjectPath))

    return MpsProject(
        mpsProjectPath.lastSection(),
        mpsProjectPath,
        modulesXml.version,
        modulesXml.component.projectModules.projectModules.sortedBy { it.path },
        modulesXml
    )
}

