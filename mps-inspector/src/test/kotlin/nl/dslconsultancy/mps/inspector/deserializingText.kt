package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlText
import com.fasterxml.jackson.module.kotlin.readValue
import kotlin.test.Ignore
import kotlin.test.Test

class JacksonTests {

    @Test
    @Ignore
    fun `deserialize text inside tag`() {
        val xml = """<Root>
        <Element1 ns="xxx">
        <Element2 ns="yyy">A String</Element2>
        </Element1>
        </Root>"""

        val root = JacksonUtil.xmlMapper().readValue<Root>(xml)
        println(root)
    }

}

data class Root(
    @JacksonXmlProperty(localName = "Element1")
    var element1: Element1
)

data class Element1(
    @JacksonXmlProperty(isAttribute = true)
    var ns: String,

    @JacksonXmlProperty(localName = "Element2")
    var element2: Element2
)

data class Element2(
    @JacksonXmlProperty(isAttribute = true)
    var ns: String,

    @JacksonXmlText
    var value: String
)

