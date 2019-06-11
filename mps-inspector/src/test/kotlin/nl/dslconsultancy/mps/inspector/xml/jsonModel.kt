package nl.dslconsultancy.mps.inspector.xml

import com.fasterxml.jackson.databind.JsonNode
import com.fasterxml.jackson.databind.node.DecimalNode
import com.fasterxml.jackson.databind.node.NullNode
import com.fasterxml.jackson.databind.node.TextNode
import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil
import java.math.BigDecimal

interface IJsonValue

class JsonArray : IJsonValue {
    lateinit var items: List<IJsonValue>
    override fun toString(): String = "JsonArray(items=$items)"
    fun equals(other: JsonArray): Boolean = items == other.items
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as JsonArray)
    override fun hashCode(): Int = items.hashCode()
}

class JsonBoolean(
    val value: Boolean
) : IJsonValue {
    override fun toString(): String = "JsonBoolean(value=$value)"
    fun equals(other: JsonBoolean): Boolean = value == other.value
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as JsonBoolean)
    override fun hashCode(): Int = value.hashCode()
}

class JsonFile(val name: String) {
    lateinit var contents: IJsonValue
    override fun toString(): String = "JsonFile(name='$name', contents=$contents)"
    fun equals(other: JsonFile): Boolean = name == other.name && contents == other.contents
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as JsonFile)
    override fun hashCode(): Int = 31 * (name.hashCode() + contents.hashCode())
}

class JsonNull : IJsonValue {
    override fun toString(): String = "JsonNull()"
    fun equals(other: JsonNull): Boolean = true
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as JsonNull)
    override fun hashCode(): Int = javaClass.hashCode()
}

class JsonNumber(
    val value: String
) : IJsonValue {
    override fun toString(): String = "JsonNumber(value='$value')"
    fun equals(other: JsonNumber): Boolean = value == other.value
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as JsonNumber)
    override fun hashCode(): Int = value.hashCode()
}

class JsonObject : IJsonValue {
    lateinit var pairs: List<JsonPair>
    override fun toString(): String = "JsonObject(pairs=$pairs)"
    fun equals(other: JsonObject): Boolean = pairs == other.pairs
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as JsonObject)
    override fun hashCode(): Int = pairs.hashCode()
}

class JsonPair(
    val name: String
) : IJsonValue {
    lateinit var value: IJsonValue
    override fun toString(): String = "JsonPair(name='$name', value=$value)"
    fun equals(other: JsonPair): Boolean = name == other.name && value == other.value
    override fun equals(other: Any?): Boolean = this === other || javaClass == other?.javaClass && equals(other as JsonPair)
    override fun hashCode(): Int = 31 * (name.hashCode() + value.hashCode())
}

class JsonString(
    val value: String
) : IJsonValue {
    override fun toString(): String = "JsonString(value='$value')"
    fun equals(other: JsonString): Boolean = value == other.value
    override fun equals(other: Any?): Boolean = this === other || other?.javaClass == other?.javaClass && equals(other as JsonString)
    override fun hashCode(): Int = value.hashCode()
}


fun IJsonValue.asJackson(): JsonNode? {
    return when {
        this is JsonArray -> JacksonJsonUtil.jsonMapper.createArrayNode().addAll(this.items.map { it.asJackson() })
        this is JsonNull -> NullNode.instance
        this is JsonNumber -> DecimalNode(BigDecimal(this.value))
        this is JsonObject -> JacksonJsonUtil.jsonMapper.createObjectNode().also { this.pairs.forEach { pair ->
            @Suppress("DEPRECATION")
            it.put(pair.name, pair.value.asJackson())
        } }
        this is JsonString -> TextNode(this.value)
        else -> throw Error("no interpretation defined for type ${this.javaClass.simpleName}")
    }
}

