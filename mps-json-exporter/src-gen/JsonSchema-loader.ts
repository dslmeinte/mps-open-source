/**
 * Model loaders, generated for the 'JsonSchema' language.
 */

import {loadModel, loadModelSync} from "../src/index.ts"
// TODO  import from module

import {AnyRootableJsonSchemaConcept} from "./JsonSchema-type-defs.ts"


export const loadJsonSchemaModel = async (modelPath: string): Promise<AnyRootableJsonSchemaConcept[]> =>
    loadModel<AnyRootableJsonSchemaConcept>(modelPath)

export const loadJsonSchemaModelSync = (modelPath: string): AnyRootableJsonSchemaConcept[] =>
    loadModelSync<AnyRootableJsonSchemaConcept>(modelPath)

