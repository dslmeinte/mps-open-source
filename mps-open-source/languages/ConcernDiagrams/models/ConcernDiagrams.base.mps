<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:65297a7f-ecb5-487c-9af7-05cce43a7f73(ConcernDiagrams.base)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="4b29a406-d945-4891-9369-166d00decad5" name="Css" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports />
  <registry>
    <language id="4b29a406-d945-4891-9369-166d00decad5" name="Css">
      <concept id="3606794331383030404" name="Css.structure.CssFile" flags="ng" index="21XSFh">
        <child id="3606794331383030764" name="groups" index="21XSIT" />
      </concept>
      <concept id="3606794331383030407" name="Css.structure.CssGroup" flags="ng" index="21XSFi">
        <child id="3606794331383030648" name="properties" index="21XSGH" />
        <child id="3606794331383030547" name="selectors" index="21XSH6" />
      </concept>
      <concept id="3606794331383030443" name="Css.structure.CssProperty" flags="ng" index="21XSFY">
        <property id="3606794331383030446" name="value" index="21XSFV" />
      </concept>
      <concept id="6669253075873599681" name="Css.structure.CssTypeSelector" flags="ng" index="4bman">
        <property id="6669253075873599682" name="elementName" index="4bmak" />
      </concept>
      <concept id="6669253075873599630" name="Css.structure.CssClassSelector" flags="ng" index="4bmbo" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="21XSFh" id="2rnOu5f9PTF">
    <property role="TrG5h" value="diagrams" />
    <node concept="21XSFi" id="2rnOu5f9PTK" role="21XSIT">
      <node concept="21XSFY" id="2rnOu5f9PTO" role="21XSGH">
        <property role="TrG5h" value="font-family" />
        <property role="21XSFV" value="Helvetica" />
      </node>
      <node concept="4bman" id="5MdW_poC_o5" role="21XSH6">
        <property role="4bmak" value="svg" />
      </node>
    </node>
    <node concept="21XSFi" id="5MdW_poA5RW" role="21XSIT">
      <node concept="4bmbo" id="5MdW_poC_o7" role="21XSH6">
        <property role="TrG5h" value="concern-shape" />
      </node>
      <node concept="21XSFY" id="5MdW_poA5S3" role="21XSGH">
        <property role="TrG5h" value="fill" />
        <property role="21XSFV" value="none" />
      </node>
      <node concept="21XSFY" id="5MdW_poA5S5" role="21XSGH">
        <property role="TrG5h" value="stroke" />
        <property role="21XSFV" value="black" />
      </node>
      <node concept="21XSFY" id="5MdW_poA5S8" role="21XSGH">
        <property role="TrG5h" value="stroke-width" />
        <property role="21XSFV" value="2px" />
      </node>
    </node>
    <node concept="21XSFi" id="5MdW_poA5Sc" role="21XSIT">
      <node concept="4bmbo" id="5MdW_poC_oa" role="21XSH6">
        <property role="TrG5h" value="text-align-middle" />
      </node>
      <node concept="21XSFY" id="5MdW_poA5So" role="21XSGH">
        <property role="TrG5h" value="text-anchor" />
        <property role="21XSFV" value="middle" />
      </node>
    </node>
    <node concept="21XSFi" id="5MdW_poTpWm" role="21XSIT">
      <node concept="21XSFY" id="5MdW_poTpWq" role="21XSGH">
        <property role="TrG5h" value="fill" />
        <property role="21XSFV" value="transparant" />
      </node>
      <node concept="21XSFY" id="5MdW_poTpWr" role="21XSGH">
        <property role="TrG5h" value="stroke" />
        <property role="21XSFV" value="black" />
      </node>
      <node concept="21XSFY" id="5MdW_poTpWs" role="21XSGH">
        <property role="TrG5h" value="stroke-width" />
        <property role="21XSFV" value="2px" />
      </node>
      <node concept="4bmbo" id="5MdW_poTpWo" role="21XSH6">
        <property role="TrG5h" value="relation-arrow" />
      </node>
    </node>
  </node>
</model>

