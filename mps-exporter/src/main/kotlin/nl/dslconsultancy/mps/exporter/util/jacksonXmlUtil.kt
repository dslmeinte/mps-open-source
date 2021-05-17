package nl.dslconsultancy.mps.exporter.util

import com.ctc.wstx.api.WstxOutputProperties
import com.fasterxml.jackson.databind.DeserializationFeature
import com.fasterxml.jackson.databind.ObjectMapper
import com.fasterxml.jackson.databind.SerializationFeature
import com.fasterxml.jackson.dataformat.xml.JacksonXmlModule
import com.fasterxml.jackson.dataformat.xml.XmlFactory
import com.fasterxml.jackson.dataformat.xml.XmlMapper
import com.fasterxml.jackson.dataformat.xml.ser.ToXmlGenerator
import com.fasterxml.jackson.module.kotlin.readValue
import com.fasterxml.jackson.module.kotlin.registerKotlinModule
import java.nio.file.Path

object JacksonXmlUtil {

    private var xmlMapper_: ObjectMapper? = null

    private fun initialise() {
        xmlMapper_ ?: XmlMapper(JacksonXmlModule().apply {
            setDefaultUseWrapper(false)
        })
            .configure(ToXmlGenerator.Feature.WRITE_XML_DECLARATION, true)
            .configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false)
            .configure(SerializationFeature.INDENT_OUTPUT, true)
            .registerKotlinModule()
            .also {
                xmlMapper_ = it
                // make sure XML preamble uses double quotes, and <emptyElements have="whitespace before close" />:
                val xmlOutputFactory = (it.factory as XmlFactory).xmlOutputFactory
                xmlOutputFactory.setProperty(WstxOutputProperties.P_USE_DOUBLE_QUOTES_IN_XML_DECL, true)
                xmlOutputFactory.setProperty(WstxOutputProperties.P_ADD_SPACE_AFTER_EMPTY_ELEM, true)
            }
    }

    fun xmlMapper(): ObjectMapper {
        initialise()
        return xmlMapper_!!
    }


    inline fun <reified T> xmlFromDisk(path: Path): T = xmlMapper().readValue(path.toFile())

    inline fun <reified T> xmlFromDisk(path: Path, resultOnFail: (path: Path, e: Exception) -> T): T =
        try {
            xmlFromDisk(path)
        } catch (e: Exception) {
            System.err.println("could not read '$path' as XML file (of indicated type): ${e.message}")
            e.printStackTrace(System.err)
            resultOnFail(path, e)
        }

}
