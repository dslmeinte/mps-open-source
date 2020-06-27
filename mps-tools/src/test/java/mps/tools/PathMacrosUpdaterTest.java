package mps.tools;

import org.junit.jupiter.api.Test;
import org.w3c.dom.Document;
import org.xml.sax.SAXParseException;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

import static mps.tools.PathMacrosUpdater.updateMacro;
import static mps.tools.XmlDomUtil.parse;
import static mps.tools.XmlDomUtil.unparse;
import static org.junit.jupiter.api.Assertions.*;

class PathMacrosUpdaterTest {

    private static InputStream asInputStream(String xmlString) {
        return new ByteArrayInputStream(xmlString.getBytes(StandardCharsets.UTF_8));
    }

    private static InputStream pathMacrosXmlInputStream() {
        return asInputStream("<application>\n" +
                "  <component name=\"PathMacrosImpl\">\n" +
                "    <macro name=\"macroName1\" value=\"macroValue1\" />\n" +
                "    <macro name=\"macroName2\" value=\"macroValue2\" />\n" +
                "    <macro name=\"macroName3\" value=\"macroValue3\" />\n" +
                "  </component>\n" +
                "</application>"
        );
    }

    @Test
    void read_faulty_xml() {
        try {
            parse(asInputStream("<foo>"));
            fail("expected RuntimeException");
        } catch (RuntimeException e) {
            assertEquals("could not parse XML document", e.getMessage());
            assertTrue(e.getCause() instanceof SAXParseException);
        }
    }

    @Test
    void update_wrong_format() {
        try {
            Document document = parse(asInputStream("<foo><bar>42</bar></foo>"));
            updateMacro(document, "macroName1", "newMacroValue1");
            fail("expected RuntimeException");
        } catch (RuntimeException e) {
            assertEquals("XML document does not have the required format", e.getMessage());
        }
    }

    @Test
    void update_existing_macros_idempotently() {
        Document document = parse(pathMacrosXmlInputStream());
        assertFalse(updateMacro(document, "macroName1", "macroValue1"));
    }

    @Test
    void update_non_existing_macro() {
        Document document = parse(pathMacrosXmlInputStream());
        assertTrue(updateMacro(document, "macroName4", "macroValue4"));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        unparse(document, byteArrayOutputStream);
        assertEquals("<application>\n" +
                "  <component name=\"PathMacrosImpl\">\n" +
                "    <macro name=\"macroName1\" value=\"macroValue1\"/>\n" +
                "    <macro name=\"macroName2\" value=\"macroValue2\"/>\n" +
                "    <macro name=\"macroName3\" value=\"macroValue3\"/>\n" +
                "    <macro name=\"macroName4\" value=\"macroValue4\"/>\n" +
                "  </component>\n" +
                "</application>", byteArrayOutputStream.toString());
    }

    @Test
    void update_existing_macro_with_change() {
        Document document = parse(pathMacrosXmlInputStream());
        assertTrue(updateMacro(document, "macroName1", "newMacroValue1"));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        unparse(document, byteArrayOutputStream);
        assertEquals("<application>\n" +
                "  <component name=\"PathMacrosImpl\">\n" +
                "    <macro name=\"macroName1\" value=\"newMacroValue1\"/>\n" +
                "    <macro name=\"macroName2\" value=\"macroValue2\"/>\n" +
                "    <macro name=\"macroName3\" value=\"macroValue3\"/>\n" +
                "  </component>\n" +
                "</application>", byteArrayOutputStream.toString());
    }

    @Test
    void delete_non_existing_macro() {
        Document document = parse(pathMacrosXmlInputStream());
        assertFalse(updateMacro(document, "macroName0", null));
    }

    @Test
    void delete_first_existing_macro() {
        Document document = parse(pathMacrosXmlInputStream());
        assertTrue(updateMacro(document, "macroName1", null));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        unparse(document, byteArrayOutputStream);
        assertEquals("<application>\n" +
                "  <component name=\"PathMacrosImpl\">\n" +
                "    <macro name=\"macroName2\" value=\"macroValue2\"/>\n" +
                "    <macro name=\"macroName3\" value=\"macroValue3\"/>\n" +
                "  </component>\n" +
                "</application>", byteArrayOutputStream.toString());
    }

    @Test
    void delete_middle_existing_macro() {
        Document document = parse(pathMacrosXmlInputStream());
        assertTrue(updateMacro(document, "macroName2", null));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        unparse(document, byteArrayOutputStream);
        assertEquals("<application>\n" +
                "  <component name=\"PathMacrosImpl\">\n" +
                "    <macro name=\"macroName1\" value=\"macroValue1\"/>\n" +
                "    <macro name=\"macroName3\" value=\"macroValue3\"/>\n" +
                "  </component>\n" +
                "</application>", byteArrayOutputStream.toString());
    }

    @Test
    void delete_last_existing_macro() {
        Document document = parse(pathMacrosXmlInputStream());
        assertTrue(updateMacro(document, "macroName3", null));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        unparse(document, byteArrayOutputStream);
        assertEquals("<application>\n" +
                "  <component name=\"PathMacrosImpl\">\n" +
                "    <macro name=\"macroName1\" value=\"macroValue1\"/>\n" +
                "    <macro name=\"macroName2\" value=\"macroValue2\"/>\n" +
                "  </component>\n" +
                "</application>", byteArrayOutputStream.toString());
    }

}
