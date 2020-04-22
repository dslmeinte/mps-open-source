package nl.dslconsultancy.mps.analyser.xml

import nl.dslconsultancy.mps.analyser.*
import nl.dslconsultancy.mps.analyser.util.lastSection

fun ModelXml.asStructure(): Structure {
    val metaConcepts = metaConcepts()
    val memois = hashMapOf<String, Any>()
    val modelXml = this
    val supported = listOf("ConceptDeclaration", "InterfaceConceptDeclaration").mapNotNull { metaConcepts.named(it) }.map { it.index }
    return Structure(
        elements = modelXml.nodes.filter { supported.contains(it.concept) }.map { it.fromXml(metaConcepts, memois) as StructuralElement }
    )
}

private fun readableSourceCardinality(cardinalityEncoding: String?): String {
    if (cardinalityEncoding === null) {
        return "0..1"
    }
    val decodedEnum = cardinalityEncoding.substring(cardinalityEncoding.lastIndexOf('/') + 1)
    return when (decodedEnum) {
        "_0__1" -> "0..1"
        "_1" -> "1"
        "_0__n" -> "0..n"
        "_1__n" -> "1..n"
        else -> "??? - cardinality enum literal not understood: '$decodedEnum'"
    }
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
        this.theseChildNodes(abstractConceptDeclaration.children.named("propertyDeclaration")).map { it.fromXml(metaConcepts, memois) as Feature },
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
                rootable = nodeXml.thisPropertySetting(conceptDeclaration.properties.named("rootable")).orEmpty() == "true",
                alias = nodeXml.thisPropertySetting(abstractConceptDeclaration.properties.named("conceptAlias")),
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
            alias = nodeXml.thisPropertySetting(abstractConceptDeclaration.properties.named("conceptAlias")),
            shortDescription = nodeXml.thisPropertySetting(abstractConceptDeclaration.properties.named("conceptShortDescription")),
            deprecated = isDeprecated()
        )).apply {
            implements = nodeXml.theseChildNodes(metaConcepts.named("InterfaceConceptDeclaration")?.children?.named("extends")).asImplements()
            features = nodeXml.features()
        }
        "LinkDeclaration" -> {
            val linkDeclaration = metaConcepts["LinkDeclaration"]
            val metaClass = thisPropertySetting(linkDeclaration.properties["metaClass"])
            memois.of(nodeXml to Link(
                name = thisPropertySetting(linkDeclaration.properties["role"])!!,
                deprecated = isDeprecated(),
                reference = metaClass == null || metaClass.endsWith("reference"),
                cardinality = thisPropertySetting(linkDeclaration.properties.named("sourceCardinality")).run { readableSourceCardinality(this) },
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

