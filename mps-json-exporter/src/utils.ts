/**
 * (non-cyclic) JSON &rarr; pretty-printed serialization, with 2 spaces for each indentation.
 */
export const asPrettyString = (data: unknown): string =>
    JSON.stringify(data, null, 2) + "\n"


/**
 * A type alias/definition for maps string &rarr; {@type V}.
 */
export type Map<V> = { [ key: string ]: V }

/**
 * Groups the given array of {@type T} into a map key &rarr; array of array items with that key.
 */
export const groupBy = <T>(array: T[], keyFunc: (t: T) => string): Map<T[]> =>
    array.reduce((acc: Map<T[]>, value) => {
        const key = keyFunc(value)
        if (acc[key] === undefined) {
            acc[key] = []
        }
        acc[key].push(value)
        return acc
    }, {})


const stringCompare = (l: string, r: string): number =>
    (l < r)
        ? -1
        : ((l > r)
            ? 1
            : 0
        )

export const sortBy = <T>(array: T[], keyFunc: (t: T) => string): T[] =>
    [...array].sort((l, r) => stringCompare(keyFunc(l), keyFunc(r)))


/**
 * Helper function that let's you do a “let”, of sorts:
 * <pre>
applyTo(<expr1>, <letVar> => <expr2>)
 * </pre>
 * is essentially equivalent to:
 * <pre>
{
  let <letVar> = <expr1>
  <expr2>
}
 * </pre>
 */
export const applyTo = <U, V>(u: U, func: (u: U) => V): V =>
    func(u)


/**
 * Compute the last part of a fully-qualified name.
 */
export const lastNamePart = (fqName: string) =>
    fqName.substring(fqName.lastIndexOf(".") + 1)


/**
 * @returns {string} The given string with the first character converted to upper case (if possible).
 */
export const withFirstUpper = (str: string) =>
    str.charAt(0).toUpperCase() + str.substring(1)

/**
 * @returns {string} The given string with the first character converted to lower case (if possible).
 */
export const withFirstLower = (str: string) =>
    str.charAt(0).toLowerCase() + str.substring(1)


/**
 * Deconflicts the given property name w.r.t. the built-in bookkeeping properties,
 * adding an extra leading `$` when the name has a leading `$`, so that only the
 * names of the bookkeeping properties have precisely 1 leading `$`s.
 */
export const deconflicted = (propertyName: string) =>
    `${propertyName.match(/^\$/) ? "$" : ""}${propertyName}`

