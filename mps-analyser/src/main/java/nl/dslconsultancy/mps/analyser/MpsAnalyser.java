package nl.dslconsultancy.mps.analyser;

import nl.dslconsultancy.mps.analyser.xml.ModulesXmlKt;
import org.jetbrains.annotations.NotNull;

import java.nio.file.Path;

public class MpsAnalyser {

    /**
     * Reads in the definition of an MPS project represented by the given {@link Path path}.
     * @return a {@link MpsProject representation of the definition of the MPS project}
     */
    @NotNull
    public static MpsProject mpsProjectUnder(Path mpsProjectPath) {
        MpsProjectKt.checkMpsProjectPath(mpsProjectPath);
        return ModulesXmlKt.modulesXmlIn(mpsProjectPath);
    }

}
