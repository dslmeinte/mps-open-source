package nl.dslconsultancy.mps.inspector.xml

import nl.dslconsultancy.mps.inspector.*
import nl.dslconsultancy.mps.inspector.util.lastSection

fun ModelXml.asStructure(): Structure {
    val metaConcepts = metaConcepts()
    val memois = hashMapOf<String, Any>()
    val modelXml = this
    val supported = listOf("ConceptDeclaration", "InterfaceConceptDeclaration").mapNotNull { metaConcepts.named(it) }.map { it.index }
    return Structure(
        elements = modelXml.nodes.filter { supported.contains(it.concept) }.map { it.fromXml(metaConcepts, memois) as StructuralElement }
    )
}

private fun NodeXml.fromXml(metaConcepts: List<MetaConceptXml>, memois: Map<String, Any>): Any {
    val nodeXml = this

    val precomputed = memois[nodeXml.id]
    if (precomputed != null) {
        return precomputed
    }

    fun isDeprecated(): Boolean =
        nodeXml
            .theseChildren(metaConcepts.named("BaseConcept")?.children?.named("smodelAttribute"))
            .any { metaConcepts.byIndex(it.concept).name.endsWith("DeprecatedNodeAnnotation") }

    val metaConcept = metaConcepts.byIndex(nodeXml.concept)

    val abstractConceptDeclaration = metaConcepts.named("AbstractConceptDeclaration")!!
    val iNamedConcept = metaConcepts.named("INamedConcept")!!

    fun NodeXml.features() = listOf(
        this.theseChildren(abstractConceptDeclaration.children.named("propertyDeclaration")).map { it.fromXml(metaConcepts, memois) as Feature },
        this.theseChildren(abstractConceptDeclaration.children.named("linkDeclaration")).map { it.fromXml(metaConcepts, memois) as Feature }
    ).flatten()

    fun Iterable<NodeXml>.asImplements() = mapNotNull {
        it.thisReference(metaConcepts.named("InterfaceConceptReference")?.references?.named("intfc"))?.resolve
    }

    return when (metaConcept.name.lastSection()) {
        "ConceptDeclaration" -> {
            val conceptDeclaration = metaConcepts.named("ConceptDeclaration")!!
            memois.of(nodeXml to Concept(
                name = nodeXml.thisProperty(iNamedConcept.properties.named("name"))!!,
                isInterface = false,
                rootable = nodeXml.thisProperty(conceptDeclaration.properties.named("rootable")).orEmpty() == "true",
                alias = nodeXml.thisProperty(abstractConceptDeclaration.properties.named("conceptAlias")),
                shortDescription = nodeXml.thisProperty(abstractConceptDeclaration.properties.named("conceptShortDescription")),
                deprecated = isDeprecated()
            )).apply {
                extends = nodeXml.thisReference(conceptDeclaration.references.named("extends"))?.resolve
                implements = nodeXml.theseChildren(conceptDeclaration.children.named("implements")).asImplements()
                features = nodeXml.features()
            }
        }
        "InterfaceConceptDeclaration" -> memois.of(nodeXml to Concept(
            name = nodeXml.thisProperty(iNamedConcept.properties.named("name"))!!,
            isInterface = true,
            rootable = false,
            alias = nodeXml.thisProperty(abstractConceptDeclaration.properties.named("conceptAlias")),
            shortDescription = nodeXml.thisProperty(abstractConceptDeclaration.properties.named("conceptShortDescription")),
            deprecated = isDeprecated()
        )).apply {
            implements = nodeXml.theseChildren(metaConcepts.named("InterfaceConceptDeclaration")?.children?.named("extends")).asImplements()
            features = nodeXml.features()
        }
        "LinkDeclaration" -> {
            val linkDeclaration = metaConcepts.named("LinkDeclaration")!!
            memois.of(nodeXml to Link(
                name = thisProperty(linkDeclaration.properties.named("role"))!!,
                deprecated = isDeprecated(),
                reference = thisProperty(linkDeclaration.properties.named("metaClass"))!! == "reference",
                cardinality = thisProperty(linkDeclaration.properties.named("sourceCardinality")) ?: "0..1",
                targetType = thisReference(linkDeclaration.references.named("target"))!!.resolve!!
            ))
        }
        "PropertyDeclaration" -> memois.of(nodeXml to Property(
            name = nodeXml.thisProperty(iNamedConcept.properties.named("name"))!!,
            deprecated = isDeprecated()
        ))
        else -> throw Error("no Kotlin class for concept ${metaConcept.name}")
    }
}

/*
 * Note: a lot of this should be generatable from a structure-model for the Structure language (relying on the meta-circularity of the MPS code base),
 * or on a hand-crafted representation of the same using Kotlin's object literals.
 */

