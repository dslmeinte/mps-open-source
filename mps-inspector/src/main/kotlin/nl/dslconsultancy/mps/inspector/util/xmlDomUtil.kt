package nl.dslconsultancy.mps.inspector.util

import org.w3c.dom.Document
import org.w3c.dom.Node
import org.w3c.dom.NodeList
import org.w3c.dom.Text
import org.xml.sax.InputSource
import java.nio.file.Files
import java.nio.file.Path
import javax.xml.parsers.DocumentBuilderFactory
import javax.xml.xpath.XPathConstants
import javax.xml.xpath.XPathFactory

/*
 * Convenience to make working with XML DOM more comfortable.
 * Because of limitations (in my understanding of) Jackson, we're using good'ole XML DOM.
 */

object XmlDomUtil {

    fun readXml(path: Path): Document {
        return DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(InputSource(Files.newBufferedReader(path)))
    }

}


fun Document.xPathAsNodes(xPathExpr: String): Iterable<Node> {
    return (XPathFactory.newInstance().newXPath().evaluate(xPathExpr, this, XPathConstants.NODESET) as NodeList).asIterable()
}

private fun NodeList.asIterable(): Iterable<Node> {
    val list = ArrayList<Node>()
    for (i in 1..this.length) {
        list.add(this.item(i - 1))
    }
    return list
}


fun Node.attribute(name: String): String {
    return this.attributes.getNamedItem(name).nodeValue
}

fun Node.firstChild(): Node {
    return this.childNodes.item(0)
}

fun Node.textContents(): String {
    val contents = firstChild()
    if (contents is Text) {
        return contents.wholeText
    }
    throw IllegalArgumentException("not a node with text contents")
}

