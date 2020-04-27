# README

The MPS Analyser is a commandline tool meant for use in conjunction with [JetBrains' MPS](https://www.jetbrains.com/mps/), working directly on MPS project files.
It works on an MPS project, and can perform various maintenance functions on MPS XML files - such files have extension `.mpl`, `.msd`, or `.mps`.
(It relies heavily on the assumption that the standard persistence strategy is used.)


## Using the tool

The tool takes the form of a Java JAR file that can be downloaded from the releases section.

**to re-do**


### Usage analysis

The usage analysis scans all MPS model XML files (regardless whether they'd actually be loaded by MPS as part of the project!), and tallies concept's instances as well as populated features (=properties, children, references).
The report is a comma-separated file, with the columns as follows:

1. The fully-qualified name of a concept or a feature.
2. The number of instances encountered over the whole project.
    This number can be 0, as the tallies are seeded with all concepts and all their features from languages that are used in models, and reside in the project.
    This should help with determining whether language elements/features are actually used, as long as the languages used reside in the same project.
3. Whether the concept or feature is marked `@Deprecated`, or a `?` if that couldn't be determined.
    If the latter occurs, it's most likely it came from a language that doesn't reside in the project, e.g. a built-in or deployed one.

The fully-qualified name of a feature is of the following form: `<fully-qualified name of the owning concept>#<name of the feature"`.


## Raison d'être

The reason for this tool's existence is wanting to have some way to in(tro)spect MPS projects outside of MPS itself.
Instead of trying to shoehorn such functionality into an MPS plugin, the idea is to run a separate process that analyses, and potentially auto-fixes MPS XML files.
Also, running MPS headless is typically somewhat problematic to set up, and get/keep working.
As this tool proves, it's not always necessary to actually load and run MPS.

(It also serves as a small project for me to learn Kotlin "on the job".
The required code is not very complicated, but is helped by Kotlin's language features.)

