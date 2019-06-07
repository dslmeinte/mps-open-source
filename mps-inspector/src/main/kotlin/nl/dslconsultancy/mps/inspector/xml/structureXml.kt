package nl.dslconsultancy.mps.inspector.xml

import nl.dslconsultancy.mps.inspector.Concept
import nl.dslconsultancy.mps.inspector.Structure

fun ModelXml.asStructure(): Structure {
    val concepts = this.nodes.filter { it.concept == metaConcepts().named("ConceptDeclaration").index }
    // TODO  map this.nodes polymorphically
    return Structure(concepts.map { it.asConcept(metaConcepts()) }.sortedBy { it.name })
}

private fun NodeXml.asConcept(metaConcepts: List<MetaConceptXml>): Concept {
    return Concept(
        this.thisProperty(metaConcepts.named("INamedConcept").properties.named("name"))!!,
        this.thisReference(metaConcepts.named("ConceptDeclaration").references.named("extends"))?.resolve,
        this.theseChildren(metaConcepts.named("ConceptDeclaration").children.named("implements")).mapNotNull { it.thisReference(metaConcepts.named("InterfaceConceptReference").references.named("intfc"))?.resolve },
        this.thisProperty(metaConcepts.named("ConceptDeclaration").properties.named("rootable")).orEmpty() == "true",
        this.thisProperty(metaConcepts.named("AbstractConceptDeclaration").properties.named("conceptAlias")),
        this.thisProperty(metaConcepts.named("AbstractConceptDeclaration").properties.named("conceptShortDescription")),
        emptyList() // TODO  implement
    )
}

