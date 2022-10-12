import {asArray} from "../../src/generic.ts"
import {JsonSchema} from "../../src-gen/JsonSchema-type-defs.ts"


export type XmlJsonSchemaModel = {
    node: XmlJsonSchemaNodeType[]
}

export type XmlJsonSchemaNodeType =
    | XmlJsonSchema

export type XmlJsonSchema = XmlAbstractNode & {
    "@concept": "2n4O$4"
    property: XmlPropertySetting<XmlNamePropertySingleSetting | XmlDescriptionPropertySingleSetting | XmlIdPropertySingleSetting>
}

export type XmlNamePropertySingleSetting = XmlAbstractSingleSetting & {
    "@role": "TrG5h"
}

export type XmlDescriptionPropertySingleSetting = XmlAbstractSingleSetting & {
    "@role": "2n4XgD"
}

export type XmlIdPropertySingleSetting = XmlAbstractSingleSetting & {
    "@role": "2n4ZbQ"
}


// generic type (definition)s:

export type XmlAbstractNode = {
    "@concept": string
    "@id": string
}

export type XmlAbstractSingleSetting = {
    "@role": string
    "@value": string
    // (ignore "#text")
}

export type XmlPropertySetting<T extends XmlAbstractSingleSetting> = T | T[]


export const deserialize = (xmlModel: XmlJsonSchemaModel): JsonSchema[] =>
    xmlModel.node.map(deserializeNode)

export const deserializeNode = (xmlNode: XmlJsonSchema): JsonSchema => {
    const $id = xmlNode["@id"]
    switch (xmlNode["@concept"]) {  // Q  might require direct through a lookup in the registry, but that'd break type-safety anyway...
        case "2n4O$4": return ({
            $metatype: "JsonSchema",
            $id,
            ...Object.fromEntries(
                asArray(xmlNode.property).map((setting) => [
                    // key === concept's name:
                    (() => {
                        switch (setting["@role"]) {
                            case "2n4XgD": return "description"
                            case "2n4ZbQ": return "id"
                            case "TrG5h": return "name"
                        }
                    })(),
                    setting["@value"]
                ])
            )
        } as JsonSchema)
    }
}

/*
 * This approach won't work in general: the index of concepts is not an UUID (<== it's too short)
 * and can't be expected to be stable, so the type definitions would need to be regenerated every time.
 * It's better to do dynamic lookup and use casts.
 */

