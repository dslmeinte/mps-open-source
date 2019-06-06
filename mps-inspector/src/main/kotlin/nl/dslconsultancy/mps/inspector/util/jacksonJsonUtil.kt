package nl.dslconsultancy.mps.inspector.util

import com.fasterxml.jackson.databind.ObjectMapper
import com.fasterxml.jackson.databind.SerializationFeature
import com.fasterxml.jackson.module.kotlin.KotlinModule
import com.fasterxml.jackson.module.kotlin.readValue
import java.nio.file.Path

object JacksonJsonUtil {

    val jsonMapper: ObjectMapper = ObjectMapper()
                .registerModule(KotlinModule())
                .configure(SerializationFeature.INDENT_OUTPUT, true)

    inline fun <reified T> readJson(path: Path): T = jsonMapper.readValue(path.toFile())

    fun <T> writeJson(content: T, path: Path) {
        jsonMapper.writeValue(path.toFile(), content)
    }

}
