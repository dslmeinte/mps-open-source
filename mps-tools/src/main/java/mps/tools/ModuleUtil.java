package mps.tools;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.function.Predicate;
import java.util.stream.Stream;

import static mps.tools.PathUtils.elements;
import static mps.tools.PathUtils.extensionOf;

/**
 * Util class to encapsulate some knowledge about MPS modules.
 */
public class ModuleUtil {

    public static Path solutionDirIn(Path projectDir) {
        return projectDir.resolve("solutions");
    }


    private static final String SOURCE_GEN = "source_gen";

    /**
     * Checks for equality to the string {@code "source_gen"}.
     * This is convenient to use instead of closures.
     */
    public static final Predicate<String> isSourceGen = SOURCE_GEN::equals;

    private final static Predicate<Path> isReallyGenerated;
    static {
        final var mpsGenArtifacts = Arrays.asList("checkpoints", "trace.info");
        final Predicate<Path> isMpsGenArtifact = path -> mpsGenArtifacts.contains(path.getFileName().toString()) || extensionOf(path).endsWith("mps");
        isReallyGenerated = isMpsGenArtifact.negate().and(path -> !path.toFile().isDirectory() && elements(path).anyMatch(isSourceGen));
    }


    /**
     * @return A {@link Stream} of {@link Path}s to generated files in the given (by path) MPS solution.
     */
    public static Stream<Path> generatedFiles(Path solutionsPath) {
        try {
            return Files.walk(solutionsPath).filter(isReallyGenerated);
        } catch (IOException e) {
            System.err.printf("could not recursively traverse path '%s'; due to:\n", solutionsPath);
            e.printStackTrace();
            return Stream.empty();
        }
    }


    public static Path sourceGenPath(Path solutionPath) {
        return solutionPath.resolve(SOURCE_GEN);
    }

}
