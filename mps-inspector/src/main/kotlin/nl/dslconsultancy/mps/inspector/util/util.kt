package nl.dslconsultancy.mps.inspector.util

import java.util.stream.Collectors
import java.util.stream.Stream

fun Iterable<String>.isSorted(): Boolean {
    return this.zip(this.drop(1)).all { it.first <= it.second }
}

fun <T> Stream<T>.asList(): List<T> {
    return this.collect(Collectors.toList())
}

