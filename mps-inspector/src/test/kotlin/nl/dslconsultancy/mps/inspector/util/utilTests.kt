package nl.dslconsultancy.mps.inspector.util

import java.util.*
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertFalse
import kotlin.test.assertTrue

class UtilTests {

    @Test
    fun `test whether detection of sorted strings works`() {
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

    @Test
    fun `test whether String#lastSection() works`() {
        assertEquals("", "".lastSection())
        assertEquals("bar", "foo.bar".lastSection())
        assertEquals("lizard", "foo.bar.lizard".lastSection())
        assertEquals("foo", ".foo".lastSection())
        assertEquals("", ".".lastSection())
    }

}
