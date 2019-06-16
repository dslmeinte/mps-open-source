package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonProperty
import nl.dslconsultancy.mps.inspector.xml.modelXmlFromDisk
import nl.dslconsultancy.mps.inspector.xml.modulesXmlPath
import nl.dslconsultancy.mps.inspector.xml.processModulesXml
import java.nio.file.Files
import java.nio.file.Paths

data class Configuration(
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
    val structureModelPath: String,
    val generationPath: String
)


fun Configuration.run() {
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
                    val modelXml = modelXmlFromDisk(it)
                    if (modelXml.dependencies.importedLanguages.any { il -> il.version == -1 }) {
                        println("'$it' relies on at least one language with version -1")
                    }
                }
            println("checked for occurrences of language version '-1' in models")
        }
    }


    if (usageAnalysisPath != null) {
        Files.write(Paths.get(usageAnalysisPath), usage(mpsProjectOnDisk).asCsvLines())
        println("wrote usage analysis to '$usageAnalysisPath'")
    }

    generations.forEach { it.run(mpsProjectPath) }
}

