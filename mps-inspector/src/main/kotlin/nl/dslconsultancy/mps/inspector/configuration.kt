package nl.dslconsultancy.mps.inspector

import com.fasterxml.jackson.annotation.JsonProperty
import nl.dslconsultancy.mps.inspector.xml.modulesXmlPath
import nl.dslconsultancy.mps.inspector.xml.processModulesXml
import java.nio.file.Files
import java.nio.file.Paths

data class Configuration(
    val mpsProjectPath: String,
    val sortModules: Boolean?,
    val usageAnalysisPath: String?,
    val languageVersionReportPath: String?,
    @JsonProperty(required = false)
    val generations: List<GenerateFromStructure> = ArrayList()
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

    if (languageVersionReportPath != null) {
        Files.write(Paths.get(languageVersionReportPath), mpsProjectOnDisk.languageReportAsCsvLines())
        println("wrote language version report to '$languageVersionReportPath'")
    }


    if (usageAnalysisPath != null) {
        Files.write(Paths.get(usageAnalysisPath), usage(mpsProjectOnDisk).asCsvLines())
        println("wrote usage analysis to '$usageAnalysisPath'")
    }

    generations.forEach { it.run(mpsProjectPath) }
}

