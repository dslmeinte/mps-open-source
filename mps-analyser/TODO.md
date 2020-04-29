# TODOs

Some notes for me personally about what I still might like to do.
Not meant as an actual roadmap!


## Capabilities

1. &#10003; Be aware of (alternative) file structures of a module.
1. &#10003; (...) Export structure of languages, directly from XML to JSON.
1. ... Generate Kotlin code for deserializing models from XML.
1. ... Export models, directly from XML to JSON.
1. Track dependencies, and check for incorrect/unmatched language versions, and such.
1. Warn about unused (i.e., not referenced from `.mps/modules.xml`) modules.
    Or more generally: compare project/modules on disk with `.mps/modules.xml`, and generate fixes.


## Notes

* [polling with Java NIO](https://dzone.com/articles/event-driven-architecture-over-polling-architecture), for making things incremental

* [serialize references to JSON, without infinite recursion](https://www.logicbig.com/tutorials/misc/jackson/json-identity-info-annotation.html)

* Differences between use of `<operand>.xxx { f }`:

| function | receiver (`this`) | argument (`it`) | result |
|---|---|---|---|
| `let` | containing object | operand | `f(this, it)` |
| `run` | operand | n/a | `f(this)` |
| `apply` | operand | n/a | `this` = operand |
| `also` | containing object | operand | `it` = operand |

See also [this blog](http://beust.com/weblog/2015/10/30/exploring-the-kotlin-standard-library/).


## Programmatic use of the MPS API

TODO:

1. &#10003; Expose functionality of MPS Analyser through an actual (Kotlin) API instead of providing _some_ configurability.
2. &#10003; Deprecate JSON configuration. (Generate script from a configuration, in a separate module?)
3. Expose some convenience in the form of a "forward continuation operator"/"pipe", so you can write: `mpsProjectPath |> Paths::get |> processModulesXml |> println`.
    (This can also already be done with `.let { }`.) 
4. ... Separate representations for XML files from "clean" representations into separate Kotlin files, at least for the "top-level" data structures (MPS project, modules XML).
5. Give modules their own "identity", so they can be read in separately from an MPS project, or modules XML representation.


### Use Java shell

CLI command:

```
$ jshell --class-path target/mps-analyser.jar
jshell> import nl.dslconsultancy.mps.analyser.*
jshell> import java.nio.file.*
jshell> MpsAnalyser.modulesXmlIn(Paths.get("../mps-open-source"))
$3 ==> ModulesXml(name=mps-open-source, mpsProjectPath=../mps-open-source, version=4, modules=[ProjectModule(path=$PROJECT_DIR$/languages/ConcernDiagrams/ConcernDiagrams.mpl, folder=meta), ProjectModule(path=$PROJECT_DIR$/languages/Css/Css.mpl, folder=web), ProjectModule(path=$PROJECT_DIR$/languages/Json/Json.mpl, folder=web), ProjectModule(path=$PROJECT_DIR$/languages/JsonSchema/JsonSchema.mpl, folder=web), ProjectModule(path=$PROJECT_DIR$/languages/MetaCore/MetaCore.mpl, folder=meta), ProjectModule(path=$PROJECT_DIR$/languages/Svg/Svg.mpl, folder=web), ProjectModule(path=$PROJECT_DIR$/languages/WSDL/WSDL.mpl, folder=web), ProjectModule(path=$PROJECT_DIR$/lang ...  ProjectModule(path=$PROJECT_DIR$/solutions/MetaUtil/MetaUtil.msd, folder=meta), ProjectModule(path=$PROJECT_DIR$/solutions/XSDExamples/XSDExamples.msd, folder=web.examples), ProjectModule(path=$PROJECT_DIR$/solutions/build/build.msd, folder=), ProjectModule(path=$PROJECT_DIR$/solutions/runtime.lib/runtime.lib.msd, folder=web)]))))
```


### Use Java "scripts"

CLI command:

```
$ java -cp mps-analyser.jar MyScript.java
```

That "script" file would look something like:

```
import nl.dslconsultancy.mps.analyser.xml.ModulesXmlKt;

import java.nio.file.Path;
import java.nio.file.Paths;

public class MyScript {

    public static void main(String[] args) {
        Path mpsProjectPath = Paths.get("../mps-open-source");
        System.out.println(ModulesXmlKt.readModulesXmlIn(mpsProjectPath));
    }

}
```

See also [this blog](https://blog.codefx.org/java/scripting-java-shebang/).


### Use Kotlin "scripts"

CLI command:

```
$ kotlinc -cp mps-analyser.jar -script myScript.kts
```

That script file would look something like:

```
import java.nio.file.*
import nl.dslconsultancy.mps.analyser.xml.*

val mpsProjectPath = Paths.get("../mps-open-source")
println(readModulesXmlIn(mpsProjectPath))
```

Unfortunately, this doesn't work (...yet), because of:

```
betelgeuse:mps-analyser meinte$ kotlinc -cp mps-analyser.jar -script src/test/resources/tryOnOwn.kts 
java.lang.IllegalArgumentException: Property com.ctc.wstx.addSpaceAfterEmptyElemis not supported
        at com.sun.xml.internal.stream.XMLOutputFactoryImpl.setProperty(XMLOutputFactoryImpl.java:146)
        at nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil.initialise(jacksonXmlUtil.kt:31)
        at nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil.xmlMapper(jacksonXmlUtil.kt:36)
        at nl.dslconsultancy.mps.analyser.xml.ModulesXmlKt.readModulesXmlIn(modulesXml.kt:109)
        at TryOnOwn.<init>(tryOnOwn.kts:5)
warning: some JAR files in the classpath have the Kotlin Runtime library bundled into them. This may cause difficult to debug problems if there's a different version of the Kotlin Runtime library in the classpath. Consider removing these libraries from the classpath
mps-analyser.jar: warning: library has Kotlin runtime bundled into it
```

