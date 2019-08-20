package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonSubTypes
import com.fasterxml.jackson.annotation.JsonSubTypes.Type
import com.fasterxml.jackson.annotation.JsonTypeInfo
import nl.dslconsultancy.mps.inspector.util.div
import nl.dslconsultancy.mps.inspector.xml.ProjectModule
import nl.dslconsultancy.mps.inspector.xml.asStructure
import nl.dslconsultancy.mps.inspector.xml.modelXmlFromDisk
import java.nio.file.Path

data class MpsProject(val name: String, val version: Int, val modules: List<ProjectModule>)
// TODO  use projected ProjectModule instances instead of instances of a class intended for XML deserialization

fun MpsProject.render(): String = "MPS project '$name' (version=$version) has ${modules.size} modules"


interface Named {
    val name: String
}

data class Language(
    val path: Path,
    override val name: String,
    val uuid: String,
    val languageVersion: Int,
    val dependencies: Iterable<Dependency>,
    var cachedStructure: Structure? = null
) : Named

data class Dependency(
    val reexport: Boolean,
    val dependencyId: String
)


fun Language.structure(): Structure {
    if (cachedStructure == null) {
        try {
            cachedStructure = modelXmlFromDisk(path.parent/"models"/"structure.mps").asStructure()
        } catch (e: Exception) {
            System.err.println("could not read structure model XML file for language '$name'; due to:")
            System.err.println(e.message)
            e.printStackTrace(System.err)
        }
    }
    return cachedStructure!!
}


interface MetaModelElement : Named {
    val deprecated: Boolean
}

@JsonTypeInfo(
    use = JsonTypeInfo.Id.NAME,
    include = JsonTypeInfo.As.PROPERTY,
    property = "metaType"
)
@JsonSubTypes(
    Type(Concept::class)
)
sealed class StructuralElement : MetaModelElement {
    abstract var features: Iterable<Feature>
}

// TODO  also define enums and such, otherwise wouldn't need OO hierarchy


/*
 * Because of recursive creation, all properties that (can) contain references to other objects must be vars initialized to empty.
 */

data class Structure(
    var elements: Iterable<StructuralElement> = emptyList()
)

data class Concept(
    override val name: String,
    val isInterface: Boolean,
    val rootable: Boolean,
    val alias: String?,
    val shortDescription: String?,
    override val deprecated: Boolean,
    var extends: String? = null,   // TODO  make reference to Concept, but make sure it also deserializes without infinite recursion
    var implements: Iterable<String> = emptyList(),   // TODO  make references to Concept with isInterface == true
    override var features: Iterable<Feature> = emptyList()
) : StructuralElement()

/*
 * The main differences between a concept and an interface concept is:
 *  1) an interface *extends* an arbitrary number of (other) interfaces
 *  2) a concept *extends* at most one concept, and *implements* an arbitrary number of interfaces.
 *
 * If we say that an interface also *implements* (instead of *extends*) interfaces,
 * and impose the following additional constraint,
 * then we can justify simply adding a boolean flag to Concept saying whether it's an interface (true), or a concept (false):
 *
 *  1) an interface does not *extend* anything,
 *  2) rootable = false.
 *
 * This doesn't seem to be too contrary to "MPS World", and makes plenty of sense outside of it.
 * Now, we have "real" and interface concepts distinguished by the isInterface flag.
 */


@JsonTypeInfo(
    use = JsonTypeInfo.Id.NAME,
    include = JsonTypeInfo.As.PROPERTY,
    property = "metaType"
)
@JsonSubTypes(
    Type(Property::class),
    Type(Link::class)
)
sealed class Feature(
    override val name: String,
    override val deprecated: Boolean
) : MetaModelElement

data class Property(
    override val name: String,
    override val deprecated: Boolean
) : Feature(name, deprecated)

data class Link(
    override val name: String,
    override val deprecated: Boolean,
    val reference: Boolean,
    val cardinality: String,
    val targetType: String  // TODO  make reference to a Concept/Interface
) : Feature(name, deprecated)

