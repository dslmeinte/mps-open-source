package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty

data class NodeXml(

    @JacksonXmlProperty(isAttribute = true)
    val concept: String

    , @JacksonXmlProperty(isAttribute = true)
    val id: String

    , @JacksonXmlProperty(isAttribute = true)
    val role: String?

    , @set:JsonProperty("property")
    var propertySettings: List<PropertySettingXml> = emptyList()

    , @set:JsonProperty("node")
//    @JsonManagedReference("nodes")
    var childNodes: List<NodeXml> = emptyList()

    , @set:JsonProperty("ref")
    var referenceSettings: List<ReferenceSettingXml> = emptyList()

//    , @JsonBackReference("nodes")
//    val parent: NodeXml?

//    , @JsonBackReference("model")
//    val model: ModelXml

)

data class PropertySettingXml(

      @JacksonXmlProperty(isAttribute = true)
    val role: String

    , @JacksonXmlProperty(isAttribute = true)
    val value: String

)

data class ReferenceSettingXml(

      @JacksonXmlProperty(isAttribute = true)
    val role: String

    , @JacksonXmlProperty(isAttribute = true)
    val to: String?

    , @JacksonXmlProperty(isAttribute = true)
    val node: String?

    , @JacksonXmlProperty(isAttribute = true)
    val resolve: String?

)


fun NodeXml.thisPropertySetting(featureDecl: MetaFeatureXml?): String? =
    if (featureDecl == null) null else propertySettings.filter { it.role == featureDecl.index }.getOrNull(0)?.value

fun NodeXml.theseChildNodes(featureDecl: MetaFeatureXml?): Iterable<NodeXml> =
    if (featureDecl == null) emptyList() else childNodes.filter { it.role == featureDecl.index }

fun NodeXml.thisReferenceSetting(featureDecl: MetaFeatureXml?): ReferenceSettingXml? =
    if (featureDecl == null) null else referenceSettings.filter { it.role == featureDecl.index }.getOrNull(0)


fun Iterable<NodeXml>.findById(id: String): NodeXml? = this.mapNotNull { it.findById(id) }.first()

fun NodeXml.findById(id: String): NodeXml? = if (this.id == id) this else this.childNodes.findById(id)


/**
 * Intended for memoising.
 * Usage: {@code memois.of(src to dst()).apply { ... }}
 */
fun <T> Map<String, Any>.of(keyValue: Pair<NodeXml, T>): T {
    plus(keyValue.first.id to keyValue.second)
    return keyValue.second
}


fun NodeXml.allNodes(): List<NodeXml> = listOf(this) + childNodes.flatMap { it.allNodes() }

