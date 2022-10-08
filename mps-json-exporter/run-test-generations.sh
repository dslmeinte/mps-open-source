GEN_PATH=src-gen

rm -rf $GEN_PATH
mkdir $GEN_PATH

deno run --allow-read --allow-write src-test/languageStructure/test.ts

deno run --allow-read --allow-write src-test/jsonSchema/test.ts
./src-test/jsonSchema/diff-jsonSchemas-examples.sh

