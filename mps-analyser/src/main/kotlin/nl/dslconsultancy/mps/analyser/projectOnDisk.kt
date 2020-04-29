package nl.dslconsultancy.mps.analyser

import nl.dslconsultancy.mps.analyser.util.asList
import nl.dslconsultancy.mps.analyser.util.csvRowOf
import nl.dslconsultancy.mps.analyser.xml.languageMetaDataXmlFromDisk
import nl.dslconsultancy.mps.analyser.xml.modelXmlWithoutNodesFromDisk
import java.nio.file.Files
import java.nio.file.Path


/**
 * Representation of an MPS project, as read "verbatim" from disk.
 * It doesn't take the modules XML file (`.mps/modules.xml`) into account.
 * Instead, it just lists the entire directory tree of an MPS project,
 * and, next to it, the [languages][Language] in there.
 */
data class MpsProjectOnDisk(val mpsFiles: List<Path>, val languages: List<Language>) {

    fun languageReportAsCsvLines() =
        listOf(csvRowOf("\"language name\"", "version", "uuid")) + languages.sortedBy { it.name }.map { csvRowOf(it.name, it.languageVersion, it.uuid) }

    fun modelsWithMinus1sVersions() =
        this.mpsFiles
            .filter { mpsFileType(it) == MpsFileType.Model }
            .filter {
                val modelXml = modelXmlWithoutNodesFromDisk(it)
                modelXml.dependencies != null && modelXml.dependencies!!.importedLanguages.any { il -> il.version == -1 }
            }

    fun usageAsCsvLines() = usage(this).asCsvLines(this)

}


fun mpsProjectFromDisk(mpsProjectPath: Path): MpsProjectOnDisk {
    val mpsFiles = Files.walk(mpsProjectPath)
        .asList()
        .filter { mpsFileType(it) != MpsFileType.None }
        .sorted()
    return MpsProjectOnDisk(
        mpsFiles,
        mpsFiles.filter { mpsFileType(it) == MpsFileType.Language }.map { languageMetaDataXmlFromDisk(it) }
    )
}

