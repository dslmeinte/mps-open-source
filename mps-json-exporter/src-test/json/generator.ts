import {
    AnyConcreteJsonConcept,
    IJsonValue,
    JsonArray,
    JsonBoolean,
    JsonFile,
    JsonInteger,
    JsonObject,
    JsonString
} from "../../src-gen/Json-type-defs.ts"
import {asArray} from "../../src/generic.ts"


export const generate = (iJsonValue: IJsonValue): unknown => {
    const jsonValue = iJsonValue as AnyConcreteJsonConcept
    switch (jsonValue.$metatype) {
        case "JsonArray": return asArray(jsonValue.items).map(generate)
        case "JsonBoolean": return jsonValue.value
        case "JsonFile": return generate(jsonValue.contents[0])
        case "JsonInteger": return Number(jsonValue.value)
        case "JsonNull": return null
        case "JsonObject": return Object.fromEntries(
            asArray(jsonValue.pairs)
                .map((pair) => [ pair.name, generate(pair.value[0]) ])
        )
        case "JsonString": return jsonValue.value
    }
}

