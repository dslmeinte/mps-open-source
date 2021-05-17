package nl.dslconsultancy.mps.exporter.util

import java.io.File
import java.nio.file.Path


fun String.lastSection(ch: Char): String {
    val index = lastIndexOf(ch)
    return if (index + 1 <= length) substring(index + 1) else this
}

fun String.lastSection(): String = lastSection('.')

fun Path.lastSection(): String = toString().lastSection(File.separatorChar)


// syntactic sugar for paths:
operator fun Path.div(other: Path): Path = resolve(other)
operator fun Path.div(other: String): Path = resolve(other)

