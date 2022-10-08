/**
 * Type definitions for the JetBrains MPS Structure language,
 * that's used to define languages' structure with.
 */


import {Named, Node, Reference} from "../generic.ts"


export interface EnumerationMemberDeclaration extends Node, Named {
    $metatype: "EnumerationMemberDeclaration"
    memberId: string
}

export interface EnumerationDeclaration extends Node, Named {
    $metatype: "EnumerationDeclaration"
    members: EnumerationMemberDeclaration[]
    defaultMember: Reference<EnumerationMemberDeclaration>[]
}

export interface AbstractConceptDeclaration extends Node {
    conceptId: string
    final: boolean
    abstract: boolean
    conceptAlias: string
    linkDeclaration: LinkDeclaration[]
    propertyDeclaration: PropertyDeclaration[]
}

export interface InterfaceConceptDeclaration extends Node, Named, AbstractConceptDeclaration {
    $metatype: "InterfaceConceptDeclaration"
    extends: InterfaceConceptReference[]
}

export interface InterfaceConceptReference extends Node {
    $metatype: "InterfaceConceptReference"
    intfc: Reference<InterfaceConceptDeclaration>[]
}

export interface ConceptDeclaration extends Node, Named, AbstractConceptDeclaration {
    $metatype: "ConceptDeclaration"
    rootable: boolean
    implements: InterfaceConceptReference[]
    extends: Reference<ConceptDeclaration>[]
}

export interface PropertyDeclaration extends Node, Named {
    $metatype: "PropertyDeclaration"
    propertyId: string
    dataType: Reference<DataTypeDeclaration>[]
}

export interface LinkDeclaration extends Node {
    $metatype: "LinkDeclaration"
    role: string
    sourceCardinality: string   // === "fLJekj4/_1" | ...
    metaClass: string   // === undefined ~ reference | "fLJjDmT/aggregation" ~ child
    linkId: string
    target: Reference<AbstractConceptDeclaration>[]
}

export interface DataTypeDeclaration extends Node, Named {}

export interface ConstrainedDataTypeDeclaration extends Node, Named, DataTypeDeclaration {
    $metatype: "ConstrainedDataTypeDeclaration"
    constraint: string
    dataTypeId: string
}


export type Declaration =
    | EnumerationDeclaration
    | InterfaceConceptDeclaration
    | ConceptDeclaration
    | ConstrainedDataTypeDeclaration

