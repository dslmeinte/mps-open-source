package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.inspector.util.JacksonXmlUtil.xmlFromDisk
import java.nio.file.Path

@JsonRootName("model")
data class ModelXml(

      @set:JsonProperty("languages")
    var dependencies: Dependencies?

    , val registry: RegistryXml?

    , @set:JsonProperty("node")
    var nodes: List<NodeXml> = emptyList()

)

/**
 * Model XML with just the top-level, and meta data.
 */
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
    val id: String

    , @JacksonXmlProperty(isAttribute = true)
    val name: String

    , @JacksonXmlProperty(isAttribute = true)
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


/**
 * Reads an MPS model XML file from the given path, returning an empty model if any error occurs.
 */
fun modelXmlFromDisk(path: Path): ModelXml = xmlFromDisk(path) { skippedPath, _ ->
    println("could not read '$skippedPath' as MPS model XML: skipped")
    emptyModelXml
}.apply { this.nodes.forEach { it.populateCompositionRefs(null, this) } }


/**
 * Reads the top-level and meta data parts of an MPS model XML file from the given path,
 * returning an empty model if any error occurs.
 */
fun modelXmlWithoutNodesFromDisk(path: Path): ModelXmlWithoutNodes = xmlFromDisk(path)


/**
 * The language constructs used in this model XML file.
 */
fun ModelXml.metaConcepts(): List<MetaConceptXml> = registry?.languages?.flatMap { it.metaConcepts } ?: emptyList()


fun ModelXml.namesImportedLanguages(): List<String> =
    dependencies?.importedLanguages?.map { il -> il.name } ?: emptyList()


fun ModelXml.findById(id: String): NodeXml? = this.nodes.findById(id)

