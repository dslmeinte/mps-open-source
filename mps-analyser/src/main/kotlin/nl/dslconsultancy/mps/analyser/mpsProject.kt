package nl.dslconsultancy.mps.analyser

import nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil
import nl.dslconsultancy.mps.analyser.util.div
import nl.dslconsultancy.mps.analyser.util.isSorted
import nl.dslconsultancy.mps.analyser.xml.ModulesXml
import nl.dslconsultancy.mps.analyser.xml.ProjectModuleXml
import java.nio.file.Files
import java.nio.file.Path

/**
 * @return the location of the modules XML file under the given path for an MPS project.
 */
fun modulesXmlPath(mpsProjectPath: Path): Path = mpsProjectPath/".mps"/"modules.xml"


/**
 * Checks whether the given [path][Path] is (/could be) the path to an MPS project.
 * @throws IllegalArgumentException if the given path does not point to an MPS project
 */
fun checkMpsProjectPath(mpsProjectPath: Path) {
    if (!Files.exists(modulesXmlPath(mpsProjectPath))) {
        throw IllegalArgumentException("'$mpsProjectPath' is not a path to an MPS project")
    }
}


enum class MpsFileType {
    None,
    Language,
    Solution,   // can also be a devkit or ?
    Model
}

fun mpsFileType(path: Path): MpsFileType {
    val fileName = path.last().toString()
    return when {
        fileName.endsWith(".mpl") -> MpsFileType.Language
        fileName.endsWith(".msd") -> MpsFileType.Solution
        fileName.endsWith(".mps") && !isNotAModelFile(path) -> MpsFileType.Model
        else -> MpsFileType.None
    }
}

private fun isNotAModelFile(path: Path) =
    path.last().toString() == ".mps" || path.any { listOf("classes_gen", "source_gen", "source_gen.caches").contains(it.toString()) }


/**
 * Representation of an MPS project - mainly the modules XML file (`.mps/modules.xml`), though.
 * It just lists the modules defined in the project, without loading them in any way.
 */
data class MpsProject(
    val name: String,
    val mpsProjectPath: Path,
    val version: Int,
    val modules: List<ProjectModuleXml>,
    // TODO  use projected ProjectModule instances instead of instances of a class intended for XML deserialization
    val originalModulesXml: ModulesXml
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
        val drilldown = originalModulesXml.component.projectModules
        if (!drilldown.projectModules.map { it.path }.isSorted()) {
            println("project module entries in modules XML not sorted: sorting them automatically")
            drilldown.projectModules = drilldown.projectModules.sortedBy { it.path }
            JacksonXmlUtil.writeXml(originalModulesXml, modulesXmlPath(mpsProjectPath))
        }
    }

}

