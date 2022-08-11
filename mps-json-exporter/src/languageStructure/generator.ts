import {ensureDirSync} from "https://deno.land/std/fs/mod.ts"
import {withFirstLower} from "../utils.ts"
import {generateTypes} from "./types-template.ts"
import {Declaration} from "./structure-types.ts"
import {asString} from "../generator-utils.ts"
import {loadModel} from "../dev-model-loader.ts"


/*
 * run on CLI:
    deno run --allow-read --allow-write src/languageStructure/generator.ts
 */


export const generate = (languageName: string) => {
    const roots = loadModel<Declaration>(`../mps-open-source/languages/${languageName}/models/structure.mps`, `${withFirstLower(languageName)}-structure`)
    const typeDefsPath = `./gen/type-defs`
    ensureDirSync(typeDefsPath)
    Deno.writeTextFileSync(`${typeDefsPath}/${languageName}-types.ts`, asString(generateTypes(roots, languageName)))
    console.log(`Generated type definitions for language "${languageName}".`)
}


generate("Json")
generate("JsonSchema")

