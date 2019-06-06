package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonSubTypes
import com.fasterxml.jackson.annotation.JsonSubTypes.Type
import com.fasterxml.jackson.annotation.JsonTypeInfo
import nl.dslconsultancy.mps.inspector.xml.ProjectModule

data class MpsProject(val name: String, val version: Int, val modules: List<ProjectModule>)
// TODO  use projected ProjectModule instead of class wired for XML deserialization

fun MpsProject.render(): String = "MPS project '${this.name}' (version=${this.version}) has ${this.modules.size} modules"


data class Language(
    val name: String,
    val uuid: String,
    val languageVersion: Int,
    val dependencies: Iterable<Dependency>
)

data class Dependency(
    val reexport: Boolean,
    val dependencyId: String
)


@JsonTypeInfo(
    use = JsonTypeInfo.Id.NAME,
    include = JsonTypeInfo.As.PROPERTY,
    property = "metaType"
)
@JsonSubTypes(
    Type(value = Concept::class)
)
interface StructuralElement

data class Structure(
    val elements: Iterable<StructuralElement>
)

data class Concept(
    val name: String,
    val extends: String?,   // TODO  make reference to Concept
    val implements: Iterable<String>,   // TODO  make references to Interface
    val rootable: Boolean,
    val alias: String?,
    val shortDescription: String?,
    val features: Iterable<Feature>
) : StructuralElement

interface Feature

data class Property(val name: String) : Feature

data class Child(val name: String): Feature

data class Reference(val name: String): Feature

