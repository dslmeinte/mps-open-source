package nl.dslconsultancy.mps.analyser;

import nl.dslconsultancy.mps.analyser.xml.ModulesXmlKt;
import org.jetbrains.annotations.NotNull;

import java.nio.file.Path;

public class MpsAnalyser {

    /**
     * Reads in a modules XML file in the MPS project under the given {@link Path path}.
     * @return a {@link MpsProject representation of the modules XML file}
     */
    @NotNull
    public static MpsProject modulesXmlIn(Path mpsProjectPath) {
        MpsProjectKt.checkMpsProjectPath(mpsProjectPath);
        return ModulesXmlKt.modulesXmlIn(mpsProjectPath);
    }

    /**
     * Produces a representation of all MPS files under the given {@link Path path}.
     * @param mpsProjectPath - a {@link Path path} to an MPS project
     * @return a {@link MpsProjectOnDisk representation of the MPS project}
     */
    @NotNull
    public static MpsProjectOnDisk mpsProjectFromDisk(Path mpsProjectPath) {
        MpsProjectKt.checkMpsProjectPath(mpsProjectPath);
        return ProjectOnDiskKt.mpsProjectFromDisk(mpsProjectPath);
    }

}
