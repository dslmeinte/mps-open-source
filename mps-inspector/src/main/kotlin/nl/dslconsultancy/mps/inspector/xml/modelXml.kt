package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.inspector.util.JacksonXmlUtil.readXml
import nl.dslconsultancy.mps.inspector.util.lastSection
import java.nio.file.Path

@JsonRootName("model")
data class ModelXml(

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
    var metaConcepts: List<MetaConceptXml> = ArrayList()

)

data class MetaConceptXml(

    @JacksonXmlProperty(isAttribute = true)
    val id: String,

    @JacksonXmlProperty(isAttribute = true)
    val name: String,

    @JacksonXmlProperty(isAttribute = true)
    val index: String,

    @set:JsonProperty("property")
    var properties: List<MetaFeatureXml> = ArrayList(),

    @set:JsonProperty("child")
    var children: List<MetaFeatureXml> = ArrayList(),

    @set:JsonProperty("reference")
    var references: List<MetaFeatureXml> = ArrayList()

)

data class MetaFeatureXml(

    @JacksonXmlProperty(isAttribute = true)
    val id: String,

    @JacksonXmlProperty(isAttribute = true)
    val name: String,

    @JacksonXmlProperty(isAttribute = true)
    val index: String

)

data class NodeXml(

    @JacksonXmlProperty(isAttribute = true)
    val concept: String,

    @JacksonXmlProperty(isAttribute = true)
    val id: String,

    @JacksonXmlProperty(isAttribute = true)
    val role: String?,

    @set:JsonProperty("property")
    var properties: List<PropertyXml> = ArrayList(),

    @set:JsonProperty("node")
    var children: List<NodeXml> = ArrayList(),

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
    val to: String?,

    @JacksonXmlProperty(isAttribute = true)
    val node: String?,

    @JacksonXmlProperty(isAttribute = true)
    val resolve: String

)


fun readModelXml(path: Path): ModelXml = readXml(path)

fun ModelXml.metaConcepts(): List<MetaConceptXml> = this.registry.languages.flatMap { it.metaConcepts }

fun Iterable<MetaConceptXml>.named(name: String): MetaConceptXml = this.single { it.name.lastSection() == name }

fun Iterable<MetaConceptXml>.byIndex(index: String): MetaConceptXml = this.single { it.index == index }

fun Iterable<MetaFeatureXml>.named(name: String): MetaFeatureXml? = this.filter { it.name == name }.getOrNull(0)

fun NodeXml.thisProperty(featureDecl: MetaFeatureXml?): String?
    = if (featureDecl == null) null else this.properties.filter { it.role == featureDecl.index }.getOrNull(0)?.value

fun NodeXml.theseChildren(featureDecl: MetaFeatureXml?): Iterable<NodeXml>
    = if (featureDecl == null) emptyList() else this.children.filter { it.role == featureDecl.index }

fun NodeXml.thisReference(featureDecl: MetaFeatureXml?): ReferenceXml?
    = if (featureDecl == null) null else this.references.filter { it.role == featureDecl.index }[0]


fun <T> Map<String, Any>.of(keyValue: Pair<NodeXml, T>): T {
    this.plus(keyValue.first.id to keyValue.second)
    return keyValue.second
}

