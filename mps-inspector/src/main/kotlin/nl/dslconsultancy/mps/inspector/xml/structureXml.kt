package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.inspector.Structure
import nl.dslconsultancy.mps.inspector.util.JacksonUtil.readXml
import java.nio.file.Path

@JsonRootName("model")
data class StructureXml(

    val registry: RegistryXml,

    @set:JsonProperty("node")
    var nodes: List<NodeXml> = ArrayList()

)

data class RegistryXml(

    @set:JsonProperty("language")
    var languages: List<MetaLanguageDefXml> = ArrayList()

)

data class MetaLanguageDefXml(

    @set:JsonProperty("concept")
    var concepts: List<ConceptDefXml> = ArrayList()

)

data class ConceptDefXml(

    @JacksonXmlProperty(isAttribute = true)
    val name: String,

    @JacksonXmlProperty(isAttribute = true)
    val index: String,

    @set:JsonProperty("property")
    var properties: List<FeatureDefXml> = ArrayList(),

    @set:JsonProperty("child")
    var children: List<FeatureDefXml> = ArrayList(),

    @set:JsonProperty("reference")
    var references: List<FeatureDefXml> = ArrayList()

)

data class FeatureDefXml(

    @JacksonXmlProperty(isAttribute = true)
    val name: String,

    @JacksonXmlProperty(isAttribute = true)
    val index: String

)


fun readStructureXml(path: Path): StructureXml {
    return readXml(path)
}


fun StructureXml.asDomain() : Structure {
    return Structure(emptyList())
}

