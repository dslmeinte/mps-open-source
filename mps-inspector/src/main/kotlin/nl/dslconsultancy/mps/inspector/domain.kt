package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonSubTypes
import com.fasterxml.jackson.annotation.JsonSubTypes.Type
import com.fasterxml.jackson.annotation.JsonTypeInfo
import nl.dslconsultancy.mps.inspector.xml.ProjectModule

data class MpsProject(val name: String, val version: Int, val modules: List<ProjectModule>)
// TODO  use projected ProjectModule instances instead of instances of a class intended for XML deserialization

fun MpsProject.render(): String = "MPS project '$name' (version=$version) has ${modules.size} modules"


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
    Type(Concept::class),
    Type(InterfaceConcept::class)
)
sealed class StructuralElement


/*
 * Because of recursive creation, all properties that (can) contain references to other objects must be vars initialized to empty.
 */

data class Structure(
    var elements: Iterable<StructuralElement> = emptyList()
)

data class Concept(
    val name: String,
    val rootable: Boolean,
    val alias: String?,
    val shortDescription: String?,
    val deprecated: Boolean,
    var extends: String? = null,   // TODO  make reference to Concept
    var implements: Iterable<String> = emptyList(),   // TODO  make references to Interface
    var features: Iterable<Feature> = emptyList()
) : StructuralElement()


data class InterfaceConcept(
    val name: String,
    val deprecated: Boolean,
    var features: Iterable<Feature> = emptyList()
) : StructuralElement()



@JsonTypeInfo(
    use = JsonTypeInfo.Id.NAME,
    include = JsonTypeInfo.As.PROPERTY,
    property = "metaType"
)
@JsonSubTypes(
    Type(Property::class),
    Type(Child::class)
//, Type(Reference::class)
)
sealed class Feature

data class Property(
    val name: String,
    val deprecated: Boolean
) : Feature()

data class Child(
    val name: String,
    val deprecated: Boolean
) : Feature()

//data class Reference(val name: String) : Feature()

