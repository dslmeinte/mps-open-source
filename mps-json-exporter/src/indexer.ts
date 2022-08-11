import {ModelXml} from "./model-xml-types.ts"
import {asArray} from "./generic.ts"
import {lastNamePart} from "./utils.ts"

/**
 * Map: index &rarr; name
 */
export type NamePerIndex = { [ index: string ]: string }


/**
 * Computes the map index &rarr; name for the languages in the registry in the given MPS model.
 *
 * @param modelXml - an MPS model (as an XML file) parsed as an instance of the {@link ModelXml} type
 */
export const indicesfrom = (modelXml: ModelXml): NamePerIndex => {
    const index2name: NamePerIndex = {}
    const register = (index: string, name: string) => {
        if (index in index2name) {
            console.log(`[WARN] index "${index} registered multiple times, for [ "${index2name[index]}", "${name}", ... ]`)
        }
        index2name[index] = name
    }

    modelXml.registry.language.forEach((language) => {
        asArray(language.concept).forEach((concept) => {
            register(concept["@index"], lastNamePart(concept["@name"]))
            ;[
                ...asArray(concept.property),
                ...asArray(concept.child),
                ...asArray(concept.reference)
            ].forEach((feature) => {
                register(feature["@index"], feature["@name"])
            })
        })
    })

    asArray(modelXml.imports.import).forEach((import_) => {
        const match = import_["@ref"].match(/^r:.+?\((.+?)\.structure\)/)
        if (!match) {
            throw Error(`value of @ref attribute in import has an unexpected format: "${import_["@ref"]}"`)
        }
        register(import_["@index"], match[1])
    })

    return index2name
}

