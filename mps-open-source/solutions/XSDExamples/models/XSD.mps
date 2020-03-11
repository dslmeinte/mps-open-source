<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5f7df440-799f-4e2c-a910-e5999470d51b(XSD)">
  <persistence version="9" />
  <languages>
    <use id="783994a0-4c08-40b6-83e5-ddb930f19f9d" name="XSD" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="783994a0-4c08-40b6-83e5-ddb930f19f9d" name="XSD">
      <concept id="423824699160170478" name="XSD.structure.XsdSchemaBody" flags="ng" index="25ANmZ">
        <property id="8067085376084677687" name="targetFileName" index="3DGDXv" />
        <property id="1073201763858529699" name="namespaceUri" index="1XYfFM" />
        <child id="423824699160170480" name="declarations" index="25ANmx" />
      </concept>
      <concept id="6653263982433084691" name="XSD.structure.XsdElement" flags="ng" index="Lxw54">
        <child id="6653263982433088052" name="typeLiteral" index="Lxxpz" />
      </concept>
      <concept id="12588432219481878" name="XSD.structure.XsdSimpleType" flags="ng" index="36_1Sa">
        <property id="12588432219503341" name="base" index="36_4fL" />
        <child id="6653263982431758948" name="restriction" index="LUWSN" />
      </concept>
      <concept id="12588432219463132" name="XSD.structure.XsdSchema" flags="ng" index="36_ej0">
        <child id="423824699160170483" name="body" index="25ANmy" />
      </concept>
      <concept id="7718579285918301991" name="XSD.structure.XsdRangeEnd" flags="ng" index="1gLdBg">
        <property id="7718579285918301992" name="value" index="1gLdBv" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="36_ej0" id="DmPLYxpcsS">
    <property role="TrG5h" value="longDefs" />
    <node concept="25ANmZ" id="DmPLYxpcsT" role="25ANmy">
      <property role="1XYfFM" value="http://www.dslconsultancy.com/" />
      <property role="3DGDXv" value="foo" />
      <node concept="Lxw54" id="DmPLYxpcsU" role="25ANmx">
        <property role="TrG5h" value="positiveLong" />
        <node concept="36_1Sa" id="DmPLYxpcsY" role="Lxxpz">
          <property role="36_4fL" value="6GE21T3QfI/long" />
          <node concept="1gLdBg" id="DmPLYxr1nY" role="LUWSN">
            <property role="1gLdBv" value="1" />
          </node>
        </node>
      </node>
      <node concept="Lxw54" id="DmPLYxr1ob" role="25ANmx">
        <property role="TrG5h" value="nonNegativeLong" />
        <node concept="36_1Sa" id="DmPLYxr1oo" role="Lxxpz">
          <property role="36_4fL" value="6GE21T3QfI/long" />
          <node concept="1gLdBg" id="DmPLYxr1os" role="LUWSN">
            <property role="1gLdBv" value="0" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

