import {ensureDirSync} from "https://deno.land/std/fs/mod.ts"
import {withFirstLower} from "../../src/utils.ts"
import {generateTypes} from "../../src/languageStructure/types-template.ts"
import {Declaration} from "../../src/languageStructure/structure-types.ts"
import {devLoadModel} from "../dev-model-loader.ts"


/*
 * run on CLI:
    deno run --allow-read --allow-write src-test/languageStructure/test.ts
 */


export const generate = (languageName: string) => {
    const roots = devLoadModel<Declaration>(`../mps-open-source/languages/${languageName}/models/structure.mps`, `${withFirstLower(languageName)}-structure`)
    const typeDefsPath = `./src-gen/type-defs`
    ensureDirSync(typeDefsPath)
    Deno.writeTextFileSync(`${typeDefsPath}/${languageName}-types.ts`, generateTypes(roots, languageName))
    console.log(`Generated type definitions for language "${languageName}".`)
}


generate("Json")
generate("JsonSchema")

