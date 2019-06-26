package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.asList
import nl.dslconsultancy.mps.inspector.util.csvRowOf
import nl.dslconsultancy.mps.inspector.util.withHeader
import nl.dslconsultancy.mps.inspector.xml.readLanguageFile
import java.nio.file.Files
import java.nio.file.Path


data class MpsProjectOnDisk(val mpsFiles: List<Path>, val languages: List<Language>)


fun mpsProjectFromDisk(mpsProject: Path): MpsProjectOnDisk {
    val mpsFiles = Files.walk(mpsProject)
        .filter { mpsFileType(it) != MpsFileType.None }
        .sorted()
        .asList()
    return MpsProjectOnDisk(
        mpsFiles,
        mpsFiles.filter { mpsFileType(it) == MpsFileType.Language }.map { readLanguageFile(it) }
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
    path.last().toString() == ".mps" || path.any { listOf("classes_gen", "source_gen").contains(it.toString()) }
    // TODO  also filter out source_gen.caches?

fun isStructureModel(path: Path) =
        mpsFileType(path) == MpsFileType.Model && path.toList().takeLast(2) == listOf("models", "structure")


fun MpsProjectOnDisk.languageReportAsCsvLines() =
        languages.sortedBy { it.name }.map { csvRowOf(it.name, it.languageVersion, it.uuid) }.withHeader(csvRowOf("\"language name\"", "version", "uuid"))

