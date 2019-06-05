package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.asList
import nl.dslconsultancy.mps.inspector.xml.Language
import nl.dslconsultancy.mps.inspector.xml.readLanguageFile
import java.nio.file.Files
import java.nio.file.Path

data class MpsProjectOnDisk(val mpsFiles: List<Path>, val languages: List<Language>)


fun readMpsProject(mpsProject: Path): MpsProjectOnDisk {
    val mpsFiles = Files.walk(mpsProject)
        .filter { it.isMpsModule() || it.isMpsModel() }
        .sorted()
        .asList()
    return MpsProjectOnDisk(
        mpsFiles,
        mpsFiles.filter { it.isMpsLanguage() }.map { readLanguageFile(it) }
    )
}

fun Path.isMpsLanguage(): Boolean {
    return this.toString().endsWith(".mpl")
}

fun Path.isMpsSolution(): Boolean {
    return this.toString().endsWith(".msd") // can also be a devkit or ?
}

fun Path.isMpsModule(): Boolean {
    return this.isMpsLanguage() || this.isMpsSolution()
}

fun Path.isMpsModel(): Boolean {
    val fileName = this.toString()
    return fileName.endsWith(".mps") && !fileName.endsWith("aspectcps-descriptorclasses.mps")
}

fun Path.isStructureModel(): Boolean {
    return this.isMpsModel() && this.toString().endsWith("/models/structure.mps")
}

