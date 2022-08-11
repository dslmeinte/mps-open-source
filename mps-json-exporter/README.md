# README

This part of the [`mps-open-source`](https://github.com/dslmeinte/mps-open-source) repository contains utilities to:

1. Generate TypeScript type definitions from (the `structure` model/aspect of) an MPS language.
2. Load MPS model files in its standard XML format, and deserialize it into an in-memory model in JS space conforming to type definitions generated with item (1).
   (This includes resolution of references - currently only intra-model references, though.)

This is a Work-In-Progress, and definitely not feature-complete.
I haven't tested it thoroughly, e.g. against many languages and models.
One thing that I haven't implemented at all yet is loading multiple models at once, and resolving inter-model references.
(Intra-model references should work fine already.)

Something else that I didn't get around to, is to properly document the API (insofar it is one), and implementing a CLI.

Current entrypoints to look at are:

* [A description of the MPS XML model file format](./docs/MPS-model-XMLs.adoc)
* [A CLI-callable Deno program to generate type definitions from the JsonSchema language](./src/languageStructure/generator.ts)
* [A CLI-callable Deno program to load a model using the JsonSchema language, and generating actual JSON Schemas from those](./src/jsonSchema/test.ts)
  [This companion shell script](./src/jsonSchema/diff-jsonSchemas-examples.sh) also checks whether those generated JSON Schemas are matching expectations.

Output for the latter two ends up in the [`gen/`](./gen) directory.
Please have a look in that directory to get an idea what's going on.
Both programs rely on the [Deno JS/TS runtime](https://deno.land).
Instructions on how to run them is included at the top of their source files.

Run the [`build.sh`](./build.sh) shell script to

1. Generate type definitions from the Json and JsonSchema languages.
2. Load a JsonSchema model.
3. Generate the corresponding JSON Schema files from that model.
4. Diff those files with the expected content.

