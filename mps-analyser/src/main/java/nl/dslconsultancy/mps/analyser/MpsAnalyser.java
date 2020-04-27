package nl.dslconsultancy.mps.analyser;

import nl.dslconsultancy.mps.analyser.xml.ModulesXml;
import nl.dslconsultancy.mps.analyser.xml.ModulesXmlKt;

import java.nio.file.Path;

public class MpsAnalyser {

    /**
     * Reads a modules XML file in the MPS project under the given path.
     * @return a representation of the modules XML file
     */
    public static ModulesXml modulesXmlIn(Path mpsProjectPath) {
        ModulesXmlKt.checkMpsProjectPath(mpsProjectPath);
        return ModulesXmlKt.modulesXmlIn(mpsProjectPath);
    }

    public static MpsProjectOnDisk mpsProjectFromDisk(Path mpsProjectPath) {
        ModulesXmlKt.checkMpsProjectPath(mpsProjectPath);
        return ProjectOnDiskKt.mpsProjectFromDisk(mpsProjectPath);
    }

}
