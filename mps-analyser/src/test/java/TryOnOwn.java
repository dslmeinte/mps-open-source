import nl.dslconsultancy.mps.analyser.GeneratorKt;
import nl.dslconsultancy.mps.analyser.MpsAnalyser;
import nl.dslconsultancy.mps.analyser.MpsProjectOnDisk;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public class TryOnOwn {

    public static void main(String[] args) throws IOException {
        Path mpsProjectPath = Paths.get("../mps-open-source");
        System.out.println(MpsAnalyser.modulesXmlIn(mpsProjectPath).shortDescription());

        final MpsProjectOnDisk mpsProjectOnDisk = MpsAnalyser.mpsProjectFromDisk(mpsProjectPath);
        final String languageVersionReportPath = "target/languageVersions.csv";
        Files.write(Paths.get(languageVersionReportPath), mpsProjectOnDisk.languageReportAsCsvLines());
        System.out.format("wrote language version report to '%s'\n", languageVersionReportPath);

        final List<Path> modelsWithMinus1sVersions = mpsProjectOnDisk.modelsWithMinus1sVersions();
        modelsWithMinus1sVersions.forEach(path -> {
            System.out.format("'%s' relies on at least one language with version -1\n", path);
        });
        System.out.format("checked for occurrences of language version -1 in models: found %d\n", modelsWithMinus1sVersions.size());

        final String usageAnalysisPath = "target/usage.csv";
        Files.write(Paths.get(usageAnalysisPath), mpsProjectOnDisk.usageAsCsvLines());
        System.out.format("wrote usage analysis to '%s'\n", usageAnalysisPath);

        final Path generationPath = Paths.get("src/generated");
        mpsProjectOnDisk.getLanguages().forEach(language -> {
            GeneratorKt.generateAllFor(language, generationPath);
        });
    }

}
