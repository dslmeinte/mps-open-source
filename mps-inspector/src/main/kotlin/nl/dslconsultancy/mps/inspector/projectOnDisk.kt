package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.asList
import nl.dslconsultancy.mps.inspector.util.csvRowOf
import nl.dslconsultancy.mps.inspector.xml.languageMetaDataXmlFromDisk
import java.nio.file.Files
import java.nio.file.Path


data class MpsProjectOnDisk(val mpsFiles: List<Path>, val languages: List<Language>)


fun mpsProjectFromDisk(mpsProject: Path): MpsProjectOnDisk {
    val mpsFiles = Files.walk(mpsProject)
        .asList()
        .filter { mpsFileType(it) != MpsFileType.None }
        .sorted()
    return MpsProjectOnDisk(
        mpsFiles,
        mpsFiles.filter { mpsFileType(it) == MpsFileType.Language }.map { languageMetaDataXmlFromDisk(it) }
    )
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

fun isStructureModel(path: Path) =
        mpsFileType(path) == MpsFileType.Model && path.toList().takeLast(2) == listOf("models", "structure")


fun MpsProjectOnDisk.languageReportAsCsvLines() =
    listOf(csvRowOf("\"language name\"", "version", "uuid")) + languages.sortedBy { it.name }.map { csvRowOf(it.name, it.languageVersion, it.uuid) }

