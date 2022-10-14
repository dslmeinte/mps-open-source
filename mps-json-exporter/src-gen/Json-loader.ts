/**
 * Model loaders, generated for the 'Json' language.
 */

import {loadModel, loadModelSync} from "../src/index.ts"
// TODO  import from module

import {AnyRootableJsonConcept} from "./Json-type-defs.ts"


export const loadJsonModel = async (modelPath: string): Promise<AnyRootableJsonConcept[]> =>
    loadModel<AnyRootableJsonConcept>(modelPath)

export const loadJsonModelSync = (modelPath: string): AnyRootableJsonConcept[] =>
    loadModelSync<AnyRootableJsonConcept>(modelPath)

