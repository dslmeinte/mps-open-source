# MPS Open Source

This repository contains open source "stuff" (languages, mainly) made with/in/for [JetBrains MPS](https://www.jetbrains.com/mps/) (=Meta-Programming System).

Open the directory `mps-open-source` _inside_ this repository in MPS as a project.
You have to define a path variable called `mps-open-source` in the Preferences, which points to this (inner) `mps-open-source` directory.

Development currently takes place with MPS version 2019.3.3 (#MPS-193.1331).


## Languages

### Json

This language encapsulates the JSON DOMs using the famous [Jackson library](https://github.com/FasterXML/jackson) for JSON/XML (de-)serialisation.
That approach avoids escaping problems and such.

### JsonSchema

This language aims to deliver the same expressive power and semantics of the official [JSON Schema](http://json-schema.org/) standard (draft version #7).

I don't intend to do that with the exact same syntax and structure of the original JSON, but opt to provide a cleaner syntax with less syntactic noise (m.n. enclosing `{}` and `""`), and a better editing experience.

As an example: object properties are either *regular*, or *pattern*ed, and co-exist happily together.
It's the job of the mapping to actual JSON (conforming to the JSON Schema meta-schema) to pull these apart in the way that JSON Schema prescribes.
I think this allows the schema author to organise their properties in the way they want.

Another facet is that I don't intend to support *default values* (at this time): this mixes validation with pure data concerns.

The longer term goal of this is to also provide an OpenAPI specification language which meshes with the JSON Schema language.

Useful links:

* The [specification](http://json-schema.org/specification.html) - **draft-07**
* The corresponding ![meta-schema](json-schema/meta-schema.json)
* Corresponding to models under Examples: [productSet](http://json-schema.org/example1.html), [entry, mainEntry](http://json-schema.org/example2.html)
* A very good [explanation](https://spacetelescope.github.io/understanding-json-schema/).

### WSDL, XSD, (XmlWithExtension)

These language serve as a slight abstraction of WSDL, resp, XSD.
The XmlWithExtension is an extension of the XML language built into MPS, that allows to specify an extension -such as `.wsdl` or `.xsd`- for an XML file.


### TODOs w.r.t. languages

Somewhat in order of rather shallowly descending importance:

* Implement import facilities for JSON (using Jackson), WSDL, XML.
* Expand the JsonSchema language to be able to cope with the meta-schema (or currently: an official one) for JSON Schema.
* Implement being able to validate a JSON model with/against a JSON Schema model.
* Implement constraints/validations such as name validity in the languages.
* Avoid having to use the Inspector for input (e.g., 2 occurrences in the XSD language).


## MPS Analyser

The MPS Analyser is a commandline tool meant for use in conjunction with [JetBrains' MPS](https://www.jetbrains.com/mps/), working directly on MPS project files.
For further information: [see here](./mps-analyser/README.md).

