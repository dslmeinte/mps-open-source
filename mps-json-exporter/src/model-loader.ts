import {parse} from "https://deno.land/x/xml/mod.ts"

import {
    DeserializationIntrospector,
    deserializeXml
} from "./deserializer.ts"
import {Node} from "./generic.ts"
import {ModelXml} from "./model-xml-types.ts"


/**
 * Loads an MPS model with nodes extending type parameter `T`
 * synchronously from the file with path {@param modelPath}.
 *
 * @param modelPath - the (relative) path to an MPS XML model file.
 * @param introspector - an optional introspection function.
 */
export const loadModelSync = <T extends Node>(modelPath: string, introspector?: DeserializationIntrospector<T>): T[] => {
    const data = Deno.readTextFileSync(modelPath)
    const xml = parse(data, {emptyToNull: false, reviveNumbers: false})
    const modelXml = xml.model as unknown as ModelXml
    return deserializeXml<T>(modelXml, introspector)
}


/**
 * Loads an MPS model with nodes extending type parameter `T`
 * _asynchronously_ from the file with path {@param modelPath}.
 *
 * @param modelPath - the (relative) path to an MPS XML model file.
 * @param introspector - an optional introspection function.
 */
export const loadModel = async <T extends Node>(modelPath: string, introspector?: DeserializationIntrospector<T>): Promise<T[]> => {
    const data = await Deno.readTextFile(modelPath)
    const xml = parse(data, {emptyToNull: false, reviveNumbers: false})
    const modelXml = xml.model as unknown as ModelXml
    return deserializeXml<T>(modelXml, introspector)
}


