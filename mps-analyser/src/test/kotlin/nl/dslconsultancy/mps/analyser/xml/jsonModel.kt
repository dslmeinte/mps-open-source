package nl.dslconsultancy.mps.analyser.xml

import com.fasterxml.jackson.databind.JsonNode
import com.fasterxml.jackson.databind.node.BooleanNode
import com.fasterxml.jackson.databind.node.DecimalNode
import com.fasterxml.jackson.databind.node.NullNode
import com.fasterxml.jackson.databind.node.TextNode
import nl.dslconsultancy.mps.analyser.util.JacksonJsonUtil
import java.math.BigDecimal

sealed class IJsonValue {
    object JsonNull : IJsonValue() {
        override fun toString(): String = "JsonNull()"
    }
}

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

data class JsonNumber(
    val value: String
) : IJsonValue()

data class JsonObject(
    var pairs: List<JsonPair> = emptyList()
) : IJsonValue()

data class JsonPair(
    val name: String,
    var value: IJsonValue? = null
)

data class JsonString(
    val value: String
) : IJsonValue()


fun IJsonValue.asJackson(): JsonNode? =
    when(this) {
        is JsonArray -> JacksonJsonUtil.jsonMapper.createArrayNode().addAll(items.map { it.asJackson() })
        is JsonBoolean -> if(value) BooleanNode.TRUE else BooleanNode.FALSE
        is IJsonValue.JsonNull -> NullNode.instance
        is JsonNumber -> DecimalNode(BigDecimal(value))
        is JsonObject -> JacksonJsonUtil.jsonMapper.createObjectNode().also { pairs.forEach { (name, value) ->
            @Suppress("DEPRECATION")
            it.put(name, value?.asJackson())
        } }
        is JsonString -> TextNode(value)
    }

