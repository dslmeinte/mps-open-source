package nl.dslconsultancy.mps.analyser

import nl.dslconsultancy.mps.analyser.util.JacksonJsonUtil.writeJson
import nl.dslconsultancy.mps.analyser.util.csvRowOf
import nl.dslconsultancy.mps.analyser.util.div
import java.nio.file.Files
import java.nio.file.Paths

fun generateKotlinFor(structure: Structure): Iterable<String> = structure.elements.flatMap { it.generateKotlinFor() }

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


fun generateCsvFor(structure: Structure): Iterable<String> = structure.elements.flatMap { it.generateCsvFor() }

private fun StructuralElement.generateCsvFor(): Iterable<String> =
    when (this) {
        is Concept -> listOf(csvRowOf(name, deprecated)) + features.map { csvRowOf("${this.name}#${it.name}", it.deprecated) }
    }


fun GenerateFromStructure.run(mpsProjectOnDisk: MpsProjectOnDisk) {
    val language = mpsProjectOnDisk.languages.find { it.name == languageName }
    if (language == null) {
        System.err.println("no language with name '$languageName' in MPS project")
        return
    }
    val structure = language.structure()
    val genPath = Paths.get(generationPath)
    writeJson(structure, genPath/"export-${language.name}.json")
    Files.write(genPath/"kotlin-${language.name}.kt", generateKotlinFor(structure))
    Files.write(
        genPath/"structure-${language.name}.csv",
        listOf(csvRowOf("\"concept[#feature]\"", "deprecated")) + generateCsvFor(structure).sorted()
    )
    println("wrote \"stuff\" generated for structure of '${language.name}' to '$genPath'")
}

