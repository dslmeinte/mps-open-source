/**
 * Types that represent the result of parsing an MPS model file
 * using [the Deno XML parser](https://deno.land/x/xml) - see also [its GitHub repo](https://github.com/lowlighter/xml).
 * All these types are postfixed with `Xml`,
 * because these types are coupled to both the MPS XML model file format and the particular XML parser used.
 */

import {SerializedChildren} from "./generic.ts"


export type ModelXml = {
    imports: {
        import: SerializedChildren<ImportXml>
    }
    registry: {
        language: MetaLanguageDefXml[]
    }
    node: NodeXml[]
}

export type NodeXml = HasIdXml & {
    "@concept": string
    "@role": string | undefined   // == undefined only for the root
    property: PropertySettingXml[]
    node: NodeXml[]
    ref: ReferenceSettingXml[]
}

export type PropertySettingXml = HasRoleXml & {
    "@value": string
}

export type ReferenceSettingXml = HasRoleXml & {
    "@resolve": string
    "@node"?: string
    "@to": string
}


export type MetaLanguageDefXml = HasIdXml & HasNameXml & HasIndexXml & {
    concept: MetaConceptXml[] | MetaConceptXml
}

export type MetaConceptXml = HasIdXml & HasNameXml & HasIndexXml & {
    property: MetaFeatureXml[]
    child: MetaFeatureXml[]
    reference: MetaFeatureXml[]
}

export type MetaFeatureXml = HasIdXml & HasNameXml & HasIndexXml


export type HasIdXml = {
    "@id": string
}

export type HasNameXml = {
    "@name": string
}

export type HasIndexXml = {
    "@index": string
}

export type HasRoleXml = {
    "@role": string
}


export type ImportXml = HasIndexXml & {
    "@ref": string  // derive name from this
}

