package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import nl.dslconsultancy.mps.inspector.Concept
import nl.dslconsultancy.mps.inspector.Structure
import nl.dslconsultancy.mps.inspector.util.JacksonXmlUtil.readXml
import nl.dslconsultancy.mps.inspector.util.findSingle
import nl.dslconsultancy.mps.inspector.util.lastSection
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


fun readStructureXml(path: Path): StructureXml {
    return readXml(path)
}


private fun Iterable<MetaConceptXml>.named(name: String): MetaConceptXml {
    return this.findSingle { it.name.lastSection() == name }
}

private fun Iterable<MetaFeatureXml>.named(name: String): MetaFeatureXml? {
    return this.filter { it.name == name }.getOrNull(0)
}

private fun NodeXml.propertyValue(featureDecl: MetaFeatureXml?): String? {
    return if (featureDecl == null) null else this.properties.filter { it.role == featureDecl.index }.getOrNull(0)?.value
}

private fun NodeXml.children(featureDecl: MetaFeatureXml?): Iterable<NodeXml> {
    return if (featureDecl == null) emptyList() else this.children.filter { it.role == featureDecl.index }
}

private fun NodeXml.reference(featureDecl: MetaFeatureXml?): ReferenceXml? {
    return if (featureDecl == null) null else this.references.filter { it.role == featureDecl.index }[0]
}


data class Declarations(
    val concept: MetaConceptXml,
    val name: MetaFeatureXml?,
    val extends: MetaFeatureXml?,
    val implements: MetaFeatureXml?,
    val intfc: MetaFeatureXml?,
    val rootable: MetaFeatureXml?,
    val alias: MetaFeatureXml?,
    val shortDescription: MetaFeatureXml?
)

fun StructureXml.asStructure(): Structure {
    val metaConcepts = this.registry.languages.flatMap { it.metaConcepts }
    val conceptDecl = metaConcepts.named("ConceptDeclaration")
    val abstractConceptDecl = metaConcepts.named("AbstractConceptDeclaration")
    val decls = Declarations(
        conceptDecl,
        metaConcepts.named("INamedConcept").properties.named("name"),
        conceptDecl.references.named("extends"),
        conceptDecl.children.named("implements"),
        metaConcepts.named("InterfaceConceptReference").references.named("intfc"),
        conceptDecl.properties.named("rootable"),
        abstractConceptDecl.properties.named("conceptAlias"),
        abstractConceptDecl.properties.named("conceptShortDescription")
    )
    // TODO  find a better solution to 1st declaring the Declarations interface, and then the object, without much type safety

    val concepts = this.nodes.filter { it.concept == decls.concept.index }
    // TODO  map this.nodes polymorphically
    return Structure(concepts.map { it.asConcept(decls) }.sortedBy { it.name })
}

private fun NodeXml.asConcept(decls: Declarations): Concept {
    return Concept(
        this.propertyValue(decls.name)!!,
        this.reference(decls.extends)?.resolve,
        this.children(decls.implements).mapNotNull { it.reference(decls.intfc)?.resolve },
        this.propertyValue(decls.rootable).orEmpty() == "true",
        this.propertyValue(decls.alias),
        this.propertyValue(decls.shortDescription),
        emptyList() // TODO  implement
    )
}

