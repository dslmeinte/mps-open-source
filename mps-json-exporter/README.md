# README

This part of the [`mps-open-source`](https://github.com/dslmeinte/mps-open-source) repository contains utilities to:

1. Generate TypeScript type definitions from (the `structure` model/aspect of) an MPS language.
2. Load MPS model files in its standard XML format, and deserialize it into an in-memory model in JS space conforming to type definitions generated with item (1).
   (This includes resolution of references - currently only intra-model references, though.)

This could be useful to process models made with MPS, without having to rely completely and explicitly on MPS itself for either generating from, or exporting the model.


## Status

This is a Work-In-Progress, and definitely not feature-complete.
I haven't tested it thoroughly, e.g. against many languages and models.
One thing that I haven't implemented at all yet is loading multiple models at once, and resolving inter-model references.
(Intra-model references should work fine already.)

Something else that I didn't get around to, is to properly document the API (insofar it is one), and implementing a CLI.


## API

This module's API is exposed through [`src/index.ts`](./src/index.ts).
The following things are exposed:

* `Node`: an interface for nodes in a deserialized MPS model
* `Reference`: a type definition for reference objects, encoding references in a deserialized MPS model
* `Named`: a type definition for named nodes in a deserialized MPS model
* `loadModel`, `loadModelSync`: functions (asynchronous, resp., synchronous) that load an MPS model file, and deserialize it into types
* `Declaration`: a type definition for roots in an MPS structure model
* `generateTypes`: a function that generates the contents of a TypeScript source file from a loaded MPS structure model file of an MPS language.
  This source file then contains type definitions that can be used to deserialize MPS model files that conform to that language.


## Usage

To load MPS models written with an MPS language, perform the following steps:

1. Load the structure (aspect) model of the language:
```typescript
import {Declaration, loadModel} from ".../src/index.ts"
const decls = await loadModel<Declaration>(`...path to.../${languageName}/models/structure.mps`)
```
Here, `${languageName}` is the name of the language.
2. Generate type definitions from that:
```typescript
import {generateTypes} from ".../src/index.ts"
Deno.writeTextFileSync(`.../src-gen/type-defs/${languageName}-types.ts`, generateTypes(roots, ${languageName}))
```
This generates (among others) a type `AnyRootable${languageName}Concept` that is the sum of all rootable concepts of the language.
3. Load an MPS model:
```typescript
import {AnyRootable${languageName}Concept} from ".../src-gen/type-defs/${languageName}-types.ts"
const roots = await loadModel<AnyRootable${languageName}Concept>(`...path to MPS XML model file...`)
```


## Building

The [`build.sh`](./build.sh) bundles the non-test TypeScript source files to a [standalone executable](./dist/mps-json-exporter.bundle.js).


## Pointers

Current entrypoints to look at are:

* [A description of the MPS XML model file format](./docs/MPS-model-XMLs.adoc)
* [A CLI-callable Deno program to generate type definitions from the JsonSchema language](./src-test/languageStructure/generator.ts)
* [A CLI-callable Deno program to load a model using the JsonSchema language, and generating actual JSON Schemas from those](./src-test/jsonSchema/test.ts)
  [This companion shell script](./src-test/jsonSchema/diff-jsonSchemas-examples.sh) also checks whether those generated JSON Schemas are matching expectations.

Output for the latter two ends up in the [`src-gen/`](./src-gen) directory.
Please have a look in that directory to get an idea what's going on.
Both programs rely on the [Deno JS/TS runtime](https://deno.land).
Instructions on how to run them is included at the top of their source files.

Run the [`run-test-generations.sh`](./run-test-generations.sh) shell script to

1. Generate type definitions from the Json and JsonSchema languages.
2. Load a JsonSchema model.
3. Generate the corresponding JSON Schema files from that model.
4. Diff those files with the expected content.

