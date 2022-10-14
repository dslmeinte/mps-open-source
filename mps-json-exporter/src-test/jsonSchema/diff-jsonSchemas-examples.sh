ORIGINALS_PATH=examples/jsonSchema-examples
GENERATION_PATH=tmp/jsonSchema-examples

diff $ORIGINALS_PATH/entry.json $GENERATION_PATH/entry.json
diff $ORIGINALS_PATH/mainEntry.json $GENERATION_PATH/mainEntry.json
diff $ORIGINALS_PATH/productSet.json $GENERATION_PATH/productSet.json

echo "Diffed originals with generated JSON Schemas. (No output <==> no diff.)"

# run as: [watch] ./src-test/jsonSchema/diff-jsonSchemas-examples.sh

