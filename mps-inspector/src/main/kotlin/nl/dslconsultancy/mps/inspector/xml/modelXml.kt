package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.inspector.util.JacksonXmlUtil.readXml
import nl.dslconsultancy.mps.inspector.util.lastSection
import java.nio.file.Path

@JsonRootName("model")
data class ModelXml(

    @set:JsonProperty("languages")
    var dependencies: Dependencies,

    val registry: RegistryXml?,

    @set:JsonProperty("node")
    var nodes: List<NodeXml> = arrayListOf()

)

data class Dependencies(
    @set:JsonProperty("use")
    var importedLanguages: List<ImportedLanguage> = arrayListOf()
)

data class ImportedLanguage(

    @JacksonXmlProperty(isAttribute = true)
    val id: String,

    @JacksonXmlProperty(isAttribute = true)
    val name: String,

    @JacksonXmlProperty(isAttribute = true)
    val version: Int

)

data class RegistryXml(

    @set:JsonProperty("language")
    var languages: List<MetaLanguageDefXml> = arrayListOf()

)

data class MetaLanguageDefXml(

    @set:JsonProperty("concept")
    var metaConcepts: List<MetaConceptXml> = arrayListOf()

)

data class MetaConceptXml(

    @JacksonXmlProperty(isAttribute = true)
    val id: String,

    @JacksonXmlProperty(isAttribute = true)
    val name: String,

    @JacksonXmlProperty(isAttribute = true)
    val index: String,

    @set:JsonProperty("property")
    var properties: List<MetaFeatureXml> = arrayListOf(),

    @set:JsonProperty("child")
    var children: List<MetaFeatureXml> = arrayListOf(),

    @set:JsonProperty("reference")
    var references: List<MetaFeatureXml> = arrayListOf()

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
    var properties: List<PropertyXml> = arrayListOf(),

    @set:JsonProperty("node")
    var children: List<NodeXml> = arrayListOf(),

    @set:JsonProperty("ref")
    var references: List<ReferenceXml> = arrayListOf()

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
    val resolve: String?

)


fun modelXmlFromDisk(path: Path): ModelXml = readXml(path)

fun ModelXml.metaConcepts(): List<MetaConceptXml> = if (this.registry == null) emptyList() else this.registry.languages.flatMap { it.metaConcepts }

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


fun NodeXml.allNodes(): List<NodeXml> = listOf(this, *this.children.flatMap { it.allNodes() }.toTypedArray())

private fun MetaConceptXml.featureByIndex(index: String): MetaFeatureXml? =
    this.properties.find { it.index == index }
        ?: this.children.find { it.index == index }
        ?: this.references.find { it.index == index }

fun List<MetaConceptXml>.featureByIndex(index: String): Pair<MetaFeatureXml, MetaConceptXml> {
    val concept = this.find { it.featureByIndex(index) != null }
    return concept!!.featureByIndex(index)!! to concept
}

fun Pair<MetaFeatureXml, MetaConceptXml>.fullName(): String = "${this.second.name}#${this.first.name}"

