package nl.dslconsultancy.mps.inspector

import java.nio.file.Files
import java.nio.file.Path
import java.util.stream.Collectors
import java.util.stream.Stream

data class MpsProjectOnDisk(val mpsFiles: List<Path>, val languages: List<Language>)


fun readMpsProject(mpsProject: Path): MpsProjectOnDisk {
    val mpsFiles = Files.walk(mpsProject)
        .filter { isTrueMpsFile(it) }
        .sorted()
        .asList()
    return MpsProjectOnDisk(
        mpsFiles,
        mpsFiles.filter { it.toString().endsWith(".mpl") }.map { readLanguageFile(it) }
    )
}

private fun isTrueMpsFile(path: Path): Boolean {
    val fileName = path.toString()
    return fileName.endsWith(".mpl") || fileName.endsWith(".msd") || (fileName.endsWith(".mps") && !fileName.endsWith("aspectcps-descriptorclasses.mps"))
}


private fun <T> Stream<T>.asList(): List<T> {
    return this.collect(Collectors.toList())
}

