package nl.dslconsultancy.mps.analyser.util

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


// syntactic sugar for paths:
operator fun Path.div(other: Path): Path = resolve(other)
operator fun Path.div(other: String): Path = resolve(other)


fun csvRowOf(vararg items: Any): String = items.joinToString(",")

fun Iterable<String>.asCsvRow(): String = joinToString(",")


typealias CountingMap<T> = Map<T, Int>

fun <T> CountingMap<T>.combine(other: CountingMap<T>): CountingMap<T> {
    val newMap = hashMapOf<T, Int>()
    toMap(newMap)
    other.entries.forEach { (key, value) ->
        newMap += key to ((this[key] ?: 0) + value)
    }
    return newMap
}

