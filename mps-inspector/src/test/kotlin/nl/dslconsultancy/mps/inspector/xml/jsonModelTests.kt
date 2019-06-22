package nl.dslconsultancy.mps.inspector.xml

import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil.jsonMapper
import nl.dslconsultancy.mps.inspector.util.lastSection
import java.nio.file.Paths
import kotlin.test.Test
import kotlin.test.assertEquals

fun NodeXml.fromXml(concepts: List<MetaConceptXml>, memois: Map<String, Any>): Any {
    val nodeXml = this
    val precomputed = memois[nodeXml.id]
    if (precomputed != null) {
        return precomputed
    }
    val concept = concepts.byIndex(nodeXml.concept)
    return when (concept.name.lastSection()) {
        "JsonArray" -> memois.of(nodeXml to JsonArray()).apply {
            items = nodeXml.theseChildren(concepts.named("JsonArray").children.named("items")).map { it.fromXml(concepts, memois) as IJsonValue }
        }
        "JsonBoolean" -> memois.of(nodeXml to JsonBoolean(
            value = nodeXml.thisProperty(concepts.named("JsonBoolean").properties.named("value")) == "true"
        ))
        "JsonFile" -> memois.of(nodeXml to JsonFile(
            name = nodeXml.thisProperty(concepts.named("INamedConcept").properties.named("name"))!!
        )).apply {
            contents = nodeXml.theseChildren(concepts.named("JsonFile").children.named("contents")).firstOrNull()?.fromXml(concepts, memois) as IJsonValue
        }
        "JsonNull" -> memois.of(nodeXml to JsonNull())
        "JsonNumber" -> memois.of(nodeXml to JsonNumber(
            value = nodeXml.thisProperty(concepts.named("JsonNumber").properties.named("value"))!!
        ))
        "JsonObject" -> memois.of(nodeXml to JsonObject()).apply {
            pairs = nodeXml.theseChildren(concepts.named("JsonObject").children.named("pairs")).map { it.fromXml(concepts, memois) as JsonPair }
        }
        "JsonPair" -> memois.of(nodeXml to JsonPair(
                name = nodeXml.thisProperty(concepts.named("INamedConcept").properties.named("name"))!!
            )).apply {
            value = nodeXml.theseChildren(concepts.named("JsonPair").children.named("value")).firstOrNull()?.fromXml(concepts, memois) as IJsonValue
        }
        "JsonString" -> memois.of(nodeXml to JsonString(
            value = nodeXml.thisProperty(concepts.named("JsonString").properties.named("value"))!!
        ))
        else -> throw Error("concept without Kotlin class: ${concept.name}")
    }
}

class JsonModelTests {

    @Test
    fun `deserialize a Json model`() {
        val jsonModelXml = modelXmlFromDisk(Paths.get("../mps-open-source/solutions/Examples/models/Json.mps"))
        val jsonModel = jsonModelXml.nodes[0].fromXml(jsonModelXml.metaConcepts(), hashMapOf()) as JsonFile
        assertEquals(
            JsonFile(name = "example").apply {
                contents = JsonObject().apply {
                    pairs = listOf(JsonPair(name ="anArray").apply {
                        value = JsonArray().apply {
                            items = listOf(
                            JsonArray().apply {
                                items = listOf(JsonObject().apply {
                                    pairs = listOf(
                                        JsonPair(name ="null").apply { value = JsonNull() },
                                        JsonPair(name ="anInt").apply { value = JsonNumber(value ="37") },
                                        JsonPair(name ="aString").apply { value = JsonString(value ="bar") }
                                    )
                                })
                            },
                            JsonNumber(value = "42")
                        )}
                    })
                }
            },
            jsonModel
        )

        println(jsonMapper.writeValueAsString(jsonModel.contents?.asJackson()))
    }

}
