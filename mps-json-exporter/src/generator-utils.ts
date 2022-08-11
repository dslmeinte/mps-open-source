/*
 * Taken verbatim from https://github.com/dslmeinte/littoral-templates/blob/main/src/index.ts,
 * except for some stylistic changes (`function` &rarr; `const`), and use of built-in `String.repeat`.
 */


export type NestedString = string | Array<NestedString>

type NestedStringFunction<T> = (_: NestedString) => T


/**
 * Polyfill/shim for ES2019's Array.prototype.flat(..).
 */
const flatten = (nestedString: NestedString): string[] =>
    Array.isArray(nestedString)
        ? nestedString.map(flatten).reduce((arrL, arrR) => [ ...arrL, ...arrR ], [])    // initial value [] in case result of flatten() is []
        : [ nestedString ]


/**
 * @returns {function(*=): *} - a function that maps over a single string using mapString, or an array of strings using mapStrings.
 * If an array is given, that array is completely (i.e.: recursively) flattened first, before the mapStrings function is applied.
 */
const mapNestedString = <T>(mapString: (_: string) => T, mapStrings: (_: string[]) => T) =>
    (nestedString: NestedString) =>
        Array.isArray(nestedString)
            ? mapStrings(flatten(nestedString))
            : mapString(nestedString)


const withNewlineEnsured = (str: string): string => str.charAt(str.length - 1) === '\n' ? str : ( str + "\n")
/**
 * @returns {string} - the given nested string joined as one string, taking care of proper newline endings.
 */
export const asString = mapNestedString(withNewlineEnsured, (strings) => strings.map(withNewlineEnsured).join(""))


/**
 * @returns {function} - a function to instantiate a function to indent a nested string.
 */
const indentWith = (singleIndentation: string) => (indentLevel: number = 1): NestedStringFunction<NestedString> => {
    const indentationPrefix = singleIndentation.repeat(indentLevel)
    const indentLine = (str: string): string => str.split("\n").map((line) => (line.length > 0 ? indentationPrefix : "") + line).join("\n")
    return mapNestedString((string: string): string[] => [ indentLine(string) ], (strings: string[]) => strings.map(indentLine))
}

export const indent = indentWith("    ")

