package nl.dslconsultancy.mps.analyser.util

import com.fasterxml.jackson.databind.ObjectMapper
import com.fasterxml.jackson.databind.SerializationFeature
import com.fasterxml.jackson.module.kotlin.KotlinModule
import com.fasterxml.jackson.module.kotlin.readValue
import java.nio.file.Path

object JacksonJsonUtil {

    val jsonMapper: ObjectMapper = ObjectMapper()
                .registerModule(KotlinModule())
                .configure(SerializationFeature.INDENT_OUTPUT, true)

    inline fun <reified T> jsonFromDisk(path: Path): T = jsonMapper.readValue(path.toFile())

    inline fun <reified T> jsonFromString(string: String): T = jsonMapper.readValue(string)

    fun <T> writeJson(content: T, path: Path) {
        jsonMapper.writeValue(path.toFile(), content)
    }

}
