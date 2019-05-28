package nl.dslconsultancy.mps.inspector

import com.ctc.wstx.api.WstxOutputProperties
import com.fasterxml.jackson.databind.DeserializationFeature
import com.fasterxml.jackson.databind.SerializationFeature
import com.fasterxml.jackson.dataformat.xml.JacksonXmlModule
import com.fasterxml.jackson.dataformat.xml.XmlFactory
import com.fasterxml.jackson.dataformat.xml.XmlMapper
import com.fasterxml.jackson.dataformat.xml.ser.ToXmlGenerator
import com.fasterxml.jackson.module.kotlin.readValue
import com.fasterxml.jackson.module.kotlin.registerKotlinModule
import java.nio.file.Files
import java.nio.file.Paths

fun main(args: Array<String>) {
    if (args.isEmpty() || args[0].isEmpty()) {
        System.err.println("must provide 1 arg: the relative path to an MPS project directory")
        System.exit(1)
    }
    val mpsProject = Paths.get(args[0])
    if (!Files.exists(mpsProject)) {
        System.err.println("1st argument is not the relative path to an MPS project directory")
        System.exit(1)
    }

    val modulesXmlPath = mpsProject.resolve(".mps").resolve("modules.xml")
    val modulesXml = xmlMapper.readValue<MpsProject>(modulesXmlPath.toFile())
    val drillDown = modulesXml.component!!.projectModules!!
    println("found ${drillDown.projectModules.size} modules in MPS project")

    drillDown.projectModules = drillDown.projectModules.sortedBy { it.path!! }

    val xmlOutputFactory = (xmlMapper.factory as XmlFactory).xmlOutputFactory
    xmlOutputFactory.setProperty(WstxOutputProperties.P_USE_DOUBLE_QUOTES_IN_XML_DECL, true)
    xmlOutputFactory.setProperty(WstxOutputProperties.P_ADD_SPACE_AFTER_EMPTY_ELEM, true)
    xmlMapper.writeValue(modulesXmlPath.toFile(), modulesXml)
}


internal val xmlMapper = XmlMapper(JacksonXmlModule().apply {
    setDefaultUseWrapper(false)
})
    .configure(ToXmlGenerator.Feature.WRITE_XML_DECLARATION, true)
    .registerKotlinModule()
    .configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false)
    .configure(SerializationFeature.INDENT_OUTPUT, true)

