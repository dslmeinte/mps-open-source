package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil.writeJson
import nl.dslconsultancy.mps.inspector.util.csvRowOf
import nl.dslconsultancy.mps.inspector.util.withHeader
import nl.dslconsultancy.mps.inspector.xml.asStructure
import nl.dslconsultancy.mps.inspector.xml.modelXmlFromDisk
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths

fun generateKotlinFor(structure: Structure): Iterable<String> = structure.elements.flatMap { it.generateKotlinFor() }

private fun StructuralElement.generateKotlinFor(): Iterable<String> =
    when (this) {
        is Concept -> {
            when {
                isInterface -> listOf("interface $name")
                else -> {
                    val supers = superTypes().filter { it != "INamedConcept" }
                    listOf(
                        "data class $name(",
                        features.filterIsInstance<Property>().joinToString(",\n") { "\t${it.name}: String" },
                        ")" + (if (supers.isEmpty()) "" else " : " + supers.joinToString(", ")),
                        ""
                    )
                }
            }
        }
    }

private fun Concept.superTypes(): List<String> {
    val supers = ArrayList<String>()
    if (extends != null && extends != "BaseConcept") {
        supers.add(extends!!)
    }
    supers += implements
    return supers
}


fun generateCsvFor(structure: Structure): Iterable<String> = structure.elements.flatMap { it.generateCsvFor() }

private fun StructuralElement.generateCsvFor(): Iterable<String> =
    when (this) {
        is Concept -> features.map { csvRowOf("${this.name}#${it.name}", it.deprecated) }.withHeader(csvRowOf(name, deprecated))
    }


fun GenerateFromStructure.run(mpsProjectPath: Path) {
    val structureModelAsPath = mpsProjectPath.resolve(structureModelPath)
    val structure = modelXmlFromDisk(structureModelAsPath).asStructure()
    val genPath = Paths.get(generationPath)
    writeJson(structure, genPath.resolve("export.json"))
    Files.write(genPath.resolve("kotlin.kt"), generateKotlinFor(structure))
    Files.write(genPath.resolve("structure.csv"), generateCsvFor(structure).sorted().withHeader(csvRowOf("\"concept(#feature)\"", "deprecated")))
    println("wrote generated stuff to '$genPath'")
}

