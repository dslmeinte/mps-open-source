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
            .theseChildNodes(metaConcepts.named("BaseConcept")?.children?.named("smodelAttribute"))
            .any { metaConcepts.byIndex(it.concept).name.endsWith("DeprecatedNodeAnnotation") }

    val metaConcept = metaConcepts.byIndex(nodeXml.concept)

    val abstractConceptDeclaration = metaConcepts["AbstractConceptDeclaration"]
    val iNamedConcept = metaConcepts["INamedConcept"]

    fun NodeXml.features() = listOf(
        this.theseChildNodes(abstractConceptDeclaration.children["propertyDeclaration"]).map { it.fromXml(metaConcepts, memois) as Feature },
        this.theseChildNodes(abstractConceptDeclaration.children.named("linkDeclaration")).map { it.fromXml(metaConcepts, memois) as Feature }
    ).flatten()

    fun ReferenceSettingXml?.resolveConcept() = if (this?.node == null) null else nodeXml.model!!.findById(this.node)?.fromXml(metaConcepts, memois) as? Concept

    fun Iterable<NodeXml>.asImplements(): List<Concept> {
        val featureDecl = metaConcepts.named("InterfaceConceptReference")?.references?.named("intfc")
        return mapNotNull {it.thisReferenceSetting(featureDecl).resolveConcept() }
    }

    return when (metaConcept.name.lastSection()) {
        "ConceptDeclaration" -> {
            val conceptDeclaration = metaConcepts["ConceptDeclaration"]
            memois.of(nodeXml to Concept(
                name = nodeXml.thisPropertySetting(iNamedConcept.properties["name"])!!,
                isInterface = false,
                rootable = nodeXml.thisPropertySetting(conceptDeclaration.properties["rootable"]).orEmpty() == "true",
                alias = nodeXml.thisPropertySetting(abstractConceptDeclaration.properties["conceptAlias"]),
                shortDescription = nodeXml.thisPropertySetting(abstractConceptDeclaration.properties.named("conceptShortDescription")),
                deprecated = isDeprecated()
            )).apply {
                extends = nodeXml.thisReferenceSetting(conceptDeclaration.references.named("extends")).resolveConcept()
                implements = nodeXml.theseChildNodes(conceptDeclaration.children.named("implements")).asImplements()
                features = nodeXml.features()
            }
        }
        "InterfaceConceptDeclaration" -> memois.of(nodeXml to Concept(
            name = nodeXml.thisPropertySetting(iNamedConcept.properties["name"])!!,
            isInterface = true,
            rootable = false,
            alias = nodeXml.thisPropertySetting(abstractConceptDeclaration.properties["conceptAlias"]),
            shortDescription = nodeXml.thisPropertySetting(abstractConceptDeclaration.properties.named("conceptShortDescription")),
            deprecated = isDeprecated()
        )).apply {
            implements = nodeXml.theseChildNodes(metaConcepts.named("InterfaceConceptDeclaration")?.children?.named("extends")).asImplements()
            features = nodeXml.features()
        }
        "LinkDeclaration" -> {
            val linkDeclaration = metaConcepts["LinkDeclaration"]
            memois.of(nodeXml to Link(
                name = thisPropertySetting(linkDeclaration.properties["role"])!!,
                deprecated = isDeprecated(),
                reference = thisPropertySetting(linkDeclaration.properties["metaClass"])!! == "reference",
                cardinality = thisPropertySetting(linkDeclaration.properties.named("sourceCardinality")) ?: "0..1",
                targetType = thisReferenceSetting(linkDeclaration.references["target"])!!.resolve!!
            ))
        }
        "PropertyDeclaration" -> memois.of(nodeXml to Property(
            name = nodeXml.thisPropertySetting(iNamedConcept.properties["name"])!!,
            deprecated = isDeprecated()
        ))
        else -> throw Error("no Kotlin class for concept ${metaConcept.name}")
    }
}

/*
 * Note: a lot of this should be generatable from a structure-model for the Structure language (relying on the meta-circularity of the MPS code base),
 * or on a hand-crafted representation of the same using Kotlin's object literals.
 */

