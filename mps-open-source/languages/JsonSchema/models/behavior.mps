<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1bb62361-461e-46f8-b718-18c46702e73a(JsonSchema.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
  </languages>
  <imports>
    <import index="64hz" ref="r:eca5c7f5-86ab-4d3c-9b6b-cf6848ecd9e6(JsonSchema.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tay9" ref="r:4b82c70e-45f8-4502-a857-34e943edc354(Json.structure)" />
    <import index="98p5" ref="r:b9a28f2c-91e5-4b49-819f-5dd06df0e7fc(Json.behavior)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
      </concept>
      <concept id="1228997946467" name="jetbrains.mps.baseLanguage.closures.structure.YieldAllStatement" flags="nn" index="_Z6PX">
        <child id="1228997959377" name="expression" index="_Z9Zf" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="13h7C7" id="4$rLBnuijZi">
    <ref role="13h7C2" to="64hz:2hQb6UNpmlE" resolve="JsonSchema" />
    <node concept="13hLZK" id="4$rLBnuijZj" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnuijZk" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4$rLBnuijZt" role="13h7CS">
      <property role="TrG5h" value="asJson" />
      <node concept="3Tm1VV" id="4$rLBnuijZu" role="1B3o_S" />
      <node concept="3Tqbb2" id="4$rLBnuik18" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3clFbS" id="4$rLBnuijZw" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8PF8x" role="3cqZAp">
          <node concept="2YIFZM" id="6z3ZIK8PFc9" role="3clFbG">
            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
            <ref role="37wK5l" to="98p5:4$rLBnukMwb" resolve="objectOf" />
            <node concept="1bVj0M" id="6z3ZIK8PFfc" role="37wK5m">
              <node concept="3clFbS" id="6z3ZIK8PFfd" role="1bW5cS">
                <node concept="3clFbJ" id="6z3ZIK8PFp0" role="3cqZAp">
                  <node concept="3clFbS" id="6z3ZIK8PFp1" role="3clFbx">
                    <node concept="2n63Yl" id="3QNkN21JOnl" role="3cqZAp">
                      <node concept="2YIFZM" id="3QNkN21MrQ$" role="2n6tg2">
                        <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                        <node concept="Xl_RD" id="3QNkN21MrQ_" role="37wK5m">
                          <property role="Xl_RC" value="id" />
                        </node>
                        <node concept="2OqwBi" id="3QNkN21MrQA" role="37wK5m">
                          <node concept="13iPFW" id="3QNkN21MrQB" role="2Oq$k0" />
                          <node concept="3TrcHB" id="3QNkN21MrQC" role="2OqNvi">
                            <ref role="3TsBF5" to="64hz:2hQb6UNptUo" resolve="id" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6z3ZIK8PFpa" role="3clFbw">
                    <node concept="2OqwBi" id="6z3ZIK8PFpb" role="2Oq$k0">
                      <node concept="13iPFW" id="6z3ZIK8PFpc" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6z3ZIK8PFpd" role="2OqNvi">
                        <ref role="3TsBF5" to="64hz:2hQb6UNptUo" resolve="id" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="6z3ZIK8PFpe" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2n63Yl" id="3QNkN21JTsk" role="3cqZAp">
                  <node concept="2YIFZM" id="3QNkN21Msfe" role="2n6tg2">
                    <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
                    <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                    <node concept="Xl_RD" id="3QNkN21Msff" role="37wK5m">
                      <property role="Xl_RC" value="$schema" />
                    </node>
                    <node concept="Xl_RD" id="3QNkN21Msfg" role="37wK5m">
                      <property role="Xl_RC" value="http://json-schema.org/draft-07/schema#" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6z3ZIK8PFpf" role="3cqZAp">
                  <node concept="3clFbS" id="6z3ZIK8PFpg" role="3clFbx">
                    <node concept="2n63Yl" id="3QNkN21JFrg" role="3cqZAp">
                      <node concept="2YIFZM" id="3QNkN21MsAW" role="2n6tg2">
                        <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                        <node concept="Xl_RD" id="3QNkN21MsAX" role="37wK5m">
                          <property role="Xl_RC" value="title" />
                        </node>
                        <node concept="2OqwBi" id="3QNkN21MsAY" role="37wK5m">
                          <node concept="13iPFW" id="3QNkN21MsAZ" role="2Oq$k0" />
                          <node concept="3TrcHB" id="3QNkN21MsB0" role="2OqNvi">
                            <ref role="3TsBF5" to="64hz:6$03NoGlxfs" resolve="title" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6z3ZIK8PFpp" role="3clFbw">
                    <node concept="2OqwBi" id="6z3ZIK8PFpq" role="2Oq$k0">
                      <node concept="13iPFW" id="6z3ZIK8PFpr" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6z3ZIK8PFps" role="2OqNvi">
                        <ref role="3TsBF5" to="64hz:6$03NoGlxfs" resolve="title" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="6z3ZIK8PFpt" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbJ" id="6z3ZIK8PFpu" role="3cqZAp">
                  <node concept="3clFbS" id="6z3ZIK8PFpv" role="3clFbx">
                    <node concept="2n63Yl" id="3QNkN21JYKB" role="3cqZAp">
                      <node concept="2YIFZM" id="3QNkN21MsZg" role="2n6tg2">
                        <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                        <node concept="Xl_RD" id="3QNkN21MsZh" role="37wK5m">
                          <property role="Xl_RC" value="description" />
                        </node>
                        <node concept="2OqwBi" id="3QNkN21MsZi" role="37wK5m">
                          <node concept="13iPFW" id="3QNkN21MsZj" role="2Oq$k0" />
                          <node concept="3TrcHB" id="3QNkN21MsZk" role="2OqNvi">
                            <ref role="3TsBF5" to="64hz:2hQb6UNpvx7" resolve="description" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6z3ZIK8PFpC" role="3clFbw">
                    <node concept="2OqwBi" id="6z3ZIK8PFpD" role="2Oq$k0">
                      <node concept="13iPFW" id="6z3ZIK8PFpE" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6z3ZIK8PFpF" role="2OqNvi">
                        <ref role="3TsBF5" to="64hz:2hQb6UNpvx7" resolve="description" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="6z3ZIK8PFpG" role="2OqNvi" />
                  </node>
                </node>
                <node concept="_Z6PX" id="6z3ZIK8PFpH" role="3cqZAp">
                  <node concept="2OqwBi" id="6z3ZIK8PFpI" role="_Z9Zf">
                    <node concept="2OqwBi" id="6z3ZIK8PFpJ" role="2Oq$k0">
                      <node concept="13iPFW" id="6z3ZIK8PFpK" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6z3ZIK8PFpL" role="2OqNvi">
                        <ref role="3Tt5mk" to="64hz:2hQb6UNpvy4" resolve="contents" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="6z3ZIK8PFpM" role="2OqNvi">
                      <ref role="37wK5l" node="6z3ZIK8JXLy" resolve="asPairs" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6z3ZIK8PFpN" role="3cqZAp">
                  <node concept="3clFbS" id="6z3ZIK8PFpO" role="3clFbx">
                    <node concept="2n63Yl" id="3QNkN21K3Hc" role="3cqZAp">
                      <node concept="2YIFZM" id="3QNkN21Mtoq" role="2n6tg2">
                        <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                        <node concept="Xl_RD" id="3QNkN21Mtor" role="37wK5m">
                          <property role="Xl_RC" value="definitions" />
                        </node>
                        <node concept="2YIFZM" id="3QNkN21Mtos" role="37wK5m">
                          <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                          <ref role="37wK5l" to="98p5:4$rLBnukINa" resolve="objectOf" />
                          <node concept="2OqwBi" id="3QNkN21Mtot" role="37wK5m">
                            <node concept="2OqwBi" id="3QNkN21Mtou" role="2Oq$k0">
                              <node concept="13iPFW" id="3QNkN21Mtov" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="3QNkN21Mtow" role="2OqNvi">
                                <ref role="3TtcxE" to="64hz:2hQb6UNpvOI" resolve="definitions" />
                              </node>
                            </node>
                            <node concept="3$u5V9" id="3QNkN21Mtox" role="2OqNvi">
                              <node concept="1bVj0M" id="3QNkN21Mtoy" role="23t8la">
                                <node concept="3clFbS" id="3QNkN21Mtoz" role="1bW5cS">
                                  <node concept="3clFbF" id="3QNkN21Mto$" role="3cqZAp">
                                    <node concept="2OqwBi" id="3QNkN21Mto_" role="3clFbG">
                                      <node concept="37vLTw" id="3QNkN21MtoA" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3QNkN21MtoC" resolve="it" />
                                      </node>
                                      <node concept="2qgKlT" id="3QNkN21MtoB" role="2OqNvi">
                                        <ref role="37wK5l" node="4$rLBnuj6A0" resolve="asJson" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="3QNkN21MtoC" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="3QNkN21MtoD" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6z3ZIK8PFqb" role="3clFbw">
                    <node concept="2OqwBi" id="6z3ZIK8PFqc" role="2Oq$k0">
                      <node concept="13iPFW" id="6z3ZIK8PFqd" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="6z3ZIK8PFqe" role="2OqNvi">
                        <ref role="3TtcxE" to="64hz:2hQb6UNpvOI" resolve="definitions" />
                      </node>
                    </node>
                    <node concept="3GX2aA" id="6z3ZIK8PFqf" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6z3ZIK8IIen" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="refString" />
      <ref role="13i0hy" node="4$rLBnutptZ" resolve="refString" />
      <node concept="3Tm1VV" id="6z3ZIK8IIeo" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8IIez" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8IJ_V" role="3cqZAp">
          <node concept="2OqwBi" id="6z3ZIK8IJIR" role="3clFbG">
            <node concept="13iPFW" id="6z3ZIK8IJAn" role="2Oq$k0" />
            <node concept="3TrcHB" id="6z3ZIK8IJRD" role="2OqNvi">
              <ref role="3TsBF5" to="64hz:2hQb6UNptUo" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="6z3ZIK8IIe$" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnuj6_P">
    <ref role="13h7C2" to="64hz:2hQb6UNpvOL" resolve="JsonDefinition" />
    <node concept="13hLZK" id="4$rLBnuj6_Q" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnuj6_R" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4$rLBnuj6A0" role="13h7CS">
      <property role="TrG5h" value="asJson" />
      <node concept="3Tm1VV" id="4$rLBnuj6A1" role="1B3o_S" />
      <node concept="3Tqbb2" id="4$rLBnuj6Ao" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
      <node concept="3clFbS" id="4$rLBnuj6A3" role="3clF47">
        <node concept="3clFbF" id="4$rLBnup23E" role="3cqZAp">
          <node concept="2YIFZM" id="3QNkN21Mc6s" role="3clFbG">
            <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
            <node concept="2OqwBi" id="3QNkN21Mc6t" role="37wK5m">
              <node concept="13iPFW" id="3QNkN21Mc6u" role="2Oq$k0" />
              <node concept="3TrcHB" id="3QNkN21Mc6v" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="3QNkN21Mc6w" role="37wK5m">
              <node concept="2OqwBi" id="3QNkN21Mc6x" role="2Oq$k0">
                <node concept="13iPFW" id="3QNkN21Mc6y" role="2Oq$k0" />
                <node concept="3TrEf2" id="3QNkN21Mc6z" role="2OqNvi">
                  <ref role="3Tt5mk" to="64hz:2hQb6UNpvOO" resolve="def" />
                </node>
              </node>
              <node concept="2qgKlT" id="3QNkN21Mc6$" role="2OqNvi">
                <ref role="37wK5l" node="6z3ZIK8Q5WV" resolve="asJson" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6z3ZIK8J2tg" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="refString" />
      <ref role="13i0hy" node="4$rLBnutptZ" resolve="refString" />
      <node concept="3Tm1VV" id="6z3ZIK8J2th" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8J2ts" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8J2GA" role="3cqZAp">
          <node concept="3cpWs3" id="6z3ZIK8J2V6" role="3clFbG">
            <node concept="2OqwBi" id="6z3ZIK8J368" role="3uHU7w">
              <node concept="13iPFW" id="6z3ZIK8J2Vs" role="2Oq$k0" />
              <node concept="3TrcHB" id="6z3ZIK8J3eZ" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="Xl_RD" id="6z3ZIK8J2G_" role="3uHU7B">
              <property role="Xl_RC" value="#/definitions/" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="6z3ZIK8J2tt" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnujtqb">
    <ref role="13h7C2" to="64hz:2hQb6UNpvxW" resolve="JsonObjectDef" />
    <node concept="13hLZK" id="4$rLBnujtqc" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnujtqd" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8NCCb" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="6z3ZIK8NCCc" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8NCCv" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8NDdO" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8NDdE" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8NDk1" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8NDkn" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8NDko" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8NDo8" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8NDo9" role="2n6tg2">
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" to="98p5:4$rLBnul_rJ" resolve="typedAs" />
                      <node concept="Xl_RD" id="6z3ZIK8NDoa" role="37wK5m">
                        <property role="Xl_RC" value="object" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="7CaQZwf5alQ" role="3cqZAp">
                    <node concept="3clFbS" id="7CaQZwf5alR" role="3clFbx">
                      <node concept="2n63Yl" id="7CaQZwf5alS" role="3cqZAp">
                        <node concept="2YIFZM" id="7CaQZwf5alT" role="2n6tg2">
                          <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                          <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
                          <node concept="Xl_RD" id="7CaQZwf5alU" role="37wK5m">
                            <property role="Xl_RC" value="title" />
                          </node>
                          <node concept="2OqwBi" id="7CaQZwf5alV" role="37wK5m">
                            <node concept="13iPFW" id="7CaQZwf5alW" role="2Oq$k0" />
                            <node concept="3TrcHB" id="7CaQZwf5alX" role="2OqNvi">
                              <ref role="3TsBF5" to="64hz:6$03NoGmek3" resolve="title" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7CaQZwf5alY" role="3clFbw">
                      <node concept="2OqwBi" id="7CaQZwf5alZ" role="2Oq$k0">
                        <node concept="13iPFW" id="7CaQZwf5am0" role="2Oq$k0" />
                        <node concept="3TrcHB" id="7CaQZwf5am1" role="2OqNvi">
                          <ref role="3TsBF5" to="64hz:6$03NoGmek3" resolve="title" />
                        </node>
                      </node>
                      <node concept="17RvpY" id="7CaQZwf5am2" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6HQdUrgYmgG" role="3cqZAp">
                    <node concept="3clFbS" id="6HQdUrgYmgI" role="3clFbx">
                      <node concept="2n63Yl" id="6z3ZIK8NDob" role="3cqZAp">
                        <node concept="2YIFZM" id="3QNkN21MgOU" role="2n6tg2">
                          <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                          <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                          <node concept="Xl_RD" id="3QNkN21MgOV" role="37wK5m">
                            <property role="Xl_RC" value="properties" />
                          </node>
                          <node concept="2YIFZM" id="3QNkN21MgOW" role="37wK5m">
                            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                            <ref role="37wK5l" to="98p5:4$rLBnukINa" resolve="objectOf" />
                            <node concept="2OqwBi" id="3QNkN21MgOX" role="37wK5m">
                              <node concept="2OqwBi" id="3QNkN21MgOY" role="2Oq$k0">
                                <node concept="13iPFW" id="3QNkN21MgOZ" role="2Oq$k0" />
                                <node concept="2qgKlT" id="3QNkN21MgP0" role="2OqNvi">
                                  <ref role="37wK5l" node="4$rLBnur06I" resolve="regularProperties" />
                                </node>
                              </node>
                              <node concept="3$u5V9" id="3QNkN21MgP1" role="2OqNvi">
                                <node concept="1bVj0M" id="3QNkN21MgP2" role="23t8la">
                                  <node concept="3clFbS" id="3QNkN21MgP3" role="1bW5cS">
                                    <node concept="3clFbF" id="3QNkN21MgP4" role="3cqZAp">
                                      <node concept="2YIFZM" id="3QNkN21Mmqt" role="3clFbG">
                                        <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                                        <node concept="2OqwBi" id="3QNkN21Mmqu" role="37wK5m">
                                          <node concept="37vLTw" id="3QNkN21Mmqv" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3QNkN21MgPc" resolve="it" />
                                          </node>
                                          <node concept="3TrcHB" id="3QNkN21Mmqw" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="3QNkN21Mmqx" role="37wK5m">
                                          <node concept="37vLTw" id="3QNkN21Mmqy" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3QNkN21MgPc" resolve="it" />
                                          </node>
                                          <node concept="2qgKlT" id="3QNkN21Mmqz" role="2OqNvi">
                                            <ref role="37wK5l" node="6z3ZIK8JXDd" resolve="asJson" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="3QNkN21MgPc" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="3QNkN21MgPd" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6HQdUrgYpaO" role="3clFbw">
                      <node concept="2OqwBi" id="6HQdUrgYniw" role="2Oq$k0">
                        <node concept="13iPFW" id="6HQdUrgYmMo" role="2Oq$k0" />
                        <node concept="2qgKlT" id="6HQdUrgYov7" role="2OqNvi">
                          <ref role="37wK5l" node="4$rLBnur06I" resolve="regularProperties" />
                        </node>
                      </node>
                      <node concept="3GX2aA" id="6HQdUrgYpRh" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6z3ZIK8NDow" role="3cqZAp">
                    <node concept="3clFbS" id="6z3ZIK8NDox" role="3clFbx">
                      <node concept="2n63Yl" id="6z3ZIK8NDoy" role="3cqZAp">
                        <node concept="2YIFZM" id="3QNkN21MhCn" role="2n6tg2">
                          <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                          <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                          <node concept="Xl_RD" id="3QNkN21MhCo" role="37wK5m">
                            <property role="Xl_RC" value="patternProperties" />
                          </node>
                          <node concept="2YIFZM" id="3QNkN21MhCp" role="37wK5m">
                            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                            <ref role="37wK5l" to="98p5:4$rLBnukINa" resolve="objectOf" />
                            <node concept="2OqwBi" id="3QNkN21MhCq" role="37wK5m">
                              <node concept="2OqwBi" id="3QNkN21MhCr" role="2Oq$k0">
                                <node concept="13iPFW" id="3QNkN21MhCs" role="2Oq$k0" />
                                <node concept="2qgKlT" id="3QNkN21MhCt" role="2OqNvi">
                                  <ref role="37wK5l" node="4$rLBnur4T3" resolve="patternProperties" />
                                </node>
                              </node>
                              <node concept="3$u5V9" id="3QNkN21MhCu" role="2OqNvi">
                                <node concept="1bVj0M" id="3QNkN21MhCv" role="23t8la">
                                  <node concept="3clFbS" id="3QNkN21MhCw" role="1bW5cS">
                                    <node concept="3clFbF" id="3QNkN21MhCx" role="3cqZAp">
                                      <node concept="2YIFZM" id="3QNkN21MjN6" role="3clFbG">
                                        <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                                        <node concept="2OqwBi" id="3QNkN21MjN7" role="37wK5m">
                                          <node concept="37vLTw" id="3QNkN21MjN8" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3QNkN21MhCD" resolve="it" />
                                          </node>
                                          <node concept="3TrcHB" id="3QNkN21MjN9" role="2OqNvi">
                                            <ref role="3TsBF5" to="64hz:6$03NoGja_d" resolve="pattern" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="3QNkN21MjNa" role="37wK5m">
                                          <node concept="37vLTw" id="3QNkN21MjNb" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3QNkN21MhCD" resolve="it" />
                                          </node>
                                          <node concept="2qgKlT" id="3QNkN21MjNc" role="2OqNvi">
                                            <ref role="37wK5l" node="6z3ZIK8JXDd" resolve="asJson" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="3QNkN21MhCD" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="3QNkN21MhCE" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6z3ZIK8NDoR" role="3clFbw">
                      <node concept="2OqwBi" id="6z3ZIK8NDoS" role="2Oq$k0">
                        <node concept="13iPFW" id="6z3ZIK8NDoT" role="2Oq$k0" />
                        <node concept="2qgKlT" id="6z3ZIK8NDoU" role="2OqNvi">
                          <ref role="37wK5l" node="4$rLBnur4T3" resolve="patternProperties" />
                        </node>
                      </node>
                      <node concept="3GX2aA" id="6z3ZIK8NDoV" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6HQdUrgYt3t" role="3cqZAp">
                    <node concept="3clFbS" id="6HQdUrgYt3v" role="3clFbx">
                      <node concept="2n63Yl" id="6z3ZIK8NDoW" role="3cqZAp">
                        <node concept="2YIFZM" id="3QNkN21MkxL" role="2n6tg2">
                          <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                          <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                          <node concept="Xl_RD" id="3QNkN21MkxM" role="37wK5m">
                            <property role="Xl_RC" value="required" />
                          </node>
                          <node concept="2YIFZM" id="3QNkN21MkxN" role="37wK5m">
                            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                            <ref role="37wK5l" to="98p5:4$rLBnujVDH" resolve="strings" />
                            <node concept="2OqwBi" id="3QNkN21MkxO" role="37wK5m">
                              <node concept="2OqwBi" id="3QNkN21MkxP" role="2Oq$k0">
                                <node concept="13iPFW" id="3QNkN21MkxQ" role="2Oq$k0" />
                                <node concept="2qgKlT" id="3QNkN21MkxR" role="2OqNvi">
                                  <ref role="37wK5l" node="4$rLBnujPEt" resolve="requiredProperties" />
                                </node>
                              </node>
                              <node concept="3$u5V9" id="3QNkN21MkxS" role="2OqNvi">
                                <node concept="1bVj0M" id="3QNkN21MkxT" role="23t8la">
                                  <node concept="3clFbS" id="3QNkN21MkxU" role="1bW5cS">
                                    <node concept="3clFbF" id="3QNkN21MkxV" role="3cqZAp">
                                      <node concept="2OqwBi" id="3QNkN21MkxW" role="3clFbG">
                                        <node concept="37vLTw" id="3QNkN21MkxX" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3QNkN21MkxZ" resolve="it" />
                                        </node>
                                        <node concept="3TrcHB" id="3QNkN21MkxY" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="3QNkN21MkxZ" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="3QNkN21Mky0" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6HQdUrgYvPL" role="3clFbw">
                      <node concept="2OqwBi" id="6HQdUrgYu6x" role="2Oq$k0">
                        <node concept="13iPFW" id="6HQdUrgYt_Q" role="2Oq$k0" />
                        <node concept="2qgKlT" id="6HQdUrgYvjI" role="2OqNvi">
                          <ref role="37wK5l" node="4$rLBnujPEt" resolve="requiredProperties" />
                        </node>
                      </node>
                      <node concept="3GX2aA" id="6HQdUrgYwgL" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6HQdUrgVVDn" role="3cqZAp">
                    <node concept="3clFbS" id="6HQdUrgVVDp" role="3clFbx">
                      <node concept="2n63Yl" id="6z3ZIK8NDpd" role="3cqZAp">
                        <node concept="2YIFZM" id="3QNkN21MljA" role="2n6tg2">
                          <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                          <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                          <node concept="Xl_RD" id="3QNkN21MljB" role="37wK5m">
                            <property role="Xl_RC" value="additionalProperties" />
                          </node>
                          <node concept="3K4zz7" id="3QNkN21MljC" role="37wK5m">
                            <node concept="2YIFZM" id="3QNkN21MljD" role="3K4E3e">
                              <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                              <ref role="37wK5l" to="98p5:4$rLBnuk$Oo" resolve="bool" />
                              <node concept="3clFbT" id="3QNkN21MljE" role="37wK5m">
                                <property role="3clFbU" value="false" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6HQdUrgW3rm" role="3K4Cdx">
                              <node concept="2OqwBi" id="3QNkN21MljH" role="2Oq$k0">
                                <node concept="13iPFW" id="3QNkN21MljI" role="2Oq$k0" />
                                <node concept="3TrEf2" id="3QNkN21MljJ" role="2OqNvi">
                                  <ref role="3Tt5mk" to="64hz:6qrN1nFkMB" resolve="additionalPropertiesType" />
                                </node>
                              </node>
                              <node concept="1mIQ4w" id="6HQdUrgW3CG" role="2OqNvi">
                                <node concept="chp4Y" id="6HQdUrgW4c2" role="cj9EA">
                                  <ref role="cht4Q" to="64hz:6HQdUrgVIYx" resolve="JsonNoneType" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="3QNkN21MljK" role="3K4GZi">
                              <node concept="2OqwBi" id="3QNkN21MljL" role="2Oq$k0">
                                <node concept="13iPFW" id="3QNkN21MljM" role="2Oq$k0" />
                                <node concept="3TrEf2" id="3QNkN21MljN" role="2OqNvi">
                                  <ref role="3Tt5mk" to="64hz:6qrN1nFkMB" resolve="additionalPropertiesType" />
                                </node>
                              </node>
                              <node concept="2qgKlT" id="3QNkN21MljO" role="2OqNvi">
                                <ref role="37wK5l" node="6z3ZIK8Q5WV" resolve="asJson" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="6HQdUrgVYrf" role="3clFbw">
                      <node concept="10Nm6u" id="6HQdUrgVZyu" role="3uHU7w" />
                      <node concept="2OqwBi" id="6HQdUrgVXdY" role="3uHU7B">
                        <node concept="13iPFW" id="6HQdUrgVWID" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6HQdUrgVXNq" role="2OqNvi">
                          <ref role="3Tt5mk" to="64hz:6qrN1nFkMB" resolve="additionalPropertiesType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="6HQdUrgXumd" role="3cqZAp">
                    <node concept="1PaTwC" id="6HQdUrgXume" role="1aUNEU">
                      <node concept="3oM_SD" id="6HQdUrgXumf" role="1PaTwD">
                        <property role="3oM_SC" value="(Default" />
                      </node>
                      <node concept="3oM_SD" id="6HQdUrgXuRX" role="1PaTwD">
                        <property role="3oM_SC" value="of" />
                      </node>
                      <node concept="3oM_SD" id="6HQdUrgXv6c" role="1PaTwD">
                        <property role="3oM_SC" value="'additionalProperties'" />
                      </node>
                      <node concept="3oM_SD" id="6HQdUrgXwRC" role="1PaTwD">
                        <property role="3oM_SC" value="is" />
                      </node>
                      <node concept="3oM_SD" id="6HQdUrgXxRx" role="1PaTwD">
                        <property role="3oM_SC" value="'true'," />
                      </node>
                      <node concept="3oM_SD" id="6HQdUrgXyng" role="1PaTwD">
                        <property role="3oM_SC" value="meaning" />
                      </node>
                      <node concept="3oM_SD" id="6HQdUrgXynn" role="1PaTwD">
                        <property role="3oM_SC" value="anything" />
                      </node>
                      <node concept="3oM_SD" id="6HQdUrgXyM5" role="1PaTwD">
                        <property role="3oM_SC" value="goes.)" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6z3ZIK8NCCw" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8NCCx" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4$rLBnujPEt" role="13h7CS">
      <property role="TrG5h" value="requiredProperties" />
      <node concept="3Tm1VV" id="4$rLBnuk9mH" role="1B3o_S" />
      <node concept="A3Dl8" id="4$rLBnujPOQ" role="3clF45">
        <node concept="3Tqbb2" id="4$rLBnujPP3" role="A3Ik2">
          <ref role="ehGHo" to="64hz:2hQb6UNpvxZ" resolve="JsonRegularProperty" />
        </node>
      </node>
      <node concept="3clFbS" id="4$rLBnujPEw" role="3clF47">
        <node concept="3clFbF" id="4$rLBnujPPv" role="3cqZAp">
          <node concept="2OqwBi" id="4$rLBnujRBb" role="3clFbG">
            <node concept="2OqwBi" id="4$rLBnujPXQ" role="2Oq$k0">
              <node concept="13iPFW" id="4$rLBnujPPu" role="2Oq$k0" />
              <node concept="2qgKlT" id="4$rLBnur4Ky" role="2OqNvi">
                <ref role="37wK5l" node="4$rLBnur06I" resolve="regularProperties" />
              </node>
            </node>
            <node concept="3zZkjj" id="4$rLBnujUca" role="2OqNvi">
              <node concept="1bVj0M" id="4$rLBnujUcc" role="23t8la">
                <node concept="3clFbS" id="4$rLBnujUcd" role="1bW5cS">
                  <node concept="3clFbF" id="4$rLBnujUig" role="3cqZAp">
                    <node concept="2OqwBi" id="4$rLBnujUuB" role="3clFbG">
                      <node concept="37vLTw" id="4$rLBnujUif" role="2Oq$k0">
                        <ref role="3cqZAo" node="4$rLBnujUce" resolve="it" />
                      </node>
                      <node concept="3TrcHB" id="4$rLBnujUM4" role="2OqNvi">
                        <ref role="3TsBF5" to="64hz:2hQb6UNpvy2" resolve="required" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4$rLBnujUce" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4$rLBnujUcf" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4$rLBnur06I" role="13h7CS">
      <property role="TrG5h" value="regularProperties" />
      <node concept="3Tm1VV" id="4$rLBnur06J" role="1B3o_S" />
      <node concept="A3Dl8" id="4$rLBnur0xE" role="3clF45">
        <node concept="3Tqbb2" id="4$rLBnur0xR" role="A3Ik2">
          <ref role="ehGHo" to="64hz:2hQb6UNpvxZ" resolve="JsonRegularProperty" />
        </node>
      </node>
      <node concept="3clFbS" id="4$rLBnur06L" role="3clF47">
        <node concept="3clFbF" id="4$rLBnur0yz" role="3cqZAp">
          <node concept="2OqwBi" id="4$rLBnur2ap" role="3clFbG">
            <node concept="2OqwBi" id="4$rLBnur0EU" role="2Oq$k0">
              <node concept="13iPFW" id="4$rLBnur0yy" role="2Oq$k0" />
              <node concept="3Tsc0h" id="4$rLBnur0V_" role="2OqNvi">
                <ref role="3TtcxE" to="64hz:2hQb6UNpvy6" resolve="properties" />
              </node>
            </node>
            <node concept="v3k3i" id="4$rLBnur4oE" role="2OqNvi">
              <node concept="chp4Y" id="4$rLBnur4rV" role="v3oSu">
                <ref role="cht4Q" to="64hz:2hQb6UNpvxZ" resolve="JsonRegularProperty" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4$rLBnur4T3" role="13h7CS">
      <property role="TrG5h" value="patternProperties" />
      <node concept="3Tm1VV" id="4$rLBnur4T4" role="1B3o_S" />
      <node concept="A3Dl8" id="4$rLBnur5jV" role="3clF45">
        <node concept="3Tqbb2" id="4$rLBnur5k8" role="A3Ik2">
          <ref role="ehGHo" to="64hz:6$03NoGja_c" resolve="JsonPatternProperty" />
        </node>
      </node>
      <node concept="3clFbS" id="4$rLBnur4T6" role="3clF47">
        <node concept="3clFbF" id="4$rLBnur5l4" role="3cqZAp">
          <node concept="2OqwBi" id="4$rLBnur6UF" role="3clFbG">
            <node concept="2OqwBi" id="4$rLBnur5tr" role="2Oq$k0">
              <node concept="13iPFW" id="4$rLBnur5l3" role="2Oq$k0" />
              <node concept="3Tsc0h" id="4$rLBnur5I6" role="2OqNvi">
                <ref role="3TtcxE" to="64hz:2hQb6UNpvy6" resolve="properties" />
              </node>
            </node>
            <node concept="v3k3i" id="4$rLBnur98W" role="2OqNvi">
              <node concept="chp4Y" id="4$rLBnur9cd" role="v3oSu">
                <ref role="cht4Q" to="64hz:6$03NoGja_c" resolve="JsonPatternProperty" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnujttp">
    <ref role="13h7C2" to="64hz:2hQb6UNpvOQ" resolve="JsonArrayDef" />
    <node concept="13hLZK" id="4$rLBnujttq" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnujttr" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8NbLu" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="6z3ZIK8NbLv" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8NbLM" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8NbWT" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8NbWJ" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8Nc36" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8Nc3s" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8Nc3t" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8Nc7d" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8Nc7e" role="2n6tg2">
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" to="98p5:4$rLBnul_rJ" resolve="typedAs" />
                      <node concept="Xl_RD" id="6z3ZIK8Nc7f" role="37wK5m">
                        <property role="Xl_RC" value="array" />
                      </node>
                    </node>
                  </node>
                  <node concept="2n63Yl" id="6z3ZIK8Nc7g" role="3cqZAp">
                    <node concept="2YIFZM" id="3QNkN21Mbdm" role="2n6tg2">
                      <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="3QNkN21Mbdn" role="37wK5m">
                        <property role="Xl_RC" value="minItems" />
                      </node>
                      <node concept="2YIFZM" id="3QNkN21Mbdo" role="37wK5m">
                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                        <ref role="37wK5l" to="98p5:4$rLBnupB74" resolve="integer" />
                        <node concept="2OqwBi" id="3QNkN21Mbdp" role="37wK5m">
                          <node concept="13iPFW" id="3QNkN21Mbdq" role="2Oq$k0" />
                          <node concept="3TrcHB" id="3QNkN21Mbdr" role="2OqNvi">
                            <ref role="3TsBF5" to="64hz:2hQb6UNqw6G" resolve="minItems" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2n63Yl" id="6z3ZIK8Nc7n" role="3cqZAp">
                    <node concept="2YIFZM" id="3QNkN21MbpS" role="2n6tg2">
                      <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="3QNkN21MbpT" role="37wK5m">
                        <property role="Xl_RC" value="items" />
                      </node>
                      <node concept="2OqwBi" id="3QNkN21MbpU" role="37wK5m">
                        <node concept="2OqwBi" id="3QNkN21MbpV" role="2Oq$k0">
                          <node concept="13iPFW" id="3QNkN21MbpW" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3QNkN21MbpX" role="2OqNvi">
                            <ref role="3Tt5mk" to="64hz:2hQb6UNqw6I" resolve="itemsType" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="3QNkN21MbpY" role="2OqNvi">
                          <ref role="37wK5l" node="6z3ZIK8Q5WV" resolve="asJson" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6z3ZIK8Nc7v" role="3cqZAp">
                    <node concept="3clFbS" id="6z3ZIK8Nc7w" role="3clFbx">
                      <node concept="2n63Yl" id="6z3ZIK8Nc7x" role="3cqZAp">
                        <node concept="2YIFZM" id="3QNkN21MbC0" role="2n6tg2">
                          <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                          <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                          <node concept="Xl_RD" id="3QNkN21MbC1" role="37wK5m">
                            <property role="Xl_RC" value="uniqueItems" />
                          </node>
                          <node concept="2YIFZM" id="3QNkN21MbC2" role="37wK5m">
                            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                            <ref role="37wK5l" to="98p5:4$rLBnuk$Oo" resolve="bool" />
                            <node concept="2OqwBi" id="3QNkN21MbC3" role="37wK5m">
                              <node concept="13iPFW" id="3QNkN21MbC4" role="2Oq$k0" />
                              <node concept="3TrcHB" id="3QNkN21MbC5" role="2OqNvi">
                                <ref role="3TsBF5" to="64hz:2hQb6UNqw6K" resolve="uniqueItems" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6z3ZIK8Nc7C" role="3clFbw">
                      <node concept="13iPFW" id="6z3ZIK8Nc7D" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6z3ZIK8Nc7E" role="2OqNvi">
                        <ref role="3TsBF5" to="64hz:2hQb6UNqw6K" resolve="uniqueItems" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6z3ZIK8NbLN" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8NbLO" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnuk_vp">
    <ref role="13h7C2" to="64hz:2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    <node concept="13hLZK" id="4$rLBnuk_vq" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnuk_vr" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8JXLy" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="asPairs" />
      <node concept="3Tm1VV" id="6z3ZIK8JXLz" role="1B3o_S" />
      <node concept="A3Dl8" id="6z3ZIK8JXR5" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8JXRi" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
      <node concept="3clFbS" id="6z3ZIK8JXL_" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8JXS7" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8JXS5" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8JYXx" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8JYXR" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8JYXS" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8JZ1C" role="3cqZAp">
                    <node concept="2YIFZM" id="3QNkN21MzY8" role="2n6tg2">
                      <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="3QNkN21MzY9" role="37wK5m">
                        <property role="Xl_RC" value="error" />
                      </node>
                      <node concept="3cpWs3" id="3QNkN21MzYa" role="37wK5m">
                        <node concept="Xl_RD" id="3QNkN21MzYb" role="3uHU7B">
                          <property role="Xl_RC" value="!!! asPairs() not implemented by " />
                        </node>
                        <node concept="2OqwBi" id="3QNkN21MzYc" role="3uHU7w">
                          <node concept="2OqwBi" id="3QNkN21MzYd" role="2Oq$k0">
                            <node concept="13iPFW" id="3QNkN21MzYe" role="2Oq$k0" />
                            <node concept="2yIwOk" id="3QNkN21MzYf" role="2OqNvi" />
                          </node>
                          <node concept="liA8E" id="3QNkN21MzYg" role="2OqNvi">
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
    </node>
    <node concept="13i0hz" id="6z3ZIK8Q5WV" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asJson" />
      <node concept="3Tm1VV" id="6z3ZIK8Q5WW" role="1B3o_S" />
      <node concept="3Tqbb2" id="6z3ZIK8Q63M" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3clFbS" id="6z3ZIK8Q5WY" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8Q64u" role="3cqZAp">
          <node concept="2YIFZM" id="6z3ZIK8Q67e" role="3clFbG">
            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
            <ref role="37wK5l" to="98p5:4$rLBnukINa" resolve="objectOf" />
            <node concept="2OqwBi" id="6z3ZIK8Q6kD" role="37wK5m">
              <node concept="13iPFW" id="6z3ZIK8Q67O" role="2Oq$k0" />
              <node concept="2qgKlT" id="6z3ZIK8Q6yp" role="2OqNvi">
                <ref role="37wK5l" node="6z3ZIK8JXLy" resolve="asPairs" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnukNHC">
    <ref role="13h7C2" to="64hz:2hQb6UNqEo1" resolve="JsonBooleanType" />
    <node concept="13hLZK" id="4$rLBnukNHD" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnukNHE" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8MLwF" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="6z3ZIK8MLwG" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8MLwZ" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8ML_F" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8ML_x" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8MLFS" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8MLGe" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8MLGf" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8MLJZ" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8MLKO" role="2n6tg2">
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" to="98p5:4$rLBnul_rJ" resolve="typedAs" />
                      <node concept="Xl_RD" id="6z3ZIK8MLKP" role="37wK5m">
                        <property role="Xl_RC" value="boolean" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6z3ZIK8MLx0" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8MLx1" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnulepp">
    <ref role="13h7C2" to="64hz:2hQb6UNpvOR" resolve="JsonOneOf" />
    <node concept="13hLZK" id="4$rLBnulepq" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnulepr" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8K0Z4" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="6z3ZIK8K0Z5" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8K0Zo" role="3clF47">
        <node concept="3clFbF" id="5uyaFvvEHqC" role="3cqZAp">
          <node concept="BsUDl" id="5uyaFvvEIk3" role="3clFbG">
            <ref role="37wK5l" node="5uyaFvvEGbA" resolve="asPairs" />
            <node concept="Xl_RD" id="5uyaFvvEIkD" role="37wK5m">
              <property role="Xl_RC" value="oneOf" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6z3ZIK8K0Zp" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8K0Zq" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnulvaT">
    <ref role="13h7C2" to="64hz:2hQb6UNpvy8" resolve="JsonEnumerationDef" />
    <node concept="13hLZK" id="4$rLBnulvaU" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnulvaV" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8L2rW" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="6z3ZIK8L2rX" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8L2sg" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8L2DJ" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8L2D_" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8L2JW" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8L2Ki" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8L2Kj" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8L2Rz" role="3cqZAp">
                    <node concept="2YIFZM" id="3QNkN21McHn" role="2n6tg2">
                      <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="3QNkN21McHo" role="37wK5m">
                        <property role="Xl_RC" value="enum" />
                      </node>
                      <node concept="2YIFZM" id="3QNkN21McHp" role="37wK5m">
                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                        <ref role="37wK5l" to="98p5:4$rLBnujVDH" resolve="strings" />
                        <node concept="2OqwBi" id="3QNkN21McHq" role="37wK5m">
                          <node concept="2OqwBi" id="3QNkN21McHr" role="2Oq$k0">
                            <node concept="13iPFW" id="3QNkN21McHs" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="3QNkN21McHt" role="2OqNvi">
                              <ref role="3TtcxE" to="64hz:2hQb6UNpvye" resolve="values" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="3QNkN21McHu" role="2OqNvi">
                            <node concept="1bVj0M" id="3QNkN21McHv" role="23t8la">
                              <node concept="3clFbS" id="3QNkN21McHw" role="1bW5cS">
                                <node concept="3clFbF" id="3QNkN21McHx" role="3cqZAp">
                                  <node concept="2OqwBi" id="3QNkN21McHy" role="3clFbG">
                                    <node concept="37vLTw" id="3QNkN21McHz" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3QNkN21McH_" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="3QNkN21McH$" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="3QNkN21McH_" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="3QNkN21McHA" role="1tU5fm" />
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
      </node>
      <node concept="A3Dl8" id="6z3ZIK8L2sh" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8L2si" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnul$IS">
    <ref role="13h7C2" to="64hz:2hQb6UNrK1L" resolve="JsonIntegerType" />
    <node concept="13hLZK" id="4$rLBnul$IT" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnul$IU" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8ML2V" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="6z3ZIK8ML2W" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8ML3f" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8MLcI" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8MLc$" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8MLiV" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8MLjh" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8MLji" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8MLn2" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8MLn3" role="2n6tg2">
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" to="98p5:4$rLBnul_rJ" resolve="typedAs" />
                      <node concept="Xl_RD" id="6z3ZIK8MLn4" role="37wK5m">
                        <property role="Xl_RC" value="integer" />
                      </node>
                    </node>
                  </node>
                  <node concept="2n63Yl" id="6z3ZIK8MLn5" role="3cqZAp">
                    <node concept="2YIFZM" id="3QNkN21Mdst" role="2n6tg2">
                      <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="3QNkN21Mdsu" role="37wK5m">
                        <property role="Xl_RC" value="minimum" />
                      </node>
                      <node concept="2YIFZM" id="3QNkN21Mdsv" role="37wK5m">
                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                        <ref role="37wK5l" to="98p5:4$rLBnupB74" resolve="integer" />
                        <node concept="2OqwBi" id="3QNkN21Mdsw" role="37wK5m">
                          <node concept="13iPFW" id="3QNkN21Mdsx" role="2Oq$k0" />
                          <node concept="3TrcHB" id="3QNkN21Mdsy" role="2OqNvi">
                            <ref role="3TsBF5" to="64hz:2hQb6UNrK1M" resolve="minimum" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2n63Yl" id="6z3ZIK8MLnc" role="3cqZAp">
                    <node concept="2YIFZM" id="3QNkN21MdAa" role="2n6tg2">
                      <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="3QNkN21MdAb" role="37wK5m">
                        <property role="Xl_RC" value="maximum" />
                      </node>
                      <node concept="2YIFZM" id="3QNkN21MdAc" role="37wK5m">
                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                        <ref role="37wK5l" to="98p5:4$rLBnupB74" resolve="integer" />
                        <node concept="2OqwBi" id="3QNkN21MdAd" role="37wK5m">
                          <node concept="13iPFW" id="3QNkN21MdAe" role="2Oq$k0" />
                          <node concept="3TrcHB" id="3QNkN21MdAf" role="2OqNvi">
                            <ref role="3TsBF5" to="64hz:2hQb6UNrK1O" resolve="maximum" />
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
      <node concept="A3Dl8" id="6z3ZIK8ML3g" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8ML3h" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnummJj">
    <ref role="13h7C2" to="64hz:2hQb6UNyLAf" resolve="JsonReferableRef" />
    <node concept="13hLZK" id="4$rLBnummJk" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnummJl" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8KBNu" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="6z3ZIK8KBNv" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8KBNM" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8KBZ8" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8KBZ6" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8KC5l" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8KC5F" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8KC5G" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8KC9s" role="3cqZAp">
                    <node concept="2YIFZM" id="3QNkN21MoK7" role="2n6tg2">
                      <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="3QNkN21MoK8" role="37wK5m">
                        <property role="Xl_RC" value="$ref" />
                      </node>
                      <node concept="3K4zz7" id="3QNkN21MoK9" role="37wK5m">
                        <node concept="Xl_RD" id="3QNkN21MoKa" role="3K4E3e">
                          <property role="Xl_RC" value="#" />
                        </node>
                        <node concept="2OqwBi" id="3QNkN21MoKb" role="3K4GZi">
                          <node concept="2OqwBi" id="3QNkN21MoKc" role="2Oq$k0">
                            <node concept="13iPFW" id="3QNkN21MoKd" role="2Oq$k0" />
                            <node concept="3TrEf2" id="3QNkN21MoKe" role="2OqNvi">
                              <ref role="3Tt5mk" to="64hz:2hQb6UNyLAi" resolve="ref" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="3QNkN21MoKf" role="2OqNvi">
                            <ref role="37wK5l" node="4$rLBnutptZ" resolve="refString" />
                          </node>
                        </node>
                        <node concept="17R0WA" id="3QNkN21MoKg" role="3K4Cdx">
                          <node concept="2OqwBi" id="3QNkN21MoKh" role="3uHU7w">
                            <node concept="13iPFW" id="3QNkN21MoKi" role="2Oq$k0" />
                            <node concept="2Xjw5R" id="3QNkN21MoKj" role="2OqNvi">
                              <node concept="1xMEDy" id="3QNkN21MoKk" role="1xVPHs">
                                <node concept="chp4Y" id="3QNkN21MoKl" role="ri$Ld">
                                  <ref role="cht4Q" to="64hz:2hQb6UNpmlE" resolve="JsonSchema" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3QNkN21MoKm" role="3uHU7B">
                            <node concept="13iPFW" id="3QNkN21MoKn" role="2Oq$k0" />
                            <node concept="3TrEf2" id="3QNkN21MoKo" role="2OqNvi">
                              <ref role="3Tt5mk" to="64hz:2hQb6UNyLAi" resolve="ref" />
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
      <node concept="A3Dl8" id="6z3ZIK8KBNN" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8KBNO" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnumEzE">
    <ref role="13h7C2" to="64hz:2hQb6UNqEnT" resolve="JsonStringType" />
    <node concept="13hLZK" id="4$rLBnumEzF" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnumEzG" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8Mn9E" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="6z3ZIK8Mn9F" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8Mn9Y" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8Mnm6" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8MnlW" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8Mnsj" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8MnsD" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8MnsE" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8Mnwq" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8Mnwr" role="2n6tg2">
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" to="98p5:4$rLBnul_rJ" resolve="typedAs" />
                      <node concept="Xl_RD" id="6z3ZIK8Mnws" role="37wK5m">
                        <property role="Xl_RC" value="string" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6z3ZIK8Mnwt" role="3cqZAp">
                    <node concept="3clFbS" id="6z3ZIK8Mnwu" role="3clFbx">
                      <node concept="2n63Yl" id="6z3ZIK8Mnwv" role="3cqZAp">
                        <node concept="2OqwBi" id="6z3ZIK8Mnww" role="2n6tg2">
                          <node concept="2OqwBi" id="6z3ZIK8Mnwx" role="2Oq$k0">
                            <node concept="13iPFW" id="6z3ZIK8Mnwy" role="2Oq$k0" />
                            <node concept="3TrEf2" id="6z3ZIK8Mnwz" role="2OqNvi">
                              <ref role="3Tt5mk" to="64hz:2hQb6UNsfOh" resolve="restriction" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="6z3ZIK8Mnw$" role="2OqNvi">
                            <ref role="37wK5l" node="4$rLBnung_I" resolve="asPair" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="6z3ZIK8Mnw_" role="3clFbw">
                      <node concept="10Nm6u" id="6z3ZIK8MnwA" role="3uHU7w" />
                      <node concept="2OqwBi" id="6z3ZIK8MnwB" role="3uHU7B">
                        <node concept="13iPFW" id="6z3ZIK8MnwC" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6z3ZIK8MnwD" role="2OqNvi">
                          <ref role="3Tt5mk" to="64hz:2hQb6UNsfOh" resolve="restriction" />
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
      <node concept="A3Dl8" id="6z3ZIK8Mn9Z" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8Mna0" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnung_z">
    <ref role="13h7C2" to="64hz:2hQb6UNsfOf" resolve="JsonStringRestriction" />
    <node concept="13hLZK" id="4$rLBnung_$" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnung__" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4$rLBnung_I" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="asPair" />
      <node concept="3Tm1VV" id="4$rLBnung_J" role="1B3o_S" />
      <node concept="3Tqbb2" id="4$rLBnung_Y" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
      <node concept="3clFbS" id="4$rLBnung_L" role="3clF47">
        <node concept="3clFbF" id="4$rLBnupa8R" role="3cqZAp">
          <node concept="2YIFZM" id="3QNkN21Mynz" role="3clFbG">
            <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
            <node concept="Xl_RD" id="3QNkN21Myn$" role="37wK5m">
              <property role="Xl_RC" value="error" />
            </node>
            <node concept="3cpWs3" id="3QNkN21Myn_" role="37wK5m">
              <node concept="2OqwBi" id="3QNkN21MynA" role="3uHU7w">
                <node concept="2OqwBi" id="3QNkN21MynB" role="2Oq$k0">
                  <node concept="13iPFW" id="3QNkN21MynC" role="2Oq$k0" />
                  <node concept="2yIwOk" id="3QNkN21MynD" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="3QNkN21MynE" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="Xl_RD" id="3QNkN21MynF" role="3uHU7B">
                <property role="Xl_RC" value="!!! asPair() not implemented for by " />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnungAx">
    <ref role="13h7C2" to="64hz:2hQb6UNsfOg" resolve="JsonStringPattern" />
    <node concept="13hLZK" id="4$rLBnungAy" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnungAz" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4$rLBnungAG" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPair" />
      <ref role="13i0hy" node="4$rLBnung_I" resolve="asPair" />
      <node concept="3Tm1VV" id="4$rLBnungAH" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnungAK" role="3clF47">
        <node concept="3clFbF" id="4$rLBnungAZ" role="3cqZAp">
          <node concept="2YIFZM" id="3QNkN21MxHS" role="3clFbG">
            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
            <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
            <node concept="Xl_RD" id="3QNkN21MxHT" role="37wK5m">
              <property role="Xl_RC" value="pattern" />
            </node>
            <node concept="2OqwBi" id="3QNkN21MxHV" role="37wK5m">
              <node concept="13iPFW" id="3QNkN21MxHW" role="2Oq$k0" />
              <node concept="3TrcHB" id="3QNkN21MxHX" role="2OqNvi">
                <ref role="3TsBF5" to="64hz:2hQb6UNsfOl" resolve="pattern" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4$rLBnungAL" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnunhda">
    <ref role="13h7C2" to="64hz:2hQb6UNrK1K" resolve="JsonStringFormats" />
    <node concept="13hLZK" id="4$rLBnunhdb" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnunhdc" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4$rLBnunhdl" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPair" />
      <ref role="13i0hy" node="4$rLBnung_I" resolve="asPair" />
      <node concept="3Tm1VV" id="4$rLBnunhdm" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnunhdp" role="3clF47">
        <node concept="3clFbF" id="5uyaFvvGV5I" role="3cqZAp">
          <node concept="3K4zz7" id="5uyaFvvH49E" role="3clFbG">
            <node concept="2YIFZM" id="3QNkN21MvCr" role="3K4E3e">
              <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
              <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
              <node concept="Xl_RD" id="3QNkN21MvCs" role="37wK5m">
                <property role="Xl_RC" value="format" />
              </node>
              <node concept="2OqwBi" id="3QNkN21MvCt" role="37wK5m">
                <node concept="2OqwBi" id="3QNkN21MvCu" role="2Oq$k0">
                  <node concept="2OqwBi" id="3QNkN21MvCv" role="2Oq$k0">
                    <node concept="13iPFW" id="3QNkN21MvCw" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3QNkN21MvCx" role="2OqNvi">
                      <ref role="3TtcxE" to="64hz:2hQb6UNsfOa" resolve="formats" />
                    </node>
                  </node>
                  <node concept="1uHKPH" id="3QNkN21MvCy" role="2OqNvi" />
                </node>
                <node concept="3TrcHB" id="3QNkN21MvCz" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5uyaFvvH2U$" role="3K4Cdx">
              <node concept="3cmrfG" id="5uyaFvvH3kb" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="5uyaFvvGX3j" role="3uHU7B">
                <node concept="2OqwBi" id="5uyaFvvGVeK" role="2Oq$k0">
                  <node concept="13iPFW" id="5uyaFvvGV5G" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5uyaFvvGVyo" role="2OqNvi">
                    <ref role="3TtcxE" to="64hz:2hQb6UNsfOa" resolve="formats" />
                  </node>
                </node>
                <node concept="34oBXx" id="5uyaFvvH11V" role="2OqNvi" />
              </node>
            </node>
            <node concept="2YIFZM" id="3QNkN21Mw63" role="3K4GZi">
              <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
              <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
              <node concept="Xl_RD" id="3QNkN21Mw64" role="37wK5m">
                <property role="Xl_RC" value="oneOf" />
              </node>
              <node concept="2YIFZM" id="3QNkN21Mw65" role="37wK5m">
                <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                <ref role="37wK5l" to="98p5:6z3ZIK8K24C" resolve="array" />
                <node concept="2OqwBi" id="3QNkN21Mw66" role="37wK5m">
                  <node concept="2OqwBi" id="3QNkN21Mw67" role="2Oq$k0">
                    <node concept="13iPFW" id="3QNkN21Mw68" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3QNkN21Mw69" role="2OqNvi">
                      <ref role="3TtcxE" to="64hz:2hQb6UNsfOa" resolve="formats" />
                    </node>
                  </node>
                  <node concept="3$u5V9" id="3QNkN21Mw6a" role="2OqNvi">
                    <node concept="1bVj0M" id="3QNkN21Mw6b" role="23t8la">
                      <node concept="3clFbS" id="3QNkN21Mw6c" role="1bW5cS">
                        <node concept="3clFbF" id="3QNkN21Mw6d" role="3cqZAp">
                          <node concept="2YIFZM" id="3QNkN21Mw6e" role="3clFbG">
                            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                            <ref role="37wK5l" to="98p5:4$rLBnukMwb" resolve="objectOf" />
                            <node concept="1bVj0M" id="3QNkN21Mw6f" role="37wK5m">
                              <node concept="3clFbS" id="3QNkN21Mw6g" role="1bW5cS">
                                <node concept="2n63Yl" id="3QNkN21Mw6h" role="3cqZAp">
                                  <node concept="2YIFZM" id="3QNkN21Mx5i" role="2n6tg2">
                                    <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
                                    <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                                    <node concept="Xl_RD" id="3QNkN21Mx5j" role="37wK5m">
                                      <property role="Xl_RC" value="format" />
                                    </node>
                                    <node concept="2OqwBi" id="3QNkN21Mx5k" role="37wK5m">
                                      <node concept="37vLTw" id="3QNkN21Mx5l" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3QNkN21Mw6n" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="3QNkN21Mx5m" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3QNkN21Mw6n" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3QNkN21Mw6o" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4$rLBnunhdq" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4$rLBnutptO">
    <ref role="13h7C2" to="64hz:2hQb6UNyLA0" resolve="JsonReferable" />
    <node concept="13hLZK" id="4$rLBnutptP" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnutptQ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4$rLBnutptZ" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="refString" />
      <node concept="3Tm1VV" id="4$rLBnutpu0" role="1B3o_S" />
      <node concept="17QB3L" id="4$rLBnutpuf" role="3clF45" />
      <node concept="3clFbS" id="4$rLBnutpu2" role="3clF47">
        <node concept="3clFbF" id="4$rLBnutpv3" role="3cqZAp">
          <node concept="3cpWs3" id="4$rLBnutqw8" role="3clFbG">
            <node concept="2OqwBi" id="4$rLBnutra7" role="3uHU7w">
              <node concept="2OqwBi" id="4$rLBnutqEf" role="2Oq$k0">
                <node concept="13iPFW" id="4$rLBnutqwf" role="2Oq$k0" />
                <node concept="2yIwOk" id="4$rLBnutqSb" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="4$rLBnutrtG" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="Xl_RD" id="4$rLBnutpv2" role="3uHU7B">
              <property role="Xl_RC" value="!!! refString() not implemented by " />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6z3ZIK8JlND">
    <ref role="13h7C2" to="64hz:6$03NoGms0o" resolve="JsonNumberType" />
    <node concept="13hLZK" id="6z3ZIK8JlNE" role="13h7CW">
      <node concept="3clFbS" id="6z3ZIK8JlNF" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8NAEa" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="6z3ZIK8NAEb" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8NAEu" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8NAJ9" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8NAIZ" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8NAPm" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8NAPG" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8NAPH" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8NAW2" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8NAW3" role="2n6tg2">
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" to="98p5:4$rLBnul_rJ" resolve="typedAs" />
                      <node concept="Xl_RD" id="6z3ZIK8NAW4" role="37wK5m">
                        <property role="Xl_RC" value="number" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6z3ZIK8NAEv" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8NAEw" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6z3ZIK8JDfO">
    <ref role="13h7C2" to="64hz:6$03NoGnwKy" resolve="JsonExternalRef" />
    <node concept="13hLZK" id="6z3ZIK8JDfP" role="13h7CW">
      <node concept="3clFbS" id="6z3ZIK8JDfQ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8NB6j" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="6z3ZIK8NB6k" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8NB6B" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8NBfi" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8NBf8" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8NBlv" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8NBlP" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8NBlQ" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8NBrm" role="3cqZAp">
                    <node concept="2YIFZM" id="3QNkN21Md0T" role="2n6tg2">
                      <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="3QNkN21Md0U" role="37wK5m">
                        <property role="Xl_RC" value="$ref" />
                      </node>
                      <node concept="2OqwBi" id="3QNkN21Md0V" role="37wK5m">
                        <node concept="13iPFW" id="3QNkN21Md0W" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3QNkN21Md0X" role="2OqNvi">
                          <ref role="3TsBF5" to="64hz:6$03NoGnwK_" resolve="refUri" />
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
      <node concept="A3Dl8" id="6z3ZIK8NB6C" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8NB6D" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6z3ZIK8JXCR">
    <ref role="13h7C2" to="64hz:2hQb6UNpvxZ" resolve="JsonRegularProperty" />
    <node concept="13hLZK" id="6z3ZIK8JXCS" role="13h7CW">
      <node concept="3clFbS" id="6z3ZIK8JXCT" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8K7u1" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asJson" />
      <ref role="13i0hy" node="6z3ZIK8JXDd" resolve="asJson" />
      <node concept="3Tm1VV" id="6z3ZIK8K7u2" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8K7uj" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8K7$5" role="3cqZAp">
          <node concept="2YIFZM" id="6z3ZIK8K7AP" role="3clFbG">
            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
            <ref role="37wK5l" to="98p5:4$rLBnukMwb" resolve="objectOf" />
            <node concept="1bVj0M" id="6z3ZIK8K7Br" role="37wK5m">
              <node concept="3clFbS" id="6z3ZIK8K7Bs" role="1bW5cS">
                <node concept="3clFbJ" id="6z3ZIK8K7Jx" role="3cqZAp">
                  <node concept="2OqwBi" id="6z3ZIK8K8JB" role="3clFbw">
                    <node concept="2OqwBi" id="6z3ZIK8K7YF" role="2Oq$k0">
                      <node concept="13iPFW" id="6z3ZIK8K7Mf" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6z3ZIK8K8hM" role="2OqNvi">
                        <ref role="3TsBF5" to="64hz:6$03NoGmDyl" resolve="description" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="6z3ZIK8K9fI" role="2OqNvi" />
                  </node>
                  <node concept="3clFbS" id="6z3ZIK8K7Jz" role="3clFbx">
                    <node concept="2n63Yl" id="6z3ZIK8K9kI" role="3cqZAp">
                      <node concept="2YIFZM" id="3QNkN21Mq2b" role="2n6tg2">
                        <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                        <node concept="Xl_RD" id="3QNkN21Mq2c" role="37wK5m">
                          <property role="Xl_RC" value="description" />
                        </node>
                        <node concept="2OqwBi" id="3QNkN21Mq2d" role="37wK5m">
                          <node concept="13iPFW" id="3QNkN21Mq2e" role="2Oq$k0" />
                          <node concept="3TrcHB" id="3QNkN21Mq2f" role="2OqNvi">
                            <ref role="3TsBF5" to="64hz:6$03NoGmDyl" resolve="description" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="_Z6PX" id="6z3ZIK8KaEJ" role="3cqZAp">
                  <node concept="2OqwBi" id="6z3ZIK8Kc7b" role="_Z9Zf">
                    <node concept="2OqwBi" id="6z3ZIK8Kbdj" role="2Oq$k0">
                      <node concept="13iPFW" id="6z3ZIK8KaLM" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6z3ZIK8Kb$M" role="2OqNvi">
                        <ref role="3Tt5mk" to="64hz:4$rLBnuqZXm" resolve="type" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="6z3ZIK8KcsT" role="2OqNvi">
                      <ref role="37wK5l" node="6z3ZIK8JXLy" resolve="asPairs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6z3ZIK8K7uk" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6z3ZIK8JXD2">
    <ref role="13h7C2" to="64hz:4$rLBnuqZXj" resolve="JsonProperty" />
    <node concept="13hLZK" id="6z3ZIK8JXD3" role="13h7CW">
      <node concept="3clFbS" id="6z3ZIK8JXD4" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8JXDd" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="asJson" />
      <node concept="3Tm1VV" id="6z3ZIK8JXDe" role="1B3o_S" />
      <node concept="3Tqbb2" id="6z3ZIK8JXD_" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3clFbS" id="6z3ZIK8JXDg" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8K3IH" role="3cqZAp">
          <node concept="2YIFZM" id="6z3ZIK8K3Lt" role="3clFbG">
            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
            <ref role="37wK5l" to="98p5:4$rLBnukMwb" resolve="objectOf" />
            <node concept="1bVj0M" id="6z3ZIK8K3M3" role="37wK5m">
              <node concept="3clFbS" id="6z3ZIK8K3M4" role="1bW5cS">
                <node concept="2n63Yl" id="6z3ZIK8K3U9" role="3cqZAp">
                  <node concept="2YIFZM" id="3QNkN21MnQ6" role="2n6tg2">
                    <ref role="37wK5l" to="98p5:6z3ZIK8JZDS" resolve="pair" />
                    <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                    <node concept="Xl_RD" id="3QNkN21MnQ7" role="37wK5m">
                      <property role="Xl_RC" value="error" />
                    </node>
                    <node concept="3cpWs3" id="3QNkN21MnQ8" role="37wK5m">
                      <node concept="2OqwBi" id="3QNkN21MnQ9" role="3uHU7w">
                        <node concept="2OqwBi" id="3QNkN21MnQa" role="2Oq$k0">
                          <node concept="13iPFW" id="3QNkN21MnQb" role="2Oq$k0" />
                          <node concept="2yIwOk" id="3QNkN21MnQc" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="3QNkN21MnQd" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3QNkN21MnQe" role="3uHU7B">
                        <property role="Xl_RC" value="!!! asJson() not implemented by " />
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
  <node concept="13h7C7" id="6z3ZIK8K6hb">
    <ref role="13h7C2" to="64hz:6$03NoGja_c" resolve="JsonPatternProperty" />
    <node concept="13hLZK" id="6z3ZIK8K6hc" role="13h7CW">
      <node concept="3clFbS" id="6z3ZIK8K6hd" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8K6hm" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asJson" />
      <ref role="13i0hy" node="6z3ZIK8JXDd" resolve="asJson" />
      <node concept="3Tm1VV" id="6z3ZIK8K6hn" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8K6hC" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8K6hH" role="3cqZAp">
          <node concept="2YIFZM" id="6z3ZIK8LX9S" role="3clFbG">
            <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
            <ref role="37wK5l" to="98p5:4$rLBnukINa" resolve="objectOf" />
            <node concept="2OqwBi" id="6z3ZIK8LXa9" role="37wK5m">
              <node concept="2OqwBi" id="6z3ZIK8LXaa" role="2Oq$k0">
                <node concept="13iPFW" id="6z3ZIK8LXab" role="2Oq$k0" />
                <node concept="3TrEf2" id="6z3ZIK8LXac" role="2OqNvi">
                  <ref role="3Tt5mk" to="64hz:4$rLBnuqZXm" resolve="type" />
                </node>
              </node>
              <node concept="2qgKlT" id="6z3ZIK8LXad" role="2OqNvi">
                <ref role="37wK5l" node="6z3ZIK8JXLy" resolve="asPairs" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6z3ZIK8K6hD" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5uyaFvvEGbr">
    <ref role="13h7C2" to="64hz:5uyaFvvEFAb" resolve="JsonSumType" />
    <node concept="13hLZK" id="5uyaFvvEGbs" role="13h7CW">
      <node concept="3clFbS" id="5uyaFvvEGbt" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5uyaFvvEGbA" role="13h7CS">
      <property role="TrG5h" value="asPairs" />
      <node concept="3Tm1VV" id="5uyaFvvEGbB" role="1B3o_S" />
      <node concept="A3Dl8" id="5uyaFvvEGbQ" role="3clF45">
        <node concept="3Tqbb2" id="5uyaFvvEGeo" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
      <node concept="3clFbS" id="5uyaFvvEGbD" role="3clF47">
        <node concept="3clFbF" id="5uyaFvvEGjB" role="3cqZAp">
          <node concept="2ShNRf" id="5uyaFvvEGjC" role="3clFbG">
            <node concept="kMnCb" id="5uyaFvvEGjD" role="2ShVmc">
              <node concept="1bVj0M" id="5uyaFvvEGjE" role="kMx8a">
                <node concept="3clFbS" id="5uyaFvvEGjF" role="1bW5cS">
                  <node concept="2n63Yl" id="5uyaFvvEGjJ" role="3cqZAp">
                    <node concept="2YIFZM" id="3QNkN21MzwS" role="2n6tg2">
                      <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="2OqwBi" id="3QNkN21MzwT" role="37wK5m">
                        <node concept="2OqwBi" id="3QNkN21MzwU" role="2Oq$k0">
                          <node concept="13iPFW" id="3QNkN21MzwV" role="2Oq$k0" />
                          <node concept="2yIwOk" id="3QNkN21MzwW" role="2OqNvi" />
                        </node>
                        <node concept="3n3YKJ" id="3QNkN21MzwX" role="2OqNvi" />
                      </node>
                      <node concept="2YIFZM" id="3QNkN21MzwY" role="37wK5m">
                        <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                        <ref role="37wK5l" to="98p5:6z3ZIK8K24C" resolve="array" />
                        <node concept="2OqwBi" id="3QNkN21MzwZ" role="37wK5m">
                          <node concept="2OqwBi" id="3QNkN21Mzx0" role="2Oq$k0">
                            <node concept="13iPFW" id="3QNkN21Mzx1" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="3QNkN21Mzx2" role="2OqNvi">
                              <ref role="3TtcxE" to="64hz:5uyaFvvEFNs" resolve="types" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="3QNkN21Mzx3" role="2OqNvi">
                            <node concept="1bVj0M" id="3QNkN21Mzx4" role="23t8la">
                              <node concept="3clFbS" id="3QNkN21Mzx5" role="1bW5cS">
                                <node concept="3clFbF" id="3QNkN21Mzx6" role="3cqZAp">
                                  <node concept="2OqwBi" id="3QNkN21Mzx7" role="3clFbG">
                                    <node concept="37vLTw" id="3QNkN21Mzx8" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3QNkN21Mzxa" resolve="it" />
                                    </node>
                                    <node concept="2qgKlT" id="3QNkN21Mzx9" role="2OqNvi">
                                      <ref role="37wK5l" node="6z3ZIK8Q5WV" resolve="asJson" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="3QNkN21Mzxa" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="3QNkN21Mzxb" role="1tU5fm" />
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
      </node>
      <node concept="37vLTG" id="5uyaFvvEGf4" role="3clF46">
        <property role="TrG5h" value="metaType" />
        <node concept="17QB3L" id="5uyaFvvEGf3" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5uyaFvvEItv">
    <ref role="13h7C2" to="64hz:5uyaFvvEF_p" resolve="JsonAnyOf" />
    <node concept="13hLZK" id="5uyaFvvEItw" role="13h7CW">
      <node concept="3clFbS" id="5uyaFvvEItx" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5uyaFvvEItE" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="5uyaFvvEItF" role="1B3o_S" />
      <node concept="3clFbS" id="5uyaFvvEItY" role="3clF47">
        <node concept="3clFbF" id="5uyaFvvEIMP" role="3cqZAp">
          <node concept="BsUDl" id="5uyaFvvEIMO" role="3clFbG">
            <ref role="37wK5l" node="5uyaFvvEGbA" resolve="asPairs" />
            <node concept="Xl_RD" id="5uyaFvvEINs" role="37wK5m">
              <property role="Xl_RC" value="anyOf" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5uyaFvvEItZ" role="3clF45">
        <node concept="3Tqbb2" id="5uyaFvvEIu0" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5uyaFvvGvvT">
    <ref role="13h7C2" to="64hz:5uyaFvvGuLw" resolve="JsonAllOf" />
    <node concept="13hLZK" id="5uyaFvvGvvU" role="13h7CW">
      <node concept="3clFbS" id="5uyaFvvGvvV" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5uyaFvvGvw4" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="5uyaFvvGvw5" role="1B3o_S" />
      <node concept="3clFbS" id="5uyaFvvGvwo" role="3clF47">
        <node concept="3clFbF" id="5uyaFvvGv$P" role="3cqZAp">
          <node concept="BsUDl" id="5uyaFvvGv$O" role="3clFbG">
            <ref role="37wK5l" node="5uyaFvvEGbA" resolve="asPairs" />
            <node concept="Xl_RD" id="5uyaFvvGv_s" role="37wK5m">
              <property role="Xl_RC" value="allOf" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5uyaFvvGvwp" role="3clF45">
        <node concept="3Tqbb2" id="5uyaFvvGvwq" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="KZZITVYk1Q">
    <ref role="13h7C2" to="64hz:KZZITVYgUp" resolve="JsonConst" />
    <node concept="13hLZK" id="KZZITVYk1R" role="13h7CW">
      <node concept="3clFbS" id="KZZITVYk1S" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="KZZITVYk21" role="13h7CS">
      <property role="TrG5h" value="asPairs" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asPairs" />
      <node concept="3Tm1VV" id="KZZITVYk22" role="1B3o_S" />
      <node concept="3clFbS" id="KZZITVYkfQ" role="3clF47">
        <node concept="3clFbF" id="KZZITW0Ne0" role="3cqZAp">
          <node concept="2ShNRf" id="KZZITW0NdW" role="3clFbG">
            <node concept="kMnCb" id="KZZITW0Opx" role="2ShVmc">
              <node concept="1bVj0M" id="KZZITW0OpT" role="kMx8a">
                <node concept="3clFbS" id="KZZITW0OpU" role="1bW5cS">
                  <node concept="2n63Yl" id="KZZITW0OtO" role="3cqZAp">
                    <node concept="2YIFZM" id="KZZITW0OYL" role="2n6tg2">
                      <ref role="37wK5l" to="98p5:4$rLBnumK0P" resolve="pair" />
                      <ref role="1Pybhc" to="98p5:4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="KZZITW0P0N" role="37wK5m">
                        <property role="Xl_RC" value="const" />
                      </node>
                      <node concept="2OqwBi" id="KZZITW0Pkg" role="37wK5m">
                        <node concept="13iPFW" id="KZZITW0P84" role="2Oq$k0" />
                        <node concept="3TrEf2" id="KZZITW0Pyb" role="2OqNvi">
                          <ref role="3Tt5mk" to="64hz:KZZITVYgUs" resolve="value" />
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
      <node concept="A3Dl8" id="KZZITVYkfR" role="3clF45">
        <node concept="3Tqbb2" id="KZZITVYkfS" role="A3Ik2">
          <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
        </node>
      </node>
    </node>
  </node>
</model>

