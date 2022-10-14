## Objective

The objective is to be able to deserialize MPS models into JS space in a typed way.
So, we need to generate those types (and specialized deserialization functions) from _a_ language definition.
The question is what's more useful: taking complete language defs (or rather: their structure def), or just go by the registry.
We anyway have to understand the registry in relation to the model nodes themselves, so transforming the registry into a facade for the meta model (with own types) is likely most flexible.


## Milestones

1. Transform XML into a clean model:
    * Requires proper, “nice“ types for a generic AST structure with reflection.
    * Resolve references.
    * Augment with reflective meta info, parent, containing model.
2. Combine+dedup registries from multiple files.
    * Can different registries specify different IDs/indices?
3. Read in multiple files.
4. Generate types and converters from a (combined) registry.
5. Read models using generated types and converters.
6. Perform some kind of generation from that - just to test the concept.

Do this end-to-end, though!


## Design decisions

I use Deno for a quick turnaround in development.
Later on, it would be a good idea to convert to Deno+Node.js for a broader compatibility.

I just happened to pick this particular XML parser, which isn't available as an NPM package.
Later on, that might require fixing.
**TODO**  investigate JS XML parsers that are available through NPM

Note: the generated deserializer _will_ be coupled to the XML parser used.

The deserialization function can work directly on `ModelXml` for _some_ type-safety, but it's tedious.
It's unnecessary in the sense that it would require specialized type definitions for the parsed XML...


## Questions/notes

* What about using JavaScript proxies to facade the XML parse result?
   You'd still need the types (derived from the registry or the actual structure definitions), but you wouldn't need to deserialize explicitly.
   See this [mdn doc](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy).
   (The [`Reflect` object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect) also seems to be interesting.)
   Proxies would need to act recursively.
   The problem with proxies is that it _wraps_ an existing type also type-wise, so the proxied object can't pretend to be of a totally different type.
   See:

   ```typescript
   import {asArray} from "./generic.ts"
   const proxiedXmlModel = new Proxy<{ nodes: unknown[] }>(modelXml, {
      get(target, property) {
          if (property === "nodes") {
             return asArray(modelXml.node)
          }
      }
   }) as { nodes: unknown[] }
   
   console.dir(proxiedXmlModel.nodes)
   ```

* It seems deserialization can be done pretty generically: just need a map index &rarr; name of generated type or property on such a type.

* Generation of appropriate types from the registry also seems to be pretty easy.
  * All children are multi-valued.
  * All properties and references are optionally-valued.
  The _problem_ is that the language as it is in the registry doesn't specify the _type_ of features (properties, children, references).
  It also doesn't know about inheritance, and concepts being abstract.
  So, we do need the original language's definition for that.

* It might be necessary to have some more of a language's structure (def./decl.) during deserialization!
  E.g., to know that a `string` has to be parsed as a `number`.


## TODOs

* &#10003; Get imports from other languages working.
* &#10003; Write proper documentation, including good diagrams.
* &#10003; Implement CLI functionality.
* &hellip; Interpret `InterfaceConceptDeclaration`.`extends` and `ConceptDeclaration`.{`extends`, `implements`} more carefully.
* Publish as a Deno module - see [here](https://deno.land/add_module).
  * Move to a separate repo for that?
  * CLI as sub module?
* Make compiled executables.
* Implement a proper API.
* Think about how to resolve references when loading _multiple_ XML model files.
* Mixture of type definitions and interfaces in [`src/generic.ts`](./src/generic.ts) - is that acceptable?

