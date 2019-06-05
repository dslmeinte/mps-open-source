package nl.dslconsultancy.mps.inspector

fun Iterable<String>.isSorted(): Boolean {
    return this.zip(this.drop(1)).all { it.first <= it.second }
}

