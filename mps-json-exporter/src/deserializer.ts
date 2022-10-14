import {ModelXml, NodeXml, ReferenceSettingXml} from "./model-xml-types.ts"
import {asArray, Containment, isNode, Node, Reference} from "./generic.ts"
import {deconflicted, groupBy} from "./utils.ts"
import {indicesfrom, NamePerIndex} from "./indexer.ts"


/**
 * Defines a function that gets called by {@link #deserializeXml}
 * before references are resolved (“linking”, hence “preLinked”),
 * with introspection data that could be useful to debug the deserialization process.
 */
export type DeserializationIntrospector<T extends Node> = Partial<{
    parsedModelXml: (parsedModelXml: unknown) => void
    index2name: (namePerIndex: NamePerIndex) => void
    preLinked: (roots: T[]) => void
    id2node: (id2node: { [id: string]: T }) => void
    refsToResolve: (refsToResolve: Reference<T>[]) => void
}>


/**
 * Deserializes an MPS model into the given type `T`,
 *  which is the target type of the root of the deserialized model
 *
 * @param modelXml - an MPS model (as an XML file) parsed as an instance of the {@link ModelXml} type
 * @param introspector - a function that's useful for debugging this function.
 *  It's called directly before resolving references (“linking”, hence “preLinked”) is started.
 */
export const deserializeXml = <T extends Node>(
    modelXml: ModelXml,
    introspector?: DeserializationIntrospector<T>
): T[] => {

    const index2name = indicesfrom(modelXml)

    const id2node: { [ id: string ]: T } = {}
    const node = ($metatype: string, $id: string, settings: object): T => {
        const newNode = {
            $metatype,
            $id,
            ...settings
        } as T
        id2node[$id] = newNode
        return newNode
    }

    const refsToResolve: Reference<T>[] = []
    const refToResolve = (refXml: ReferenceSettingXml): Reference<T> => {
        const [ targetId, targetModel ] = (() => {
            if ("@node" in refXml) {
                return [ refXml["@node"]!, undefined ]
            }
            const to = refXml["@to"]!
            const idx = to.indexOf(":")
            return [ to.substring(idx + 1), index2name[to.substring(0, idx)] ]
        })()
        const newRef = {
            $ref: {
                targetName: refXml["@resolve"],
                targetId,
                targetModel
            }
        }
        refsToResolve.push(newRef)
        return newRef
    }

    const deserializeNodeXml = (nodeXml: NodeXml): T => {
        const $id = nodeXml["@id"]
        const concept = nodeXml["@concept"]
        if (!(concept in index2name)) {
            throw new Error(`concept with index "${concept}" not handled`)
        }
        return node(
            index2name[concept],
            $id,
            Object.fromEntries([
                // properties:
                ...asArray(nodeXml.property).map((setting) => [
                    deconflicted(index2name[setting["@role"]]!),
                    setting["@value"]
                ]),
                // children:
                ...Object.entries(
                    groupBy(
                        asArray(nodeXml.node),
                        (childNodeXml) => childNodeXml["@role"]!
                    )
                ).map(([ role, childNodesXml ]) => [
                    deconflicted(index2name[role]),
                    childNodesXml.map(deserializeNodeXml)
                ]),
                // references:
                ...Object.entries(
                    groupBy(
                        asArray(nodeXml.ref),
                        (ref) => ref["@role"]!
                    )
                ).map(([ role, refs ]) => [
                    deconflicted(index2name[role]),
                    refs.map(refToResolve)
                ])
            ])
        )
    }

    const roots = modelXml.node.map(deserializeNodeXml)
    if (introspector !== undefined) {
        if (introspector.parsedModelXml !== undefined) {
            introspector.parsedModelXml(modelXml)
        }
        if (introspector.index2name !== undefined) {
            introspector.index2name(index2name)
        }
        if (introspector.preLinked !== undefined) {
            introspector.preLinked(roots)
        }
        if (introspector.id2node !== undefined) {
            introspector.id2node(id2node)
        }
        if (introspector.refsToResolve !== undefined) {
            introspector.refsToResolve (refsToResolve)
        }
    }

    refsToResolve.forEach((refToResolve) => {
        refToResolve.$ref.target = id2node[refToResolve.$ref.targetId]
    })

    const augment = (node: Node, containment?: Containment): void => {
        Object.entries(node).forEach(([ key, value ]) => {
            const containment = { parent: node, containingPropertyName: key }
            if ([ "$id", "$metatype", "$parent"/*, "$roots"*/ ].indexOf(key) === -1) {
                if (Array.isArray(value)) {
                    value.filter(isNode).forEach((item) => augment(item, containment))
                } else if (isNode(value)) {
                    augment(value, containment)
                } // else value is either a simple setting or a reference setting
            }
        })
        node.$containment = containment
    }
    roots.forEach((root) => augment(root, undefined))

    return roots
}

