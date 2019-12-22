package mps.tools;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

import static java.util.stream.Collectors.toList;

/**
 * Util class with some convenience methods for working with {@link Path}s.
 */
public class PathUtils {

    /**
     * @return The extension in the given {@link Path} (which should be that to a file), or {@code ""} if there isn't any.
     */
    public static String extensionOf(Path path) {
        var fileName = path.getFileName().toString();
        var idx = fileName.lastIndexOf(".");
        return (idx + 1 < fileName.length()) ? fileName.substring(idx + 1) : "";
    }

    /**
     * @return The elements of the given {@link Path}, as a {@link Stream} of {@link String}s.
     */
    public static Stream<String> elements(Path path) {
        return StreamSupport.stream(path.spliterator(), false).map(Path::toString);
    }

    /**
     * @return A {@link Path} created from the {@link String}s in the given {@link Stream} (which should be finite).
     */
    public static Path pathFrom(Stream<String> subPaths) {
        var strings = subPaths.collect(toList());
        return Paths.get(strings.get(0), strings.stream().skip(1).toArray(String[]::new));
    }

}
