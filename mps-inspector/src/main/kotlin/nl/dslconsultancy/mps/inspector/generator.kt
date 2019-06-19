package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil.writeJson
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
            val supers = this.superTypes().filter { it != "INamedConcept" }
            listOf(
                "data class ${this.name}(",
                this.features.filterIsInstance<Property>().joinToString(",\n") { "\t${it.name}: String" },
                ")" + (if (supers.isEmpty()) "" else " : " + supers.joinToString(", ")),
                ""
            )
        }
        is InterfaceConcept -> {
            listOf("interface ${this.name}", "")
        }
        else -> listOf("// Kotlin-generation not yet implemented for structural element of type " + this.javaClass.simpleName, "")
    }

private fun Concept.superTypes(): List<String> {
    val supers = ArrayList<String>()
    if (this.extends != null && this.extends != "BaseConcept") {
        supers.add(this.extends!!)
    }
    supers += this.implements
    return supers
}


fun generateCsvFor(structure: Structure): Iterable<String> = structure.elements.flatMap { it.generateCsvFor() }

private fun StructuralElement.generateCsvFor(): Iterable<String> =
    when (this) {
        is Concept -> listOf("$name;$deprecated")
        is InterfaceConcept -> listOf("$name;false")
        else -> listOf("// Kotlin-generation not yet implemented for structural element of type " + this.javaClass.simpleName, "")
    }


fun GenerateFromStructure.run(mpsProjectPath: Path) {
    val structureModelAsPath = mpsProjectPath.resolve(structureModelPath)
    val structure = modelXmlFromDisk(structureModelAsPath).asStructure()
    val genPath = Paths.get(generationPath)
    writeJson(structure, genPath.resolve("export.json"))
    Files.write(genPath.resolve("kotlin.kt"), generateKotlinFor(structure))
    Files.write(genPath.resolve("structure.csv"), generateCsvFor(structure).sorted().withHeader("\"concept(#feature)\";deprecated"))
    println("wrote generated stuff to '$genPath'")
}

