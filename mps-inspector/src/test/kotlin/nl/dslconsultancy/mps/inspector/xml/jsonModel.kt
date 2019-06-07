package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.databind.JsonNode
import com.fasterxml.jackson.databind.node.DecimalNode
import com.fasterxml.jackson.databind.node.NullNode
import com.fasterxml.jackson.databind.node.TextNode
import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil.jsonMapper
import nl.dslconsultancy.mps.inspector.util.lastSection
import java.math.BigDecimal
import java.nio.file.Paths
import kotlin.test.Test
import kotlin.test.assertEquals

interface IJsonValue

data class JsonArray(
    val items: List<IJsonValue>
) : IJsonValue

data class JsonBoolean(
    val value: Boolean
) : IJsonValue

data class JsonFile(
    val name: String,
    val contents: IJsonValue
)

class JsonNull : IJsonValue {
    override fun toString(): String = "{null}"
    override fun equals(other: Any?): Boolean =
        when (other) {
            is JsonNull -> true
            else -> false
        }
}

data class JsonNumber(
    val value: String
) : IJsonValue

data class JsonObject(
    val pairs: List<JsonPair>
) : IJsonValue

data class JsonPair(
    val name: String,
    val value: IJsonValue
) : IJsonValue

data class JsonString(
    val value: String
) : IJsonValue



fun IJsonValue.asJackson(): JsonNode? {
    return when {
        this is JsonArray -> jsonMapper.createArrayNode().addAll(this.items.map { it.asJackson() })
        this is JsonNull -> NullNode.instance
        this is JsonNumber -> DecimalNode(BigDecimal(this.value))
        this is JsonObject -> jsonMapper.createObjectNode().also { this.pairs.forEach { pair -> it.put(pair.name, pair.value.asJackson()) } }
        this is JsonString -> TextNode(this.value)
        else -> throw Error("no interpretation defined for type ${this.javaClass.simpleName}")
    }
}


fun NodeXml.fromXml(concepts: List<MetaConceptXml>): Any {
    val concept = concepts.byIndex(this.concept)
    return when (concept.name.lastSection()) {
        "JsonArray" -> JsonArray(
            items = this.theseChildren(concepts.named("JsonArray").children.named("items")).map { it.fromXml(concepts) as IJsonValue }
        )
        "JsonBoolean" -> JsonBoolean(
            value = this.thisProperty(concepts.named("JsonBoolean").properties.named("value")) == "true"
        )
        "JsonFile" -> JsonFile(
            name = this.thisProperty(concepts.named("INamedConcept").properties.named("name"))!!,
            contents = this.theseChildren(concepts.named("JsonFile").children.named("contents")).firstOrNull()?.fromXml(concepts) as IJsonValue
        )
        "JsonNumber" -> JsonNumber(
            value = this.thisProperty(concepts.named("JsonNumber").properties.named("value"))!!
        )
        "JsonObject" -> JsonObject(
            pairs = this.theseChildren(concepts.named("JsonObject").children.named("pairs")).map { it.fromXml(concepts) as JsonPair }
        )
        "JsonPair" -> JsonPair(
            name = this.thisProperty(concepts.named("INamedConcept").properties.named("name"))!!,
            value = this.theseChildren(concepts.named("JsonPair").children.named("value")).firstOrNull()?.fromXml(concepts) as IJsonValue
        )
        "JsonString" -> JsonString(
            value = this.thisProperty(concepts.named("JsonString").properties.named("value"))!!
        )
        else -> JsonNull()  //throw Error("concept without Kotlin class: ${concept.name}")
    }
}

class JsonModelTests {

    @Test
    fun `deserialize a Json model`() {
        val jsonModelXml = readModelXml(Paths.get("../mps-open-source/solutions/Examples/models/Json.mps"))
        val jsonModel = jsonModelXml.nodes[0].fromXml(jsonModelXml.metaConcepts()) as JsonFile
        assertEquals(
            JsonFile("example",
                JsonObject(listOf(
                    JsonPair("anArray", JsonArray(listOf(
                        JsonArray(listOf(
                            JsonObject(listOf(
                                JsonPair("null", JsonNull()),
                                JsonPair("anInt", JsonNumber("37")),
                                JsonPair("aString", JsonString("bar"))
                            ))
                        )),
                        JsonNumber("42")
                    )))
                ))
            ),
            jsonModel
        )

        println(jsonMapper.writeValueAsString(jsonModel.contents.asJackson()))
    }

}
