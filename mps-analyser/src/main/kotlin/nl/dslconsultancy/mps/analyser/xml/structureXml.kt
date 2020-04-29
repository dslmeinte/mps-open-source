package nl.dslconsultancy.mps.analyser.xml

import com.fasterxml.jackson.annotation.JsonIgnore
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonSubTypes
import com.fasterxml.jackson.annotation.JsonTypeInfo
import nl.dslconsultancy.mps.analyser.*
import nl.dslconsultancy.mps.analyser.util.lastSection


@JsonTypeInfo(
    use = JsonTypeInfo.Id.NAME,
    include = JsonTypeInfo.As.PROPERTY,
    property = "metaType"
)
@JsonSubTypes(
    JsonSubTypes.Type(Concept::class),
    JsonSubTypes.Type(ConstrainedString::class),
    JsonSubTypes.Type(Enumeration::class)
)
sealed class StructuralElement : StructureElement {
    abstract val features: Iterable<Feature>
}


/*
 * Because of recursive creation, all properties that (can) contain references to other objects must be vars initialized to empty.
 */

data class Structure(
    val elements: Iterable<StructureElement> = emptyList()
) {
    fun concepts() = elements.filterIsInstance<Concept>()
    fun enumerations() = elements.filterIsInstance<Enumeration>()
    fun constrainedStrings() = elements.filterIsInstance<ConstrainedString>()
}

data class Concept(
    override val name: String,
    val isInterface: Boolean,
    val rootable: Boolean,
    val alias: String?,
    val shortDescription: String?,
    override val deprecated: Boolean,
    @JsonIgnore var extends: Concept? = null,
    @JsonIgnore var implements: Iterable<Concept> = emptyList(),
    override var features: Iterable<Feature> = emptyList()
) : StructuralElement() {

    @JsonProperty("extends")
    fun extendsForJson() = extends?.name

    @JsonProperty("implements")
    fun implementsForJson() = implements.map { it.name }
}

/*
 * The main differences between a concept and an interface concept is:
 *  1) an interface *extends* an arbitrary number of (other) interfaces
 *  2) a concept *extends* at most one concept, and *implements* an arbitrary number of interfaces.
 *
 * If we say that an interface also *implements* (instead of *extends*) interfaces,
 * and impose the following additional constraint,
 * then we can justify simply adding a boolean flag to Concept saying whether it's an interface (true), or a concept (false):
 *
 *  1) an interface does not *extend* anything,
 *  2) rootable = false.
 *
 * This doesn't seem to be too contrary to "MPS World", and makes plenty of sense outside of it.
 * Now, we have "real" and interface concepts distinguished by the isInterface flag.
 */


@JsonTypeInfo(
    use = JsonTypeInfo.Id.NAME,
    include = JsonTypeInfo.As.PROPERTY,
    property = "metaType"
)
@JsonSubTypes(
    JsonSubTypes.Type(Property::class),
    JsonSubTypes.Type(Link::class)
)
sealed class Feature(
    override val name: String,
    override val deprecated: Boolean
) : StructureElement

data class Property(
    override val name: String,
    override val deprecated: Boolean,
    val targetType: String
) : Feature(name, deprecated)

data class Link(
    override val name: String,
    override val deprecated: Boolean,
    val reference: Boolean,
    val cardinality: String,
    val targetType: String  // TODO  make reference to a Concept/Interface
) : Feature(name, deprecated)


data class ConstrainedString(
    override val name: String,
    override val deprecated: Boolean,
    val constrainingRegexp: String
) : StructureElement


data class Enumeration(
    override val name: String,
    override val deprecated: Boolean,
    val members: Iterable<EnumerationMember> = emptyList(),
    val defaultMember: String
) : StructureElement

data class EnumerationMember(
    val name: String,
    val presentation: String
)


fun ModelXml.asStructure(): Structure {
    val metaConcepts = metaConcepts()
    val memois = hashMapOf<String, Any>()
    val modelXml = this
    val supported = listOf("ConceptDeclaration", "ConstrainedDataTypeDeclaration", "EnumerationDeclaration", "InterfaceConceptDeclaration").mapNotNull { metaConcepts.named(it) }.map { it.index }
    return Structure(
        elements = modelXml.nodes.filter { supported.contains(it.concept) }.map { it.fromXml(metaConcepts, memois) as StructureElement }
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
        "ConstrainedDataTypeDeclaration" -> {
            val constrainedDataTypeDeclaration = metaConcepts["ConstrainedDataTypeDeclaration"]
            memois.of(nodeXml to ConstrainedString(
                name = nodeXml.thisPropertySetting(iNamedConcept.properties["name"])!!,
                deprecated = isDeprecated(),
                constrainingRegexp = nodeXml.thisPropertySetting(constrainedDataTypeDeclaration.properties["constraint"])!!
            ))
        }
        "EnumerationDeclaration" -> {
            val enumerationDeclaration = metaConcepts["EnumerationDeclaration"]
            memois.of(nodeXml to Enumeration(
                name = nodeXml.thisPropertySetting(iNamedConcept.properties["name"])!!,
                deprecated = isDeprecated(),
                members = nodeXml.theseChildNodes(enumerationDeclaration.children.named("members")).map { it.fromXml(metaConcepts, memois) as EnumerationMember },
                defaultMember = nodeXml.thisReferenceSetting(enumerationDeclaration.references.named("defaultMember"))!!.resolve!!
            ))
        }
        "EnumerationMemberDeclaration" -> {
            val enumerationMemberDeclaration = metaConcepts["EnumerationMemberDeclaration"]
            memois.of(nodeXml to EnumerationMember(
                name = nodeXml.thisPropertySetting(iNamedConcept.properties["name"])!!,
                presentation = nodeXml.thisPropertySetting(enumerationMemberDeclaration.properties["presentation"]) ?: "???"
            ))
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
                cardinality = readableSourceCardinality(thisPropertySetting(linkDeclaration.properties.named("sourceCardinality"))),
                targetType = thisReferenceSetting(linkDeclaration.references["target"])!!.resolve!!
            ))
        }
        "PropertyDeclaration" -> {
            val propertyDeclaration = metaConcepts["PropertyDeclaration"]
            memois.of(nodeXml to Property(
                name = nodeXml.thisPropertySetting(iNamedConcept.properties["name"])!!,
                targetType = thisReferenceSetting(propertyDeclaration.references["dataType"])!!.resolve!!,
                deprecated = isDeprecated()
            ))
        }
        else -> throw Error("no Kotlin class for concept ${metaConcept.name}")
    }
}

/*
 * Note: a lot of this should be generatable from a structure-model for the Structure language (relying on the meta-circularity of the MPS code base),
 * or on a hand-crafted representation of the same using Kotlin's object literals.
 */

