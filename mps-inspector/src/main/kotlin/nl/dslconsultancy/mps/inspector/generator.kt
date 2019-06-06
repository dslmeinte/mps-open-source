package nl.dslconsultancy.mps.inspector

fun generateFor(structure: Structure): Iterable<String> {
    return structure.elements.filterIsInstance<Concept>().flatMap { it.generateFor() }
}

private fun Concept.generateFor(): Iterable<String> {
    val supers = this.superTypes()
    return listOf("class ${this.name}(", ")" + (if (supers.isEmpty()) "" else " : " + supers.joinToString(", ")), "")
}

private fun Concept.superTypes(): List<String> {
    val supers = ArrayList<String>()
    if (this.extends != null && this.extends != "BaseConcept") {
        supers += this.extends
    }
    supers += this.implements
    return supers
}

