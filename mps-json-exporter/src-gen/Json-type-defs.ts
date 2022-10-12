/**
 * Type definitions, generated from the structure of the 'Json' language.
 */

import {Named, Node} from "../src/index.ts"
// TODO  import from a Deno module



// interface
export interface IJsonValue extends Node {
}


// concept, alias = '['
export interface JsonArray extends IJsonValue {
    $metatype: "JsonArray"
    items: IJsonValue[]   // [0..n]
}


// concept, alias = 'boolean'
export interface JsonBoolean extends IJsonValue {
    $metatype: "JsonBoolean"
    value: boolean
}


// rootable concept
export interface JsonFile extends Node, Named {
    $metatype: "JsonFile"
    contents: IJsonValue[]   // [1]
}


// concept, alias = '0'
export interface JsonInteger extends IJsonValue {
    $metatype: "JsonInteger"
    value: string
}


// root/declaration <ConstrainedDataTypeDeclaration>"JsonIntegerFormat" not handled


// concept, alias = 'null'
export interface JsonNull extends IJsonValue {
    $metatype: "JsonNull"
}


// concept, alias = '{'
export interface JsonObject extends IJsonValue {
    $metatype: "JsonObject"
    pairs: JsonPair[]   // [0..n]
}


// concept
export interface JsonPair extends Node, Named {
    $metatype: "JsonPair"
    value: IJsonValue[]   // [1]
}


// concept, alias = '"'
export interface JsonString extends IJsonValue {
    $metatype: "JsonString"
    value: string
}



/**
 * Type def. that encompasses all (interface) concept declarations of this language.
 */
export type AnyJsonConcept =
        | IJsonValue
        | JsonArray
        | JsonBoolean
        | JsonFile
        | JsonInteger
        | JsonNull
        | JsonObject
        | JsonPair
        | JsonString


/**
 * Type def. that encompasses all concrete concept declarations of this language.
 */
export type AnyConcreteJsonConcept =
        | JsonArray
        | JsonBoolean
        | JsonFile
        | JsonInteger
        | JsonNull
        | JsonObject
        | JsonPair
        | JsonString


/**
  * Type alias for all rootable concepts of this language.
 */
export type AnyRootableJsonConcept =
        | JsonFile

