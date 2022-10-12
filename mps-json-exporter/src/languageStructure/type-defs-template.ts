import {
    AbstractConceptDeclaration,
    ConceptDeclaration,
    DataTypeDeclaration,
    Declaration,
    EnumerationDeclaration,
    InterfaceConceptDeclaration,
    InterfaceConceptReference,
    LinkDeclaration,
    PropertyDeclaration
} from "./structure-type-defs.ts"
import {asArray, filterType, Reference} from "../generic.ts"
import {asString, indent, NestedString} from "../generator-utils.ts"
import {deconflicted, sortBy} from "../utils.ts"


export const generateTypes = (decls: Declaration[], languageName: string): string =>
    asString(generateTypes_(decls, languageName))


const generateTypes_ = (decls: Declaration[], languageName: string): NestedString => {
    const sortedNamesFrom = (decl: Declaration[]): string[] => decl
        .map((decl) => decl.name)
        .sort()

    const sumTypeAliasFor = (alias: string, decls: Declaration[]): NestedString => [
        `export type ${alias} =`,
        indent()(sortedNamesFrom(decls).map((typeName) => `    | ${typeName}`)),
    ]

    const conceptDeclarations = decls
        .filter((decl) => decl.$metatype === "ConceptDeclaration" || decl.$metatype === "InterfaceConceptDeclaration")
    const concreteConcepts = filterType<ConceptDeclaration>(decls, "ConceptDeclaration")
        .filter((decl) => !decl.abstract)
    const rootableConcepts = concreteConcepts
        .filter((decl) => decl.rootable)

    const allLinks = conceptDeclarations.flatMap((decl) => asArray((decl as AbstractConceptDeclaration).linkDeclaration))
    const depNames = [ ...new Set(allLinks.filter((link) => link.target[0].$ref.targetModel).map((link) => link.target[0].$ref.targetModel)) ].sort()
    const allLinksAreChildren = allLinks.every(isChild)

    return [
`/**
 * Type definitions, generated from the structure of the '${languageName}' language.
 */

import {Named, Node${allLinksAreChildren ? "" : ", Reference"}} from "../src/index.ts"
// TODO  import from a Deno module

`,
        depNames.map((depName) => `import * as ${depName} from "./${depName}-type-defs.ts"`),
        ``,
        ``,
        sortBy(decls, (decl) => decl.name).map((decl) => {
            switch (decl.$metatype) {
                case "ConceptDeclaration":
                    return generateForConceptDeclaration(decl)
                case "InterfaceConceptDeclaration":
                    return generateForInterfaceConceptDeclaration(decl)
                case "EnumerationDeclaration":
                    return generateForEnumerationDeclaration(decl)
                default:
                    return [ `// root/declaration <${decl.$metatype}>"${decl.name}" not handled`, ``, `` ]
            }
        }),
        ``,
        `/**`,
        ` * Type def. that encompasses all (interface) concept declarations of this language.`,
        ` */`,
        sumTypeAliasFor(`Any${languageName}Concept`, conceptDeclarations),
        ``,
        ``,
        `/**`,
        ` * Type def. that encompasses all concrete concept declarations of this language.`,
        ` */`,
        sumTypeAliasFor(`AnyConcrete${languageName}Concept`, concreteConcepts),
        ``,
        ``,
        `/**`,
        `  * Type alias for all rootable concepts of this language.`,
        ` */`,
        sumTypeAliasFor(`AnyRootable${languageName}Concept`, rootableConcepts),
        ``
    ]
}


const generateForConceptDeclaration = (decl: ConceptDeclaration): NestedString => {
    const superInterfacesRefs =
        filterType<InterfaceConceptReference>(decl.implements, "InterfaceConceptReference")
            .map((intfc) => intfc.intfc[0])
    const isNamed = superInterfacesRefs.some((intfcRef) => intfcRef.$ref.targetName === "INamedConcept")
    const declaredSuperTypeNames: string[] = [ ...superInterfacesRefs, ...decl.extends ]
        .filter((typeRef) => !!typeRef.$ref.targetId && !typeRef.$ref.targetModel)
        .map((typeRef) => typeRef.$ref.targetName)    // TODO  replace with `ref.target.name`?
    const superTypeNames: string[] = [
        ...(
            (declaredSuperTypeNames.length === 0 || (declaredSuperTypeNames.length === 1 && isNamed))
                ? [ "Node" ]
                : []
        ),
        ...(isNamed ? [ "Named" ] : []),
        ...declaredSuperTypeNames
    ]
    const modifiers = [
        ...(decl.abstract ? ["abstract"] : []),
        ...(decl.rootable ? ["rootable"] : [])
    ]
    return [
        `// ${modifiers.join(", ")}${modifiers.length > 0 ? " " : ""}concept${decl.conceptAlias ? `, alias = '${decl.conceptAlias}'` : ``}`,
        `export interface ${decl.name} extends ${superTypeNames.join(", ")} {`,
        indent()([
            decl.abstract ? [] : [ `$metatype: "${decl.name}"` ],
            asArray(decl.propertyDeclaration).map(generateForPropertyDeclaration),
            asArray(decl.linkDeclaration).map(generateForLinkDeclaration)
        ]),
        `}`,
        ``,
        ``
    ]
}


const generateForInterfaceConceptDeclaration = (decl: InterfaceConceptDeclaration): NestedString => [
    `// interface`,
    `export interface ${decl.name} extends Node {`,
    indent()([
        asArray(decl.propertyDeclaration).map(generateForPropertyDeclaration),
        asArray(decl.linkDeclaration).map(generateForLinkDeclaration)
    ]),
    `}`,
    ``,
    ``
]


const generateForEnumerationDeclaration = (decl: EnumerationDeclaration): NestedString => [
    `// enumeration`,
    `export type ${decl.name} = ${decl.members.map((member) => `"${member.name}"`).join(" | ")}`,
    ``,
    ``
]


const mapDataType = (dataType: Reference<DataTypeDeclaration>): string => {
    const ref = dataType.$ref
    if (ref.target && ref.target.$metatype === "ConstrainedDataTypeDeclaration") {
        return "string"
    }
    const name = ref.targetName
    switch (name) {
        case "integer": return "number"
        default: return name
    }
}


const generateForPropertyDeclaration = (property: PropertyDeclaration): NestedString => {
    return [
        `${deconflicted(property.name)}: ${mapDataType(property.dataType[0])}`
    ]
}


const humanReadableCardinality = (encodedCardinality: string): string => {
    switch (encodedCardinality) {
        case undefined: return "0..1"
        case "fLJekj4/_1": return "1"
        case "fLJekj5/_0__n": return "0..n"
        case "fLJekj6/_1__n": return "1..n"
        default:
            throw Error(`cardinality "${encodedCardinality}" not handled in #isMultiple`)
    }
}


const isChild = (link: LinkDeclaration): boolean => link.metaClass === "fLJjDmT/aggregation"

const generateForLinkDeclaration = (link: LinkDeclaration): NestedString => {
    const isChild_ = isChild(link)
    const ref = link.target[0].$ref
    return [
        `${deconflicted(link.role)}: ${isChild_ ? "" : "Reference<"}${ref.targetModel ? `${ref.targetModel}.` : ``}${ref.targetName}${isChild_ ? "" : ">"}[]   // [${humanReadableCardinality(link.sourceCardinality)}]`  // TODO  express cardinality in type?
    ]
}

