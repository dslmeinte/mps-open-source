import {existsSync} from "https://deno.land/std/fs/mod.ts"

import {loadModel} from "../model-loader.ts"
import {Declaration} from "./structure-type-defs.ts"
import {generateTypes} from "./type-defs-template.ts"
import {generateLoader} from "./loader-template.ts"


/*
 * Run as:
 *   deno run --allow-read --allow-write src/languageStructure/cli.ts <path to an MPS language module> [path for generated code]
 */

const languageModulePath: string | undefined = Deno.args[0]
if (languageModulePath === undefined) {
    console.log(`Usage: deno run src/languageStructure/cli.ts <path to an MPS language module> [path for generated code]`)
    console.log(`   If the second path is not given, the current directory is used.`)
}

if (!existsSync(languageModulePath)) {
    console.error(`The given language module path '${languageModulePath}' doesn't exist. Exiting.`)
    Deno.exit(1)
}
if (!Deno.statSync(languageModulePath)) {
    console.error(`The given language module path '${languageModulePath}' is not a directory. Exiting.`)
    Deno.exit(1)
}
const languageName = languageModulePath.substring(languageModulePath.lastIndexOf("/") + 1)
const structureModelPath = languageModulePath + "/models/structure.mps"
if (!existsSync(structureModelPath) || !Deno.statSync(structureModelPath).isFile) {
    console.error(`The given language module path '${languageModulePath}' doesn't seem to point to an MPS language module. Exiting.`)
    Deno.exit(1)
}

const generationPath: string | undefined = Deno.args[1] || "./"
if (!existsSync(generationPath)) {
    console.error(`The given generated code path doesn't exist. Exiting.`)
    Deno.exit(1)
}
if (!Deno.statSync(generationPath).isDirectory) {
    console.error(`The given generated code path '${languageModulePath}' is not a directory. Exiting.`)
    Deno.exit(1)
}

const declarations = await loadModel<Declaration>(structureModelPath)
console.log(`Loaded the structure model (AKA metamodel) for the MPS language "${languageName}".`)

const typeDefsPath = `${generationPath}/${languageName}-type-defs.ts`
Deno.writeTextFileSync(typeDefsPath, generateTypes(declarations, languageName))
console.log(`Generated type definitions to path "${typeDefsPath}".`)

const loaderPath = `${generationPath}/${languageName}-loader.ts`
Deno.writeTextFileSync(loaderPath, generateLoader(languageName))
console.log(`Generated loader to path "${loaderPath}".`)

