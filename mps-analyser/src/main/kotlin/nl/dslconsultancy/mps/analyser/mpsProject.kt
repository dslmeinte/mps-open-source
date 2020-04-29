package nl.dslconsultancy.mps.analyser

import nl.dslconsultancy.mps.analyser.util.*
import nl.dslconsultancy.mps.analyser.xml.ModulesXml
import nl.dslconsultancy.mps.analyser.xml.ProjectModuleXml
import nl.dslconsultancy.mps.analyser.xml.languageMetaDataXmlFromDisk
import nl.dslconsultancy.mps.analyser.xml.modelXmlWithoutNodesFromDisk
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
    val originalModulesXml: ModulesXml,
    private var cachedMpsFiles: List<Path>? = null,
    private var cachedLanguages: List<Language>? = null
) {

    /**
     * @return a short description of the modules XML file.
     */
    fun shortDescription(): String = "MPS project '$name' (version=$version) has ${modules.size} modules"

    /**
     * Sorts the modules mentioned in the modules XML file in alphabetical order,
     * and writes the file back.
     * (This may result in changes to the last newline in the file.)
     * @return `true` iff the modules XML file was altered by this operation
     */
    fun sortModules(): Boolean {
        val drilldown = originalModulesXml.component.projectModules
        return if (drilldown.projectModules.map { it.path }.isSorted()) false else {
            drilldown.projectModules = drilldown.projectModules.sortedBy { it.path }
            JacksonXmlUtil.writeXml(originalModulesXml, modulesXmlPath(mpsProjectPath))
            true
        }
    }

    /**
     * @return _all_ MPS files under the MPS project path, regardless of whether they are included through the project definition
     */
    fun mpsFiles(): List<Path> {
        if (this.cachedMpsFiles == null) {
            this.cachedMpsFiles = Files.walk(mpsProjectPath)
                .asList()
                .filter { mpsFileType(it) != MpsFileType.None }
                .sorted()
        }
        return this.cachedMpsFiles!!
    }

    /**
     * @return all languages that can be found under the MPS project path, regardless of whether they are included through the project definition
     */
    fun languages(): List<Language> {
        if (this.cachedLanguages == null) {
            this.cachedLanguages = mpsFiles().filter { mpsFileType(it) == MpsFileType.Language }.map { languageMetaDataXmlFromDisk(it) }
        }
        return this.cachedLanguages!!
    }

    fun modelsWithMinus1sVersions() =
        this.mpsFiles()
            .filter { mpsFileType(it) == MpsFileType.Model }
            .filter {
                val modelXml = modelXmlWithoutNodesFromDisk(it)
                modelXml.dependencies != null && modelXml.dependencies!!.importedLanguages.any { il -> il.version == -1 }
            }

    fun languageReportAsCsvLines() =
        listOf(csvRowOf("\"language name\"", "version", "uuid")) + this.languages().sortedBy { it.name }.map { csvRowOf(it.name, it.languageVersion, it.uuid) }

    fun usageAsCsvLines() = usage(this).asCsvLines(this)

}

