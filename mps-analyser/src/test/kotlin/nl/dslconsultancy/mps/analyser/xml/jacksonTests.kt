package nl.dslconsultancy.mps.analyser.xml

import com.fasterxml.jackson.annotation.JsonBackReference
import com.fasterxml.jackson.annotation.JsonManagedReference
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlText
import com.fasterxml.jackson.module.kotlin.readValue
import nl.dslconsultancy.mps.analyser.util.JacksonJsonUtil
import nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil
import kotlin.test.Ignore
import kotlin.test.Test
import kotlin.test.assertEquals

class JacksonTests {

    @Test
    @Ignore("trying to parse XML with arbitrary text content")
    fun `deserialize text inside tag`() {
        val xml = """<Root>
        <Element1 ns="xxx">
        <Element2 ns="yyy">A String</Element2>
        </Element1>
        </Root>"""

        val root = JacksonXmlUtil.xmlMapper().readValue<Root>(xml)
        println(root)
    }

    @Test
    @Ignore("Jackson doesn't seem to pick up @Json{Managed|Back}Reference")
    fun `using @Json{Managed|Back}Reference with XML`() {
        val xml = """<Node id="1"><node id="2"/></Node>"""
        val rootNode = JacksonXmlUtil.xmlMapper().readValue<Node>(xml)
        println(rootNode)

        assertEquals("1", rootNode.id)
        assertEquals(1, rootNode.nodes.size)
        assertEquals(null, rootNode.parent)

        val (id, nodes, parent) = rootNode.nodes[0]
        assertEquals("2", id)
        assertEquals(0, nodes.size)
        assertEquals(rootNode, parent, "parent of child node of (root) node == (root) node")
    }

    @Test
    @Ignore("Jackson doesn't seem to pick up @Json{Managed|Back}Reference")
    fun `using @Json{Managed|Back}Reference with JSON`() {
        val xml = """{ "id": "1", "node": [ { "id": "2" } ] }"""
        val rootNode = JacksonJsonUtil.jsonMapper.readValue<Node>(xml)

        assertEquals("1", rootNode.id)
        assertEquals(1, rootNode.nodes.size)
        assertEquals(null, rootNode.parent)

        val (id, nodes, parent) = rootNode.nodes[0]
        assertEquals("2", id)
        assertEquals(0, nodes.size)
        assertEquals(rootNode, parent, "parent of child node of (root) node == (root) node")
    }

}


data class Root(
    @JacksonXmlProperty(localName = "Element1")
    val element1: Element1
)

data class Element1(
    @JacksonXmlProperty(isAttribute = true)
    val ns: String,

    @JacksonXmlProperty(localName = "Element2")
    val element2: Element2
)

data class Element2(
    @JacksonXmlProperty(isAttribute = true)
    val ns: String,

    @JacksonXmlText
    val value: String
)


data class Node(

    @JacksonXmlProperty(isAttribute = true)
    val id: String

    , @JsonManagedReference("node")
    @set:JsonProperty("node")
    var nodes: List<Node> = emptyList()

    ,  @JsonBackReference("node")
    var parent: Node?

)

