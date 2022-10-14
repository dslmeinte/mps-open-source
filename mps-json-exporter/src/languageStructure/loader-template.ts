export const generateLoader = (languageName: string): string => {
    const anyType = `AnyRootable${languageName}Concept`
    return `/**
 * Model loaders, generated for the '${languageName}' language.
 */

import {loadModel, loadModelSync} from "../src/index.ts"
// TODO  import from module

import {${anyType}} from "./${languageName}-type-defs.ts"


export const load${languageName}Model = async (modelPath: string): Promise<${anyType}[]> =>
    loadModel<${anyType}>(modelPath)

export const load${languageName}ModelSync = (modelPath: string): ${anyType}[] =>
    loadModelSync<${anyType}>(modelPath)

`
}

