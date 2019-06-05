package nl.dslconsultancy.mps.inspector.util

import java.util.stream.Collectors
import java.util.stream.Stream

fun Iterable<String>.isSorted(): Boolean {
    return this.zip(this.drop(1)).all { it.first <= it.second }
}

fun <T> Stream<T>.asList(): List<T> {
    return this.collect(Collectors.toList())
}

fun String.lastSection(): String {
    val index = this.lastIndexOf('.')
    return if (index + 1 <= this.length) this.substring(index + 1) else this
}

inline fun <T> Iterable<T>.findSingle(predicate: (T) -> Boolean): T {
    return this.filter { predicate(it) }.single()
}

