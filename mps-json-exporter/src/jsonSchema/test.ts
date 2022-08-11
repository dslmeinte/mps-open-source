import {generate} from "./generator.ts"
import {asPrettyString} from "../utils.ts"
import {JsonSchema} from "../../gen/type-defs/JsonSchema-types.ts"
import {loadModel} from "../dev-model-loader.ts"


/*
 * run on CLI:
    deno run --allow-read --allow-write src/jsonSchema/test.ts
 */


const schemas = loadModel<JsonSchema>(
    "../mps-open-source/solutions/JsonExamples/models/JsonSchema.examples.mps",
    "jsonSchema-examples"
)


const basePath = "./gen/jsonSchema-examples/"

// generate a separate JSON (Schema) file for every {@link JsonSchema} instance in the model:
schemas.forEach((schema) => {
    const name = (schema as JsonSchema).name
    Deno.writeTextFileSync(`${basePath}${name}.json`, asPrettyString(generate(schema)))
    console.log(`Generated JSON Schema file for model "${name}".`)
})

