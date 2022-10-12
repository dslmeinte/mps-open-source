/**
 * Type definitions, generated from the structure of the 'JsonSchema' language.
 */

import {Named, Node, Reference} from "../src/index.ts"
// TODO  import from a Deno module

import * as Json from "./Json-type-defs.ts"


// concept, alias = 'allOf'
export interface JsonAllOf extends JsonTypeLiteral, JsonSumType {
    $metatype: "JsonAllOf"
}


// concept, alias = 'any'
export interface JsonAny extends JsonTypeLiteral {
    $metatype: "JsonAny"
}


// concept, alias = 'anyOf'
export interface JsonAnyOf extends JsonTypeLiteral, JsonSumType {
    $metatype: "JsonAnyOf"
}


// concept, alias = 'array'
export interface JsonArrayDef extends JsonTypeLiteral {
    $metatype: "JsonArrayDef"
    minItems: number
    maxItems: number
    uniqueItems: boolean
    itemsType: JsonTypeLiteral[]   // [1]
}


// concept, alias = 'boolean'
export interface JsonBooleanType extends JsonTypeLiteral {
    $metatype: "JsonBooleanType"
}


// concept, alias = 'const'
export interface JsonConst extends JsonTypeLiteral {
    $metatype: "JsonConst"
    value: Json.IJsonValue[]   // [1]
}


// concept, alias = 'def'
export interface JsonDefinition extends Node, Named, JsonReferable {
    $metatype: "JsonDefinition"
    def: JsonTypeLiteral[]   // [1]
}


// concept, alias = 'enum'
export interface JsonEnumerationDef extends JsonTypeLiteral {
    $metatype: "JsonEnumerationDef"
    values: JsonEnumerationValue[]   // [1..n]
}


// concept
export interface JsonEnumerationValue extends Node, Named {
    $metatype: "JsonEnumerationValue"
}


// concept, alias = 'external ref'
export interface JsonExternalRef extends JsonTypeLiteral {
    $metatype: "JsonExternalRef"
    refUri: string
}


// concept, alias = 'integer'
export interface JsonIntegerType extends JsonTypeLiteral {
    $metatype: "JsonIntegerType"
    minimum: number
    maximum: number
}


// concept, alias = 'none'
export interface JsonNoneType extends JsonTypeLiteral {
    $metatype: "JsonNoneType"
}


// concept, alias = 'number'
export interface JsonNumberType extends JsonTypeLiteral {
    $metatype: "JsonNumberType"
    exclusiveMinimum: number
}


// concept, alias = 'object'
export interface JsonObjectDef extends JsonTypeLiteral {
    $metatype: "JsonObjectDef"
    title: string
    properties: JsonProperty[]   // [0..n]
    additionalPropertiesType: JsonTypeLiteral[]   // [0..1]
}


// concept, alias = 'oneOf'
export interface JsonOneOf extends JsonTypeLiteral, JsonSumType {
    $metatype: "JsonOneOf"
}


// concept, alias = 'pattern'
export interface JsonPatternProperty extends JsonProperty {
    $metatype: "JsonPatternProperty"
    pattern: string
}


// interface
export interface JsonProperty extends Node {
    type: JsonTypeLiteral[]   // [1]
}


// interface
export interface JsonReferable extends Node {
}


// concept
export interface JsonReferableRef extends JsonTypeLiteral {
    $metatype: "JsonReferableRef"
    ref: Reference<JsonReferable>[]   // [1]
}


// concept, alias = 'property'
export interface JsonRegularProperty extends Node, Named, JsonProperty {
    $metatype: "JsonRegularProperty"
    required: boolean
    description: string
}


// rootable concept, alias = 'schema'
export interface JsonSchema extends Node, Named, JsonReferable {
    $metatype: "JsonSchema"
    id: string
    description: string
    title: string
    contents: JsonTypeLiteral[]   // [1]
    definitions: JsonDefinition[]   // [0..n]
}


// concept, alias = 'format'
export interface JsonStringFormat extends Node, Named {
    $metatype: "JsonStringFormat"
}


// concept, alias = 'formats'
export interface JsonStringFormats extends JsonStringRestriction {
    $metatype: "JsonStringFormats"
    formats: JsonStringFormat[]   // [1..n]
}


// concept, alias = 'pattern'
export interface JsonStringPattern extends JsonStringRestriction {
    $metatype: "JsonStringPattern"
    pattern: string
}


// interface
export interface JsonStringRestriction extends Node {
}


// concept, alias = 'string'
export interface JsonStringType extends JsonTypeLiteral {
    $metatype: "JsonStringType"
    pattern: string
    restriction: JsonStringRestriction[]   // [0..1]
}


// abstract concept
export interface JsonSumType extends JsonTypeLiteral {
    types: JsonTypeLiteral[]   // [1..n]
}


// interface
export interface JsonTypeLiteral extends Node {
}


// enumeration
export type JsonVoid = "undefined" | "null"


// concept, alias = 'void'
export interface JsonVoidType extends JsonTypeLiteral {
    $metatype: "JsonVoidType"
    void: JsonVoid
}



/**
 * Type def. that encompasses all (interface) concept declarations of this language.
 */
export type AnyJsonSchemaConcept =
        | JsonAllOf
        | JsonAny
        | JsonAnyOf
        | JsonArrayDef
        | JsonBooleanType
        | JsonConst
        | JsonDefinition
        | JsonEnumerationDef
        | JsonEnumerationValue
        | JsonExternalRef
        | JsonIntegerType
        | JsonNoneType
        | JsonNumberType
        | JsonObjectDef
        | JsonOneOf
        | JsonPatternProperty
        | JsonProperty
        | JsonReferable
        | JsonReferableRef
        | JsonRegularProperty
        | JsonSchema
        | JsonStringFormat
        | JsonStringFormats
        | JsonStringPattern
        | JsonStringRestriction
        | JsonStringType
        | JsonSumType
        | JsonTypeLiteral
        | JsonVoidType


/**
 * Type def. that encompasses all concrete concept declarations of this language.
 */
export type AnyConcreteJsonSchemaConcept =
        | JsonAllOf
        | JsonAny
        | JsonAnyOf
        | JsonArrayDef
        | JsonBooleanType
        | JsonConst
        | JsonDefinition
        | JsonEnumerationDef
        | JsonEnumerationValue
        | JsonExternalRef
        | JsonIntegerType
        | JsonNoneType
        | JsonNumberType
        | JsonObjectDef
        | JsonOneOf
        | JsonPatternProperty
        | JsonReferableRef
        | JsonRegularProperty
        | JsonSchema
        | JsonStringFormat
        | JsonStringFormats
        | JsonStringPattern
        | JsonStringType
        | JsonVoidType


/**
  * Type alias for all rootable concepts of this language.
 */
export type AnyRootableJsonSchemaConcept =
        | JsonSchema

