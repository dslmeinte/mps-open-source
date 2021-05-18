package nl.dslconsultancy.mps.exporter

import com.fasterxml.jackson.databind.JsonNode
import com.fasterxml.jackson.databind.node.ArrayNode
import com.fasterxml.jackson.databind.node.ObjectNode
import nl.dslconsultancy.mps.exporter.util.JacksonJsonUtil.newJsonArray
import nl.dslconsultancy.mps.exporter.util.JacksonJsonUtil.newJsonObject
import nl.dslconsultancy.mps.exporter.xml.*

fun exportToJson(modelXml: ModelXml): ArrayNode {
    val metaConcepts = modelXml.metaConcepts()
    return newJsonArray().also { array -> array.addAll(modelXml.nodes.map { asJson(it, metaConcepts) }) }
}

private fun asJson(nodeXml: NodeXml, metaConcepts: List<MetaConceptXml>): ObjectNode {
    return newJsonObject().also { jsonObject ->
        jsonObject.put("\$id", nodeXml.id)
        jsonObject.put("\$metaType", withoutStructureSubPackage(metaConcepts.byIndex(nodeXml.concept).name))
        nodeXml.propertySettings.forEach { jsonObject.put(metaConcepts.featureByIndex(it.role).first.name, it.value) }
        nodeXml.childNodes
            .groupBy { it.role }
            .forEach { (role, values) ->
                jsonObject.set<JsonNode>(
                    metaConcepts.featureByIndex(role!!).first.name, // TODO  deconflict from "$id", "$metaType", and "$ref{Id|Name}" (whenever necessary)
                    newJsonArray().also { array -> array.addAll(values.map { asJson(it, metaConcepts) }) }
                )
            }
        nodeXml.referenceSettings.forEach {
            jsonObject.set<ObjectNode>(
                metaConcepts.featureByIndex(it.role).first.name,
                newJsonObject().also { refObject ->
                    refObject.put("\$refId", it.node)
                    refObject.put("\$refName", it.resolve)
                }
            )
        }
    }
}

val structureTerm = "structure."
private fun withoutStructureSubPackage(fqName: String): String {
    val structureIndex = fqName.lastIndexOf(structureTerm)
    return if (structureIndex == -1) fqName else fqName.substring(0, structureIndex) + fqName.substring(structureIndex + structureTerm.length)
}

