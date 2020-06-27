package mps.tools;

import org.w3c.dom.Document;
import org.w3c.dom.Node;

import java.io.*;
import java.util.List;
import java.util.Optional;

import static mps.tools.XmlDomUtil.*;

public class PathMacrosUpdater {

    public static void main(String[] args) {
        if (args.length < 3) {
            System.out.println("PathMacrosUpdater: updates a path macro (AKA a path variable) in an MPS 'path.macros.xml' file");
            System.out.println();
            System.out.println("Usage: java -cp mpsTools.jar mps.tools.PathMacrosUpdater <path> <macro-name> <macro-value>");
            System.out.println("\t- path is path to a file called 'path.macros.xml'; probably 'MPS2020.1/options/path.macros.xml'");
            System.out.println("\t- macro-name is name of the macro");
            System.out.println("\t- macro-value is value of the macro, or '-' to delete the macro");
            System.out.println("This creates a new macro or updates an existing one with the given macro name.");
            System.out.println("Its value is set to the given value, or the entire macro is deleted it the given value equals '-'.");
            System.exit(2);
        }
        File pathMacrosXmlFile = new File(args[0]);
        FileInputStream fileInputStream = inputStream(pathMacrosXmlFile);
        try {
            Document document = parse(fileInputStream);
            closeSilently(fileInputStream);
            if (updateMacro(document, args[1], args[2].equals("-") ? null : args[2])) {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(pathMacrosXmlFile);
                    unparse(document, fileOutputStream);
                    closeSilently(fileOutputStream);
                } catch (FileNotFoundException e) {
                    // (cannot happen)
                }
            } else {
                System.out.println("didn't need to do anything");
            }
        } catch (RuntimeException e) {
            System.err.format("could not update file '%s', due to: %s", pathMacrosXmlFile, e.getMessage());
            e.printStackTrace(System.err);
            System.exit(1);
        }
    }


    private static FileInputStream inputStream(File file) {
        try {
            return new FileInputStream(file);
        } catch (FileNotFoundException e) {
            System.err.format("file does not exist: '%s' - exiting\n", file);
            System.exit(1);
            return null;    // (never reached)
        }
    }

    private static void closeSilently(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            // ignore...
        }
    }


    private static Node firstOrThrow(List<Node> nodes) {
        if (nodes.size() < 1) {
            throw new RuntimeException("XML document does not have the required format");
        }
        return nodes.get(0);
    }

    public static boolean updateMacro(Document document, String macroName, String macroValue) {
        Node application = firstOrThrow(childElementsByName(document, "application"));
        Node component = firstOrThrow(childElementsByName(application, "component"));
        List<Node> macros = childElementsByName(component, "macro");
        Optional<Node> targetMacroOption = macros.stream().filter(macro -> attributeByName(macro, "name").getNodeValue().equals(macroName)).findFirst();
        if (targetMacroOption.isPresent()) {
            Node targetMacro = targetMacroOption.get();
            Node valueAttribute = attributeByName(targetMacro, "value");
            if (valueAttribute.getNodeValue().equals(macroValue)) {
                return false;
            } else {
                if (macroValue == null) {
                    // adjust indentation of surrounding macro elements:
                    if (targetMacro.getPreviousSibling() != null && targetMacro.getPreviousSibling().getNodeType() == Node.TEXT_NODE) {
                        component.removeChild(targetMacro.getPreviousSibling());
                    }
                    if (targetMacro.getNextSibling() != null && targetMacro.getNextSibling().getNodeType() == Node.TEXT_NODE) {
                        targetMacro.getNextSibling().setTextContent("\n  " + (targetMacro.getNextSibling().getNextSibling() != null ? "  ": ""));
                    }
                    component.removeChild(targetMacro);
                } else {
                    valueAttribute.setNodeValue(macroValue);
                }
                return true;
            }
        } else if (macroValue != null) {
            component.appendChild(document.createTextNode("  "));
            Node newMacro = document.createElement("macro");
            newMacro.getAttributes().setNamedItem(createAttribute(document, "name", macroName));
            newMacro.getAttributes().setNamedItem(createAttribute(document, "value", macroValue));
            component.appendChild(newMacro);
            component.appendChild(document.createTextNode("\n  "));
            return true;
        } else {
            return false;
        }
    }

}
