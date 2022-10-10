import {asPrettyString} from "../src/utils.ts"
import {ensureDir} from "https://deno.land/std/fs/mod.ts"
import {loadModel, Node} from "../src/index.ts"


/**
 * Reads a model with the given path, and deserializes while saving plenty of debugging info to disk.
 */
export const devLoadModel = async <T extends Node>(modelPath: string, genOutputPathFragment: string): Promise<T[]> => {
    const basePath = `./tmp/${genOutputPathFragment}/`
    await ensureDir(basePath)
    const jsonWriter = (fileName: string): ((json: unknown) => void) =>
        (json: unknown) => {
            Deno.writeTextFileSync(`${basePath}${fileName}.json`, asPrettyString(json))
        }
    return loadModel<T>(
        modelPath,
        ({
            parsedModelXml: jsonWriter("parsed-xml"),
            index2name: jsonWriter("indices"),
            preLinked: jsonWriter("preLinked"),
            id2node: jsonWriter("id2node"),
            refsToResolve: jsonWriter("refsToResolve")
        })
    )
}

