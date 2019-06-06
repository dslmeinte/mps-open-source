package nl.dslconsultancy.mps.inspector.util

import java.io.File
import java.nio.file.Path
import java.util.stream.Collectors
import java.util.stream.Stream

fun Iterable<String>.isSorted(): Boolean = this.zip(this.drop(1)).all { it.first <= it.second }

fun <T> Stream<T>.asList(): List<T> = this.collect(Collectors.toList())

fun String.lastSection(ch: Char): String {
    val index = this.lastIndexOf(ch)
    return if (index + 1 <= this.length) this.substring(index + 1) else this
}

fun String.lastSection(): String = this.lastSection('.')

fun Path.lastSection(): String = this.toString().lastSection(File.separatorChar)

inline fun <T> Iterable<T>.findSingle(predicate: (T) -> Boolean): T = this.single { predicate(it) }

