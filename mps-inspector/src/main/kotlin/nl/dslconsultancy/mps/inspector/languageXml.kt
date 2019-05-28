package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonRootName
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlText

@JsonRootName("language")
data class Language(

    @JacksonXmlProperty(isAttribute = true, localName = "namespace")
    var name: String,

    @JacksonXmlProperty(isAttribute = true)
    var uuid: String,

    @JacksonXmlProperty(isAttribute = true)
    var languageVersion: Int,

    @JacksonXmlProperty(isAttribute = true)
    var moduleVersion: Int

)
