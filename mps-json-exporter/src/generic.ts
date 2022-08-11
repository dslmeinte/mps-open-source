/**
 * Generic type (def.)s and functions pertaining to the structure of a parsed MPS XML model file.
 */

import {applyTo} from "./utils.ts"


/**
 * Child properties in MPS can generally have array, single item, or `undefined` values,
 * even if the child property is declared to be multi-valued.
 */
export type SerializedChildren<T> = T[] | T | undefined


/**
 * Helper function that understands about MPS' XML structure
 * in which a collection of one element is represented as that element itself.
 */
export const asArray = <T>(t: SerializedChildren<T>): T[] => {
    if (t === undefined) {
        return []
    }
    if (Array.isArray(t)) {
        return t
    }
    return [ t ]
}


/**
 * Encoding of containment of a contained {@link Node}.
 */
export type Containment = {
    parent: Node
    containingPropertyName: string
}

/**
 * The (“abstract”) base type for nodes of a deserialized MPS model.
 */
export interface Node {
    $metatype: string
    $id: string
    $containment?: Containment   // undefined <-> root
    //$roots: Node[]             // TODO  install?
}
// property names with a leading `$` are escaping by being prepended with an extra `$`


/**
 * Type guard function for the {@link Node} type.
 */
export const isNode = (value: unknown): value is Node =>
        !Array.isArray(value)
    && (typeof value === "object")
    && (value !== null)
    && ("$metatype" in value)
    && ("$id" in value)


/**
 * Type definition for reference objects.
 */
export type Reference<T> = {
    $ref: {
        targetName: string
        targetId: string
        target?: T
        targetModel?: string    // human-readable name of external model
    }
}


/**
 * Type def. corresponding to MPS' `INamedConcept`.
 */
export type Named = {
    name: string
}


/**
 * Type guard function for the {@link Reference} type.
 */
export const isReference = <T>(value: unknown): value is Reference<T> =>
        !Array.isArray(value)
    && (typeof value === "object")
    && (value !== null)
    && ("$ref" in value)
    // TODO  make even more precise


/**
 * Filters {@link SerializedChildren serialized child nodes} for a specific type
 *  that's identified through (both) a (non-inferrable) {@type T}
 *  and a value for the discriminator of a tagged union.
 */
export const filterType = <T extends Node>(ts: SerializedChildren<Node>, metatype: T["$metatype"]): T[] =>
    asArray(ts)
        .filter((t) => t.$metatype === metatype)
        .map((t) => t as unknown as T)


/**
 * Finds the first instance of a specific type among {@link SerializedChildren serialized child nodes},
 *   or returns `undefined`.
 * The type is identified through (both) a (non-inferrable) {@type T}
 *  and a value for the discriminator of a tagged union.
 */
export const findType = <T extends Node>(ts: SerializedChildren<Node>, metatype: T["$metatype"]): T | undefined =>
    applyTo(
        asArray(ts)
            .find((t) => t.$metatype === metatype),
        (t) => t === undefined ? undefined : t as T
    )


/**
 * Returns an array of items in “shorthand” form:
 *   * `undefined` is the array is empty
 *   * Just the first item if the array only has one item and the parameter `collapse1` is `true`.
 *   * The original array otherwise.
 */
export const asShorthandArray = <T>(ts: T[], collapse1 = false): SerializedChildren<T> => {
    switch (ts.length) {
        case 0: return undefined
        case 1: return collapse1 ? ts[0] : ts
        default: return ts
    }
}

