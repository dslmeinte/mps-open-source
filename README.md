# MPS Open Source

This repository contains open source "stuff" (languages, mainly) made with/in/for [JetBrains MPS](https://www.jetbrains.com/mps/) (=Meta-Programming System).
For now that means: a language to author [JSON Schema](http://json-schema.org/) with.

Open the directory `mps-open-source` in MPS as a Project.

Development currently takes place with MPS version 2017.3.6 (#MPS-173.1812), loaded with the mbeddr platform plugins ([ZIP download link](https://github.com/mbeddr/mbeddr.core/archive/v2017.2.0.zip), version 2017.2.0 built on MPS version 2017.2.2).


## JsonSchema

This language aims to deliver the same expressive power and semantics of the official JSON Schema standard (now in draft #7).

I don't intend to do that with the exact same syntax and structure of the original JSON, but opt to provide a cleaner syntax with less syntactic noise (m.n. enclosing `{}` and `""`), and a better editing experience.

As an example: object properties are either *regular* or *pattern*ed and co-exist happily together.
It's the job of the mapping to actual JSON (conforming to the JSON Schema meta-schema) to pull these apart.
I think this allows the schema author to organise their properties in the way they want, and turning a regular property into a patterned property.

Another facet is that I don't intend to support *default values* (at this time): this mixes validation with pure data concerns.

The longer term goal of this is to also provide an OpenAPI specification language which meshes with the JSON Schema language.


### Links

* The [specification](http://json-schema.org/specification.html) - **draft-07**
* The corresponding ![meta-schema](json-schema/meta-schema.json)
* Corresponding to models under Examples: [productSet](http://json-schema.org/example1.html), [entry, mainEntry](http://json-schema.org/example2.html)
* A very good [explanation](https://spacetelescope.github.io/understanding-json-schema/).


### TODOs

Somewhat in order of rather shallowly descending importance:

* Implement import facility.
	We might want to use Jackson for this, in which case we could also use that to build JSON with in the first place.
* Expand language to be able to cope with the meta-schema (or currently: an official one) for JSON Schema.
* Implement being able to validate a JSON model (e.g. in the mbeddr JSON language) with a JSON Schema model.
* Implement constraints/validations in the language, such as name validity.

