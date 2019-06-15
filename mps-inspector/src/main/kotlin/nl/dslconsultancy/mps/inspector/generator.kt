package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil.writeJson
import nl.dslconsultancy.mps.inspector.xml.asStructure
import nl.dslconsultancy.mps.inspector.xml.modelXmlFromDisk
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths

fun generateFor(structure: Structure): Iterable<String> {
    return structure.elements.flatMap { it.generateFor() }
}

private fun StructuralElement.generateFor(): Iterable<String> {
    return when (this) {
        is Concept -> {
            val supers = this.superTypes().filter { it != "INamedConcept" }
            return listOf(
                "data class ${this.name}(",
                this.features.filterIsInstance<Property>().joinToString(",\n") { "\t${it.name}: String" },
                ")" + (if (supers.isEmpty()) "" else " : " + supers.joinToString(", ")),
                ""
            )
        }
        is InterfaceConcept -> {
            return listOf("interface ${this.name}", "")
        }
        else -> listOf("// generation not yet implemented for structural element of type " + this.javaClass.simpleName, "")
    }
}

private fun Concept.superTypes(): List<String> {
    val supers = ArrayList<String>()
    if (this.extends != null && this.extends != "BaseConcept") {
        supers.add(this.extends!!)
    }
    supers += this.implements
    return supers
}


fun GenerateFromStructure.run(mpsProjectPath: Path) {
    val structureModelAsPath = mpsProjectPath.resolve(structureModelPath)
    val structure = modelXmlFromDisk(structureModelAsPath).asStructure()
    val genPath = Paths.get(generationPath)
    writeJson(structure, genPath.resolve("export.json"))
    Files.write(genPath.resolve("kotlin.kt"), generateFor(structure))
    println("wrote generated stuff to '$genPath'")
}

