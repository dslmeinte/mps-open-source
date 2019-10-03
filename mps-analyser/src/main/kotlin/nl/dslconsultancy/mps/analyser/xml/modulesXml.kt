package nl.dslconsultancy.mps.analyser.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil.writeXml
import nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil.xmlFromDisk
import nl.dslconsultancy.mps.analyser.util.div
import nl.dslconsultancy.mps.analyser.util.isSorted
import nl.dslconsultancy.mps.analyser.util.lastSection
import java.nio.file.Path


/**
 * Holds a representation of the modules.xml file located under .mps/ in an MPS project.
 */
@JsonRootName("project")
data class MpsProjectAsXml(

    @JacksonXmlProperty(isAttribute = true)
    val version: Int,

    val component: ComponentXml

)

data class ComponentXml(

    val projectModules: ProjectModulesXml

)

data class ProjectModulesXml(

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


/**
 * Cleaner representation of the modules XML file.
 */
data class ModulesXml(
    val name: String,
    val mpsProjectPath: Path,
    val version: Int,
    val modules: List<ProjectModule>,
    // TODO  use projected ProjectModule instances instead of instances of a class intended for XML deserialization
    val originalXml: MpsProjectAsXml
)

/**
 * Reads a modules XML file in the MPS project under the given path.
 * @return a representation of the modules XML file
 */
fun readModulesXmlIn(mpsProjectPath: Path): ModulesXml {
    val modulesXml = xmlFromDisk<MpsProjectAsXml>(modulesXmlPath(mpsProjectPath))

    return ModulesXml(
        mpsProjectPath.lastSection(),
        mpsProjectPath,
        modulesXml.version,
        modulesXml.component.projectModules.projectModules.sortedBy { it.path },
        modulesXml
    )
}


/**
 * @return a short description of the modules XML file.
 */
fun ModulesXml.shortDescription(): String = "MPS project '$name' (version=$version) has ${modules.size} modules"


/**
 * Sorts the modules mentioned in the modules XML file in alphabetical order,
 * and writes the file back.
 * (This may result in changes to the last newline in the file.)
 */
fun ModulesXml.sortModules() {
    val drilldown = originalXml.component.projectModules
    if (!drilldown.projectModules.map { it.path }.isSorted()) {
        println("project module entries in modules XML not sorted: sorting them automatically")
        drilldown.projectModules = drilldown.projectModules.sortedBy { it.path }
        writeXml(originalXml, modulesXmlPath(mpsProjectPath))
    }
}

/**
 * @return the location of the modules XML file under the given path for an MPS project.
 */
fun modulesXmlPath(mpsProjectPath: Path): Path = mpsProjectPath/".mps"/"modules.xml"

