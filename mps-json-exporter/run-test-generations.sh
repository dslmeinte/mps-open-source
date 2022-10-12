TMP_PATH=tmp

rm -rf $TMP_PATH
mkdir $TMP_PATH

LANGUAGES_PATH=../mps-open-source/languages
deno run --allow-read --allow-write src/languageStructure/cli.ts "$LANGUAGES_PATH/Json" src-gen/
deno run --allow-read --allow-write src/languageStructure/cli.ts "$LANGUAGES_PATH/JsonSchema" src-gen/

# this should do exactly the same as the previous two statements, except that debug info is written to tmp/:
deno run --allow-read --allow-write src-test/languageStructure/test.ts

deno run --allow-read --allow-write src-test/jsonSchema/test.ts
./src-test/jsonSchema/diff-jsonSchemas-examples.sh

# TODO  move script to src-test

