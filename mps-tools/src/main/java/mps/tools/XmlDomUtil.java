package mps.tools;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Helper class with static convenience methods to work with the XML DOM library in the JDK.
 */
public class XmlDomUtil {

    public static Document parse(InputStream inputStream) {
        try {
            return createDocumentBuilder().parse(inputStream);
        } catch (IOException | SAXException e) {
            throw new RuntimeException("could not parse XML document", e);
        }
    }

    private static DocumentBuilder createDocumentBuilder() {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        try {
            return dbf.newDocumentBuilder();
        } catch (ParserConfigurationException e) {
            throw new RuntimeException("could not instantiate XML parser", e);
        }
    }

    public static List<Node> childElementsByName(Node node, String name) {
        ArrayList<Node> nodes = new ArrayList<>();
        for (int i = 0; i < node.getChildNodes().getLength(); i++) {
            Node item = node.getChildNodes().item(i);
            if (item.getNodeType() == Node.ELEMENT_NODE && item.getNodeName().equals(name)) {
                nodes.add(item);
            }
        }
        return nodes;
    }

    public static Node attributeByName(Node node, String name) {
        return node.getAttributes().getNamedItem(name);
    }

    public static Node createAttribute(Document document, String name, String value) {
        Attr attribute = document.createAttribute(name);
        attribute.setValue(value);
        return attribute;
    }

    public static void unparse(Document document, OutputStream outputStream) {
        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        try {
            Transformer transformer = transformerFactory.newTransformer();
            transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
            DOMSource domSource = new DOMSource(document);
            StreamResult streamResult = new StreamResult(outputStream);
            transformer.transform(domSource, streamResult);
        } catch (TransformerException e) {
            throw new RuntimeException("could not save XML document", e);
        }
    }

}
