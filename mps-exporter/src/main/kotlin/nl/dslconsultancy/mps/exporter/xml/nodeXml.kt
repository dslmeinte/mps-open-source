package nl.dslconsultancy.mps.exporter.xml

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
    var childNodes: List<NodeXml> = emptyList()

    , @set:JsonProperty("ref")
    var referenceSettings: List<ReferenceSettingXml> = emptyList()

    , var parent: NodeXml?

    , var model: ModelXml?

) {
    override fun toString() = "Node(id=$id)"
}

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

    /** The id of a node within this model (?). */
    , @JacksonXmlProperty(isAttribute = true)
    val node: String?

    /** A text rendering of the reference. */
    , @JacksonXmlProperty(isAttribute = true)
    val resolve: String?

)


fun NodeXml.populateCompositionRefs(parent: NodeXml?, model: ModelXml) {
    this.parent = parent
    this.model = model
    this.childNodes.forEach { it.populateCompositionRefs(this, model) }
}


