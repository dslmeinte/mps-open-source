rm -rf gen
mkdir gen

deno run --allow-read --allow-write src/languageStructure/generator.ts

deno run --allow-read --allow-write src/jsonSchema/test.ts
./src/jsonSchema/diff-jsonSchemas-examples.sh

