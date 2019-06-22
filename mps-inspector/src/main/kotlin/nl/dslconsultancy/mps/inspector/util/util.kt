package nl.dslconsultancy.mps.inspector.util

import java.io.File
import java.nio.file.Path
import java.util.stream.Collectors
import java.util.stream.Stream

fun Iterable<String>.isSorted(): Boolean = zip(drop(1)).all { it.first <= it.second }

fun <T> Stream<T>.asList(): List<T> = collect(Collectors.toList())

fun String.lastSection(ch: Char): String {
    val index = lastIndexOf(ch)
    return if (index + 1 <= length) substring(index + 1) else this
}

fun String.lastSection(): String = lastSection('.')

fun Path.lastSection(): String = toString().lastSection(File.separatorChar)

fun Iterable<String>.withHeader(header: String): Iterable<String> =
    listOf(header, *toList().toTypedArray())

