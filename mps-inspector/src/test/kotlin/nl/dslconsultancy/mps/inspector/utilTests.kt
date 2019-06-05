package nl.dslconsultancy.mps.inspector

import java.util.*
import kotlin.test.Test
import kotlin.test.assertFalse
import kotlin.test.assertTrue

class UtilTests {

    @Test
    fun `test whether strings are sorted`() {
        assertTrue { listOf<String>().isSorted() }
        assertTrue { listOf("").isSorted() }
        assertTrue { listOf("a").isSorted() }
        assertTrue { listOf("a", "b").isSorted() }
        assertFalse { listOf("d", "a").isSorted() }
        assertFalse { listOf("d", "a", "b").isSorted() }
        assertTrue { listOf("a", "a", "a").isSorted() }

        val uuids = 1.rangeTo(1000).map { UUID.randomUUID().toString() }
        assertTrue(uuids.sorted().isSorted())
    }

}
