package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.asList
import nl.dslconsultancy.mps.inspector.xml.readLanguageFile
import java.nio.file.Files
import java.nio.file.Path


data class MpsProjectOnDisk(val mpsFiles: List<Path>, val languages: List<Language>)


fun readMpsProject(mpsProject: Path): MpsProjectOnDisk {
    val mpsFiles = Files.walk(mpsProject)
        .filter { it.mpsFileType() != MpsFileType.none }
        .sorted()
        .asList()
    return MpsProjectOnDisk(
        mpsFiles,
        mpsFiles.filter { it.mpsFileType() == MpsFileType.language }.map { readLanguageFile(it) }
    )
}


enum class MpsFileType {
    none,
    language,
    solution,   // can also be a devkit or ?
    model
}

fun Path.mpsFileType(): MpsFileType {
    val fileName = this.toString()
    return when {
        fileName.endsWith(".mpl") -> MpsFileType.language
        fileName.endsWith(".msd") -> MpsFileType.solution
        fileName.endsWith(".mps") && !fileName.endsWith("aspectcps-descriptorclasses.mps") -> MpsFileType.model
        else -> MpsFileType.none
    }
}


fun Path.isStructureModel(): Boolean {
    return this.mpsFileType() == MpsFileType.model && this.toString().endsWith("/models/structure.mps")
}

