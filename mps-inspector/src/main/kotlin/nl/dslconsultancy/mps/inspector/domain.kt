package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.xml.ProjectModule

data class MpsProject(val name: String, val version: Int, val modules: List<ProjectModule>)
// TODO  use projected ProjectModule instead of class wired for XML deserialisation

fun MpsProject.render(): String {
    return "MPS project '${this.name}' (version=${this.version}) has ${this.modules.size} modules"
}


data class Language(
    val name: String,
    val uuid: String,
    val languageVersion: Int,
    val dependencies: List<Dependency>
)

data class Dependency(
    val reexport: Boolean,
    val dependencyId: String
)


interface StructuralElement

data class Structure(
    val elements: List<StructuralElement>
)

data class Concept(
    val name: String,
    val features: List<Feature>
) : StructuralElement

interface Feature

data class Property(val name: String) : Feature

data class Child(val name: String): Feature

data class Reference(val name: String): Feature

