package nl.dslconsultancy.mps.analyser.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil.writeXml
import nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil.xmlFromDisk
import nl.dslconsultancy.mps.analyser.util.div
import nl.dslconsultancy.mps.analyser.util.isSorted
import nl.dslconsultancy.mps.analyser.util.lastSection
import java.nio.file.Files
import java.nio.file.Path


/**
 * Holds a representation of the `modules.xml` file located under `.mps/` in an MPS project.
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
 * Representation of the modules XML file (`.mps/modules.xml`) of an MPS project.
 * It just lists the modules defined in the project, without loading them in some way.
 */
data class ModulesXml(
    val name: String,
    val mpsProjectPath: Path,
    val version: Int,
    val modules: List<ProjectModule>,
    // TODO  use projected ProjectModule instances instead of instances of a class intended for XML deserialization
    val originalXml: MpsProjectAsXml
) {

    /**
     * @return a short description of the modules XML file.
     */
    fun shortDescription() = "MPS project '$name' (version=$version) has ${modules.size} modules"

    /**
     * Sorts the modules mentioned in the modules XML file in alphabetical order,
     * and writes the file back.
     * (This may result in changes to the last newline in the file.)
     */
    fun sortModules() {
        val drilldown = originalXml.component.projectModules
        if (!drilldown.projectModules.map { it.path }.isSorted()) {
            println("project module entries in modules XML not sorted: sorting them automatically")
            drilldown.projectModules = drilldown.projectModules.sortedBy { it.path }
            writeXml(originalXml, modulesXmlPath(mpsProjectPath))
        }
    }

}


/**
 * Reads a modules XML file in the MPS project under the given path.
 * @return a [representation of the modules XML file][ModulesXml]
 */
fun modulesXmlIn(mpsProjectPath: Path): ModulesXml {
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
 * @return the location of the modules XML file under the given path for an MPS project.
 */
private fun modulesXmlPath(mpsProjectPath: Path): Path = mpsProjectPath/".mps"/"modules.xml"


/**
 * Checks whether the given [path][Path] is (/could be) the path to an MPS project.
 * @throws IllegalArgumentException if the given path does not point to an MPS project
 */
fun checkMpsProjectPath(mpsProjectPath: Path) {
    if (!Files.exists(modulesXmlPath(mpsProjectPath))) {
        throw IllegalArgumentException("'$mpsProjectPath' is not a path to an MPS project")
    }
}

