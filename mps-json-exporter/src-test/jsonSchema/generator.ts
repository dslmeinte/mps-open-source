import {
    AnyConcreteJsonSchemaConcept,
    AnyJsonSchemaConcept,
    JsonArrayDef,
    JsonEnumerationDef,
    JsonEnumerationValue,
    JsonExternalRef,
    JsonIntegerType,
    JsonObjectDef,
    JsonOneOf,
    JsonPatternProperty,
    JsonReferableRef,
    JsonRegularProperty,
    JsonSchema,
    JsonStringFormat,
    JsonStringFormats,
    JsonStringPattern,
    JsonStringType
} from "../../src-gen/JsonSchema-type-defs.ts"
import {
    asArray,
    asShorthandArray,
    filterType,
    findType
} from "../../src/generic.ts"
import {applyTo} from "../../src/utils.ts"


/**
 * Generate a (part of a) JSON Schema from the definition
 * given by an MPS model deserialized as a {@link JsonSchema} and instances of other {@link AnyJsonSchemaConcept}s.
 * @param node - an instance of {@link AnyJsonSchemaConcept} to generate a part of JSON Schema for
 */
export const generate = (node: AnyJsonSchemaConcept): unknown => {
    const instance = node as AnyConcreteJsonSchemaConcept
    switch (instance.$metatype) {
        case "JsonSchema": return {
            id: instance.id,
            $schema: "http://json-schema.org/draft-07/schema#",
            title: instance.title,
            description: instance.description,
            ...(instance.contents === undefined
                    ? {}
                    : generate(instance.contents[0]) as object
            ),
            definitions: applyTo(
                asArray(instance.definitions),
                (definitions) => definitions.length === 0
                    ? undefined
                    : Object.fromEntries(definitions.map((definition) => [
                            definition.name,
                            generate(definition.def[0])
                        ])
                    )
            )
        }
        case "JsonObjectDef": return {
            type: "object",
            title: instance.title,
            properties: applyTo(
                filterType<JsonRegularProperty>(instance.properties, "JsonRegularProperty"),
                (properties) =>
                    properties.length === 0
                        ? undefined
                        : Object.fromEntries(
                            properties
                                .map((property) => [
                                    property.name,
                                    {
                                        description: property.description,
                                        ...generate(
                                            property.type[0]
                                        ) as object
                                    }
                                ])
                        )
            ),
            patternProperties: applyTo(
                filterType<JsonPatternProperty>(instance.properties, "JsonPatternProperty"),
                (properties) =>
                    properties.length === 0
                        ? undefined
                        : Object.fromEntries(
                            properties
                                .map((property) => [
                                    property.pattern,
                                    generate(property.type[0])
                                ])
                        )
            ),
            required: asShorthandArray(
                filterType<JsonRegularProperty>(instance.properties, "JsonRegularProperty")
                    .filter((property) => property.required)
                    .map((property) => property.name)
            )
        }
        case "JsonReferableRef": {
            const target = instance.ref[0].$ref.target!
            const containment = target.$containment
            const ref = (() => {
                if (containment === undefined) {
                    if (target.$metatype === "JsonSchema") {
                        return (target as JsonSchema).id
                    }
                } else {
                    if (containment.parent.$metatype === "JsonSchema" && containment.containingPropertyName === "definitions") {
                        return `#/definitions/${(target as JsonSchema).name}`
                    }
                }
                return `???`
            })()
            return {
                $ref: ref
            }
        }
        case "JsonArrayDef": return {
            type: "array",
            minItems: instance.minItems === undefined ? undefined : Number(instance.minItems),
            maxItems: instance.maxItems === undefined ? undefined : Number(instance.maxItems),
            items: asShorthandArray(instance.itemsType.map(generate), true),
            uniqueItems: instance.uniqueItems ? true : undefined
        }
        case "JsonOneOf": return {
            "oneOf": instance.types.map(generate)
        }
        case "JsonEnumerationValue": return instance.name
        case "JsonEnumerationDef": return {
            enum: asArray(instance.values).map(generate)
        }
        case "JsonStringType": return {
            type: "string",
            pattern: applyTo(
                findType<JsonStringPattern>(instance.restriction, "JsonStringPattern"),
                (patternRestriction) => patternRestriction?.pattern
            ),
            oneOf: applyTo(
                findType<JsonStringFormats>(instance.restriction, "JsonStringFormats"),
                (formatsRestriction) => formatsRestriction === undefined
                    ? undefined
                    : formatsRestriction.formats.map(generate)
            )
        }
        case "JsonBooleanType": return {
            type: "boolean"
        }
        case "JsonStringFormat": return {
            "format": instance.name
        }
        case "JsonIntegerType": return {
            type: "integer",
            minimum: Number(instance.minimum),
            maximum: Number(instance.maximum)
        }
        case "JsonNumberType": return {
            type: "number"
        }
        case "JsonExternalRef": return {
            $ref: instance.refUri
        }
    }
}

