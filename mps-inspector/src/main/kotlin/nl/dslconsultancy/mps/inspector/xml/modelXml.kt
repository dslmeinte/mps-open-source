package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty

data class NodeXml(

    @JacksonXmlProperty(isAttribute = true)
    val concept: String,

    @JacksonXmlProperty(isAttribute = true)
    val id: String,

    @JacksonXmlProperty(isAttribute = true)
    val role: String?,

    @set:JsonProperty("property")
    var properties: List<PropertyXml> = ArrayList(),

    @set:JsonProperty("ref")
    var references: List<ReferenceXml> = ArrayList()

)

data class PropertyXml(

    @JacksonXmlProperty(isAttribute = true)
    val role: String,

    @JacksonXmlProperty(isAttribute = true)
    val value: String

)

data class ReferenceXml(

    @JacksonXmlProperty(isAttribute = true)
    val role: String,

    @JacksonXmlProperty(isAttribute = true)
    val to: String,

    @JacksonXmlProperty(isAttribute = true)
    val resolve: String

)

