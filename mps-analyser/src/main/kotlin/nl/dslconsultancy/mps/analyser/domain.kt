package nl.dslconsultancy.mps.analyser

import nl.dslconsultancy.mps.analyser.util.div
import nl.dslconsultancy.mps.analyser.xml.Structure
import nl.dslconsultancy.mps.analyser.xml.asStructure
import nl.dslconsultancy.mps.analyser.xml.modelXmlFromDisk
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.attribute.BasicFileAttributes
import java.util.function.BiPredicate


data class Language(
    /** Path to XML file with this language's meta and configuration data. */
    val path: Path,
    val name: String,
    val uuid: String,
    val languageVersion: Int,
    val dependencies: Iterable<Dependency>,
    /** Name of directory containing this language's aspect models (structure, behavior, etc.). */
    val modelsDir: String,
    var cachedStructure: Structure? = null
) {

    fun structure(): Structure {
        if (cachedStructure == null) {
            val structureModelPath = Files
                .find(path.parent/modelsDir, 42, BiPredicate { f: Path, _: BasicFileAttributes -> f.fileName.toString().endsWith("structure.mps") })
                .findFirst()
                .get()
            try {
                cachedStructure = modelXmlFromDisk(structureModelPath).asStructure()
            } catch (e: Exception) {
                System.err.println("could not read structure model XML file '$structureModelPath' for language '$name'; due to:")
                System.err.println(e.message)
                e.printStackTrace(System.err)
            }
        }
        return cachedStructure!!
    }

}


data class Dependency(
    val reexport: Boolean,
    val dependencyId: String
)


interface StructureElement {
    val name: String
    val deprecated: Boolean
}

