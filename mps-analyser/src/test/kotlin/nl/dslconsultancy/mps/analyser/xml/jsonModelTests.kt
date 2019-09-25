package nl.dslconsultancy.mps.analyser.xml

import nl.dslconsultancy.mps.analyser.util.JacksonJsonUtil.jsonMapper
import nl.dslconsultancy.mps.analyser.util.lastSection
import java.nio.file.Paths
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNotNull

private fun NodeXml.fromXml(concepts: List<MetaConceptXml>, memois: Map<String, Any>): Any {
    val nodeXml = this
    val precomputed = memois[nodeXml.id]
    if (precomputed != null) {
        return precomputed
    }
    val concept = concepts.byIndex(nodeXml.concept)
    return when (concept.name.lastSection()) {
        "JsonArray" -> memois.of(nodeXml to JsonArray()).apply {
            items = nodeXml.theseChildNodes(concepts["JsonArray"].children["items"]).map { it.fromXml(concepts, memois) as IJsonValue }
        }
        "JsonBoolean" -> memois.of(nodeXml to JsonBoolean(
            value = nodeXml.thisPropertySetting(concepts["JsonBoolean"].properties["value"]) == "true"
        ))
        "JsonFile" -> memois.of(nodeXml to JsonFile(
            name = nodeXml.thisPropertySetting(concepts["INamedConcept"].properties["name"])!!
        )).apply {
            contents = nodeXml.theseChildNodes(concepts["JsonFile"].children["contents"]).firstOrNull()?.fromXml(concepts, memois) as IJsonValue
        }
        "JsonNull" -> memois.of(nodeXml to IJsonValue.JsonNull)
        "JsonNumber" -> memois.of(nodeXml to JsonNumber(
            value = nodeXml.thisPropertySetting(concepts["JsonNumber"].properties["value"])!!
        ))
        "JsonObject" -> memois.of(nodeXml to JsonObject()).apply {
            pairs = nodeXml.theseChildNodes(concepts["JsonObject"].children["pairs"]).map { it.fromXml(concepts, memois) as JsonPair }
        }
        "JsonPair" -> memois.of(nodeXml to JsonPair(
                name = nodeXml.thisPropertySetting(concepts["INamedConcept"].properties["name"])!!
            )).apply {
            value = nodeXml.theseChildNodes(concepts["JsonPair"].children["value"]).firstOrNull()?.fromXml(concepts, memois) as IJsonValue
        }
        "JsonString" -> memois.of(nodeXml to JsonString(
            value = nodeXml.thisPropertySetting(concepts["JsonString"].properties["value"])!!
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
                                        JsonPair(name ="null").apply { value = IJsonValue.JsonNull },
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

    @Test
    fun `deserialize a structure model, and find a specific node in it`() {
        val modelXml = modelXmlFromDisk(Paths.get("../mps-open-source/languages/JsonSchema/models/structure.mps"))
        val id = "5uyaFvvEFAb"
        assertEquals(id, modelXml.nodes[23].id)

        val node = modelXml.findById(id)
        assertNotNull(node)
        assertEquals(id, node.id)
    }

}
