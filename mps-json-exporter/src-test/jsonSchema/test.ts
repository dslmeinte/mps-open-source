import {generate} from "./generator.ts"
import {asPrettyString} from "../../src/utils.ts"
import {JsonSchema} from "../../src-gen/type-defs/JsonSchema-types.ts"
import {devLoadModel} from "../dev-model-loader.ts"
import {ensureDir} from "https://deno.land/std/fs/mod.ts"


/*
 * run on CLI:
    deno run --allow-read --allow-write src-test/jsonSchema/test.ts
 */


const schemas = await devLoadModel<JsonSchema>(
    "../mps-open-source/solutions/JsonExamples/models/JsonSchema.examples.mps",
    "jsonSchema-examples"
)


const basePath = "./tmp/jsonSchema-examples/"
await ensureDir(basePath)

// generate a separate JSON (Schema) file for every {@link JsonSchema} instance in the model:
schemas.forEach((schema) => {
    const name = (schema as JsonSchema).name
    Deno.writeTextFileSync(`${basePath}${name}.json`, asPrettyString(generate(schema)))
    console.log(`Generated JSON Schema file for model "${name}".`)
})

