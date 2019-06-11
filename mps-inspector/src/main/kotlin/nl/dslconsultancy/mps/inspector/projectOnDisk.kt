package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.asList
import nl.dslconsultancy.mps.inspector.xml.readLanguageFile
import java.nio.file.Files
import java.nio.file.Path


data class MpsProjectOnDisk(val mpsFiles: List<Path>, val languages: List<Language>)


fun readMpsProject(mpsProject: Path): MpsProjectOnDisk {
    val mpsFiles = Files.walk(mpsProject)
        .filter { it.mpsFileType() != MpsFileType.None }
        .sorted()
        .asList()
    return MpsProjectOnDisk(
        mpsFiles,
        mpsFiles.filter { it.mpsFileType() == MpsFileType.Language }.map { readLanguageFile(it) }
    )
}


enum class MpsFileType {
    None,
    Language,
    Solution,   // can also be a devkit or ?
    Model
}

fun Path.mpsFileType(): MpsFileType {
    val fileName = this.toString()
    return when {
        fileName.endsWith(".mpl") -> MpsFileType.Language
        fileName.endsWith(".msd") -> MpsFileType.Solution
        fileName.endsWith(".mps") && !fileName.endsWith("aspectcps-descriptorclasses.mps") -> MpsFileType.Model
        else -> MpsFileType.None
    }
}


fun Path.isStructureModel(): Boolean = this.mpsFileType() == MpsFileType.Model && this.toString().endsWith("/models/structure.mps")

