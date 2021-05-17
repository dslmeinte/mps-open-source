package nl.dslconsultancy.mps.exporter.util

import com.fasterxml.jackson.databind.ObjectMapper
import com.fasterxml.jackson.databind.SerializationFeature
import com.fasterxml.jackson.databind.node.ArrayNode
import com.fasterxml.jackson.databind.node.ObjectNode
import com.fasterxml.jackson.module.kotlin.KotlinModule
import java.nio.file.Path

object JacksonJsonUtil {

    private val jsonMapper: ObjectMapper = ObjectMapper()
                .registerModule(KotlinModule())
                .configure(SerializationFeature.INDENT_OUTPUT, true)

    fun <T> writeJson(content: T, path: Path) {
        jsonMapper.writeValue(path.toFile(), content)
    }

    fun newJsonObject(): ObjectNode = jsonMapper.createObjectNode()

    fun newJsonArray(): ArrayNode = jsonMapper.createArrayNode()

}
