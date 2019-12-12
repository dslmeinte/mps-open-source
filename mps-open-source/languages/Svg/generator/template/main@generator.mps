<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7f95d53f-2eca-4e0b-b7b9-be132d19e5b2(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="626375ad-0250-40d5-9caf-bd6ccacbb87c" name="XmlWithExtension" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="r4xx" ref="r:25991841-12a0-400d-8d65-d016aab8719f(Svg.structure)" />
    <import index="utdc" ref="r:0a4cfaa4-4ae4-4d86-9b82-5d7b63302b69(Css.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" flags="ng" index="2pMbU2">
        <child id="6666499814681515201" name="document" index="2pMbU3" />
      </concept>
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681299066" name="jetbrains.mps.core.xml.structure.XmlCDATA" flags="ng" index="2pNm8S">
        <property id="1622293396948985395" name="content" index="3o6aOc" />
      </concept>
      <concept id="6666499814681299064" name="jetbrains.mps.core.xml.structure.XmlComment" flags="nn" index="2pNm8U">
        <child id="1622293396949036151" name="lines" index="3o66t8" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <property id="6999033275467544021" name="shortEmptyNotation" index="qg3DV" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
      <concept id="1622293396949036126" name="jetbrains.mps.core.xml.structure.XmlCommentLine" flags="nn" index="3o66tx">
        <property id="1622293396949036127" name="text" index="3o66tw" />
      </concept>
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia" />
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX" />
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="626375ad-0250-40d5-9caf-bd6ccacbb87c" name="XmlWithExtension">
      <concept id="646582120049732877" name="XmlWithExtension.structure.XmlFileWithExtension" flags="ng" index="BlZ8e">
        <property id="646582120049732878" name="extension" index="BlZ8d" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="3XHwWSLkYUB">
    <property role="TrG5h" value="main" />
  </node>
  <node concept="BlZ8e" id="3XHwWSLqDsd">
    <property role="TrG5h" value="svgFile" />
    <property role="BlZ8d" value="svg" />
    <node concept="n94m4" id="3XHwWSLqDsg" role="lGtFl">
      <ref role="n9lRv" to="r4xx:3XHwWSLl7lU" resolve="SvgRoot" />
    </node>
    <node concept="3rIKKV" id="4iz6u7wN_Pt" role="2pMbU3">
      <node concept="2pNNFK" id="4iz6u7wNAN5" role="2pNm8H">
        <property role="2pNNFO" value="svg" />
        <node concept="2pNNFK" id="kYxf1aeh6C" role="3o6s8t">
          <property role="2pNNFO" value="style" />
          <node concept="2pNm8S" id="kYxf1aeh6D" role="3o6s8t">
            <property role="3o6aOc" value="_CSS_" />
            <node concept="17Uvod" id="kYxf1aeh6E" role="lGtFl">
              <property role="2qtEX9" value="content" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681299066/1622293396948985395" />
              <node concept="3zFVjK" id="kYxf1aeh6F" role="3zH0cK">
                <node concept="3clFbS" id="kYxf1aeh6G" role="2VODD2">
                  <node concept="3clFbF" id="3XHwWSLqGZc" role="3cqZAp">
                    <node concept="2OqwBi" id="3XHwWSLqHsU" role="3clFbG">
                      <node concept="2OqwBi" id="3XHwWSLqHaV" role="2Oq$k0">
                        <node concept="30H73N" id="3XHwWSLqGZa" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3XHwWSLqHih" role="2OqNvi">
                          <ref role="3Tt5mk" to="r4xx:3XHwWSLqDoW" resolve="css" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="3XHwWSLqHBG" role="2OqNvi">
                        <ref role="37wK5l" to="utdc:kYxf1acYc8" resolve="asText" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="3XHwWSLtwwf" role="3o6s8t">
          <property role="2pNNFO" value="element" />
          <property role="qg3DV" value="true" />
          <node concept="1WS0z7" id="3XHwWSLtwOc" role="lGtFl">
            <node concept="3JmXsc" id="3XHwWSLtwOd" role="3Jn$fo">
              <node concept="3clFbS" id="3XHwWSLtwOe" role="2VODD2">
                <node concept="3clFbF" id="3XHwWSLtxDT" role="3cqZAp">
                  <node concept="2OqwBi" id="3XHwWSLtxPu" role="3clFbG">
                    <node concept="30H73N" id="3XHwWSLtxDS" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3XHwWSLtxZi" role="2OqNvi">
                      <ref role="3TtcxE" to="r4xx:3XHwWSLtwQX" resolve="elements" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1sPUBX" id="3XHwWSLtyy7" role="lGtFl">
            <ref role="v9R2y" node="3XHwWSLtwNj" resolve="svgElement" />
          </node>
        </node>
        <node concept="2pNUuL" id="4iz6u7wNANe" role="2pNNFR">
          <property role="2pNUuO" value="version" />
          <node concept="2pMdtt" id="4iz6u7wNANf" role="2pMdts">
            <property role="2pMdty" value="1.1" />
          </node>
        </node>
        <node concept="2pNUuL" id="4iz6u7wNANg" role="2pNNFR">
          <property role="2pNUuO" value="baseProfile" />
          <node concept="2pMdtt" id="4iz6u7wNANh" role="2pMdts">
            <property role="2pMdty" value="full" />
          </node>
        </node>
        <node concept="2pNUuL" id="4iz6u7wNANi" role="2pNNFR">
          <property role="2pNUuO" value="width" />
          <node concept="2pMdtt" id="4iz6u7wNB2g" role="2pMdts">
            <property role="2pMdty" value="0" />
            <node concept="17Uvod" id="3XHwWSLqEFZ" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="3XHwWSLqEG0" role="3zH0cK">
                <node concept="3clFbS" id="3XHwWSLqEG1" role="2VODD2">
                  <node concept="3clFbF" id="3XHwWSLqEGr" role="3cqZAp">
                    <node concept="3cpWs3" id="3XHwWSLqG96" role="3clFbG">
                      <node concept="Xl_RD" id="3XHwWSLqFDH" role="3uHU7B" />
                      <node concept="2OqwBi" id="3XHwWSLqFcP" role="3uHU7w">
                        <node concept="2OqwBi" id="3XHwWSLqES7" role="2Oq$k0">
                          <node concept="30H73N" id="3XHwWSLqEGq" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3XHwWSLqEZz" role="2OqNvi">
                            <ref role="3Tt5mk" to="r4xx:3XHwWSLqD21" resolve="dimension" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="3XHwWSLqFlD" role="2OqNvi">
                          <ref role="3TsBF5" to="r4xx:3XHwWSLqDlH" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNUuL" id="4iz6u7wNANr" role="2pNNFR">
          <property role="2pNUuO" value="height" />
          <node concept="2pMdtt" id="4iz6u7wNB2j" role="2pMdts">
            <property role="2pMdty" value="0" />
            <node concept="17Uvod" id="3XHwWSLqGrv" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="3XHwWSLqGrw" role="3zH0cK">
                <node concept="3clFbS" id="3XHwWSLqGrx" role="2VODD2">
                  <node concept="3clFbF" id="3XHwWSLqGrU" role="3cqZAp">
                    <node concept="3cpWs3" id="3XHwWSLqGrW" role="3clFbG">
                      <node concept="Xl_RD" id="3XHwWSLqGrX" role="3uHU7B" />
                      <node concept="2OqwBi" id="3XHwWSLqGrY" role="3uHU7w">
                        <node concept="2OqwBi" id="3XHwWSLqGrZ" role="2Oq$k0">
                          <node concept="30H73N" id="3XHwWSLqGs0" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3XHwWSLqGs1" role="2OqNvi">
                            <ref role="3Tt5mk" to="r4xx:3XHwWSLqD21" resolve="dimension" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="3XHwWSLqGEo" role="2OqNvi">
                          <ref role="3TsBF5" to="r4xx:3XHwWSLqDlI" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNUuL" id="4iz6u7wNAN$" role="2pNNFR">
          <property role="2pNUuO" value="xmlns" />
          <node concept="2pMdtt" id="4iz6u7wNAN_" role="2pMdts">
            <property role="2pMdty" value="http://www.w3.org/2000/svg" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="3XHwWSLtwNj">
    <property role="TrG5h" value="svgElement" />
    <node concept="gft3U" id="3XHwWSLtzuc" role="jxRDz">
      <node concept="2pNm8U" id="3XHwWSLtzug" role="gfFT$">
        <node concept="3o66tx" id="3XHwWSLtzui" role="3o66t8">
          <property role="3o66tw" value="_message_" />
          <node concept="17Uvod" id="3XHwWSLtzuk" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396949036126/1622293396949036127" />
            <node concept="3zFVjK" id="3XHwWSLtzul" role="3zH0cK">
              <node concept="3clFbS" id="3XHwWSLtzum" role="2VODD2">
                <node concept="3clFbF" id="3XHwWSLtzyX" role="3cqZAp">
                  <node concept="2YIFZM" id="3XHwWSLtzDd" role="3clFbG">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="Xl_RD" id="3XHwWSLtzyW" role="37wK5m">
                      <property role="Xl_RC" value="no generation defined for sub concept %s of SvgElement" />
                    </node>
                    <node concept="2OqwBi" id="3XHwWSLt$Bp" role="37wK5m">
                      <node concept="2OqwBi" id="3XHwWSLt$fq" role="2Oq$k0">
                        <node concept="30H73N" id="3XHwWSLt$0_" role="2Oq$k0" />
                        <node concept="2yIwOk" id="3XHwWSLt$lZ" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="3XHwWSLt$Oh" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

