import {Node} from "./generic.ts"
import {parse} from "https://deno.land/x/xml/mod.ts"
import {ModelXml} from "./model-xml-types.ts"
import {asPrettyString} from "./utils.ts"
import {ensureDirSync} from "https://deno.land/std/fs/mod.ts"
import {indicesfrom} from "./indexer.ts"
import {deserializeXml} from "./deserializer.ts"


/**
 * Reads a model with the given path, and deserializes while saving plenty of debugging info to disk.
 */
export const loadModel = <T extends Node>(modelPath: string, genOutputPathFragment: string): T[] => {

    // read MPS XML model file, and parse it:
    const data = Deno.readTextFileSync(modelPath)
    const xml = parse(data, {emptyToNull: false, reviveNumbers: false})
    const modelXml = xml.model as unknown as ModelXml

    const basePath = `./gen/${genOutputPathFragment}/`
    ensureDirSync(basePath)

    // write the parse result to file for debugging &c.:
    Deno.writeTextFileSync(basePath + "parsed-xml.json", asPrettyString(modelXml))

    // generate a map index &rarr; name from the MPS model's registry:
    const index2name = indicesfrom(modelXml)
    Deno.writeTextFileSync(basePath + "indices.json", asPrettyString(index2name))

    // deserialize the model (but without resolved references):
    return deserializeXml<T>(modelXml, index2name,
        (preLinked, id2node, refsToResolve) => {
            Deno.writeTextFileSync(basePath + "preLinked.json", asPrettyString(preLinked))    // references not resolved, $parent & $model not installed => can still serialize as JSON
            Deno.writeTextFileSync(basePath + "id2node.json", asPrettyString(id2node))
            Deno.writeTextFileSync(basePath + "refsToResolve.json", asPrettyString(refsToResolve))
        }
    )

}

