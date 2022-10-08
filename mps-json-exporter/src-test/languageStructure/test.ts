import {ensureDirSync} from "https://deno.land/std/fs/mod.ts"
import {withFirstLower} from "../../src/utils.ts"
import {generateTypes} from "./types-template.ts"
import {Declaration} from "./structure-types.ts"
import {loadModel} from "../dev-model-loader.ts"


/*
 * run on CLI:
    deno run --allow-read --allow-write src-test/languageStructure/generator.ts
 */


export const generate = (languageName: string) => {
    const roots = loadModel<Declaration>(`../mps-open-source/languages/${languageName}/models/structure.mps`, `${withFirstLower(languageName)}-structure`)
    const typeDefsPath = `./src-gen/type-defs`
    ensureDirSync(typeDefsPath)
    Deno.writeTextFileSync(`${typeDefsPath}/${languageName}-types.ts`, generateTypes(roots, languageName))
    console.log(`Generated type definitions for language "${languageName}".`)
}


generate("Json")
generate("JsonSchema")

