package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonSubTypes
import com.fasterxml.jackson.annotation.JsonSubTypes.Type
import com.fasterxml.jackson.annotation.JsonTypeInfo
import nl.dslconsultancy.mps.inspector.xml.ProjectModule

data class MpsProject(val name: String, val version: Int, val modules: List<ProjectModule>)
// TODO  use projected ProjectModule instances instead of instances of a class intended for XML deserialization

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
    Type(Concept::class),
    Type(InterfaceConcept::class)
)
interface StructuralElement

class Structure {
    lateinit var elements: Iterable<StructuralElement>
    override fun toString(): String = "Structure(elements=$elements)"
    fun equals(other: Structure): Boolean = elements == other.elements
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as Structure)
    override fun hashCode(): Int = elements.hashCode()
}

class Concept(
    val name: String,
    val rootable: Boolean,
    val alias: String?,
    val shortDescription: String?,
    val deprecated: Boolean
) : StructuralElement {
    var extends: String? = null   // TODO  make reference to Concept
    lateinit var implements: Iterable<String>   // TODO  make references to Interface
    lateinit var features: Iterable<Feature>
    override fun toString(): String = "Concept(name='$name', rootable=$rootable, alias=$alias, shortDescription=$shortDescription, deprecated=$deprecated, extends=$extends, implements=$implements, features=$features)"
    fun equals(other: Concept): Boolean = name == other.name && rootable == other.rootable && alias == other.alias && shortDescription == other.shortDescription && deprecated == other.deprecated && extends == other.extends && implements == other.implements && features == other.features
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as Concept)
    override fun hashCode(): Int {
        var result = name.hashCode()
        result = 31 * result + rootable.hashCode()
        result = 31 * result + (alias?.hashCode() ?: 0)
        result = 31 * result + (shortDescription?.hashCode() ?: 0)
        result = 31 * result + deprecated.hashCode()
        result = 31 * result + (extends?.hashCode() ?: 0)
        result = 31 * result + implements.hashCode()
        result = 31 * result + features.hashCode()
        return result
    }   // TODO  do as 1-liner
}


class InterfaceConcept(
    val name: String,
    val deprecated: Boolean
) : StructuralElement {
    lateinit var features: Iterable<Feature>
    override fun toString(): String = "InterfaceConcept(name='$name', deprecated=$deprecated, features=$features)"
    fun equals(other: InterfaceConcept): Boolean = name == other.name && deprecated == other.deprecated && features == other.features
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as InterfaceConcept)
    override fun hashCode(): Int = 31 * (31 * name.hashCode() + deprecated.hashCode()) + features.hashCode()
}



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
interface Feature

class Property(
    val name: String,
    val deprecated: Boolean
) : Feature {
    override fun toString(): String = "Property(name='$name', deprecated=$deprecated)"
    fun equals(other: Property): Boolean = name == other.name && deprecated == other.deprecated
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as Property)
    override fun hashCode(): Int = 31 * name.hashCode() + deprecated.hashCode()
}

class Child(
    val name: String,
    val deprecated: Boolean
): Feature {
    override fun toString(): String = "Child(name='$name', deprecated=$deprecated)"
    fun equals(other: Child): Boolean = name == other.name && deprecated == other.deprecated
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as Child)
    override fun hashCode(): Int = 31 * name.hashCode() + deprecated.hashCode()
}

//data class Reference(val name: String): Feature

