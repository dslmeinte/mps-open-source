package nl.dslconsultancy.mps.analyser

import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.core.JsonProcessingException
import com.fasterxml.jackson.databind.exc.MismatchedInputException
import nl.dslconsultancy.mps.analyser.util.JacksonJsonUtil.jsonFromString
import nl.dslconsultancy.mps.analyser.xml.*
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
    checkMpsProjectPath(mpsProjectPath)

    val modulesXml = modulesXmlIn(mpsProjectPath)
    println(modulesXml.shortDescription())
    if (sortModules == true) {
        modulesXml.sortModules()
    }

    val mpsProjectOnDisk = mpsProjectFromDisk(mpsProjectPath)

    if (languageVersions != null) {
        if (languageVersions.reportPath != null) {
            Files.write(Paths.get(languageVersions.reportPath), mpsProjectOnDisk.languageReportAsCsvLines())
            println("wrote language version report to '${languageVersions.reportPath}'")
        }
        if (languageVersions.checkMinus1sInModels == true) {
            val modelsWithMinus1sVersions = mpsProjectOnDisk.modelsWithMinus1sVersions()
            modelsWithMinus1sVersions.forEach {
                println("'$it' relies on at least one language with version -1")
            }
            println("checked for occurrences of language version -1 in models: found ${modelsWithMinus1sVersions.size}")
        }
    }


    if (usageAnalysisPath != null) {
        Files.write(Paths.get(usageAnalysisPath), usage(mpsProjectOnDisk).asCsvLines(mpsProjectOnDisk))
        println("wrote usage analysis to '$usageAnalysisPath'")
    }

    generations.forEach { it.run(mpsProjectOnDisk) }
}


/**
 * Parse this String which should contain a configuration in JSON format, into configuration objects.
 */
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

