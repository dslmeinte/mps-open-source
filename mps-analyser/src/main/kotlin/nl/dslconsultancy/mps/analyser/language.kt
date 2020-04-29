package nl.dslconsultancy.mps.analyser

import com.fasterxml.jackson.annotation.JsonIgnore
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonSubTypes
import com.fasterxml.jackson.annotation.JsonTypeInfo
import nl.dslconsultancy.mps.analyser.util.div
import nl.dslconsultancy.mps.analyser.xml.asStructure
import nl.dslconsultancy.mps.analyser.xml.modelXmlFromDisk
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.attribute.BasicFileAttributes
import java.util.function.BiPredicate


data class Language(
    /** Path to XML file with this language's meta and configuration data. */
    val path: Path,
    val name: String,
    val uuid: String,
    val languageVersion: Int,
    val dependencies: Iterable<Dependency>,
    /** Name of directory containing this language's aspect models (structure, behavior, etc.). */
    val modelsDir: String,
    private var cachedStructure: Structure? = null
) {

    fun structure(): Structure {
        if (cachedStructure == null) {
            val structureModelPath = Files
                .find(path.parent/modelsDir, 42, BiPredicate { f: Path, _: BasicFileAttributes -> f.fileName.toString().endsWith("structure.mps") })
                .findFirst()
                .get()
            try {
                cachedStructure = modelXmlFromDisk(structureModelPath).asStructure()
            } catch (e: Exception) {
                System.err.println("could not read structure model XML file '$structureModelPath' for language '$name'; due to:")
                System.err.println(e.message)
                e.printStackTrace(System.err)
            }
        }
        return cachedStructure!!
    }

}


data class Dependency(
    val reexport: Boolean,
    val dependencyId: String
)


interface StructureElement {
    val name: String
    val deprecated: Boolean
}


@JsonTypeInfo(
    use = JsonTypeInfo.Id.NAME,
    include = JsonTypeInfo.As.PROPERTY,
    property = "metaType"
)
@JsonSubTypes(
    JsonSubTypes.Type(Concept::class),
    JsonSubTypes.Type(ConstrainedString::class),
    JsonSubTypes.Type(Enumeration::class)
)
sealed class StructuralElement : StructureElement {
    abstract val features: Iterable<Feature>
}


/*
 * Because of recursive creation, all properties that (can) contain references to other objects must be vars initialized to empty.
 */

data class Structure(
    val elements: Iterable<StructureElement> = emptyList()
) {
    fun concepts() = elements.filterIsInstance<Concept>()
    fun enumerations() = elements.filterIsInstance<Enumeration>()
    fun constrainedStrings() = elements.filterIsInstance<ConstrainedString>()
}

data class Concept(
    override val name: String,
    val isInterface: Boolean,
    val rootable: Boolean,
    val alias: String?,
    val shortDescription: String?,
    override val deprecated: Boolean,
    @JsonIgnore var extends: Concept? = null,
    @JsonIgnore var implements: Iterable<Concept> = emptyList(),
    override var features: Iterable<Feature> = emptyList()
) : StructuralElement() {

    @JsonProperty("extends")
    fun extendsForJson() = extends?.name

    @JsonProperty("implements")
    fun implementsForJson() = implements.map { it.name }
}

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
    JsonSubTypes.Type(Property::class),
    JsonSubTypes.Type(Link::class)
)
sealed class Feature(
    override val name: String,
    override val deprecated: Boolean
) : StructureElement

data class Property(
    override val name: String,
    override val deprecated: Boolean,
    val targetType: String
) : Feature(name, deprecated)

data class Link(
    override val name: String,
    override val deprecated: Boolean,
    val reference: Boolean,
    val cardinality: String,
    val targetType: String  // TODO  make reference to a Concept/Interface
) : Feature(name, deprecated)


data class ConstrainedString(
    override val name: String,
    override val deprecated: Boolean,
    val constrainingRegexp: String
) : StructureElement


data class Enumeration(
    override val name: String,
    override val deprecated: Boolean,
    val members: Iterable<EnumerationMember> = emptyList(),
    val defaultMember: String
) : StructureElement

data class EnumerationMember(
    val name: String,
    val presentation: String
)

