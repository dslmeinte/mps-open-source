package nl.dslconsultancy.mps.inspector.xml

import nl.dslconsultancy.mps.inspector.*
import nl.dslconsultancy.mps.inspector.util.lastSection

fun ModelXml.asStructure(): Structure {
    val metaConcepts = metaConcepts()
    val memois = hashMapOf<String, Any>()
    val modelXml = this
    val supported = listOf("ConceptDeclaration", "InterfaceConceptDeclaration").map { metaConcepts.named(it).index }
    return Structure().apply { elements = modelXml.nodes.filter { supported.contains(it.concept) }.map { it.fromXml(metaConcepts, memois) as StructuralElement } }
}

private fun NodeXml.fromXml(metaConcepts: List<MetaConceptXml>, memois: Map<String, Any>): Any {
    val nodeXml = this
    val precomputed = memois[nodeXml.id]
    if (precomputed != null) {
        return precomputed
    }
    val metaConcept = metaConcepts.byIndex(nodeXml.concept)
    return when (metaConcept.name.lastSection()) {
        "ConceptDeclaration" -> memois.of(nodeXml to Concept(
            name = nodeXml.thisProperty(metaConcepts.named("INamedConcept").properties.named("name"))!!,
            rootable = nodeXml.thisProperty(metaConcepts.named("ConceptDeclaration").properties.named("rootable")).orEmpty() == "true",
            alias = nodeXml.thisProperty(metaConcepts.named("AbstractConceptDeclaration").properties.named("conceptAlias")),
            shortDescription = nodeXml.thisProperty(metaConcepts.named("AbstractConceptDeclaration").properties.named("conceptShortDescription"))
        )).apply {
            extends = nodeXml.thisReference(metaConcepts.named("ConceptDeclaration").references.named("extends"))?.resolve
            implements = nodeXml.theseChildren(metaConcepts.named("ConceptDeclaration").children.named("implements")).mapNotNull {
                it.thisReference(
                    metaConcepts.named("InterfaceConceptReference").references.named("intfc")
                )?.resolve
            }
            features = listOf(
                nodeXml.theseChildren(metaConcepts.named("AbstractConceptDeclaration").children.named("propertyDeclaration")).map { it.fromXml(metaConcepts, memois) as Feature },
                nodeXml.theseChildren(metaConcepts.named("AbstractConceptDeclaration").children.named("linkDeclaration")).map { it.fromXml(metaConcepts, memois) as Feature }
            ).flatten()
        }
        "InterfaceConceptDeclaration" -> memois.of(nodeXml to InterfaceConcept(
            name = nodeXml.thisProperty(metaConcepts.named("INamedConcept").properties.named("name"))!!
        )).apply {
            features = emptyList()
        }
        "LinkDeclaration" -> memois.of(nodeXml to Child(
            name = this.thisProperty(metaConcepts.named("LinkDeclaration").properties.named("role"))!!)
        )
        "PropertyDeclaration" -> memois.of(nodeXml to Property(
            name = nodeXml.thisProperty(metaConcepts.named("INamedConcept").properties.named("name"))!!)
        )
        else -> throw Error("concept without Kotlin class: ${metaConcept.name}")
    }
}

/*
 * Note: a lot of this should be generatable from a structure-model for the Structure language (relying on the meta-circularity of the MPS code base),
 * or on a hand-crafted representation of the same using Kotlin's object literals.
 */

