package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.databind.JsonNode
import com.fasterxml.jackson.databind.node.DecimalNode
import com.fasterxml.jackson.databind.node.NullNode
import com.fasterxml.jackson.databind.node.TextNode
import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil
import java.math.BigDecimal

sealed class IJsonValue

data class JsonArray(
    var items: List<IJsonValue> = emptyList()
) : IJsonValue()

data class JsonBoolean(
    val value: Boolean
) : IJsonValue()

data class JsonFile(
    val name: String,
    var contents: IJsonValue? = null
)

class JsonNull : IJsonValue() {
    override fun toString(): String = "JsonNull()"
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass
    override fun hashCode(): Int = javaClass.hashCode()
}
// TODO  find a way to make singletons less cumbersome to define

data class JsonNumber(
    val value: String
) : IJsonValue()

data class JsonObject(
    var pairs: List<JsonPair> = emptyList()
) : IJsonValue()

data class JsonPair(
    val name: String,
    var value: IJsonValue? = null
) : IJsonValue()

data class JsonString(
    val value: String
) : IJsonValue()


fun IJsonValue.asJackson(): JsonNode? {
    return when(this) {
        is JsonArray -> JacksonJsonUtil.jsonMapper.createArrayNode().addAll(this.items.map { it.asJackson() })
        is JsonNull -> NullNode.instance
        is JsonNumber -> DecimalNode(BigDecimal(this.value))
        is JsonObject -> JacksonJsonUtil.jsonMapper.createObjectNode().also { this.pairs.forEach { pair ->
            @Suppress("DEPRECATION")
            it.put(pair.name, pair.value?.asJackson())
        } }
        is JsonString -> TextNode(this.value)
        else -> throw Error("no interpretation defined for type ${this.javaClass.simpleName}")
    }
}

