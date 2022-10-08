TMP_PATH=tmp

rm -rf $TMP_PATH
mkdir $TMP_PATH

deno run --allow-read --allow-write src-test/languageStructure/test.ts

deno run --allow-read --allow-write src-test/jsonSchema/test.ts
./src-test/jsonSchema/diff-jsonSchemas-examples.sh

