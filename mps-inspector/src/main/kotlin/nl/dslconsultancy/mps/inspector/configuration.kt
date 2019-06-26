package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.core.JsonProcessingException
import com.fasterxml.jackson.databind.exc.MismatchedInputException
import nl.dslconsultancy.mps.inspector.util.JacksonJsonUtil.jsonFromString
import nl.dslconsultancy.mps.inspector.xml.modelXmlWithoutNodesFromDisk
import nl.dslconsultancy.mps.inspector.xml.modulesXmlPath
import nl.dslconsultancy.mps.inspector.xml.processModulesXml
import java.nio.file.Files
import java.nio.file.Paths

data class ConfigurationItem(
    val mpsProjectPath: String,
    val sortModules: Boolean?,
    val usageAnalysisPath: String?,
    val languageVersions: LanguageVersionsConfiguration?,
    @JsonProperty(required = false)
    val generations: List<GenerateFromStructure> = ArrayList()
)

data class LanguageVersionsConfiguration(
    val reportPath: String?,
    val checkMinus1sInModels: Boolean?
)

data class GenerateFromStructure(
    val languageName: String,
    val generationPath: String
)

// TODO  use a discriminator to distinguish generations(/exports?)


fun ConfigurationItem.run() {
    val mpsProjectPath = Paths.get(mpsProjectPath)
    if (!Files.exists(modulesXmlPath(mpsProjectPath))) {
        System.err.println("'$mpsProjectPath' is not a path to an MPS project")
    }
    processModulesXml(mpsProjectPath, sortModules ?: false)

    val mpsProjectOnDisk = mpsProjectFromDisk(mpsProjectPath)

    if (languageVersions != null) {
        if (languageVersions.reportPath != null) {
            Files.write(Paths.get(languageVersions.reportPath), mpsProjectOnDisk.languageReportAsCsvLines())
            println("wrote language version report to '${languageVersions.reportPath}'")
        }
        if (languageVersions.checkMinus1sInModels == true) {
            mpsProjectOnDisk.mpsFiles
                .filter { mpsFileType(it) == MpsFileType.Model }
                .forEach {
                    val modelXml = modelXmlWithoutNodesFromDisk(it)
                    if (modelXml.dependencies != null) {
                        if (modelXml.dependencies!!.importedLanguages.any { il -> il.version == -1 }) {
                            println("'$it' relies on at least one language with version -1")
                        }
                    }
                }
            println("checked for occurrences of language version -1 in models")
        }
    }


    if (usageAnalysisPath != null) {
        Files.write(Paths.get(usageAnalysisPath), usage(mpsProjectOnDisk).asCsvLines())
        println("wrote usage analysis to '$usageAnalysisPath'")
    }

    generations.forEach { it.run(mpsProjectOnDisk) }
}


fun String.asConfiguration(): List<ConfigurationItem> {
    return try {
        try {
            listOf(jsonFromString(this))
        } catch (e: MismatchedInputException) {
            jsonFromString(this)
        }
    } catch (e: JsonProcessingException) {
        System.err.println("could not parse config input as JSON according to the configuration format: check against JSON Schema docs/configuration.json")
        emptyList()
    }
}

