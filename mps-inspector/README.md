# README

The MPS Inspector is a tool meant for use in conjunction with MPS.
It works on an MPS project, and can perform various maintenance functions on MPS XML files.
Such files have extension `.mpl`, `.msd`, or `.mps`.
(It assumes that the standard persistence strategy is used.)

Capabilities:

1. &#10003; Sorting content related to dependencies, in `.mps/modules.xml` and `.msd`/`.msd`/`.mps` files.
    This could facilitate textual diffing of such files/content.
1. &#10003; Generate concept and feature usage statistics.
1. ... Export structure of languages, directly from XML to JSON.
1. ... Generate Kotlin code for deserializing models from XML.
1. ... Export models, directly from XML to JSON.
1. Warn about unused (i.e., not referenced from `.mps/modules.xml`) modules.
    Or more generally: compare project/modules on disk with `.mps/modules.xml`, and generate fixes.
1. Normalize structure on disk to standard layout.
1. Track dependencies, and check for incorrect/unmatched language versions, and such.

The reason for this tool's existence is having had bad experiences with MPS in combination with merging/rebasing.
MPS regularly looses track of correct versions, and such.
Also, inspection of dependencies from within MPS itself is cumbersome.
Instead of trying to shoehorn such functionality into the MPS code base, the idea is to run a separate process that checks, and potentially auto-fixes MPS XML files.

(It also serves as a small project for me to learn Kotlin "on the job".
The required code is not very complicated, but is helped by Kotlin's facilities.)


## TODOs

* &#10003; Use JSON input for configuration.


## Notes

* [polling with Java NIO](https://dzone.com/articles/event-driven-architecture-over-polling-architecture), for making things incremental

