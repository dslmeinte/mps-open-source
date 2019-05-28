package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty

@JsonRootName("project")
data class MpsProject(

    @JacksonXmlProperty(isAttribute = true)
    var version: Int? = null,

    var component: Component? = null

)

data class Component(

    @JacksonXmlProperty(isAttribute = true)
    var name: String? = null,

    var projectModules: ProjectModules? = null

)

data class ProjectModules(

    @set:JsonProperty("modulePath")
    var projectModules: List<ProjectModule> = ArrayList()

)

data class ProjectModule(

    @JacksonXmlProperty(isAttribute = true)
    var path: String? = null,

    @JacksonXmlProperty(isAttribute = true)
    var folder: String? = null

)

// TODO  use @JsonAlias and such to reduce to 2 data classes

