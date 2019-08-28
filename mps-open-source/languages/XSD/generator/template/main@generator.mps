<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7c608d06-aec5-427e-9b4c-c98520268748(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <use id="626375ad-0250-40d5-9caf-bd6ccacbb87c" name="XmlWithExtension" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="irkh" ref="r:5453e083-42db-4474-9ebc-c4b11ee10157(XSD.structure)" />
    <import index="jbym" ref="r:c546ab52-186f-4563-a0f9-eb59ddf54026(XSD.behavior)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" flags="ng" index="2pMbU2">
        <child id="6666499814681515201" name="document" index="2pMbU3" />
      </concept>
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681299057" name="jetbrains.mps.core.xml.structure.XmlProlog" flags="ng" index="2pNm8N">
        <child id="7604553062773674214" name="elements" index="BGLLu" />
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
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG" />
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
        <child id="6666499814681299060" name="prolog" index="2pNm8Q" />
      </concept>
      <concept id="5228786488744996718" name="jetbrains.mps.core.xml.structure.XmlDeclaration" flags="ng" index="3W$oVP">
        <property id="5491461270226117667" name="version" index="1D$jbd" />
        <property id="3374336260035925078" name="encoding" index="1UZly_" />
        <property id="3374336260035925080" name="standalone" index="1UZlyF" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
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
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
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
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX">
        <child id="982871510068000158" name="sourceNodeQuery" index="1sPUBK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="626375ad-0250-40d5-9caf-bd6ccacbb87c" name="XmlWithExtension">
      <concept id="646582120049732877" name="XmlWithExtension.structure.XmlFileWithExtension" flags="ng" index="BlZ8e">
        <property id="646582120049732878" name="extension" index="BlZ8d" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1966870290083281362" name="jetbrains.mps.lang.smodel.structure.EnumMember_NameOperation" flags="ng" index="24Tkf9" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="bUwia" id="GIhN6I5MR">
    <property role="TrG5h" value="mainXSD" />
    <node concept="3lhOvk" id="zT7KcJI8kl" role="3lj3bC">
      <ref role="30HIoZ" to="irkh:GIhN6I5Rs" resolve="XsdSchema" />
      <ref role="3lhOvi" node="zT7KcJI6TX" resolve="xsdSchema" />
    </node>
    <node concept="3lhOvk" id="zT7KcJlzil" role="3lj3bC">
      <ref role="30HIoZ" to="irkh:GIhN6I5Rs" resolve="XsdSchema" />
      <ref role="3lhOvi" node="zT7KcJlqOh" resolve="lengths" />
      <node concept="30G5F_" id="zT7KcJG6fd" role="30HLyM">
        <node concept="3clFbS" id="zT7KcJG6fe" role="2VODD2">
          <node concept="3clFbF" id="zT7KcJG6ml" role="3cqZAp">
            <node concept="2OqwBi" id="6ZO2Qy6leZI" role="3clFbG">
              <node concept="2OqwBi" id="zT7KcJG6zk" role="2Oq$k0">
                <node concept="30H73N" id="zT7KcJG6mk" role="2Oq$k0" />
                <node concept="3TrEf2" id="6ZO2Qy6le$K" role="2OqNvi">
                  <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                </node>
              </node>
              <node concept="3TrcHB" id="6ZO2Qy6lfsz" role="2OqNvi">
                <ref role="3TsBF5" to="irkh:6ZO2Qy6hDgT" resolve="emitLengths" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="5Ll95tHJi5V">
    <property role="TrG5h" value="xsdTypeDeclaration" />
    <node concept="3aamgX" id="3epa_KC0gkk" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
      <node concept="1Koe21" id="3epa_KC0gKt" role="1lVwrX">
        <node concept="2pNNFK" id="3epa_KC0gKz" role="1Koe22">
          <property role="2pNNFO" value="replaced_by_xsdDeclarableType" />
          <property role="qg3DV" value="true" />
          <node concept="raruj" id="3epa_KC0gK_" role="lGtFl" />
          <node concept="1sPUBX" id="3epa_KC0gKD" role="lGtFl">
            <ref role="v9R2y" node="nxI_60hm4S" resolve="xsdDeclarableType" />
            <node concept="3NFfHV" id="3epa_KC0gKH" role="1sPUBK">
              <node concept="3clFbS" id="3epa_KC0gKI" role="2VODD2">
                <node concept="3clFbF" id="3epa_KC0gO3" role="3cqZAp">
                  <node concept="2OqwBi" id="3epa_KC0gZ5" role="3clFbG">
                    <node concept="30H73N" id="3epa_KC0gO2" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3epa_KC0hH7" role="2OqNvi">
                      <ref role="3Tt5mk" to="irkh:3epa_KBVLVr" resolve="definition" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="gft3U" id="5Ll95tHJi5W" role="jxRDz">
      <node concept="2pNm8U" id="5Ll95tHJi60" role="gfFT$">
        <node concept="3o66tx" id="5Ll95tHJi62" role="3o66t8">
          <property role="3o66tw" value="FIXME" />
          <node concept="17Uvod" id="5Ll95tHJi64" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396949036126/1622293396949036127" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="5Ll95tHJi65" role="3zH0cK">
              <node concept="3clFbS" id="5Ll95tHJi66" role="2VODD2">
                <node concept="3clFbF" id="5Ll95tHJiez" role="3cqZAp">
                  <node concept="3cpWs3" id="5Ll95tHJjru" role="3clFbG">
                    <node concept="2OqwBi" id="5Ll95tHJnCM" role="3uHU7w">
                      <node concept="2OqwBi" id="5Ll95tHJn1l" role="2Oq$k0">
                        <node concept="30H73N" id="5Ll95tHJmIo" role="2Oq$k0" />
                        <node concept="2yIwOk" id="5Ll95tHJnjp" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="5Ll95tHJoYN" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5Ll95tHJiey" role="3uHU7B">
                      <property role="Xl_RC" value="FIXME  no mapping to XML defined for instance of " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="6hkHye_Vwbx" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:5Ll95tHOMkj" resolve="XsdElement" />
      <node concept="1Koe21" id="nxI_60i3nI" role="1lVwrX">
        <node concept="2pNNFK" id="6hkHye_Vwbz" role="1Koe22">
          <property role="2pNNFO" value="xs:element" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="6hkHye_Vwb$" role="2pNNFR">
            <property role="2pNUuO" value="name" />
            <node concept="2pMdtt" id="6hkHye_Vwb_" role="2pMdts">
              <property role="2pMdty" value="_name_" />
              <node concept="17Uvod" id="6hkHye_VwbA" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="6hkHye_VwbB" role="3zH0cK">
                  <node concept="3clFbS" id="6hkHye_VwbC" role="2VODD2">
                    <node concept="3clFbF" id="6hkHye_VwbD" role="3cqZAp">
                      <node concept="2OqwBi" id="6hkHye_VwbE" role="3clFbG">
                        <node concept="30H73N" id="6hkHye_VwbF" role="2Oq$k0" />
                        <node concept="3TrcHB" id="6hkHye_VwbG" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="6hkHye_VwbH" role="2pNNFR">
            <property role="2pNUuO" value="type" />
            <node concept="2pMdtt" id="6hkHye_VwbI" role="2pMdts">
              <property role="2pMdty" value="_type_" />
              <node concept="17Uvod" id="6hkHye_VwbJ" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="6hkHye_VwbK" role="3zH0cK">
                  <node concept="3clFbS" id="6hkHye_VwbL" role="2VODD2">
                    <node concept="3clFbF" id="6hkHye_VwbM" role="3cqZAp">
                      <node concept="2OqwBi" id="6hkHye_VwbN" role="3clFbG">
                        <node concept="2OqwBi" id="6hkHye_VwbO" role="2Oq$k0">
                          <node concept="30H73N" id="6hkHye_VwbP" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6hkHye_VwbQ" role="2OqNvi">
                            <ref role="3Tt5mk" to="irkh:5Ll95tHON8O" resolve="typeLiteral" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="6hkHye_VwbR" role="2OqNvi">
                          <ref role="37wK5l" to="jbym:6P6yfMflkSM" resolve="asTypeReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="4swNiJ3zgEZ" role="2pNNFR">
            <property role="2pNUuO" value="minOccurs" />
            <node concept="2pMdtt" id="4swNiJ3zgF0" role="2pMdts">
              <property role="2pMdty" value="0" />
            </node>
            <node concept="1W57fq" id="4swNiJ3zgUb" role="lGtFl">
              <node concept="3IZrLx" id="4swNiJ3zgUd" role="3IZSJc">
                <node concept="3clFbS" id="4swNiJ3zgUf" role="2VODD2">
                  <node concept="3clFbF" id="4swNiJ3zh1$" role="3cqZAp">
                    <node concept="2OqwBi" id="4swNiJ3zhf$" role="3clFbG">
                      <node concept="30H73N" id="4swNiJ3zh1z" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4swNiJ3zhV$" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:4swNiJ3zfKZ" resolve="optional" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="6hkHye_VwbS" role="lGtFl" />
        </node>
      </node>
      <node concept="30G5F_" id="nxI_60i9kj" role="30HLyM">
        <node concept="3clFbS" id="nxI_60i9kk" role="2VODD2">
          <node concept="3clFbF" id="nxI_60i9E2" role="3cqZAp">
            <node concept="2OqwBi" id="nxI_60iaEx" role="3clFbG">
              <node concept="2OqwBi" id="nxI_60i9RN" role="2Oq$k0">
                <node concept="30H73N" id="nxI_60i9E1" role="2Oq$k0" />
                <node concept="3TrEf2" id="nxI_60iagb" role="2OqNvi">
                  <ref role="3Tt5mk" to="irkh:5Ll95tHON8O" resolve="typeLiteral" />
                </node>
              </node>
              <node concept="2qgKlT" id="nxI_60ib2v" role="2OqNvi">
                <ref role="37wK5l" to="jbym:nxI_60hym0" resolve="generatesTypeReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="nxI_60ibfo" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:5Ll95tHOMkj" resolve="XsdElement" />
      <node concept="1Koe21" id="nxI_60ibfp" role="1lVwrX">
        <node concept="2pNNFK" id="nxI_60ibfq" role="1Koe22">
          <property role="2pNNFO" value="xs:element" />
          <property role="qg3DV" value="false" />
          <node concept="2pNUuL" id="nxI_60ibfr" role="2pNNFR">
            <property role="2pNUuO" value="name" />
            <node concept="2pMdtt" id="nxI_60ibfs" role="2pMdts">
              <property role="2pMdty" value="_name_" />
              <node concept="17Uvod" id="nxI_60ibft" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="nxI_60ibfu" role="3zH0cK">
                  <node concept="3clFbS" id="nxI_60ibfv" role="2VODD2">
                    <node concept="3clFbF" id="nxI_60ibfw" role="3cqZAp">
                      <node concept="2OqwBi" id="nxI_60ibfx" role="3clFbG">
                        <node concept="30H73N" id="nxI_60ibfy" role="2Oq$k0" />
                        <node concept="3TrcHB" id="nxI_60ibfz" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="nxI_60ibfJ" role="lGtFl" />
          <node concept="2pNNFK" id="nxI_60icq_" role="3o6s8t">
            <property role="2pNNFO" value="replaced_by_xsdElement" />
            <property role="qg3DV" value="true" />
            <node concept="1sPUBX" id="nxI_60ic_h" role="lGtFl">
              <ref role="v9R2y" node="nxI_60hm4S" resolve="xsdDeclarableType" />
              <node concept="3NFfHV" id="nxI_60ic_k" role="1sPUBK">
                <node concept="3clFbS" id="nxI_60ic_l" role="2VODD2">
                  <node concept="3clFbF" id="nxI_60icCE" role="3cqZAp">
                    <node concept="2OqwBi" id="nxI_60icNG" role="3clFbG">
                      <node concept="30H73N" id="nxI_60icCD" role="2Oq$k0" />
                      <node concept="3TrEf2" id="nxI_60ido3" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:5Ll95tHON8O" resolve="typeLiteral" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="nxI_60ibfK" role="30HLyM">
        <node concept="3clFbS" id="nxI_60ibfL" role="2VODD2">
          <node concept="3clFbF" id="nxI_60ibfM" role="3cqZAp">
            <node concept="3fqX7Q" id="nxI_60ibRy" role="3clFbG">
              <node concept="2OqwBi" id="nxI_60ibfN" role="3fr31v">
                <node concept="2OqwBi" id="nxI_60ibfO" role="2Oq$k0">
                  <node concept="30H73N" id="nxI_60ibfP" role="2Oq$k0" />
                  <node concept="3TrEf2" id="nxI_60ibfQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="irkh:5Ll95tHON8O" resolve="typeLiteral" />
                  </node>
                </node>
                <node concept="2qgKlT" id="nxI_60ibfR" role="2OqNvi">
                  <ref role="37wK5l" to="jbym:nxI_60hym0" resolve="generatesTypeReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="5Ll95tHJKZ6">
    <property role="TrG5h" value="xsdFacet" />
    <node concept="3aamgX" id="5Ll95tHKUjY" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:5Ll95tHJICY" resolve="XsdPattern" />
      <node concept="1Koe21" id="5Ll95tHKUk2" role="1lVwrX">
        <node concept="2pNNFK" id="5Ll95tHKUk8" role="1Koe22">
          <property role="2pNNFO" value="xs:pattern" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="5Ll95tHKUkc" role="2pNNFR">
            <property role="2pNUuO" value="value" />
            <node concept="2pMdtt" id="5Ll95tHKUke" role="2pMdts">
              <property role="2pMdty" value="_value_" />
              <node concept="17Uvod" id="5Ll95tHKUkh" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="5Ll95tHKUki" role="3zH0cK">
                  <node concept="3clFbS" id="5Ll95tHKUkj" role="2VODD2">
                    <node concept="3clFbF" id="5Ll95tHKUsL" role="3cqZAp">
                      <node concept="2OqwBi" id="5Ll95tHKUEm" role="3clFbG">
                        <node concept="30H73N" id="5Ll95tHKUsK" role="2Oq$k0" />
                        <node concept="3TrcHB" id="5Ll95tHKV1s" role="2OqNvi">
                          <ref role="3TsBF5" to="irkh:5Ll95tHJID1" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="5Ll95tHKVOq" role="lGtFl" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5Ll95tHN8IA" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:5Ll95tHN4hJ" resolve="XsdEnumeration" />
      <node concept="1Koe21" id="5Ll95tHN8IR" role="1lVwrX">
        <node concept="2pNNFK" id="5Ll95tHN8IX" role="1Koe22">
          <property role="2pNNFO" value="nodes" />
          <node concept="2pNNFK" id="5Ll95tHN8J1" role="3o6s8t">
            <property role="2pNNFO" value="xs:enumeration" />
            <property role="qg3DV" value="true" />
            <node concept="2pNUuL" id="5Ll95tHNa0W" role="2pNNFR">
              <property role="2pNUuO" value="value" />
              <node concept="2pMdtt" id="5Ll95tHNa8$" role="2pMdts">
                <property role="2pMdty" value="_value_" />
                <node concept="17Uvod" id="5Ll95tHNa8A" role="lGtFl">
                  <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                  <property role="2qtEX9" value="text" />
                  <node concept="3zFVjK" id="5Ll95tHNa8B" role="3zH0cK">
                    <node concept="3clFbS" id="5Ll95tHNa8C" role="2VODD2">
                      <node concept="3clFbF" id="5Ll95tHNah5" role="3cqZAp">
                        <node concept="2OqwBi" id="5Ll95tHNavf" role="3clFbG">
                          <node concept="30H73N" id="5Ll95tHNah4" role="2Oq$k0" />
                          <node concept="3TrcHB" id="5Ll95tHNbfL" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="5Ll95tHN8J3" role="lGtFl" />
            <node concept="1WS0z7" id="5Ll95tHN8J7" role="lGtFl">
              <node concept="3JmXsc" id="5Ll95tHN8J9" role="3Jn$fo">
                <node concept="3clFbS" id="5Ll95tHN8Jb" role="2VODD2">
                  <node concept="3clFbF" id="5Ll95tHN8O5" role="3cqZAp">
                    <node concept="2OqwBi" id="5Ll95tHN900" role="3clFbG">
                      <node concept="30H73N" id="5Ll95tHN8O4" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="5Ll95tHN9jw" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:5Ll95tHN4ie" resolve="values" />
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
    <node concept="3aamgX" id="nxI_60h7h0" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:nxI_60h6UA" resolve="XsdLength" />
      <node concept="gft3U" id="nxI_60h7hI" role="1lVwrX">
        <node concept="2pNNFK" id="nxI_60h8xJ" role="gfFT$">
          <property role="2pNNFO" value="xs:maxLength" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="nxI_60h8xO" role="2pNNFR">
            <property role="2pNUuO" value="value" />
            <node concept="2pMdtt" id="nxI_60h8xQ" role="2pMdts">
              <property role="2pMdty" value="0" />
              <node concept="17Uvod" id="nxI_60h8xS" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="nxI_60h8xT" role="3zH0cK">
                  <node concept="3clFbS" id="nxI_60h8xU" role="2VODD2">
                    <node concept="3clFbF" id="nxI_60h8Ek" role="3cqZAp">
                      <node concept="3cpWs3" id="nxI_60haRy" role="3clFbG">
                        <node concept="Xl_RD" id="nxI_60haRC" role="3uHU7w" />
                        <node concept="2OqwBi" id="nxI_60h8RV" role="3uHU7B">
                          <node concept="30H73N" id="nxI_60h8Ej" role="2Oq$k0" />
                          <node concept="3TrcHB" id="nxI_60h9oe" role="2OqNvi">
                            <ref role="3TsBF5" to="irkh:nxI_60h6UD" resolve="maxLength" />
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
    <node concept="3aamgX" id="DmPLYxr22t" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:6GtTJsVQjWB" resolve="XsdRangeEnd" />
      <node concept="gft3U" id="DmPLYxr243" role="1lVwrX">
        <node concept="2pNNFK" id="DmPLYxr24b" role="gfFT$">
          <property role="2pNNFO" value="xs:_tagName_" />
          <property role="qg3DV" value="true" />
          <node concept="17Uvod" id="DmPLYxr24f" role="lGtFl">
            <property role="2qtEX9" value="tagName" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681415858/6666499814681415862" />
            <node concept="3zFVjK" id="DmPLYxr24g" role="3zH0cK">
              <node concept="3clFbS" id="DmPLYxr24h" role="2VODD2">
                <node concept="3clFbF" id="DmPLYxr2cW" role="3cqZAp">
                  <node concept="3cpWs3" id="DmPLYxr31d" role="3clFbG">
                    <node concept="2OqwBi" id="DmPLYxr3m8" role="3uHU7w">
                      <node concept="30H73N" id="DmPLYxr35J" role="2Oq$k0" />
                      <node concept="2qgKlT" id="DmPLYxr4hb" role="2OqNvi">
                        <ref role="37wK5l" to="jbym:DmPLYxqx_0" resolve="tagName" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="DmPLYxr2cV" role="3uHU7B">
                      <property role="Xl_RC" value="xs:" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="DmPLYxt435" role="2pNNFR">
            <property role="2pNUuO" value="value" />
            <node concept="2pMdtt" id="DmPLYxt436" role="2pMdts">
              <property role="2pMdty" value="_value_" />
              <node concept="17Uvod" id="DmPLYxt4k1" role="lGtFl">
                <property role="2qtEX9" value="text" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <node concept="3zFVjK" id="DmPLYxt4k2" role="3zH0cK">
                  <node concept="3clFbS" id="DmPLYxt4k3" role="2VODD2">
                    <node concept="3clFbF" id="DmPLYxt4sI" role="3cqZAp">
                      <node concept="2OqwBi" id="DmPLYxt4EA" role="3clFbG">
                        <node concept="30H73N" id="DmPLYxt4sH" role="2Oq$k0" />
                        <node concept="3TrcHB" id="DmPLYxt5jB" role="2OqNvi">
                          <ref role="3TsBF5" to="irkh:6GtTJsVQjWC" resolve="value" />
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
  <node concept="jVnub" id="5Ll95tHOPzu">
    <property role="TrG5h" value="xsdComplexContents" />
    <node concept="3aamgX" id="5Ll95tHOPzv" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:5Ll95tHOMkd" resolve="XsdChoice" />
      <node concept="1Koe21" id="5Ll95tHOPzz" role="1lVwrX">
        <node concept="2pNNFK" id="5Ll95tHOPzD" role="1Koe22">
          <property role="2pNNFO" value="xs:choice" />
          <node concept="2pNUuL" id="zT7KcJn5mf" role="2pNNFR">
            <property role="2pNUuO" value="minOccurs" />
            <node concept="2pMdtt" id="zT7KcJn5Af" role="2pMdts">
              <property role="2pMdty" value="0" />
            </node>
            <node concept="1W57fq" id="zT7KcJn5Aj" role="lGtFl">
              <node concept="3IZrLx" id="zT7KcJn5Al" role="3IZSJc">
                <node concept="3clFbS" id="zT7KcJn5An" role="2VODD2">
                  <node concept="3clFbF" id="zT7KcJn5Hy" role="3cqZAp">
                    <node concept="3fqX7Q" id="zT7KcJn8Xf" role="3clFbG">
                      <node concept="2OqwBi" id="zT7KcJn7dU" role="3fr31v">
                        <node concept="2OqwBi" id="zT7KcJn5Ux" role="2Oq$k0">
                          <node concept="30H73N" id="zT7KcJn5Hx" role="2Oq$k0" />
                          <node concept="3TrcHB" id="zT7KcJn6oK" role="2OqNvi">
                            <ref role="3TsBF5" to="irkh:5xFSyvKSMCY" resolve="cardinality" />
                          </node>
                        </node>
                        <node concept="21noJN" id="5xFSyvKSMHS" role="2OqNvi">
                          <node concept="21nZrQ" id="5xFSyvKSMHT" role="21noJM">
                            <ref role="21nZrZ" to="irkh:5xFSyvKSMCl" resolve="required" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="5Ll95tHOVvQ" role="3o6s8t">
            <property role="2pNNFO" value="replaced_by_xsdTypeDeclaration" />
            <property role="qg3DV" value="true" />
            <node concept="1WS0z7" id="5Ll95tHOVvR" role="lGtFl">
              <node concept="3JmXsc" id="5Ll95tHOVvS" role="3Jn$fo">
                <node concept="3clFbS" id="5Ll95tHOVvT" role="2VODD2">
                  <node concept="3clFbF" id="5Ll95tHOVvU" role="3cqZAp">
                    <node concept="2OqwBi" id="5Ll95tHOVvV" role="3clFbG">
                      <node concept="30H73N" id="5Ll95tHOVvW" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="5Ll95tHOVvX" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:5Ll95tHON8K" resolve="elements" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="5Ll95tHOVvY" role="lGtFl">
              <ref role="v9R2y" node="5Ll95tHJi5V" resolve="xsdTypeDeclaration" />
            </node>
          </node>
          <node concept="2pNUuL" id="5Ll95tHOP$g" role="2pNNFR">
            <property role="2pNUuO" value="maxOccurs" />
            <node concept="2pMdtt" id="5Ll95tHOP$i" role="2pMdts">
              <property role="2pMdty" value="unbounded" />
            </node>
            <node concept="1W57fq" id="5Ll95tHOP$o" role="lGtFl">
              <node concept="3IZrLx" id="5Ll95tHOP$q" role="3IZSJc">
                <node concept="3clFbS" id="5Ll95tHOP$s" role="2VODD2">
                  <node concept="3clFbF" id="5Ll95tHOPFF" role="3cqZAp">
                    <node concept="2OqwBi" id="5Ll95tHOQNP" role="3clFbG">
                      <node concept="2OqwBi" id="5Ll95tHOPSC" role="2Oq$k0">
                        <node concept="30H73N" id="5Ll95tHOPFE" role="2Oq$k0" />
                        <node concept="3TrcHB" id="5Ll95tHOQeu" role="2OqNvi">
                          <ref role="3TsBF5" to="irkh:5xFSyvKSMCY" resolve="cardinality" />
                        </node>
                      </node>
                      <node concept="21noJN" id="5xFSyvKSMHU" role="2OqNvi">
                        <node concept="21nZrQ" id="5xFSyvKSMHV" role="21noJM">
                          <ref role="21nZrZ" to="irkh:5xFSyvKSMCn" resolve="many" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="5Ll95tHORTX" role="lGtFl" />
          <node concept="1W57fq" id="5nPH9FxEdhK" role="lGtFl">
            <node concept="3IZrLx" id="5nPH9FxEdhM" role="3IZSJc">
              <node concept="3clFbS" id="5nPH9FxEdhO" role="2VODD2">
                <node concept="3clFbF" id="5nPH9FxEdxF" role="3cqZAp">
                  <node concept="2OqwBi" id="5nPH9FxEgbW" role="3clFbG">
                    <node concept="2OqwBi" id="5nPH9FxEdIE" role="2Oq$k0">
                      <node concept="30H73N" id="5nPH9FxEdxE" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="5nPH9FxEe4V" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:5Ll95tHON8K" resolve="elements" />
                      </node>
                    </node>
                    <node concept="3GX2aA" id="5nPH9FxEiYN" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5Ll95tHOUdL" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:5Ll95tHOMkg" resolve="XsdSequence" />
      <node concept="1Koe21" id="5Ll95tHOUeb" role="1lVwrX">
        <node concept="2pNNFK" id="5Ll95tHOUeh" role="1Koe22">
          <property role="2pNNFO" value="xs:sequence" />
          <node concept="raruj" id="5Ll95tHOUej" role="lGtFl" />
          <node concept="2pNNFK" id="5Ll95tHOUel" role="3o6s8t">
            <property role="2pNNFO" value="replaced_by_xsdTypeDeclaration" />
            <property role="qg3DV" value="true" />
            <node concept="1WS0z7" id="5Ll95tHOUep" role="lGtFl">
              <node concept="3JmXsc" id="5Ll95tHOUer" role="3Jn$fo">
                <node concept="3clFbS" id="5Ll95tHOUet" role="2VODD2">
                  <node concept="3clFbF" id="5Ll95tHOUjm" role="3cqZAp">
                    <node concept="2OqwBi" id="5Ll95tHOUvh" role="3clFbG">
                      <node concept="30H73N" id="5Ll95tHOUjl" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="5Ll95tHOUML" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:5Ll95tHON8M" resolve="elements" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="5Ll95tHOVgE" role="lGtFl">
              <ref role="v9R2y" node="5Ll95tHJi5V" resolve="xsdTypeDeclaration" />
            </node>
          </node>
          <node concept="1W57fq" id="5nPH9FxE6Y0" role="lGtFl">
            <node concept="3IZrLx" id="5nPH9FxE6Y2" role="3IZSJc">
              <node concept="3clFbS" id="5nPH9FxE6Y4" role="2VODD2">
                <node concept="3clFbF" id="5nPH9FxE7dw" role="3cqZAp">
                  <node concept="2OqwBi" id="5nPH9FxE9X5" role="3clFbG">
                    <node concept="2OqwBi" id="5nPH9FxE7qv" role="2Oq$k0">
                      <node concept="30H73N" id="5nPH9FxE7dv" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="5nPH9FxE7SL" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:5Ll95tHON8M" resolve="elements" />
                      </node>
                    </node>
                    <node concept="3GX2aA" id="5nPH9FxEcIr" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="nxI_60hm4S">
    <property role="TrG5h" value="xsdDeclarableType" />
    <node concept="3aamgX" id="nxI_60hm5d" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:GIhN6Iasm" resolve="XsdSimpleType" />
      <node concept="1Koe21" id="nxI_60hm5e" role="1lVwrX">
        <node concept="2pNNFK" id="nxI_60hm5f" role="1Koe22">
          <property role="2pNNFO" value="xs:simpleType" />
          <node concept="2pNUuL" id="nxI_60hm5g" role="2pNNFR">
            <property role="2pNUuO" value="name" />
            <node concept="2pMdtt" id="nxI_60hm5h" role="2pMdts">
              <property role="2pMdty" value="_name_" />
              <node concept="17Uvod" id="nxI_60hm5i" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="nxI_60hm5j" role="3zH0cK">
                  <node concept="3clFbS" id="nxI_60hm5k" role="2VODD2">
                    <node concept="3clFbF" id="nxI_60hm5l" role="3cqZAp">
                      <node concept="2OqwBi" id="nxI_60hm5m" role="3clFbG">
                        <node concept="30H73N" id="nxI_60hm5n" role="2Oq$k0" />
                        <node concept="2qgKlT" id="nxI_60hm5o" role="2OqNvi">
                          <ref role="37wK5l" to="jbym:3epa_KBVZz5" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1W57fq" id="nxI_60iouC" role="lGtFl">
              <node concept="3IZrLx" id="nxI_60iouE" role="3IZSJc">
                <node concept="3clFbS" id="nxI_60iouG" role="2VODD2">
                  <node concept="3clFbF" id="nxI_60ioMu" role="3cqZAp">
                    <node concept="2OqwBi" id="nxI_60ip0f" role="3clFbG">
                      <node concept="30H73N" id="nxI_60ioMt" role="2Oq$k0" />
                      <node concept="2qgKlT" id="nxI_60ipwz" role="2OqNvi">
                        <ref role="37wK5l" to="jbym:nxI_60ilSc" resolve="isInDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="nxI_60hm5p" role="lGtFl" />
          <node concept="2pNNFK" id="nxI_60hm5q" role="3o6s8t">
            <property role="2pNNFO" value="xs:restriction" />
            <node concept="2pNUuL" id="nxI_60hm5r" role="2pNNFR">
              <property role="2pNUuO" value="base" />
              <node concept="2pMdtt" id="nxI_60hm5s" role="2pMdts">
                <property role="2pMdty" value="_base_" />
                <node concept="17Uvod" id="nxI_60hm5t" role="lGtFl">
                  <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                  <property role="2qtEX9" value="text" />
                  <node concept="3zFVjK" id="nxI_60hm5u" role="3zH0cK">
                    <node concept="3clFbS" id="nxI_60hm5v" role="2VODD2">
                      <node concept="3clFbF" id="nxI_60hm5w" role="3cqZAp">
                        <node concept="3cpWs3" id="nxI_60hm5x" role="3clFbG">
                          <node concept="Xl_RD" id="nxI_60hm5y" role="3uHU7B">
                            <property role="Xl_RC" value="xs:" />
                          </node>
                          <node concept="2OqwBi" id="5xFSyvKSMHW" role="3uHU7w">
                            <node concept="24Tkf9" id="5xFSyvKSMHY" role="2OqNvi" />
                            <node concept="2OqwBi" id="nxI_60hm5z" role="2Oq$k0">
                              <node concept="30H73N" id="nxI_60hm5$" role="2Oq$k0" />
                              <node concept="3TrcHB" id="nxI_60hm5_" role="2OqNvi">
                                <ref role="3TsBF5" to="irkh:5xFSyvKSMCW" resolve="base" />
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
            <node concept="2pNNFK" id="nxI_60hm5A" role="3o6s8t">
              <property role="2pNNFO" value="replaced_by_xsdFacet" />
              <property role="qg3DV" value="true" />
              <node concept="1WS0z7" id="5xFSyvKRi9n" role="lGtFl">
                <node concept="3JmXsc" id="5xFSyvKRi9o" role="3Jn$fo">
                  <node concept="3clFbS" id="5xFSyvKRi9p" role="2VODD2">
                    <node concept="3clFbF" id="5xFSyvKRihc" role="3cqZAp">
                      <node concept="2OqwBi" id="5xFSyvKRiy_" role="3clFbG">
                        <node concept="30H73N" id="5xFSyvKRihb" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="5xFSyvKRiPl" role="2OqNvi">
                          <ref role="3TtcxE" to="irkh:5Ll95tHJID$" resolve="restriction" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1sPUBX" id="nxI_60hm5K" role="lGtFl">
                <ref role="v9R2y" node="5Ll95tHJKZ6" resolve="xsdFacet" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="nxI_60hm5R" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:GIhN6I5RP" resolve="XsdComplexType" />
      <node concept="1Koe21" id="nxI_60hm5S" role="1lVwrX">
        <node concept="2pNNFK" id="nxI_60hm5T" role="1Koe22">
          <property role="2pNNFO" value="xs:complexType" />
          <node concept="2pNUuL" id="nxI_60hm6y" role="2pNNFR">
            <property role="2pNUuO" value="name" />
            <node concept="2pMdtt" id="nxI_60hm6z" role="2pMdts">
              <property role="2pMdty" value="_name_" />
              <node concept="17Uvod" id="nxI_60hm6$" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="nxI_60hm6_" role="3zH0cK">
                  <node concept="3clFbS" id="nxI_60hm6A" role="2VODD2">
                    <node concept="3clFbF" id="nxI_60hm6B" role="3cqZAp">
                      <node concept="2OqwBi" id="nxI_60hm6C" role="3clFbG">
                        <node concept="30H73N" id="nxI_60hm6D" role="2Oq$k0" />
                        <node concept="2qgKlT" id="nxI_60hm6E" role="2OqNvi">
                          <ref role="37wK5l" to="jbym:3epa_KBVZz5" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1W57fq" id="nxI_60iq8h" role="lGtFl">
              <node concept="3IZrLx" id="nxI_60iq8j" role="3IZSJc">
                <node concept="3clFbS" id="nxI_60iq8l" role="2VODD2">
                  <node concept="3clFbF" id="nxI_60iqs7" role="3cqZAp">
                    <node concept="2OqwBi" id="nxI_60iqDS" role="3clFbG">
                      <node concept="30H73N" id="nxI_60iqs6" role="2Oq$k0" />
                      <node concept="2qgKlT" id="nxI_60irac" role="2OqNvi">
                        <ref role="37wK5l" to="jbym:nxI_60ilSc" resolve="isInDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="nxI_60hm6F" role="lGtFl" />
          <node concept="2pNNFK" id="nxI_60hm6G" role="3o6s8t">
            <property role="2pNNFO" value="replaced_by_xsdComplextContents" />
            <property role="qg3DV" value="true" />
            <node concept="1sPUBX" id="nxI_60hm6H" role="lGtFl">
              <ref role="v9R2y" node="5Ll95tHOPzu" resolve="xsdComplexContents" />
              <node concept="3NFfHV" id="nxI_60hm6I" role="1sPUBK">
                <node concept="3clFbS" id="nxI_60hm6J" role="2VODD2">
                  <node concept="3clFbF" id="nxI_60hm6K" role="3cqZAp">
                    <node concept="2OqwBi" id="nxI_60hm6L" role="3clFbG">
                      <node concept="2OqwBi" id="nxI_60hm6M" role="2Oq$k0">
                        <node concept="30H73N" id="nxI_60hm6N" role="2Oq$k0" />
                        <node concept="3TrEf2" id="nxI_60hm6O" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:3epa_KBLTcx" resolve="body" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="nxI_60hm6P" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:3epa_KBLTbK" resolve="contents" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="nxI_60hm5U" role="3o6s8t">
            <property role="2pNNFO" value="xs:attribute" />
            <property role="qg3DV" value="true" />
            <node concept="2pNUuL" id="nxI_60hm5V" role="2pNNFR">
              <property role="2pNUuO" value="name" />
              <node concept="2pMdtt" id="nxI_60hm5W" role="2pMdts">
                <property role="2pMdty" value="_name_" />
                <node concept="17Uvod" id="nxI_60hm5X" role="lGtFl">
                  <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                  <property role="2qtEX9" value="text" />
                  <node concept="3zFVjK" id="nxI_60hm5Y" role="3zH0cK">
                    <node concept="3clFbS" id="nxI_60hm5Z" role="2VODD2">
                      <node concept="3clFbF" id="nxI_60hm60" role="3cqZAp">
                        <node concept="2OqwBi" id="nxI_60hm61" role="3clFbG">
                          <node concept="30H73N" id="nxI_60hm62" role="2Oq$k0" />
                          <node concept="3TrcHB" id="nxI_60hm63" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNUuL" id="nxI_60hm64" role="2pNNFR">
              <property role="2pNUuO" value="type" />
              <node concept="2pMdtt" id="nxI_60hm65" role="2pMdts">
                <property role="2pMdty" value="_type_" />
                <node concept="17Uvod" id="nxI_60hm66" role="lGtFl">
                  <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                  <property role="2qtEX9" value="text" />
                  <node concept="3zFVjK" id="nxI_60hm67" role="3zH0cK">
                    <node concept="3clFbS" id="nxI_60hm68" role="2VODD2">
                      <node concept="3clFbF" id="nxI_60hm69" role="3cqZAp">
                        <node concept="2OqwBi" id="nxI_60hm6a" role="3clFbG">
                          <node concept="2OqwBi" id="nxI_60hm6b" role="2Oq$k0">
                            <node concept="30H73N" id="nxI_60hm6c" role="2Oq$k0" />
                            <node concept="3TrEf2" id="nxI_60hm6d" role="2OqNvi">
                              <ref role="3Tt5mk" to="irkh:5nPH9FxCX7C" resolve="typeLiteral" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="nxI_60hm6e" role="2OqNvi">
                            <ref role="37wK5l" to="jbym:6P6yfMflkSM" resolve="asTypeReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNUuL" id="nxI_60hm6f" role="2pNNFR">
              <property role="2pNUuO" value="use" />
              <node concept="1W57fq" id="nxI_60hm6g" role="lGtFl">
                <node concept="3IZrLx" id="nxI_60hm6h" role="3IZSJc">
                  <node concept="3clFbS" id="nxI_60hm6i" role="2VODD2">
                    <node concept="3clFbF" id="nxI_60hm6j" role="3cqZAp">
                      <node concept="3fqX7Q" id="nxI_60hm6k" role="3clFbG">
                        <node concept="2OqwBi" id="nxI_60hm6l" role="3fr31v">
                          <node concept="30H73N" id="nxI_60hm6m" role="2Oq$k0" />
                          <node concept="3TrcHB" id="nxI_60hm6n" role="2OqNvi">
                            <ref role="3TsBF5" to="irkh:6P6yfMfjRX9" resolve="optional" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pMdtt" id="nxI_60hm6o" role="2pMdts">
                <property role="2pMdty" value="required" />
              </node>
            </node>
            <node concept="1WS0z7" id="nxI_60hm6p" role="lGtFl">
              <node concept="3JmXsc" id="nxI_60hm6q" role="3Jn$fo">
                <node concept="3clFbS" id="nxI_60hm6r" role="2VODD2">
                  <node concept="3clFbF" id="nxI_60hm6s" role="3cqZAp">
                    <node concept="2OqwBi" id="nxI_60hm6t" role="3clFbG">
                      <node concept="2OqwBi" id="nxI_60hm6u" role="2Oq$k0">
                        <node concept="30H73N" id="nxI_60hm6v" role="2Oq$k0" />
                        <node concept="3TrEf2" id="nxI_60hm6w" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:3epa_KBLTcx" resolve="body" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="nxI_60hm6x" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:3epa_KBLTbJ" resolve="attributes" />
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
  <node concept="2pMbU2" id="zT7KcJlqOh">
    <property role="TrG5h" value="lengths" />
    <node concept="3rIKKV" id="zT7KcJlqOi" role="2pMbU3">
      <node concept="2pNNFK" id="zT7KcJlrkU" role="2pNm8H">
        <property role="2pNNFO" value="lengths" />
        <node concept="3o6iSG" id="zT7KcJlrl2" role="3o6s8t" />
        <node concept="3o6iSG" id="zT7KcJp8yL" role="3o6s8t" />
        <node concept="2pNNFK" id="zT7KcJp8yU" role="3o6s8t">
          <property role="2pNNFO" value="replaced_by_minimumSerialisationLength" />
          <property role="qg3DV" value="true" />
          <node concept="1WS0z7" id="zT7KcJp8z2" role="lGtFl">
            <node concept="3JmXsc" id="zT7KcJp8z4" role="3Jn$fo">
              <node concept="3clFbS" id="zT7KcJp8z6" role="2VODD2">
                <node concept="3clFbF" id="zT7KcJp8BT" role="3cqZAp">
                  <node concept="2OqwBi" id="zT7KcJp9_r" role="3clFbG">
                    <node concept="2OqwBi" id="zT7KcJp8NQ" role="2Oq$k0">
                      <node concept="30H73N" id="zT7KcJp8BS" role="2Oq$k0" />
                      <node concept="3TrEf2" id="zT7KcJp9ic" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="zT7KcJpa0k" role="2OqNvi">
                      <ref role="3TtcxE" to="irkh:nxI_60uCZK" resolve="declarations" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1sPUBX" id="zT7KcJpaBt" role="lGtFl">
            <ref role="v9R2y" node="zT7KcJoXTL" resolve="length" />
          </node>
        </node>
        <node concept="3o6iSG" id="zT7KcJlrlh" role="3o6s8t" />
      </node>
      <node concept="2pNm8N" id="zT7KcJlrkQ" role="2pNm8Q">
        <node concept="3W$oVP" id="zT7KcJlrkS" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
          <property role="1UZly_" value="UTF-8" />
          <property role="1UZlyF" value="yes" />
        </node>
      </node>
    </node>
    <node concept="n94m4" id="zT7KcJlqOk" role="lGtFl">
      <ref role="n9lRv" to="irkh:GIhN6I5Rs" resolve="XsdSchema" />
    </node>
    <node concept="17Uvod" id="zT7KcJlzJJ" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="zT7KcJlzJK" role="3zH0cK">
        <node concept="3clFbS" id="zT7KcJlzJL" role="2VODD2">
          <node concept="3clFbF" id="zT7KcJl$nT" role="3cqZAp">
            <node concept="3cpWs3" id="zT7KcJl_NB" role="3clFbG">
              <node concept="Xl_RD" id="zT7KcJl_NH" role="3uHU7w">
                <property role="Xl_RC" value="-lengths" />
              </node>
              <node concept="2OqwBi" id="5$pgRcApoFf" role="3uHU7B">
                <node concept="2OqwBi" id="zT7KcJl$_w" role="2Oq$k0">
                  <node concept="30H73N" id="zT7KcJl$nS" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5$pgRcApod0" role="2OqNvi">
                    <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                  </node>
                </node>
                <node concept="3TrcHB" id="5$pgRcAppdX" role="2OqNvi">
                  <ref role="3TsBF5" to="irkh:6ZO2Qy6hDgR" resolve="targetFileName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="zT7KcJoXTL">
    <property role="TrG5h" value="length" />
    <node concept="3aamgX" id="zT7KcJqKDA" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:6P6yfMfjRvf" resolve="XsdAttribute" />
      <node concept="gft3U" id="zT7KcJqKEP" role="1lVwrX">
        <node concept="2pNNFK" id="zT7KcJqKEV" role="gfFT$">
          <property role="2pNNFO" value="attribute" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="zT7KcJqKF0" role="2pNNFR">
            <property role="2pNUuO" value="name" />
            <node concept="2pMdtt" id="zT7KcJqKF2" role="2pMdts">
              <property role="2pMdty" value="_name_" />
              <node concept="17Uvod" id="zT7KcJqKF4" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="zT7KcJqKF5" role="3zH0cK">
                  <node concept="3clFbS" id="zT7KcJqKF6" role="2VODD2">
                    <node concept="3clFbF" id="zT7KcJqKNw" role="3cqZAp">
                      <node concept="2OqwBi" id="zT7KcJqL17" role="3clFbG">
                        <node concept="30H73N" id="zT7KcJqKNv" role="2Oq$k0" />
                        <node concept="3TrcHB" id="zT7KcJqLCX" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="zT7KcJqM1U" role="2pNNFR">
            <property role="2pNUuO" value="minimumSerialisationLength" />
            <node concept="2pMdtt" id="zT7KcJqM1V" role="2pMdts">
              <property role="2pMdty" value="_int_" />
              <node concept="17Uvod" id="zT7KcJqM1W" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="zT7KcJqM1X" role="3zH0cK">
                  <node concept="3clFbS" id="zT7KcJqM1Y" role="2VODD2">
                    <node concept="3clFbF" id="zT7KcJqM1Z" role="3cqZAp">
                      <node concept="3cpWs3" id="zT7KcJqM20" role="3clFbG">
                        <node concept="2YIFZM" id="zT7KcJqM21" role="3uHU7w">
                          <ref role="1Pybhc" to="jbym:zT7KcJfKTS" resolve="MinimumSerialisationLengthComputer" />
                          <ref role="37wK5l" to="jbym:zT7KcJfKUk" resolve="minimumSerialisationLength" />
                          <node concept="30H73N" id="zT7KcJqM22" role="37wK5m" />
                        </node>
                        <node concept="Xl_RD" id="zT7KcJqM23" role="3uHU7B">
                          <property role="Xl_RC" value="" />
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
    <node concept="3aamgX" id="zT7KcJuBqV" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:5Ll95tHOMkd" resolve="XsdChoice" />
      <node concept="gft3U" id="zT7KcJuBsw" role="1lVwrX">
        <node concept="2pNNFK" id="zT7KcJuBsA" role="gfFT$">
          <property role="2pNNFO" value="choice" />
          <property role="qg3DV" value="false" />
          <node concept="2pNUuL" id="zT7KcJzmqQ" role="2pNNFR">
            <property role="2pNUuO" value="minimumSerialisationLengthOfOne" />
            <node concept="2pMdtt" id="zT7KcJzmy0" role="2pMdts">
              <property role="2pMdty" value="_int_" />
              <node concept="17Uvod" id="zT7KcJzmy2" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="zT7KcJzmy3" role="3zH0cK">
                  <node concept="3clFbS" id="zT7KcJzmy4" role="2VODD2">
                    <node concept="3clFbF" id="zT7KcJzmEu" role="3cqZAp">
                      <node concept="3cpWs3" id="zT7KcJznzm" role="3clFbG">
                        <node concept="2YIFZM" id="zT7KcJzq3c" role="3uHU7w">
                          <ref role="37wK5l" to="jbym:zT7KcJhOTI" resolve="min" />
                          <ref role="1Pybhc" to="jbym:zT7KcJfKTS" resolve="MinimumSerialisationLengthComputer" />
                          <node concept="2OqwBi" id="zT7KcJzt7o" role="37wK5m">
                            <node concept="2OqwBi" id="zT7KcJzqy9" role="2Oq$k0">
                              <node concept="30H73N" id="zT7KcJzqgc" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="zT7KcJzr6l" role="2OqNvi">
                                <ref role="3TtcxE" to="irkh:5Ll95tHON8K" resolve="elements" />
                              </node>
                            </node>
                            <node concept="3$u5V9" id="zT7KcJzwrg" role="2OqNvi">
                              <node concept="1bVj0M" id="zT7KcJzwri" role="23t8la">
                                <node concept="3clFbS" id="zT7KcJzwrj" role="1bW5cS">
                                  <node concept="3clFbF" id="zT7KcJzwXU" role="3cqZAp">
                                    <node concept="2YIFZM" id="zT7KcJzxqM" role="3clFbG">
                                      <ref role="37wK5l" to="jbym:zT7KcJfKUk" resolve="minimumSerialisationLength" />
                                      <ref role="1Pybhc" to="jbym:zT7KcJfKTS" resolve="MinimumSerialisationLengthComputer" />
                                      <node concept="37vLTw" id="zT7KcJzxH1" role="37wK5m">
                                        <ref role="3cqZAo" node="zT7KcJzwrk" resolve="it" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="zT7KcJzwrk" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="zT7KcJzwrl" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="zT7KcJzmEt" role="3uHU7B">
                          <property role="Xl_RC" value="" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="zT7KcJ_Hvc" role="2pNNFR">
            <property role="2pNUuO" value="maximumSerialisationLengthOfOne" />
            <node concept="2pMdtt" id="zT7KcJ_Hvd" role="2pMdts">
              <property role="2pMdty" value="_int_" />
              <node concept="17Uvod" id="zT7KcJ_Hve" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="zT7KcJ_Hvf" role="3zH0cK">
                  <node concept="3clFbS" id="zT7KcJ_Hvg" role="2VODD2">
                    <node concept="3clFbF" id="zT7KcJ_Hvh" role="3cqZAp">
                      <node concept="3cpWs3" id="zT7KcJ_Hvi" role="3clFbG">
                        <node concept="2YIFZM" id="zT7KcJ_Ln6" role="3uHU7w">
                          <ref role="37wK5l" to="jbym:zT7KcJ_KUe" resolve="max" />
                          <ref role="1Pybhc" to="jbym:zT7KcJfKTS" resolve="MinimumSerialisationLengthComputer" />
                          <node concept="2OqwBi" id="zT7KcJ_Ln7" role="37wK5m">
                            <node concept="2OqwBi" id="zT7KcJ_Ln8" role="2Oq$k0">
                              <node concept="30H73N" id="zT7KcJ_Ln9" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="zT7KcJ_Lna" role="2OqNvi">
                                <ref role="3TtcxE" to="irkh:5Ll95tHON8K" resolve="elements" />
                              </node>
                            </node>
                            <node concept="3$u5V9" id="zT7KcJ_Lnb" role="2OqNvi">
                              <node concept="1bVj0M" id="zT7KcJ_Lnc" role="23t8la">
                                <node concept="3clFbS" id="zT7KcJ_Lnd" role="1bW5cS">
                                  <node concept="3clFbF" id="zT7KcJ_Lne" role="3cqZAp">
                                    <node concept="2YIFZM" id="zT7KcJ_Lnf" role="3clFbG">
                                      <ref role="1Pybhc" to="jbym:zT7KcJfKTS" resolve="MinimumSerialisationLengthComputer" />
                                      <ref role="37wK5l" to="jbym:zT7KcJfKUk" resolve="minimumSerialisationLength" />
                                      <node concept="37vLTw" id="zT7KcJ_Lng" role="37wK5m">
                                        <ref role="3cqZAo" node="zT7KcJ_Lnh" resolve="it" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="zT7KcJ_Lnh" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="zT7KcJ_Lni" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="zT7KcJ_Hvw" role="3uHU7B">
                          <property role="Xl_RC" value="" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="zT7KcJuJZZ" role="3o6s8t">
            <property role="2pNNFO" value="replaced_element" />
            <property role="qg3DV" value="true" />
            <node concept="1WS0z7" id="zT7KcJuK04" role="lGtFl">
              <node concept="3JmXsc" id="zT7KcJuK06" role="3Jn$fo">
                <node concept="3clFbS" id="zT7KcJuK08" role="2VODD2">
                  <node concept="3clFbF" id="zT7KcJuK4V" role="3cqZAp">
                    <node concept="2OqwBi" id="zT7KcJuKgS" role="3clFbG">
                      <node concept="30H73N" id="zT7KcJuK4U" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="zT7KcJuKQ0" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:5Ll95tHON8K" resolve="elements" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="zT7KcJuLff" role="lGtFl">
              <ref role="v9R2y" node="zT7KcJoXTL" resolve="length" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="zT7KcJpuEs" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:GIhN6I5RP" resolve="XsdComplexType" />
      <node concept="gft3U" id="zT7KcJpuF1" role="1lVwrX">
        <node concept="2pNNFK" id="zT7KcJpPwh" role="gfFT$">
          <property role="2pNNFO" value="complexType" />
          <node concept="2pNUuL" id="zT7KcJq9vw" role="2pNNFR">
            <property role="2pNUuO" value="minimumSerialisationLength" />
            <node concept="2pMdtt" id="zT7KcJq9Gb" role="2pMdts">
              <property role="2pMdty" value="_int_" />
              <node concept="17Uvod" id="zT7KcJq9Gd" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="zT7KcJq9Ge" role="3zH0cK">
                  <node concept="3clFbS" id="zT7KcJq9Gf" role="2VODD2">
                    <node concept="3clFbF" id="zT7KcJq9OD" role="3cqZAp">
                      <node concept="3cpWs3" id="zT7KcJqae6" role="3clFbG">
                        <node concept="2YIFZM" id="zT7KcJqaQ9" role="3uHU7w">
                          <ref role="37wK5l" to="jbym:zT7KcJfKUk" resolve="minimumSerialisationLength" />
                          <ref role="1Pybhc" to="jbym:zT7KcJfKTS" resolve="MinimumSerialisationLengthComputer" />
                          <node concept="30H73N" id="zT7KcJqbbk" role="37wK5m" />
                        </node>
                        <node concept="Xl_RD" id="zT7KcJq9OC" role="3uHU7B">
                          <property role="Xl_RC" value="" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="zT7KcJpPwj" role="3o6s8t">
            <property role="2pNNFO" value="replaced_attribute" />
            <property role="qg3DV" value="true" />
            <node concept="1WS0z7" id="zT7KcJpQf_" role="lGtFl">
              <node concept="3JmXsc" id="zT7KcJpQfD" role="3Jn$fo">
                <node concept="3clFbS" id="zT7KcJpQfH" role="2VODD2">
                  <node concept="3clFbF" id="zT7KcJpQky" role="3cqZAp">
                    <node concept="2OqwBi" id="zT7KcJpRdo" role="3clFbG">
                      <node concept="2OqwBi" id="zT7KcJpQxh" role="2Oq$k0">
                        <node concept="30H73N" id="zT7KcJpQkx" role="2Oq$k0" />
                        <node concept="3TrEf2" id="zT7KcJpQTE" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:3epa_KBLTcx" resolve="body" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="zT7KcJpR_M" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:3epa_KBLTbJ" resolve="attributes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="zT7KcJpS2H" role="lGtFl">
              <ref role="v9R2y" node="zT7KcJoXTL" resolve="length" />
            </node>
          </node>
          <node concept="2pNNFK" id="zT7KcJpSu6" role="3o6s8t">
            <property role="2pNNFO" value="replaced_contents" />
            <property role="qg3DV" value="true" />
            <node concept="1W57fq" id="zT7KcJvnJj" role="lGtFl">
              <node concept="3IZrLx" id="zT7KcJvnJl" role="3IZSJc">
                <node concept="3clFbS" id="zT7KcJvnJn" role="2VODD2">
                  <node concept="3clFbF" id="zT7KcJvnXW" role="3cqZAp">
                    <node concept="3y3z36" id="zT7KcJvqqH" role="3clFbG">
                      <node concept="10Nm6u" id="zT7KcJvqA9" role="3uHU7w" />
                      <node concept="2OqwBi" id="zT7KcJvplD" role="3uHU7B">
                        <node concept="2OqwBi" id="zT7KcJvobH" role="2Oq$k0">
                          <node concept="30H73N" id="zT7KcJvnXV" role="2Oq$k0" />
                          <node concept="3TrEf2" id="zT7KcJvoVk" role="2OqNvi">
                            <ref role="3Tt5mk" to="irkh:3epa_KBLTcx" resolve="body" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="zT7KcJvpLB" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:3epa_KBLTbK" resolve="contents" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="zT7KcJpSKm" role="lGtFl">
              <ref role="v9R2y" node="zT7KcJoXTL" resolve="length" />
              <node concept="3NFfHV" id="zT7KcJpSK_" role="1sPUBK">
                <node concept="3clFbS" id="zT7KcJpSKA" role="2VODD2">
                  <node concept="3clFbF" id="zT7KcJpSNV" role="3cqZAp">
                    <node concept="2OqwBi" id="zT7KcJpTCA" role="3clFbG">
                      <node concept="2OqwBi" id="zT7KcJpSY6" role="2Oq$k0">
                        <node concept="30H73N" id="zT7KcJpSNU" role="2Oq$k0" />
                        <node concept="3TrEf2" id="zT7KcJpTne" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:3epa_KBLTcx" resolve="body" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="zT7KcJpTVb" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:3epa_KBLTbK" resolve="contents" />
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
    <node concept="3aamgX" id="zT7KcJuMZl" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:5Ll95tHOMkj" resolve="XsdElement" />
      <node concept="gft3U" id="zT7KcJuN1E" role="1lVwrX">
        <node concept="2pNNFK" id="zT7KcJuN1K" role="gfFT$">
          <property role="2pNNFO" value="element" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="zT7KcJuN1O" role="2pNNFR">
            <property role="2pNUuO" value="name" />
            <node concept="2pMdtt" id="zT7KcJuN1Q" role="2pMdts">
              <property role="2pMdty" value="_name_" />
              <node concept="17Uvod" id="zT7KcJuN1S" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="zT7KcJuN1T" role="3zH0cK">
                  <node concept="3clFbS" id="zT7KcJuN1U" role="2VODD2">
                    <node concept="3clFbF" id="zT7KcJuNak" role="3cqZAp">
                      <node concept="2OqwBi" id="zT7KcJuNoH" role="3clFbG">
                        <node concept="30H73N" id="zT7KcJuNaj" role="2Oq$k0" />
                        <node concept="3TrcHB" id="zT7KcJuNXK" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="zT7KcJuOgJ" role="2pNNFR">
            <property role="2pNUuO" value="minimumSerialisationLength" />
            <node concept="2pMdtt" id="zT7KcJuOgK" role="2pMdts">
              <property role="2pMdty" value="_int_" />
              <node concept="17Uvod" id="zT7KcJuOgL" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="zT7KcJuOgM" role="3zH0cK">
                  <node concept="3clFbS" id="zT7KcJuOgN" role="2VODD2">
                    <node concept="3clFbF" id="zT7KcJuOgO" role="3cqZAp">
                      <node concept="3cpWs3" id="zT7KcJuOgP" role="3clFbG">
                        <node concept="2YIFZM" id="zT7KcJuOgQ" role="3uHU7w">
                          <ref role="37wK5l" to="jbym:zT7KcJfKUk" resolve="minimumSerialisationLength" />
                          <ref role="1Pybhc" to="jbym:zT7KcJfKTS" resolve="MinimumSerialisationLengthComputer" />
                          <node concept="30H73N" id="zT7KcJuOgR" role="37wK5m" />
                        </node>
                        <node concept="Xl_RD" id="zT7KcJuOgS" role="3uHU7B">
                          <property role="Xl_RC" value="" />
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
    <node concept="3aamgX" id="zT7KcJuL$L" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:5Ll95tHOMkg" resolve="XsdSequence" />
      <node concept="gft3U" id="zT7KcJuLAI" role="1lVwrX">
        <node concept="2pNNFK" id="zT7KcJuLAO" role="gfFT$">
          <property role="2pNNFO" value="sequence" />
          <node concept="2pNNFK" id="zT7KcJuLAQ" role="3o6s8t">
            <property role="2pNNFO" value="replaced_element" />
            <property role="qg3DV" value="true" />
            <node concept="1WS0z7" id="zT7KcJuLAV" role="lGtFl">
              <node concept="3JmXsc" id="zT7KcJuLAX" role="3Jn$fo">
                <node concept="3clFbS" id="zT7KcJuLAZ" role="2VODD2">
                  <node concept="3clFbF" id="zT7KcJuLFM" role="3cqZAp">
                    <node concept="2OqwBi" id="zT7KcJuLRJ" role="3clFbG">
                      <node concept="30H73N" id="zT7KcJuLFL" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="zT7KcJuMel" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:5Ll95tHON8M" resolve="elements" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="zT7KcJuMDH" role="lGtFl">
              <ref role="v9R2y" node="zT7KcJoXTL" resolve="length" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="zT7KcJoXTM" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
      <node concept="gft3U" id="zT7KcJoXTX" role="1lVwrX">
        <node concept="2pNNFK" id="zT7KcJp1a3" role="gfFT$">
          <property role="2pNNFO" value="definition" />
          <node concept="2pNUuL" id="zT7KcJp1a7" role="2pNNFR">
            <property role="2pNUuO" value="name" />
            <node concept="2pMdtt" id="zT7KcJp48h" role="2pMdts">
              <property role="2pMdty" value="_name_" />
              <node concept="17Uvod" id="zT7KcJp4e$" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="zT7KcJp4e_" role="3zH0cK">
                  <node concept="3clFbS" id="zT7KcJp4eA" role="2VODD2">
                    <node concept="3clFbF" id="zT7KcJp4n0" role="3cqZAp">
                      <node concept="2OqwBi" id="zT7KcJp4_p" role="3clFbG">
                        <node concept="30H73N" id="zT7KcJp4mZ" role="2Oq$k0" />
                        <node concept="3TrcHB" id="zT7KcJp4Mm" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="zT7KcJp1ac" role="2pNNFR">
            <property role="2pNUuO" value="minimumSerialisationLength" />
            <node concept="2pMdtt" id="zT7KcJp55l" role="2pMdts">
              <property role="2pMdty" value="_int_" />
              <node concept="17Uvod" id="zT7KcJp5bz" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="zT7KcJp5b$" role="3zH0cK">
                  <node concept="3clFbS" id="zT7KcJp5b_" role="2VODD2">
                    <node concept="3clFbF" id="zT7KcJp5jZ" role="3cqZAp">
                      <node concept="3cpWs3" id="zT7KcJp5Hs" role="3clFbG">
                        <node concept="2YIFZM" id="zT7KcJp6gH" role="3uHU7w">
                          <ref role="37wK5l" to="jbym:zT7KcJfKUk" resolve="minimumSerialisationLength" />
                          <ref role="1Pybhc" to="jbym:zT7KcJfKTS" resolve="MinimumSerialisationLengthComputer" />
                          <node concept="30H73N" id="zT7KcJp6tS" role="37wK5m" />
                        </node>
                        <node concept="Xl_RD" id="zT7KcJp5jY" role="3uHU7B">
                          <property role="Xl_RC" value="" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="zT7KcJq19Y" role="3o6s8t">
            <property role="2pNNFO" value="replaced_declaration" />
            <property role="qg3DV" value="true" />
            <node concept="1W57fq" id="zT7KcJvtHE" role="lGtFl">
              <node concept="3IZrLx" id="zT7KcJvtHG" role="3IZSJc">
                <node concept="3clFbS" id="zT7KcJvtHI" role="2VODD2">
                  <node concept="3clFbF" id="zT7KcJvtUx" role="3cqZAp">
                    <node concept="3fqX7Q" id="zT7KcJvwfL" role="3clFbG">
                      <node concept="2OqwBi" id="zT7KcJvvfs" role="3fr31v">
                        <node concept="2OqwBi" id="zT7KcJvu8i" role="2Oq$k0">
                          <node concept="30H73N" id="zT7KcJvtUw" role="2Oq$k0" />
                          <node concept="3TrEf2" id="zT7KcJvuJ2" role="2OqNvi">
                            <ref role="3Tt5mk" to="irkh:3epa_KBVLVr" resolve="definition" />
                          </node>
                        </node>
                        <node concept="1mIQ4w" id="zT7KcJvvEV" role="2OqNvi">
                          <node concept="chp4Y" id="zT7KcJvvQ7" role="cj9EA">
                            <ref role="cht4Q" to="irkh:GIhN6Iasm" resolve="XsdSimpleType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="zT7KcJq1rb" role="lGtFl">
              <ref role="v9R2y" node="zT7KcJoXTL" resolve="length" />
              <node concept="3NFfHV" id="zT7KcJq1re" role="1sPUBK">
                <node concept="3clFbS" id="zT7KcJq1rf" role="2VODD2">
                  <node concept="3clFbF" id="zT7KcJq1u$" role="3cqZAp">
                    <node concept="2OqwBi" id="zT7KcJq1CI" role="3clFbG">
                      <node concept="30H73N" id="zT7KcJq1uz" role="2Oq$k0" />
                      <node concept="3TrEf2" id="zT7KcJq29o" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:3epa_KBVLVr" resolve="definition" />
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
  <node concept="BlZ8e" id="zT7KcJI6TX">
    <property role="TrG5h" value="xsdSchema" />
    <property role="BlZ8d" value="xsd" />
    <node concept="3rIKKV" id="zT7KcJI6TY" role="2pMbU3">
      <node concept="2pNm8N" id="zT7KcJI7zR" role="2pNm8Q">
        <node concept="3W$oVP" id="zT7KcJI7zS" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
          <property role="1UZly_" value="UTF-8" />
          <property role="1UZlyF" value="yes" />
        </node>
      </node>
      <node concept="2pNNFK" id="zT7KcJI7zT" role="2pNm8H">
        <property role="2pNNFO" value="xs:schema" />
        <node concept="3o6iSG" id="1QtHe4MIRuw" role="3o6s8t" />
        <node concept="2pNm8U" id="1QtHe4MISvp" role="3o6s8t">
          <node concept="3o66tx" id="1QtHe4MISZR" role="3o66t8">
            <property role="3o66tw" value="_comments_" />
            <node concept="17Uvod" id="1QtHe4MIVTc" role="lGtFl">
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396949036126/1622293396949036127" />
              <property role="2qtEX9" value="text" />
              <node concept="3zFVjK" id="1QtHe4MIVTd" role="3zH0cK">
                <node concept="3clFbS" id="1QtHe4MIVTe" role="2VODD2">
                  <node concept="3clFbF" id="1QtHe4MIW7c" role="3cqZAp">
                    <node concept="2OqwBi" id="1QtHe4MIWkN" role="3clFbG">
                      <node concept="30H73N" id="1QtHe4MIW7b" role="2Oq$k0" />
                      <node concept="3TrcHB" id="1QtHe4MIWK6" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:1QtHe4MIOSQ" resolve="description" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1W57fq" id="1QtHe4MITwq" role="lGtFl">
            <node concept="3IZrLx" id="1QtHe4MITws" role="3IZSJc">
              <node concept="3clFbS" id="1QtHe4MITwu" role="2VODD2">
                <node concept="3clFbF" id="1QtHe4MITBD" role="3cqZAp">
                  <node concept="2OqwBi" id="1QtHe4MIV06" role="3clFbG">
                    <node concept="2OqwBi" id="1QtHe4MITOC" role="2Oq$k0">
                      <node concept="30H73N" id="1QtHe4MITBC" role="2Oq$k0" />
                      <node concept="3TrcHB" id="1QtHe4MIUwh" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:1QtHe4MIOSQ" resolve="description" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="1QtHe4MIVCz" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="1QtHe4MIQtE" role="3o6s8t" />
        <node concept="3o6iSG" id="1QtHe4MISZT" role="3o6s8t" />
        <node concept="3o6iSG" id="zT7KcJI7zU" role="3o6s8t" />
        <node concept="2pNNFK" id="zT7KcJI7zV" role="3o6s8t">
          <property role="2pNNFO" value="xs:import" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="zT7KcJI7zW" role="2pNNFR">
            <property role="2pNUuO" value="namespace" />
            <node concept="2pMdtt" id="zT7KcJI7zX" role="2pMdts">
              <property role="2pMdty" value="_namespace_" />
              <node concept="17Uvod" id="zT7KcJI7zY" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="zT7KcJI7zZ" role="3zH0cK">
                  <node concept="3clFbS" id="zT7KcJI7$0" role="2VODD2">
                    <node concept="3clFbF" id="zT7KcJI7$1" role="3cqZAp">
                      <node concept="2OqwBi" id="zT7KcJI7$2" role="3clFbG">
                        <node concept="2OqwBi" id="zT7KcJI7$3" role="2Oq$k0">
                          <node concept="2OqwBi" id="zT7KcJI7$4" role="2Oq$k0">
                            <node concept="30H73N" id="zT7KcJI7$5" role="2Oq$k0" />
                            <node concept="3TrEf2" id="zT7KcJI7$6" role="2OqNvi">
                              <ref role="3Tt5mk" to="irkh:nxI_60tnHb" resolve="schema" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="zT7KcJI7$7" role="2OqNvi">
                            <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="zT7KcJI7$8" role="2OqNvi">
                          <ref role="3TsBF5" to="irkh:V$LP5N73Qz" resolve="namespaceUri" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="zT7KcJI7$9" role="2pNNFR">
            <property role="2pNUuO" value="schemaLocation" />
            <node concept="2pMdtt" id="zT7KcJI7$a" role="2pMdts">
              <property role="2pMdty" value="_schemaLocation_" />
              <node concept="17Uvod" id="zT7KcJI7$b" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="zT7KcJI7$c" role="3zH0cK">
                  <node concept="3clFbS" id="zT7KcJI7$d" role="2VODD2">
                    <node concept="3clFbF" id="zT7KcJI7$e" role="3cqZAp">
                      <node concept="3cpWs3" id="zT7KcJI7$f" role="3clFbG">
                        <node concept="Xl_RD" id="zT7KcJI7$g" role="3uHU7w">
                          <property role="Xl_RC" value=".xsd" />
                        </node>
                        <node concept="2OqwBi" id="zT7KcJI7$h" role="3uHU7B">
                          <node concept="2OqwBi" id="6ZO2Qy6kOaT" role="2Oq$k0">
                            <node concept="2OqwBi" id="zT7KcJI7$i" role="2Oq$k0">
                              <node concept="30H73N" id="zT7KcJI7$j" role="2Oq$k0" />
                              <node concept="3TrEf2" id="zT7KcJI7$k" role="2OqNvi">
                                <ref role="3Tt5mk" to="irkh:nxI_60tnHb" resolve="schema" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="6ZO2Qy6kOu7" role="2OqNvi">
                              <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="6ZO2Qy6lcln" role="2OqNvi">
                            <ref role="3TsBF5" to="irkh:6ZO2Qy6hDgR" resolve="targetFileName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="zT7KcJI7$m" role="lGtFl">
            <node concept="3JmXsc" id="zT7KcJI7$n" role="3Jn$fo">
              <node concept="3clFbS" id="zT7KcJI7$o" role="2VODD2">
                <node concept="3clFbF" id="zT7KcJI7$p" role="3cqZAp">
                  <node concept="2OqwBi" id="zT7KcJI7$q" role="3clFbG">
                    <node concept="2OqwBi" id="zT7KcJI7$r" role="2Oq$k0">
                      <node concept="30H73N" id="zT7KcJI7$s" role="2Oq$k0" />
                      <node concept="3TrEf2" id="zT7KcJI7$t" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="zT7KcJI7$u" role="2OqNvi">
                      <ref role="3TtcxE" to="irkh:nxI_60uCZJ" resolve="imports" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="zT7KcJI7$v" role="3o6s8t" />
        <node concept="2pNNFK" id="zT7KcJI7$w" role="3o6s8t">
          <property role="2pNNFO" value="replaced_by_xsdTypeDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="1WS0z7" id="zT7KcJI7$x" role="lGtFl">
            <node concept="3JmXsc" id="zT7KcJI7$y" role="3Jn$fo">
              <node concept="3clFbS" id="zT7KcJI7$z" role="2VODD2">
                <node concept="3clFbF" id="zT7KcJI7$$" role="3cqZAp">
                  <node concept="2OqwBi" id="zT7KcJI7$_" role="3clFbG">
                    <node concept="2OqwBi" id="zT7KcJI7$A" role="2Oq$k0">
                      <node concept="30H73N" id="zT7KcJI7$B" role="2Oq$k0" />
                      <node concept="3TrEf2" id="zT7KcJI7$C" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="zT7KcJI7$D" role="2OqNvi">
                      <ref role="3TtcxE" to="irkh:nxI_60uCZK" resolve="declarations" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1sPUBX" id="zT7KcJI7$E" role="lGtFl">
            <ref role="v9R2y" node="5Ll95tHJi5V" resolve="xsdTypeDeclaration" />
          </node>
        </node>
        <node concept="3o6iSG" id="zT7KcJI7$F" role="3o6s8t" />
        <node concept="2pNUuL" id="zT7KcJI7$G" role="2pNNFR">
          <property role="2pNUuO" value="version" />
          <node concept="2pMdtt" id="zT7KcJI7$H" role="2pMdts">
            <property role="2pMdty" value="1.0" />
          </node>
        </node>
        <node concept="2pNUuL" id="zT7KcJI7$I" role="2pNNFR">
          <property role="2pNUuO" value="targetNamespace" />
          <node concept="2pMdtt" id="zT7KcJI7$J" role="2pMdts">
            <property role="2pMdty" value="_tns_" />
            <node concept="17Uvod" id="zT7KcJI7$K" role="lGtFl">
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <property role="2qtEX9" value="text" />
              <node concept="3zFVjK" id="zT7KcJI7$L" role="3zH0cK">
                <node concept="3clFbS" id="zT7KcJI7$M" role="2VODD2">
                  <node concept="3clFbF" id="zT7KcJI7$N" role="3cqZAp">
                    <node concept="2OqwBi" id="zT7KcJI7$O" role="3clFbG">
                      <node concept="2OqwBi" id="zT7KcJI7$P" role="2Oq$k0">
                        <node concept="30H73N" id="zT7KcJI7$Q" role="2Oq$k0" />
                        <node concept="3TrEf2" id="zT7KcJI7$R" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="zT7KcJI7$S" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:V$LP5N73Qz" resolve="namespaceUri" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNUuL" id="zT7KcJI7$T" role="2pNNFR">
          <property role="2pNUuO" value="xmlns:tns" />
          <node concept="2pMdtt" id="zT7KcJI7$U" role="2pMdts">
            <property role="2pMdty" value="_tns_" />
            <node concept="17Uvod" id="zT7KcJI7$V" role="lGtFl">
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <property role="2qtEX9" value="text" />
              <node concept="3zFVjK" id="zT7KcJI7$W" role="3zH0cK">
                <node concept="3clFbS" id="zT7KcJI7$X" role="2VODD2">
                  <node concept="3clFbF" id="zT7KcJI7$Y" role="3cqZAp">
                    <node concept="2OqwBi" id="zT7KcJI7$Z" role="3clFbG">
                      <node concept="2OqwBi" id="zT7KcJI7_0" role="2Oq$k0">
                        <node concept="30H73N" id="zT7KcJI7_1" role="2Oq$k0" />
                        <node concept="3TrEf2" id="zT7KcJI7_2" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="zT7KcJI7_3" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:V$LP5N73Qz" resolve="namespaceUri" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNUuL" id="zT7KcJI7_4" role="2pNNFR">
          <property role="2pNUuO" value="xmlns:xs" />
          <node concept="2pMdtt" id="zT7KcJI7_5" role="2pMdts">
            <property role="2pMdty" value="http://www.w3.org/2001/XMLSchema" />
          </node>
        </node>
        <node concept="2pNUuL" id="zT7KcJI7_6" role="2pNNFR">
          <property role="2pNUuO" value="_importNs_" />
          <node concept="1WS0z7" id="zT7KcJI7_7" role="lGtFl">
            <node concept="3JmXsc" id="zT7KcJI7_8" role="3Jn$fo">
              <node concept="3clFbS" id="zT7KcJI7_9" role="2VODD2">
                <node concept="3clFbF" id="zT7KcJI7_a" role="3cqZAp">
                  <node concept="2OqwBi" id="zT7KcJI7_b" role="3clFbG">
                    <node concept="2OqwBi" id="zT7KcJI7_c" role="2Oq$k0">
                      <node concept="30H73N" id="zT7KcJI7_d" role="2Oq$k0" />
                      <node concept="3TrEf2" id="zT7KcJI7_e" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="zT7KcJI7_f" role="2OqNvi">
                      <ref role="3TtcxE" to="irkh:nxI_60uCZJ" resolve="imports" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17Uvod" id="zT7KcJI7_g" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681447923/6666499814681447926" />
            <property role="2qtEX9" value="attrName" />
            <node concept="3zFVjK" id="zT7KcJI7_h" role="3zH0cK">
              <node concept="3clFbS" id="zT7KcJI7_i" role="2VODD2">
                <node concept="3clFbF" id="zT7KcJI7_j" role="3cqZAp">
                  <node concept="3cpWs3" id="zT7KcJI7_k" role="3clFbG">
                    <node concept="2OqwBi" id="zT7KcJI7_l" role="3uHU7w">
                      <node concept="30H73N" id="zT7KcJI7_m" role="2Oq$k0" />
                      <node concept="3TrcHB" id="zT7KcJI7_n" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:2VDbS_nLTaf" resolve="prefix" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="zT7KcJI7_o" role="3uHU7B">
                      <property role="Xl_RC" value="xmlns:" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pMdtt" id="zT7KcJI7_p" role="2pMdts">
            <property role="2pMdty" value="_nsUri_" />
            <node concept="17Uvod" id="zT7KcJI7_q" role="lGtFl">
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <property role="2qtEX9" value="text" />
              <node concept="3zFVjK" id="zT7KcJI7_r" role="3zH0cK">
                <node concept="3clFbS" id="zT7KcJI7_s" role="2VODD2">
                  <node concept="3clFbF" id="zT7KcJI7_t" role="3cqZAp">
                    <node concept="2OqwBi" id="zT7KcJI7_u" role="3clFbG">
                      <node concept="2OqwBi" id="zT7KcJI7_v" role="2Oq$k0">
                        <node concept="2OqwBi" id="zT7KcJI7_w" role="2Oq$k0">
                          <node concept="30H73N" id="zT7KcJI7_x" role="2Oq$k0" />
                          <node concept="3TrEf2" id="zT7KcJI7_y" role="2OqNvi">
                            <ref role="3Tt5mk" to="irkh:nxI_60tnHb" resolve="schema" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="zT7KcJI7_z" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="zT7KcJI7_$" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:V$LP5N73Qz" resolve="namespaceUri" />
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
    <node concept="n94m4" id="zT7KcJI6U0" role="lGtFl">
      <ref role="n9lRv" to="irkh:GIhN6I5Rs" resolve="XsdSchema" />
    </node>
    <node concept="17Uvod" id="zT7KcJI6U1" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="zT7KcJI6U2" role="3zH0cK">
        <node concept="3clFbS" id="zT7KcJI6U3" role="2VODD2">
          <node concept="3clFbF" id="zT7KcJI76z" role="3cqZAp">
            <node concept="2OqwBi" id="zT7KcJI76_" role="3clFbG">
              <node concept="2OqwBi" id="6ZO2Qy6kPjN" role="2Oq$k0">
                <node concept="30H73N" id="zT7KcJI76A" role="2Oq$k0" />
                <node concept="3TrEf2" id="6ZO2Qy6kPEL" role="2OqNvi">
                  <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                </node>
              </node>
              <node concept="3TrcHB" id="6ZO2Qy6ldil" role="2OqNvi">
                <ref role="3TsBF5" to="irkh:6ZO2Qy6hDgR" resolve="targetFileName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

