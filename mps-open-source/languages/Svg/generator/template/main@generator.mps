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
    <import index="8gcs" ref="r:d5f6aaf2-29aa-410d-a442-d0a3d98a8e90(Svg.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1510949579266781519" name="jetbrains.mps.lang.generator.structure.TemplateCallMacro" flags="ln" index="5jKBG">
        <child id="1510949579266801461" name="sourceNodeQuery" index="5jGum" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX" />
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167756221419" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_templatePropertyValue" flags="nn" index="3zGtF$" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
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
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="bUwia" id="3XHwWSLkYUB">
    <property role="TrG5h" value="mainSvg" />
    <node concept="3lhOvk" id="2TQ3RGSEKVW" role="3lj3bC">
      <ref role="30HIoZ" to="r4xx:3XHwWSLl7lU" resolve="SvgRoot" />
      <ref role="3lhOvi" node="3XHwWSLqDsd" resolve="svgFile" />
    </node>
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
          <node concept="1W57fq" id="2TQ3RGSEMfO" role="lGtFl">
            <node concept="3IZrLx" id="2TQ3RGSEMfP" role="3IZSJc">
              <node concept="3clFbS" id="2TQ3RGSEMfQ" role="2VODD2">
                <node concept="3clFbF" id="2TQ3RGSHuNe" role="3cqZAp">
                  <node concept="2OqwBi" id="2TQ3RGSEMP5" role="3clFbG">
                    <node concept="2OqwBi" id="2TQ3RGSEMxX" role="2Oq$k0">
                      <node concept="30H73N" id="2TQ3RGSEMku" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2TQ3RGSEMEx" role="2OqNvi">
                        <ref role="3Tt5mk" to="r4xx:3XHwWSLqDoW" resolve="css" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="2TQ3RGSEMZG" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="45lrTgpAdvF" role="3o6s8t">
          <property role="2pNNFO" value="defs" />
          <node concept="1W57fq" id="45lrTgpAd__" role="lGtFl">
            <node concept="3IZrLx" id="45lrTgpAd_A" role="3IZSJc">
              <node concept="3clFbS" id="45lrTgpAd_B" role="2VODD2">
                <node concept="3clFbF" id="45lrTgpAdD$" role="3cqZAp">
                  <node concept="2OqwBi" id="45lrTgpAfAl" role="3clFbG">
                    <node concept="2OqwBi" id="45lrTgpAdR2" role="2Oq$k0">
                      <node concept="30H73N" id="45lrTgpAdDz" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="45lrTgpAdZT" role="2OqNvi">
                        <ref role="3TtcxE" to="r4xx:45lrTgp$Cka" resolve="definitions" />
                      </node>
                    </node>
                    <node concept="3GX2aA" id="45lrTgpAhe3" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="45lrTgpAhiO" role="3o6s8t">
            <property role="2pNNFO" value="def" />
            <property role="qg3DV" value="true" />
            <node concept="2b32R4" id="45lrTgpAhFd" role="lGtFl">
              <node concept="3JmXsc" id="45lrTgpAhFe" role="2P8S$">
                <node concept="3clFbS" id="45lrTgpAhFf" role="2VODD2">
                  <node concept="3clFbF" id="45lrTgpAhFL" role="3cqZAp">
                    <node concept="2OqwBi" id="45lrTgpAj4x" role="3clFbG">
                      <node concept="2OqwBi" id="45lrTgpAhGu" role="2Oq$k0">
                        <node concept="30H73N" id="45lrTgpAhFK" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="45lrTgpAhHW" role="2OqNvi">
                          <ref role="3TtcxE" to="r4xx:45lrTgp$Cka" resolve="definitions" />
                        </node>
                      </node>
                      <node concept="13MTOL" id="45lrTgpAklu" role="2OqNvi">
                        <ref role="13MTZf" to="r4xx:45lrTgpzOU3" resolve="literalXml" />
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
        <node concept="2pNUuL" id="2Z5X9nYCs20" role="2pNNFR">
          <property role="2pNUuO" value="width_height" />
          <node concept="2pMdtt" id="2Z5X9nYCs21" role="2pMdts">
            <property role="2pMdty" value="(w, h)" />
          </node>
          <node concept="2b32R4" id="2Z5X9nYCs22" role="lGtFl">
            <node concept="3JmXsc" id="2Z5X9nYCs23" role="2P8S$">
              <node concept="3clFbS" id="2Z5X9nYCs24" role="2VODD2">
                <node concept="3clFbF" id="2Z5X9nYCs25" role="3cqZAp">
                  <node concept="2OqwBi" id="2Z5X9nYCs26" role="3clFbG">
                    <node concept="2OqwBi" id="2Z5X9nYCs27" role="2Oq$k0">
                      <node concept="30H73N" id="2Z5X9nYCs28" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2Z5X9nYCsSa" role="2OqNvi">
                        <ref role="3Tt5mk" to="r4xx:3XHwWSLqD21" resolve="dimension" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="2Z5X9nYCs2a" role="2OqNvi">
                      <ref role="37wK5l" to="8gcs:2Z5X9nYB9$8" resolve="asAttributes" />
                      <node concept="Xl_RD" id="2Z5X9nYCs2b" role="37wK5m">
                        <property role="Xl_RC" value="width" />
                      </node>
                      <node concept="Xl_RD" id="2Z5X9nYCs2c" role="37wK5m">
                        <property role="Xl_RC" value="height" />
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
    <node concept="17Uvod" id="2TQ3RGSCoVq" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="2TQ3RGSCoVr" role="3zH0cK">
        <node concept="3clFbS" id="2TQ3RGSCoVs" role="2VODD2">
          <node concept="3clFbF" id="2TQ3RGSCoZ0" role="3cqZAp">
            <node concept="2OqwBi" id="2TQ3RGSCpbm" role="3clFbG">
              <node concept="30H73N" id="2TQ3RGSCoYZ" role="2Oq$k0" />
              <node concept="3TrcHB" id="2TQ3RGSCpjG" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
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
    <node concept="3aamgX" id="2rnOu5f8MgY" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="r4xx:3XHwWSLrYWS" resolve="LiteralXmlContent" />
      <node concept="gft3U" id="2rnOu5f8Mko" role="1lVwrX">
        <node concept="2pNNFK" id="2rnOu5f8Mku" role="gfFT$">
          <property role="2pNNFO" value="svg" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="2rnOu5f8Mkz" role="lGtFl">
            <node concept="3JmXsc" id="2rnOu5f8Mk$" role="2P8S$">
              <node concept="3clFbS" id="2rnOu5f8Mk_" role="2VODD2">
                <node concept="3clFbF" id="2rnOu5f8Mnl" role="3cqZAp">
                  <node concept="2OqwBi" id="2rnOu5f8MzI" role="3clFbG">
                    <node concept="30H73N" id="2rnOu5f8Mnk" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="2rnOu5f8MGF" role="2OqNvi">
                      <ref role="3TtcxE" to="r4xx:3XHwWSLrYWU" resolve="literalXml" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="2TQ3RGSHGO7" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="r4xx:2TQ3RGSHDkD" resolve="SvgCircle" />
      <node concept="gft3U" id="2TQ3RGSHH9h" role="1lVwrX">
        <node concept="2pNNFK" id="2TQ3RGSHH9n" role="gfFT$">
          <property role="2pNNFO" value="circle" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="5MdW_poAeio" role="2pNNFR">
            <property role="2pNUuO" value="_" />
            <node concept="2pMdtt" id="5MdW_poAeip" role="2pMdts">
              <property role="2pMdty" value="_" />
            </node>
            <node concept="5jKBG" id="5MdW_poAeiq" role="lGtFl">
              <ref role="v9R2y" node="45lrTgpKoXe" resolve="classAttribute" />
            </node>
          </node>
          <node concept="2pNUuL" id="2TQ3RGSHH9r" role="2pNNFR">
            <property role="2pNUuO" value="cxy" />
            <node concept="2pMdtt" id="2TQ3RGSHH9s" role="2pMdts">
              <property role="2pMdty" value="(x, y)" />
            </node>
            <node concept="2b32R4" id="2Z5X9nYBEbc" role="lGtFl">
              <node concept="3JmXsc" id="2Z5X9nYBEbd" role="2P8S$">
                <node concept="3clFbS" id="2Z5X9nYBEbe" role="2VODD2">
                  <node concept="3clFbF" id="2Z5X9nYBEdY" role="3cqZAp">
                    <node concept="2OqwBi" id="2Z5X9nYBEDV" role="3clFbG">
                      <node concept="2OqwBi" id="2Z5X9nYBEr7" role="2Oq$k0">
                        <node concept="30H73N" id="2Z5X9nYBEdX" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2Z5X9nYBE_z" role="2OqNvi">
                          <ref role="3Tt5mk" to="r4xx:2TQ3RGSHDkG" resolve="center" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="2Z5X9nYBEHS" role="2OqNvi">
                        <ref role="37wK5l" to="8gcs:2Z5X9nYB9$8" resolve="asAttributes" />
                        <node concept="Xl_RD" id="2Z5X9nYBEI1" role="37wK5m">
                          <property role="Xl_RC" value="cx" />
                        </node>
                        <node concept="Xl_RD" id="2Z5X9nYBEUW" role="37wK5m">
                          <property role="Xl_RC" value="cy" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="2TQ3RGSHH9_" role="2pNNFR">
            <property role="2pNUuO" value="r" />
            <node concept="2pMdtt" id="2TQ3RGSHH9A" role="2pMdts">
              <property role="2pMdty" value="0" />
              <node concept="17Uvod" id="2TQ3RGSHH9H" role="lGtFl">
                <property role="2qtEX9" value="text" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <node concept="3zFVjK" id="2TQ3RGSHH9I" role="3zH0cK">
                  <node concept="3clFbS" id="2TQ3RGSHH9J" role="2VODD2">
                    <node concept="3clFbF" id="2TQ3RGSHHa9" role="3cqZAp">
                      <node concept="3cpWs3" id="2TQ3RGSHIj9" role="3clFbG">
                        <node concept="Xl_RD" id="2TQ3RGSHHRC" role="3uHU7B">
                          <property role="Xl_RC" value="" />
                        </node>
                        <node concept="2OqwBi" id="2TQ3RGSHIjY" role="3uHU7w">
                          <node concept="30H73N" id="2TQ3RGSHIjZ" role="2Oq$k0" />
                          <node concept="3TrcHB" id="2TQ3RGSHIk0" role="2OqNvi">
                            <ref role="3TsBF5" to="r4xx:2TQ3RGSHDkI" resolve="radius" />
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
    </node>
    <node concept="3aamgX" id="45lrTgpDqXl" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="r4xx:45lrTgpD9DO" resolve="SvgComment" />
      <node concept="gft3U" id="45lrTgpDrjn" role="1lVwrX">
        <node concept="2pNm8U" id="45lrTgpDrjt" role="gfFT$">
          <node concept="3o66tx" id="45lrTgpDrjv" role="3o66t8">
            <property role="3o66tw" value="_comment_" />
            <node concept="17Uvod" id="45lrTgpDrjx" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396949036126/1622293396949036127" />
              <node concept="3zFVjK" id="45lrTgpDrjy" role="3zH0cK">
                <node concept="3clFbS" id="45lrTgpDrjz" role="2VODD2">
                  <node concept="3clFbF" id="45lrTgpDrjX" role="3cqZAp">
                    <node concept="2OqwBi" id="45lrTgpDrwj" role="3clFbG">
                      <node concept="30H73N" id="45lrTgpDrjW" role="2Oq$k0" />
                      <node concept="3TrcHB" id="45lrTgpDrDa" role="2OqNvi">
                        <ref role="3TsBF5" to="r4xx:45lrTgpD9Ex" resolve="comment" />
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
    <node concept="3aamgX" id="6DcOmROVhK" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="r4xx:6DcOmRO$cf" resolve="SvgEllipse" />
      <node concept="gft3U" id="6DcOmROVBY" role="1lVwrX">
        <node concept="2pNNFK" id="6DcOmROVBZ" role="gfFT$">
          <property role="2pNNFO" value="ellipse" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="6DcOmROVC0" role="2pNNFR">
            <property role="2pNUuO" value="_" />
            <node concept="2pMdtt" id="6DcOmROVC1" role="2pMdts">
              <property role="2pMdty" value="_" />
            </node>
            <node concept="5jKBG" id="6DcOmROVC2" role="lGtFl">
              <ref role="v9R2y" node="45lrTgpKoXe" resolve="classAttribute" />
            </node>
          </node>
          <node concept="2pNUuL" id="2Z5X9nYBF8N" role="2pNNFR">
            <property role="2pNUuO" value="cxy" />
            <node concept="2pMdtt" id="2Z5X9nYBF8O" role="2pMdts">
              <property role="2pMdty" value="(x, y)" />
            </node>
            <node concept="2b32R4" id="2Z5X9nYBF8P" role="lGtFl">
              <node concept="3JmXsc" id="2Z5X9nYBF8Q" role="2P8S$">
                <node concept="3clFbS" id="2Z5X9nYBF8R" role="2VODD2">
                  <node concept="3clFbF" id="2Z5X9nYBF8S" role="3cqZAp">
                    <node concept="2OqwBi" id="2Z5X9nYBF8T" role="3clFbG">
                      <node concept="2OqwBi" id="2Z5X9nYBF8U" role="2Oq$k0">
                        <node concept="30H73N" id="2Z5X9nYBF8V" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2Z5X9nYBF8W" role="2OqNvi">
                          <ref role="3Tt5mk" to="r4xx:6DcOmRO$cp" resolve="center" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="2Z5X9nYBF8X" role="2OqNvi">
                        <ref role="37wK5l" to="8gcs:2Z5X9nYB9$8" resolve="asAttributes" />
                        <node concept="Xl_RD" id="2Z5X9nYBF8Y" role="37wK5m">
                          <property role="Xl_RC" value="cx" />
                        </node>
                        <node concept="Xl_RD" id="2Z5X9nYBF8Z" role="37wK5m">
                          <property role="Xl_RC" value="cy" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="2Z5X9nYBFwl" role="2pNNFR">
            <property role="2pNUuO" value="rxy" />
            <node concept="2pMdtt" id="2Z5X9nYBFwm" role="2pMdts">
              <property role="2pMdty" value="(x, y)" />
            </node>
            <node concept="2b32R4" id="2Z5X9nYBFwn" role="lGtFl">
              <node concept="3JmXsc" id="2Z5X9nYBFwo" role="2P8S$">
                <node concept="3clFbS" id="2Z5X9nYBFwp" role="2VODD2">
                  <node concept="3clFbF" id="2Z5X9nYBFwq" role="3cqZAp">
                    <node concept="2OqwBi" id="2Z5X9nYBFwr" role="3clFbG">
                      <node concept="2OqwBi" id="2Z5X9nYBFws" role="2Oq$k0">
                        <node concept="30H73N" id="2Z5X9nYBFwt" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2Z5X9nYBGay" role="2OqNvi">
                          <ref role="3Tt5mk" to="r4xx:6DcOmRO$ct" resolve="radii" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="2Z5X9nYBFwv" role="2OqNvi">
                        <ref role="37wK5l" to="8gcs:2Z5X9nYB9$8" resolve="asAttributes" />
                        <node concept="Xl_RD" id="2Z5X9nYBFww" role="37wK5m">
                          <property role="Xl_RC" value="cx" />
                        </node>
                        <node concept="Xl_RD" id="2Z5X9nYBFwx" role="37wK5m">
                          <property role="Xl_RC" value="cy" />
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
    <node concept="3aamgX" id="2TQ3RGSHJXY" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="r4xx:3XHwWSLqDqj" resolve="SvgGroup" />
      <node concept="gft3U" id="2TQ3RGSHKsw" role="1lVwrX">
        <node concept="2pNNFK" id="2TQ3RGSHKsA" role="gfFT$">
          <property role="2pNNFO" value="g" />
          <node concept="2pNUuL" id="45lrTgpJMbI" role="2pNNFR">
            <property role="2pNUuO" value="_" />
            <node concept="2pMdtt" id="45lrTgpKpwK" role="2pMdts">
              <property role="2pMdty" value="_" />
            </node>
            <node concept="5jKBG" id="45lrTgpKpnv" role="lGtFl">
              <ref role="v9R2y" node="45lrTgpKoXe" resolve="classAttribute" />
            </node>
          </node>
          <node concept="2pNm8U" id="2TQ3RGSHKsX" role="3o6s8t">
            <node concept="1WS0z7" id="2TQ3RGSHKt1" role="lGtFl">
              <node concept="3JmXsc" id="2TQ3RGSHKt2" role="3Jn$fo">
                <node concept="3clFbS" id="2TQ3RGSHKt3" role="2VODD2">
                  <node concept="3clFbF" id="2TQ3RGSHKvN" role="3cqZAp">
                    <node concept="2OqwBi" id="2TQ3RGSHKGW" role="3clFbG">
                      <node concept="30H73N" id="2TQ3RGSHKvM" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="2TQ3RGSHKRo" role="2OqNvi">
                        <ref role="3TtcxE" to="r4xx:7_z3uTkhmZm" resolve="elements" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="2TQ3RGSHL8X" role="lGtFl">
              <ref role="v9R2y" node="3XHwWSLtwNj" resolve="svgElement" />
            </node>
            <node concept="3o66tx" id="45lrTgpJMhe" role="3o66t8">
              <property role="3o66tw" value="replace SvgElement" />
            </node>
          </node>
          <node concept="2pNUuL" id="MRZty84S7Q" role="2pNNFR">
            <property role="2pNUuO" value="_" />
            <node concept="2pMdtt" id="MRZty84S7R" role="2pMdts">
              <property role="2pMdty" value="_" />
            </node>
            <node concept="5jKBG" id="MRZty84S7S" role="lGtFl">
              <ref role="v9R2y" node="5MdW_pp2WNV" resolve="transformAttribute" />
              <node concept="3NFfHV" id="MRZty84S7T" role="5jGum">
                <node concept="3clFbS" id="MRZty84S7U" role="2VODD2">
                  <node concept="3clFbF" id="MRZty84S7V" role="3cqZAp">
                    <node concept="2OqwBi" id="MRZty84S7W" role="3clFbG">
                      <node concept="30H73N" id="MRZty84S7X" role="2Oq$k0" />
                      <node concept="3TrEf2" id="MRZty84S7Y" role="2OqNvi">
                        <ref role="3Tt5mk" to="r4xx:MRZty84EXo" resolve="transform" />
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
    <node concept="3aamgX" id="45lrTgpKrQw" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="r4xx:45lrTgpGDve" resolve="SvgPath" />
      <node concept="gft3U" id="45lrTgpKs9u" role="1lVwrX">
        <node concept="2pNNFK" id="45lrTgpKs9$" role="gfFT$">
          <property role="2pNNFO" value="path" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="45lrTgpKssJ" role="2pNNFR">
            <property role="2pNUuO" value="_" />
            <node concept="2pMdtt" id="45lrTgpKssK" role="2pMdts">
              <property role="2pMdty" value="_" />
            </node>
            <node concept="5jKBG" id="45lrTgpKssL" role="lGtFl">
              <ref role="v9R2y" node="45lrTgpKoXe" resolve="classAttribute" />
            </node>
          </node>
          <node concept="2pNUuL" id="45lrTgpKssY" role="2pNNFR">
            <property role="2pNUuO" value="d" />
            <node concept="2pMdtt" id="45lrTgpKssZ" role="2pMdts">
              <property role="2pMdty" value="_path_" />
              <node concept="17Uvod" id="45lrTgpKst6" role="lGtFl">
                <property role="2qtEX9" value="text" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <node concept="3zFVjK" id="45lrTgpKst7" role="3zH0cK">
                  <node concept="3clFbS" id="45lrTgpKst8" role="2VODD2">
                    <node concept="3clFbF" id="45lrTgpKsty" role="3cqZAp">
                      <node concept="2OqwBi" id="45lrTgpKsEy" role="3clFbG">
                        <node concept="30H73N" id="45lrTgpKstx" role="2Oq$k0" />
                        <node concept="3TrcHB" id="45lrTgpKsT1" role="2OqNvi">
                          <ref role="3TsBF5" to="r4xx:45lrTgpGDwk" resolve="d" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="45lrTgpKt4Z" role="2pNNFR">
            <property role="2pNUuO" value="marker-end" />
            <node concept="2pMdtt" id="45lrTgpKt50" role="2pMdts">
              <property role="2pMdty" value="url(#_markerEnd_)" />
              <node concept="17Uvod" id="45lrTgpKt5M" role="lGtFl">
                <property role="2qtEX9" value="text" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <node concept="3zFVjK" id="45lrTgpKt5N" role="3zH0cK">
                  <node concept="3clFbS" id="45lrTgpKt5O" role="2VODD2">
                    <node concept="3clFbF" id="45lrTgpKt6e" role="3cqZAp">
                      <node concept="2OqwBi" id="45lrTgpKtss" role="3clFbG">
                        <node concept="3zGtF$" id="45lrTgpKt6d" role="2Oq$k0" />
                        <node concept="liA8E" id="45lrTgpKtFy" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                          <node concept="Xl_RD" id="45lrTgpKtFC" role="37wK5m">
                            <property role="Xl_RC" value="_markerEnd_" />
                          </node>
                          <node concept="2OqwBi" id="45lrTgpKuHl" role="37wK5m">
                            <node concept="2OqwBi" id="45lrTgpKuoy" role="2Oq$k0">
                              <node concept="30H73N" id="45lrTgpKudr" role="2Oq$k0" />
                              <node concept="3TrEf2" id="45lrTgpKuzp" role="2OqNvi">
                                <ref role="3Tt5mk" to="r4xx:45lrTgpGDCu" resolve="markerEnd" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="45lrTgpKuTv" role="2OqNvi">
                              <ref role="37wK5l" to="8gcs:45lrTgpzOUF" resolve="id" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1W57fq" id="45lrTgpKv0i" role="lGtFl">
              <node concept="3IZrLx" id="45lrTgpKv0j" role="3IZSJc">
                <node concept="3clFbS" id="45lrTgpKv0k" role="2VODD2">
                  <node concept="3clFbF" id="45lrTgpKv5A" role="3cqZAp">
                    <node concept="2OqwBi" id="45lrTgpKvIK" role="3clFbG">
                      <node concept="2OqwBi" id="45lrTgpKvjQ" role="2Oq$k0">
                        <node concept="30H73N" id="45lrTgpKv5_" role="2Oq$k0" />
                        <node concept="3TrEf2" id="45lrTgpKv_e" role="2OqNvi">
                          <ref role="3Tt5mk" to="r4xx:45lrTgpGDCu" resolve="markerEnd" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="45lrTgpKvTY" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="45lrTgpKMiZ" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="r4xx:45lrTgpGDLa" resolve="SvgRectangle" />
      <node concept="gft3U" id="45lrTgpKMHZ" role="1lVwrX">
        <node concept="2pNNFK" id="45lrTgpKMI5" role="gfFT$">
          <property role="2pNNFO" value="rect" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="45lrTgpKMIo" role="2pNNFR">
            <property role="2pNUuO" value="_" />
            <node concept="2pMdtt" id="45lrTgpKMIp" role="2pMdts">
              <property role="2pMdty" value="_" />
            </node>
            <node concept="5jKBG" id="45lrTgpKMIq" role="lGtFl">
              <ref role="v9R2y" node="45lrTgpKoXe" resolve="classAttribute" />
            </node>
          </node>
          <node concept="2pNUuL" id="45lrTgpKMJ0" role="2pNNFR">
            <property role="2pNUuO" value="xy" />
            <node concept="2pMdtt" id="45lrTgpKMJ1" role="2pMdts">
              <property role="2pMdty" value="(0, 0)" />
            </node>
            <node concept="1W57fq" id="2Z5X9nYGQyU" role="lGtFl">
              <node concept="3IZrLx" id="2Z5X9nYGQyV" role="3IZSJc">
                <node concept="3clFbS" id="2Z5X9nYGQyW" role="2VODD2">
                  <node concept="3clFbF" id="2Z5X9nYGQCB" role="3cqZAp">
                    <node concept="2OqwBi" id="2Z5X9nYGRaY" role="3clFbG">
                      <node concept="2OqwBi" id="2Z5X9nYGQQR" role="2Oq$k0">
                        <node concept="30H73N" id="2Z5X9nYGQCA" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2Z5X9nYGR1i" role="2OqNvi">
                          <ref role="3Tt5mk" to="r4xx:45lrTgpJLts" resolve="topLeft" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="2Z5X9nYGRjZ" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2b32R4" id="2Z5X9nYBD7i" role="lGtFl">
              <node concept="3JmXsc" id="2Z5X9nYBD7j" role="2P8S$">
                <node concept="3clFbS" id="2Z5X9nYBD7k" role="2VODD2">
                  <node concept="3clFbF" id="2Z5X9nYBDa4" role="3cqZAp">
                    <node concept="2OqwBi" id="2Z5X9nYBDC8" role="3clFbG">
                      <node concept="2OqwBi" id="2Z5X9nYBDnd" role="2Oq$k0">
                        <node concept="30H73N" id="2Z5X9nYBDa3" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2Z5X9nYBDxm" role="2OqNvi">
                          <ref role="3Tt5mk" to="r4xx:45lrTgpJLts" resolve="topLeft" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="2Z5X9nYBDE0" role="2OqNvi">
                        <ref role="37wK5l" to="8gcs:2Z5X9nYB9$8" resolve="asAttributes" />
                        <node concept="Xl_RD" id="2Z5X9nYBDJC" role="37wK5m">
                          <property role="Xl_RC" value="x" />
                        </node>
                        <node concept="Xl_RD" id="2Z5X9nYBDV3" role="37wK5m">
                          <property role="Xl_RC" value="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="45lrTgpNTbm" role="2pNNFR">
            <property role="2pNUuO" value="width_height" />
            <node concept="2pMdtt" id="2Z5X9nYBGmo" role="2pMdts">
              <property role="2pMdty" value="(w, h)" />
            </node>
            <node concept="2b32R4" id="2Z5X9nYBGms" role="lGtFl">
              <node concept="3JmXsc" id="2Z5X9nYBGmt" role="2P8S$">
                <node concept="3clFbS" id="2Z5X9nYBGmu" role="2VODD2">
                  <node concept="3clFbF" id="2Z5X9nYBGpe" role="3cqZAp">
                    <node concept="2OqwBi" id="2Z5X9nYBGRi" role="3clFbG">
                      <node concept="2OqwBi" id="2Z5X9nYBGAn" role="2Oq$k0">
                        <node concept="30H73N" id="2Z5X9nYBGpd" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2Z5X9nYBGKw" role="2OqNvi">
                          <ref role="3Tt5mk" to="r4xx:45lrTgpNSoo" resolve="dimensions" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="2Z5X9nYBGTa" role="2OqNvi">
                        <ref role="37wK5l" to="8gcs:2Z5X9nYB9$8" resolve="asAttributes" />
                        <node concept="Xl_RD" id="2Z5X9nYBGTj" role="37wK5m">
                          <property role="Xl_RC" value="width" />
                        </node>
                        <node concept="Xl_RD" id="2Z5X9nYBH1p" role="37wK5m">
                          <property role="Xl_RC" value="height" />
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
    <node concept="3aamgX" id="45lrTgpJM6D" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="r4xx:45lrTgpGDu8" resolve="SvgText" />
      <node concept="gft3U" id="45lrTgpJMbc" role="1lVwrX">
        <node concept="2pNNFK" id="45lrTgpJMbi" role="gfFT$">
          <property role="2pNNFO" value="text" />
          <node concept="2pNUuL" id="45lrTgpKpwT" role="2pNNFR">
            <property role="2pNUuO" value="_" />
            <node concept="2pMdtt" id="45lrTgpKpwU" role="2pMdts">
              <property role="2pMdty" value="_" />
            </node>
            <node concept="5jKBG" id="45lrTgpKpwV" role="lGtFl">
              <ref role="v9R2y" node="45lrTgpKoXe" resolve="classAttribute" />
            </node>
          </node>
          <node concept="2pNUuL" id="45lrTgpKpxb" role="2pNNFR">
            <property role="2pNUuO" value="xy" />
            <node concept="2pMdtt" id="45lrTgpKpxc" role="2pMdts">
              <property role="2pMdty" value="(x, y)" />
            </node>
            <node concept="1W57fq" id="MRZty844Ke" role="lGtFl">
              <node concept="3IZrLx" id="MRZty844Kf" role="3IZSJc">
                <node concept="3clFbS" id="MRZty844Kg" role="2VODD2">
                  <node concept="3clFbF" id="MRZty8451o" role="3cqZAp">
                    <node concept="2OqwBi" id="MRZty845zG" role="3clFbG">
                      <node concept="2OqwBi" id="MRZty845fC" role="2Oq$k0">
                        <node concept="30H73N" id="MRZty8451n" role="2Oq$k0" />
                        <node concept="3TrEf2" id="MRZty845pU" role="2OqNvi">
                          <ref role="3Tt5mk" to="r4xx:45lrTgpGDD0" resolve="topLeft" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="MRZty845GP" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2b32R4" id="2Z5X9nYBHAX" role="lGtFl">
              <node concept="3JmXsc" id="2Z5X9nYBHAY" role="2P8S$">
                <node concept="3clFbS" id="2Z5X9nYBHAZ" role="2VODD2">
                  <node concept="3clFbF" id="2Z5X9nYBHCh" role="3cqZAp">
                    <node concept="2OqwBi" id="2Z5X9nYBI3V" role="3clFbG">
                      <node concept="2OqwBi" id="2Z5X9nYBHPq" role="2Oq$k0">
                        <node concept="30H73N" id="2Z5X9nYBHCg" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2Z5X9nYBHZz" role="2OqNvi">
                          <ref role="3Tt5mk" to="r4xx:45lrTgpGDD0" resolve="topLeft" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="2Z5X9nYBIa6" role="2OqNvi">
                        <ref role="37wK5l" to="8gcs:2Z5X9nYB9$8" resolve="asAttributes" />
                        <node concept="Xl_RD" id="2Z5X9nYBIgY" role="37wK5m">
                          <property role="Xl_RC" value="x" />
                        </node>
                        <node concept="Xl_RD" id="2Z5X9nYBIiw" role="37wK5m">
                          <property role="Xl_RC" value="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3o6iSG" id="45lrTgpKrhF" role="3o6s8t">
            <property role="3o6i5n" value="_text_" />
            <node concept="17Uvod" id="45lrTgpKrjg" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
              <node concept="3zFVjK" id="45lrTgpKrjh" role="3zH0cK">
                <node concept="3clFbS" id="45lrTgpKrji" role="2VODD2">
                  <node concept="3clFbF" id="45lrTgpKrjG" role="3cqZAp">
                    <node concept="2OqwBi" id="45lrTgpKrsv" role="3clFbG">
                      <node concept="30H73N" id="45lrTgpKrjF" role="2Oq$k0" />
                      <node concept="3TrcHB" id="45lrTgpKrEY" role="2OqNvi">
                        <ref role="3TsBF5" to="r4xx:45lrTgpGDCY" resolve="text" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1W57fq" id="6DcOmR$jKQ" role="lGtFl">
              <node concept="3IZrLx" id="6DcOmR$jKR" role="3IZSJc">
                <node concept="3clFbS" id="6DcOmR$jKS" role="2VODD2">
                  <node concept="3clFbF" id="6DcOmR$jPu" role="3cqZAp">
                    <node concept="2OqwBi" id="6DcOmR$mWc" role="3clFbG">
                      <node concept="2OqwBi" id="6DcOmR$kPm" role="2Oq$k0">
                        <node concept="30H73N" id="6DcOmR$kON" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="6DcOmR$kQA" role="2OqNvi">
                          <ref role="3TtcxE" to="r4xx:6DcOmRzljo" resolve="tspans" />
                        </node>
                      </node>
                      <node concept="1v1jN8" id="6DcOmR$oQI" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="6DcOmR$qPr" role="3o6s8t">
            <property role="2pNNFO" value="tspan" />
            <property role="qg3DV" value="true" />
            <node concept="1WS0z7" id="6DcOmR$qVd" role="lGtFl">
              <node concept="3JmXsc" id="6DcOmR$qVe" role="3Jn$fo">
                <node concept="3clFbS" id="6DcOmR$qVf" role="2VODD2">
                  <node concept="3clFbF" id="6DcOmR$qXZ" role="3cqZAp">
                    <node concept="2OqwBi" id="6DcOmR$rb8" role="3clFbG">
                      <node concept="30H73N" id="6DcOmR$qXY" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="6DcOmR$rnM" role="2OqNvi">
                        <ref role="3TtcxE" to="r4xx:6DcOmRzljo" resolve="tspans" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="6DcOmR$rDo" role="lGtFl">
              <ref role="v9R2y" node="3XHwWSLtwNj" resolve="svgElement" />
            </node>
          </node>
          <node concept="2pNUuL" id="5MdW_pp2HKV" role="2pNNFR">
            <property role="2pNUuO" value="_" />
            <node concept="2pMdtt" id="5MdW_pp2HKW" role="2pMdts">
              <property role="2pMdty" value="_" />
            </node>
            <node concept="5jKBG" id="5MdW_pp3cVX" role="lGtFl">
              <ref role="v9R2y" node="5MdW_pp2WNV" resolve="transformAttribute" />
              <node concept="3NFfHV" id="5MdW_pp3cW1" role="5jGum">
                <node concept="3clFbS" id="5MdW_pp3cW2" role="2VODD2">
                  <node concept="3clFbF" id="5MdW_pp3cY0" role="3cqZAp">
                    <node concept="2OqwBi" id="5MdW_pp3d9h" role="3clFbG">
                      <node concept="30H73N" id="5MdW_pp3cXZ" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5MdW_pp3djH" role="2OqNvi">
                        <ref role="3Tt5mk" to="r4xx:5MdW_pp1MbT" resolve="transform" />
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
    <node concept="3aamgX" id="6DcOmRzmDv" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="r4xx:6DcOmRyyqx" resolve="SvgTextSpan" />
      <node concept="gft3U" id="6DcOmRzmLG" role="1lVwrX">
        <node concept="2pNNFK" id="6DcOmRzmLH" role="gfFT$">
          <property role="2pNNFO" value="tspan" />
          <node concept="2pNUuL" id="6DcOmREweL" role="2pNNFR">
            <property role="2pNUuO" value="_" />
            <node concept="2pMdtt" id="6DcOmREweM" role="2pMdts">
              <property role="2pMdty" value="_" />
            </node>
            <node concept="5jKBG" id="6DcOmREweN" role="lGtFl">
              <ref role="v9R2y" node="45lrTgpKoXe" resolve="classAttribute" />
            </node>
          </node>
          <node concept="2pNUuL" id="6DcOmRznok" role="2pNNFR">
            <property role="2pNUuO" value="dy" />
            <node concept="2pMdtt" id="6DcOmRznol" role="2pMdts">
              <property role="2pMdty" value="0.0em" />
              <node concept="17Uvod" id="6DcOmRznvy" role="lGtFl">
                <property role="2qtEX9" value="text" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <node concept="3zFVjK" id="6DcOmRznvz" role="3zH0cK">
                  <node concept="3clFbS" id="6DcOmRznv$" role="2VODD2">
                    <node concept="3clFbF" id="6DcOmRznvY" role="3cqZAp">
                      <node concept="2OqwBi" id="6DcOmRznQc" role="3clFbG">
                        <node concept="3zGtF$" id="6DcOmRznvX" role="2Oq$k0" />
                        <node concept="liA8E" id="6DcOmRzo9v" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                          <node concept="Xl_RD" id="6DcOmRzoj2" role="37wK5m">
                            <property role="Xl_RC" value="0.0" />
                          </node>
                          <node concept="2OqwBi" id="6DcOmRzoFc" role="37wK5m">
                            <node concept="30H73N" id="6DcOmRzowS" role="2Oq$k0" />
                            <node concept="3TrcHB" id="6DcOmRzoOV" role="2OqNvi">
                              <ref role="3TsBF5" to="r4xx:6DcOmRyyr5" resolve="dy" />
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
          <node concept="3o6iSG" id="6DcOmRzmMt" role="3o6s8t">
            <property role="3o6i5n" value="_text_" />
            <node concept="17Uvod" id="6DcOmRzmMu" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
              <node concept="3zFVjK" id="6DcOmRzmMv" role="3zH0cK">
                <node concept="3clFbS" id="6DcOmRzmMw" role="2VODD2">
                  <node concept="3clFbF" id="6DcOmRzmMx" role="3cqZAp">
                    <node concept="2OqwBi" id="6DcOmRzmMy" role="3clFbG">
                      <node concept="30H73N" id="6DcOmRzmMz" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6DcOmRzmM$" role="2OqNvi">
                        <ref role="3TsBF5" to="r4xx:6DcOmRyyqC" resolve="text" />
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
  <node concept="13MO4I" id="45lrTgpKoXe">
    <property role="TrG5h" value="classAttribute" />
    <ref role="3gUMe" to="r4xx:3XHwWSLt_T9" resolve="WithClasses" />
    <node concept="2pNUuL" id="45lrTgpKoYI" role="13RCb5">
      <property role="2pNUuO" value="class" />
      <node concept="2pMdtt" id="45lrTgpKoYJ" role="2pMdts">
        <property role="2pMdty" value="_classNames_" />
        <node concept="17Uvod" id="45lrTgpKoYK" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
          <node concept="3zFVjK" id="45lrTgpKoYL" role="3zH0cK">
            <node concept="3clFbS" id="45lrTgpKoYM" role="2VODD2">
              <node concept="3clFbF" id="45lrTgpKoYN" role="3cqZAp">
                <node concept="2OqwBi" id="45lrTgpKoYO" role="3clFbG">
                  <node concept="30H73N" id="45lrTgpKoYP" role="2Oq$k0" />
                  <node concept="2qgKlT" id="45lrTgpKoYQ" role="2OqNvi">
                    <ref role="37wK5l" to="8gcs:45lrTgpJXu1" resolve="classNamesAsAttribute" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="45lrTgpKpkU" role="lGtFl" />
      <node concept="1W57fq" id="45lrTgpKoYR" role="lGtFl">
        <node concept="3IZrLx" id="45lrTgpKoYS" role="3IZSJc">
          <node concept="3clFbS" id="45lrTgpKoYT" role="2VODD2">
            <node concept="3clFbF" id="45lrTgpKoYU" role="3cqZAp">
              <node concept="2OqwBi" id="45lrTgpKoYV" role="3clFbG">
                <node concept="2OqwBi" id="45lrTgpKoYW" role="2Oq$k0">
                  <node concept="30H73N" id="45lrTgpKoYX" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="45lrTgpKoYY" role="2OqNvi">
                    <ref role="3TtcxE" to="r4xx:3XHwWSLt$WE" resolve="classes" />
                  </node>
                </node>
                <node concept="3GX2aA" id="45lrTgpKoYZ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5MdW_pp2WNV">
    <property role="TrG5h" value="transformAttribute" />
    <ref role="3gUMe" to="r4xx:5MdW_pp1E_K" resolve="TransformAttribute" />
    <node concept="2pNUuL" id="5MdW_pp2WOu" role="13RCb5">
      <property role="2pNUuO" value="transform" />
      <node concept="raruj" id="5MdW_pp2WOx" role="lGtFl" />
      <node concept="2pMdtt" id="5MdW_pp2WO$" role="2pMdts">
        <property role="2pMdty" value="_transform_" />
        <node concept="17Uvod" id="5MdW_pp2WOB" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
          <node concept="3zFVjK" id="5MdW_pp2WOC" role="3zH0cK">
            <node concept="3clFbS" id="5MdW_pp2WOD" role="2VODD2">
              <node concept="3clFbF" id="5MdW_pp2WTj" role="3cqZAp">
                <node concept="2OqwBi" id="5MdW_pp32V4" role="3clFbG">
                  <node concept="30H73N" id="5MdW_pp32Jo" role="2Oq$k0" />
                  <node concept="2qgKlT" id="5MdW_pp332x" role="2OqNvi">
                    <ref role="37wK5l" to="8gcs:5MdW_pp31Kl" resolve="asText" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1W57fq" id="5MdW_pp3dA8" role="lGtFl">
        <node concept="3IZrLx" id="5MdW_pp3dA9" role="3IZSJc">
          <node concept="3clFbS" id="5MdW_pp3dAa" role="2VODD2">
            <node concept="3clFbF" id="5MdW_pp3dEO" role="3cqZAp">
              <node concept="2OqwBi" id="5MdW_pp3fkb" role="3clFbG">
                <node concept="2OqwBi" id="5MdW_pp3dRw" role="2Oq$k0">
                  <node concept="30H73N" id="5MdW_pp3dEN" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5MdW_pp3dZ5" role="2OqNvi">
                    <ref role="3TtcxE" to="r4xx:5MdW_pp1E_L" resolve="transformations" />
                  </node>
                </node>
                <node concept="3GX2aA" id="5MdW_pp3gEY" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

