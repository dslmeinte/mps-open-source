package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.inspector.util.lastSection

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
    val id: String

    , @JacksonXmlProperty(isAttribute = true)
    val name: String

    , @JacksonXmlProperty(isAttribute = true)
    val index: String

    , @set:JsonProperty("property")
    var properties: List<MetaFeatureXml> = emptyList()

    , @set:JsonProperty("child")
    var children: List<MetaFeatureXml> = emptyList()

    , @set:JsonProperty("reference")
    var references: List<MetaFeatureXml> = emptyList()

)

/**
 * A definition of a feature (property, child, or reference) of a language construct.
 */
data class MetaFeatureXml(

      @JacksonXmlProperty(isAttribute = true)
    val id: String

    , @JacksonXmlProperty(isAttribute = true)
    val name: String

    , @JacksonXmlProperty(isAttribute = true)
    val index: String

)


fun Iterable<MetaConceptXml>.named(name: String): MetaConceptXml? = firstOrNull { it.name.lastSection() == name }
operator fun Iterable<MetaConceptXml>.get(name: String): MetaConceptXml = this.named(name)!!

fun Iterable<MetaConceptXml>.byIndex(index: String): MetaConceptXml = single { it.index == index }

fun Iterable<MetaFeatureXml>.named(name: String): MetaFeatureXml? = firstOrNull { it.name == name }
operator fun Iterable<MetaFeatureXml>.get(name: String): MetaFeatureXml = this.named(name)!!


private fun MetaConceptXml.featureByIndex(index: String): MetaFeatureXml? =
    properties.find { it.index == index }
        ?: children.find { it.index == index }
        ?: references.find { it.index == index }

fun List<MetaConceptXml>.featureByIndex(index: String): Pair<MetaFeatureXml, MetaConceptXml> {
    val concept = find { it.featureByIndex(index) != null }
    return concept!!.featureByIndex(index)!! to concept
}

