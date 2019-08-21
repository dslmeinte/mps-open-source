package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.inspector.util.JacksonXmlUtil.xmlFromDisk
import nl.dslconsultancy.mps.inspector.util.lastSection
import java.nio.file.Path

@JsonRootName("model")
data class ModelXml(

    @set:JsonProperty("languages")
    var dependencies: Dependencies?,

    val registry: RegistryXml?,

    @set:JsonProperty("node")
    var nodes: List<NodeXml> = emptyList()

)

@JsonRootName("model")
data class ModelXmlWithoutNodes(

    @set:JsonProperty("languages")
    var dependencies: Dependencies?

)

val emptyModelXml = ModelXml(null, null)

data class Dependencies(
    @set:JsonProperty("use")
    var importedLanguages: List<ImportedLanguage> = emptyList()
)

data class ImportedLanguage(

    @JacksonXmlProperty(isAttribute = true)
    val id: String,

    @JacksonXmlProperty(isAttribute = true)
    val name: String,

    @JacksonXmlProperty(isAttribute = true)
    val version: Int

)

/**
 * A registry of all used languages, and all used constructs of these.
 * ("Used", as in: used at least in a model XML file.)
 */
data class RegistryXml(

    @set:JsonProperty("language")
    var languages: List<MetaLanguageDefXml> = emptyList()

)


/*
 * Subsequent 3 data class having names of the form "Meta<X>Xml"
 * to indicate they correspond to the meta-part of a model XML file.
 */

/**
 * A definition of a language used in a model XML file.
 */
data class MetaLanguageDefXml(

    @set:JsonProperty("concept")
    var metaConcepts: List<MetaConceptXml> = emptyList()

)

/**
 * A definition of a language construct (==concept, but can also be on the meta level of MPS itself).
 */
data class MetaConceptXml(

    @JacksonXmlProperty(isAttribute = true)
    val id: String,

    @JacksonXmlProperty(isAttribute = true)
    val name: String,

    @JacksonXmlProperty(isAttribute = true)
    val index: String,

    @set:JsonProperty("property")
    var properties: List<MetaFeatureXml> = emptyList(),

    @set:JsonProperty("child")
    var children: List<MetaFeatureXml> = emptyList(),

    @set:JsonProperty("reference")
    var references: List<MetaFeatureXml> = emptyList()

)

/**
 * A definition of a feature (property, child, or reference) of a language construct.
 */
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
    var propertySettings: List<PropertySettingXml> = emptyList(),

    @set:JsonProperty("node")
    var childNodes: List<NodeXml> = emptyList(),

    @set:JsonProperty("ref")
    var referenceSettings: List<ReferenceSettingXml> = emptyList()

)

data class PropertySettingXml(

    @JacksonXmlProperty(isAttribute = true)
    val role: String,

    @JacksonXmlProperty(isAttribute = true)
    val value: String

)

data class ReferenceSettingXml(

    @JacksonXmlProperty(isAttribute = true)
    val role: String,

    @JacksonXmlProperty(isAttribute = true)
    val to: String?,

    @JacksonXmlProperty(isAttribute = true)
    val node: String?,

    @JacksonXmlProperty(isAttribute = true)
    val resolve: String?

)


/**
 * Reads an MPS model XML file from the given path, returning an empty model if any error occurs.
 */
fun modelXmlFromDisk(path: Path): ModelXml = xmlFromDisk(path) { skippedPath, _ ->
    println("could not read '$skippedPath' as MPS model XML: skipped")
    emptyModelXml
}

fun modelXmlWithoutNodesFromDisk(path: Path): ModelXmlWithoutNodes = xmlFromDisk(path)


/**
 * The language constructs used in this model XML file.
 */
fun ModelXml.metaConcepts(): List<MetaConceptXml> = registry?.languages?.flatMap { it.metaConcepts } ?: emptyList()

fun Iterable<MetaConceptXml>.named(name: String): MetaConceptXml? = firstOrNull { it.name.lastSection() == name }
operator fun Iterable<MetaConceptXml>.get(name: String): MetaConceptXml = this.named(name)!!

fun Iterable<MetaConceptXml>.byIndex(index: String): MetaConceptXml = single { it.index == index }

fun Iterable<MetaFeatureXml>.named(name: String): MetaFeatureXml? = firstOrNull { it.name == name }
operator fun Iterable<MetaFeatureXml>.get(name: String): MetaFeatureXml = this.named(name)!!


fun NodeXml.thisPropertySetting(featureDecl: MetaFeatureXml?): String? =
    if (featureDecl == null) null else propertySettings.filter { it.role == featureDecl.index }.getOrNull(0)?.value

fun NodeXml.theseChildNodes(featureDecl: MetaFeatureXml?): Iterable<NodeXml> =
    if (featureDecl == null) emptyList() else childNodes.filter { it.role == featureDecl.index }

fun NodeXml.thisReferenceSetting(featureDecl: MetaFeatureXml?): ReferenceSettingXml? =
    if (featureDecl == null) null else referenceSettings.filter { it.role == featureDecl.index }.getOrNull(0)


/**
 * Intended for memoising.
 * Usage: {@code memois.of(src to dst()).apply { ... }}
 */
fun <T> Map<String, Any>.of(keyValue: Pair<NodeXml, T>): T {
    plus(keyValue.first.id to keyValue.second)
    return keyValue.second
}


fun NodeXml.allNodes(): List<NodeXml> = listOf(this) + childNodes.flatMap { it.allNodes() }


private fun MetaConceptXml.featureByIndex(index: String): MetaFeatureXml? =
    properties.find { it.index == index }
        ?: children.find { it.index == index }
        ?: references.find { it.index == index }

fun List<MetaConceptXml>.featureByIndex(index: String): Pair<MetaFeatureXml, MetaConceptXml> {
    val concept = find { it.featureByIndex(index) != null }
    return concept!!.featureByIndex(index)!! to concept
}


fun ModelXml.namesImportedLanguages(): List<String> =
    dependencies?.importedLanguages?.map { il -> il.name } ?: emptyList()

