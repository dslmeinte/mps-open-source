package nl.dslconsultancy.mps.inspector.xml

import nl.dslconsultancy.mps.inspector.*
import nl.dslconsultancy.mps.inspector.util.lastSection

fun ModelXml.asStructure(): Structure = Structure(elements = this.nodes.mapNotNull { it.asStructuralConcept(metaConcepts()) })

private fun NodeXml.asStructuralConcept(metaConcepts: List<MetaConceptXml>): StructuralElement? {
    val metaConcept = metaConcepts.byIndex(this.concept)
    return when (metaConcept.name.lastSection()) {
        "InterfaceConceptDeclaration" -> InterfaceConcept(
            this.thisProperty(metaConcepts.named("INamedConcept").properties.named("name"))!!,
            emptyList()
        )
        "ConceptDeclaration" -> Concept(
            this.thisProperty(metaConcepts.named("INamedConcept").properties.named("name"))!!,
            this.thisReference(metaConcepts.named("ConceptDeclaration").references.named("extends"))?.resolve,
            this.theseChildren(metaConcepts.named("ConceptDeclaration").children.named("implements")).mapNotNull {
                it.thisReference(
                    metaConcepts.named("InterfaceConceptReference").references.named("intfc")
                )?.resolve
            },
            this.thisProperty(metaConcepts.named("ConceptDeclaration").properties.named("rootable")).orEmpty() == "true",
            this.thisProperty(metaConcepts.named("AbstractConceptDeclaration").properties.named("conceptAlias")),
            this.thisProperty(metaConcepts.named("AbstractConceptDeclaration").properties.named("conceptShortDescription")),
            listOf(
                this.theseChildren(metaConcepts.named("AbstractConceptDeclaration").children.named("propertyDeclaration")).mapNotNull { it.asFeature(metaConcepts) },
                this.theseChildren(metaConcepts.named("AbstractConceptDeclaration").children.named("linkDeclaration")).mapNotNull { it.asFeature(metaConcepts) }
            ).flatten()
        )
        else -> null
    }
}

private fun NodeXml.asFeature(metaConcepts: List<MetaConceptXml>): Feature? {
    val metaConcept = metaConcepts.byIndex(this.concept)
    return when (metaConcept.name.lastSection()) {
        "PropertyDeclaration" -> Property(this.thisProperty(metaConcepts.named("INamedConcept").properties.named("name"))!!)
        "LinkDeclaration" -> Child(this.thisProperty(metaConcepts.named("LinkDeclaration").properties.named("role"))!!)
        else -> null
    }
}

