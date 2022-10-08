import {asPrettyString} from "../src/utils.ts"
import {ensureDirSync} from "https://deno.land/std/fs/mod.ts"
import {loadModelSync, Node} from "../src/index.ts"


/**
 * Reads a model with the given path, and deserializes while saving plenty of debugging info to disk.
 */
export const devLoadModel = <T extends Node>(modelPath: string, genOutputPathFragment: string): T[] => {
    const basePath = `./src-gen/${genOutputPathFragment}/`
    ensureDirSync(basePath)
    return loadModelSync<T>(modelPath,
        (parsedModelXml, index2name, preLinked, id2node, refsToResolve) => {
            Deno.writeTextFileSync(basePath + "parsed-xml.json", asPrettyString(parsedModelXml))
            Deno.writeTextFileSync(basePath + "indices.json", asPrettyString(index2name))
            Deno.writeTextFileSync(basePath + "preLinked.json", asPrettyString(preLinked))    // references not resolved, $parent & $model not installed => can still serialize as JSON
            Deno.writeTextFileSync(basePath + "id2node.json", asPrettyString(id2node))
            Deno.writeTextFileSync(basePath + "refsToResolve.json", asPrettyString(refsToResolve))
        }
    )
}

