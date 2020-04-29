package nl.dslconsultancy.mps.analyser

import nl.dslconsultancy.mps.analyser.util.JacksonJsonUtil.writeJson
import nl.dslconsultancy.mps.analyser.util.csvRowOf
import nl.dslconsultancy.mps.analyser.util.div
import nl.dslconsultancy.mps.analyser.xml.Concept
import nl.dslconsultancy.mps.analyser.xml.Property
import nl.dslconsultancy.mps.analyser.xml.StructuralElement
import nl.dslconsultancy.mps.analyser.xml.Structure
import java.nio.file.Files
import java.nio.file.Path

private fun generateKotlinFor(structure: Structure): Iterable<String> = structure.concepts().flatMap { it.generateKotlinFor() }

private fun StructuralElement.generateKotlinFor(): Iterable<String> =
    when (this) {
        is Concept -> {
            when {
                isInterface -> listOf("interface $name")
                else -> {
                    val supers = superTypes()
                    listOf(
                        "data class $name(",
                        features.filterIsInstance<Property>().joinToString(",\n") { "\t${it.name}: String" },
                        ")" + (if (supers.isEmpty()) "" else " : " + supers.map { it.name }.joinToString(", ")),
                        ""
                    )
                }
            }
        }
    }

private fun Concept.superTypes(): List<Concept> =
    (if (extends == null) emptyList() else listOf(extends!!)) + implements


private fun generateCsvFor(structure: Structure): Iterable<String> =
    listOf(csvRowOf("\"concept[#feature]\"", "deprecated")) + structure.concepts().flatMap { it.generateCsvFor() }.sorted()

private fun StructuralElement.generateCsvFor(): Iterable<String> =
    when (this) {
        is Concept -> listOf(csvRowOf(name, deprecated)) + features.map { csvRowOf("${this.name}#${it.name}", it.deprecated) }
    }


fun generateAllFor(language: Language, generationPath: Path) {
    val structure = language.structure()
    writeJson(structure, generationPath/"export-${language.name}.json")
    Files.write(generationPath/"kotlin-${language.name}.kt", generateKotlinFor(structure))
    Files.write(generationPath/"structure-${language.name}.csv", generateCsvFor(structure))
    println("wrote \"stuff\" generated for structure of '${language.name}' to '$generationPath'")
}

