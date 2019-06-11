package nl.dslconsultancy.mps.inspector

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
        supers += this.extends
    }
    supers += this.implements
    return supers
}

