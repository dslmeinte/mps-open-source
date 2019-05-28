package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty

@JsonRootName("project")
data class MpsProject(

    @JacksonXmlProperty(isAttribute = true)
    var version: Int,

    var component: Component

)

data class Component(

    @JacksonXmlProperty(isAttribute = true)
    var name: String,

    var projectModules: ProjectModules

)

data class ProjectModules(

    @set:JsonProperty("modulePath")
    var projectModules: List<ProjectModule> = ArrayList()

)

data class ProjectModule(

    @JacksonXmlProperty(isAttribute = true)
    var path: String,

    @JacksonXmlProperty(isAttribute = true)
    var folder: String

)

// TODO  use @JsonAlias and such to reduce to 2 data classes (see https://medium.com/@foxjstephen/how-to-actually-parse-xml-in-java-kotlin-221a9309e6e8)

