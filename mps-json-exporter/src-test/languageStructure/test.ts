import {ensureDir} from "https://deno.land/std/fs/mod.ts"
import {withFirstLower} from "../../src/utils.ts"
import {Declaration, generateTypes} from "../../src/index.ts"
import {devLoadModel} from "../dev-model-loader.ts"


/*
 * run on CLI:
    deno run --allow-read --allow-write src-test/languageStructure/test.ts
 */


export const generate = async (languageName: string) => {
    const roots = await devLoadModel<Declaration>(`../mps-open-source/languages/${languageName}/models/structure.mps`, `${withFirstLower(languageName)}-structure`)
    const typeDefsPath = `./src-gen/type-defs`
    await ensureDir(typeDefsPath)
    Deno.writeTextFileSync(`${typeDefsPath}/${languageName}-types.ts`, generateTypes(roots, languageName))
    console.log(`Generated type definitions for language "${languageName}".`)
}


await generate("Json")
await generate("JsonSchema")

