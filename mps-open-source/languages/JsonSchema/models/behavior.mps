<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1bb62361-461e-46f8-b718-18c46702e73a(JsonSchema.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="b5c0bb04-c583-4b2a-a66e-1eab92d33c68" name="com.mbeddr.mpsutil.json" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="0" />
  </languages>
  <imports>
    <import index="21pk" ref="r:be665d13-1e1d-44cd-9817-8bd4d610f422(com.mbeddr.mpsutil.json.structure)" />
    <import index="64hz" ref="r:eca5c7f5-86ab-4d3c-9b6b-cf6848ecd9e6(JsonSchema.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
      </concept>
      <concept id="1228997946467" name="jetbrains.mps.baseLanguage.closures.structure.YieldAllStatement" flags="nn" index="_Z6PX">
        <child id="1228997959377" name="expression" index="_Z9Zf" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785118" name="jetbrains.mps.lang.quotation.structure.ListAntiquotation" flags="ng" index="2c44t8" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="1196866233735" name="jetbrains.mps.lang.quotation.structure.PropertyAntiquotation" flags="ng" index="2EMmih" />
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="b5c0bb04-c583-4b2a-a66e-1eab92d33c68" name="com.mbeddr.mpsutil.json">
      <concept id="4342692121161029323" name="com.mbeddr.mpsutil.json.structure.String" flags="ng" index="3YX86M">
        <property id="4342692121161029326" name="value" index="3YX86R" />
      </concept>
      <concept id="4342692121161028983" name="com.mbeddr.mpsutil.json.structure.Variable" flags="ng" index="3YX88e">
        <child id="4342692121161029096" name="value" index="3YX8ah" />
      </concept>
      <concept id="4342692121161028982" name="com.mbeddr.mpsutil.json.structure.JSONObject" flags="ng" index="3YX88f">
        <child id="4342692121161029321" name="variables" index="3YX86K" />
      </concept>
      <concept id="4342692121161029095" name="com.mbeddr.mpsutil.json.structure.IValue" flags="ng" index="3YX8au" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
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
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
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
        <ref role="ehGHo" to="21pk:3L4lRB2GdlQ" resolve="JSONObject" />
      </node>
      <node concept="3clFbS" id="4$rLBnuijZw" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8PF8x" role="3cqZAp">
          <node concept="2YIFZM" id="6z3ZIK8PFc9" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnukMwb" resolve="objectOf" />
            <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
            <node concept="1bVj0M" id="6z3ZIK8PFfc" role="37wK5m">
              <node concept="3clFbS" id="6z3ZIK8PFfd" role="1bW5cS">
                <node concept="3clFbJ" id="6z3ZIK8PFp0" role="3cqZAp">
                  <node concept="3clFbS" id="6z3ZIK8PFp1" role="3clFbx">
                    <node concept="2n63Yl" id="6z3ZIK8PFp2" role="3cqZAp">
                      <node concept="2c44tf" id="6z3ZIK8PFp3" role="2n6tg2">
                        <node concept="3YX88e" id="6z3ZIK8PFp4" role="2c44tc">
                          <property role="TrG5h" value="id" />
                          <node concept="3YX86M" id="6z3ZIK8PFp5" role="3YX8ah">
                            <node concept="2EMmih" id="6z3ZIK8PFp6" role="lGtFl">
                              <property role="P4ACc" value="b5c0bb04-c583-4b2a-a66e-1eab92d33c68/4342692121161029323/4342692121161029326" />
                              <property role="2qtEX9" value="value" />
                              <node concept="2OqwBi" id="6z3ZIK8PFp7" role="2c44t1">
                                <node concept="13iPFW" id="6z3ZIK8PFp8" role="2Oq$k0" />
                                <node concept="3TrcHB" id="6z3ZIK8PFp9" role="2OqNvi">
                                  <ref role="3TsBF5" to="64hz:2hQb6UNptUo" resolve="id" />
                                </node>
                              </node>
                            </node>
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
                <node concept="2n63Yl" id="5uyaFvvC8Ai" role="3cqZAp">
                  <node concept="2c44tf" id="5uyaFvvCa5t" role="2n6tg2">
                    <node concept="3YX88e" id="5uyaFvvCawI" role="2c44tc">
                      <property role="TrG5h" value="$schema" />
                      <node concept="3YX86M" id="5uyaFvvCaRa" role="3YX8ah">
                        <property role="3YX86R" value="http://json-schema.org/draft-07/schema#" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6z3ZIK8PFpf" role="3cqZAp">
                  <node concept="3clFbS" id="6z3ZIK8PFpg" role="3clFbx">
                    <node concept="2n63Yl" id="6z3ZIK8PFph" role="3cqZAp">
                      <node concept="2c44tf" id="6z3ZIK8PFpi" role="2n6tg2">
                        <node concept="3YX88e" id="6z3ZIK8PFpj" role="2c44tc">
                          <property role="TrG5h" value="title" />
                          <node concept="3YX86M" id="6z3ZIK8PFpk" role="3YX8ah">
                            <node concept="2EMmih" id="6z3ZIK8PFpl" role="lGtFl">
                              <property role="P4ACc" value="b5c0bb04-c583-4b2a-a66e-1eab92d33c68/4342692121161029323/4342692121161029326" />
                              <property role="2qtEX9" value="value" />
                              <node concept="2OqwBi" id="6z3ZIK8PFpm" role="2c44t1">
                                <node concept="13iPFW" id="6z3ZIK8PFpn" role="2Oq$k0" />
                                <node concept="3TrcHB" id="6z3ZIK8PFpo" role="2OqNvi">
                                  <ref role="3TsBF5" to="64hz:6$03NoGlxfs" resolve="title" />
                                </node>
                              </node>
                            </node>
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
                    <node concept="2n63Yl" id="6z3ZIK8PFpw" role="3cqZAp">
                      <node concept="2c44tf" id="6z3ZIK8PFpx" role="2n6tg2">
                        <node concept="3YX88e" id="6z3ZIK8PFpy" role="2c44tc">
                          <property role="TrG5h" value="description" />
                          <node concept="3YX86M" id="6z3ZIK8PFpz" role="3YX8ah">
                            <node concept="2EMmih" id="6z3ZIK8PFp$" role="lGtFl">
                              <property role="P4ACc" value="b5c0bb04-c583-4b2a-a66e-1eab92d33c68/4342692121161029323/4342692121161029326" />
                              <property role="2qtEX9" value="value" />
                              <node concept="2OqwBi" id="6z3ZIK8PFp_" role="2c44t1">
                                <node concept="13iPFW" id="6z3ZIK8PFpA" role="2Oq$k0" />
                                <node concept="3TrcHB" id="6z3ZIK8PFpB" role="2OqNvi">
                                  <ref role="3TsBF5" to="64hz:2hQb6UNpvx7" resolve="description" />
                                </node>
                              </node>
                            </node>
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
                      <ref role="37wK5l" node="6z3ZIK8JXLy" resolve="asVars" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6z3ZIK8PFpN" role="3cqZAp">
                  <node concept="3clFbS" id="6z3ZIK8PFpO" role="3clFbx">
                    <node concept="2n63Yl" id="6z3ZIK8PFpP" role="3cqZAp">
                      <node concept="2c44tf" id="6z3ZIK8PFpQ" role="2n6tg2">
                        <node concept="3YX88e" id="6z3ZIK8PFpR" role="2c44tc">
                          <property role="TrG5h" value="definitions" />
                          <node concept="3YX88f" id="6z3ZIK8PFpS" role="3YX8ah">
                            <node concept="3YX88e" id="6z3ZIK8PFpT" role="3YX86K">
                              <node concept="3YX8au" id="6z3ZIK8PFpU" role="3YX8ah" />
                              <node concept="2c44t8" id="6z3ZIK8PFpV" role="lGtFl">
                                <node concept="2OqwBi" id="6z3ZIK8PFpW" role="2c44t1">
                                  <node concept="2OqwBi" id="6z3ZIK8PFpX" role="2Oq$k0">
                                    <node concept="2OqwBi" id="6z3ZIK8PFpY" role="2Oq$k0">
                                      <node concept="13iPFW" id="6z3ZIK8PFpZ" role="2Oq$k0" />
                                      <node concept="3Tsc0h" id="6z3ZIK8PFq0" role="2OqNvi">
                                        <ref role="3TtcxE" to="64hz:2hQb6UNpvOI" resolve="definitions" />
                                      </node>
                                    </node>
                                    <node concept="3$u5V9" id="6z3ZIK8PFq1" role="2OqNvi">
                                      <node concept="1bVj0M" id="6z3ZIK8PFq2" role="23t8la">
                                        <node concept="3clFbS" id="6z3ZIK8PFq3" role="1bW5cS">
                                          <node concept="3clFbF" id="6z3ZIK8PFq4" role="3cqZAp">
                                            <node concept="2OqwBi" id="6z3ZIK8PFq5" role="3clFbG">
                                              <node concept="37vLTw" id="6z3ZIK8PFq6" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6z3ZIK8PFq8" resolve="it" />
                                              </node>
                                              <node concept="2qgKlT" id="6z3ZIK8PFq7" role="2OqNvi">
                                                <ref role="37wK5l" node="4$rLBnuj6A0" resolve="asJson" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="6z3ZIK8PFq8" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="6z3ZIK8PFq9" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="ANE8D" id="6z3ZIK8PFqa" role="2OqNvi" />
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
        <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
      </node>
      <node concept="3clFbS" id="4$rLBnuj6A3" role="3clF47">
        <node concept="3clFbF" id="4$rLBnup23E" role="3cqZAp">
          <node concept="2YIFZM" id="4$rLBnup2d6" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
            <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
            <node concept="2OqwBi" id="4$rLBnup2sR" role="37wK5m">
              <node concept="13iPFW" id="4$rLBnup2kn" role="2Oq$k0" />
              <node concept="3TrcHB" id="4$rLBnup2_Y" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="6z3ZIK8Q91t" role="37wK5m">
              <node concept="2OqwBi" id="6z3ZIK8Q8xk" role="2Oq$k0">
                <node concept="13iPFW" id="6z3ZIK8Q8oy" role="2Oq$k0" />
                <node concept="3TrEf2" id="6z3ZIK8Q8HR" role="2OqNvi">
                  <ref role="3Tt5mk" to="64hz:2hQb6UNpvOO" resolve="def" />
                </node>
              </node>
              <node concept="2qgKlT" id="6z3ZIK8Q9o_" role="2OqNvi">
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="6z3ZIK8NCCc" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8NCCv" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8NDdO" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8NDdE" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8NDk1" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8NDkn" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8NDko" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8NDo8" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8NDo9" role="2n6tg2">
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" node="4$rLBnul_rJ" resolve="typedAs" />
                      <node concept="Xl_RD" id="6z3ZIK8NDoa" role="37wK5m">
                        <property role="Xl_RC" value="object" />
                      </node>
                    </node>
                  </node>
                  <node concept="2n63Yl" id="6z3ZIK8NDob" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8NDoc" role="2n6tg2">
                      <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="6z3ZIK8NDod" role="37wK5m">
                        <property role="Xl_RC" value="properties" />
                      </node>
                      <node concept="2YIFZM" id="6z3ZIK8NDoe" role="37wK5m">
                        <ref role="37wK5l" node="4$rLBnukINa" resolve="objectOf" />
                        <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                        <node concept="2OqwBi" id="6z3ZIK8NDof" role="37wK5m">
                          <node concept="2OqwBi" id="6z3ZIK8NDog" role="2Oq$k0">
                            <node concept="13iPFW" id="6z3ZIK8NDoh" role="2Oq$k0" />
                            <node concept="2qgKlT" id="6z3ZIK8NDoi" role="2OqNvi">
                              <ref role="37wK5l" node="4$rLBnur06I" resolve="regularProperties" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="6z3ZIK8NDoj" role="2OqNvi">
                            <node concept="1bVj0M" id="6z3ZIK8NDok" role="23t8la">
                              <node concept="3clFbS" id="6z3ZIK8NDol" role="1bW5cS">
                                <node concept="3clFbF" id="6z3ZIK8NDom" role="3cqZAp">
                                  <node concept="2YIFZM" id="6z3ZIK8NDon" role="3clFbG">
                                    <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                                    <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                                    <node concept="2OqwBi" id="6z3ZIK8NDoo" role="37wK5m">
                                      <node concept="37vLTw" id="6z3ZIK8NDop" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6z3ZIK8NDou" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="6z3ZIK8NDoq" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="6z3ZIK8NDor" role="37wK5m">
                                      <node concept="37vLTw" id="6z3ZIK8NDos" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6z3ZIK8NDou" resolve="it" />
                                      </node>
                                      <node concept="2qgKlT" id="6z3ZIK8NDot" role="2OqNvi">
                                        <ref role="37wK5l" node="6z3ZIK8JXDd" resolve="asJson" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6z3ZIK8NDou" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6z3ZIK8NDov" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6z3ZIK8NDow" role="3cqZAp">
                    <node concept="3clFbS" id="6z3ZIK8NDox" role="3clFbx">
                      <node concept="2n63Yl" id="6z3ZIK8NDoy" role="3cqZAp">
                        <node concept="2YIFZM" id="6z3ZIK8NDoz" role="2n6tg2">
                          <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                          <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                          <node concept="Xl_RD" id="6z3ZIK8NDo$" role="37wK5m">
                            <property role="Xl_RC" value="patternProperties" />
                          </node>
                          <node concept="2YIFZM" id="6z3ZIK8NDo_" role="37wK5m">
                            <ref role="37wK5l" node="4$rLBnukINa" resolve="objectOf" />
                            <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                            <node concept="2OqwBi" id="6z3ZIK8NDoA" role="37wK5m">
                              <node concept="2OqwBi" id="6z3ZIK8NDoB" role="2Oq$k0">
                                <node concept="13iPFW" id="6z3ZIK8NDoC" role="2Oq$k0" />
                                <node concept="2qgKlT" id="6z3ZIK8NDoD" role="2OqNvi">
                                  <ref role="37wK5l" node="4$rLBnur4T3" resolve="patternProperties" />
                                </node>
                              </node>
                              <node concept="3$u5V9" id="6z3ZIK8NDoE" role="2OqNvi">
                                <node concept="1bVj0M" id="6z3ZIK8NDoF" role="23t8la">
                                  <node concept="3clFbS" id="6z3ZIK8NDoG" role="1bW5cS">
                                    <node concept="3clFbF" id="6z3ZIK8NDoH" role="3cqZAp">
                                      <node concept="2YIFZM" id="6z3ZIK8NDoI" role="3clFbG">
                                        <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                                        <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                                        <node concept="2OqwBi" id="6z3ZIK8NDoJ" role="37wK5m">
                                          <node concept="37vLTw" id="6z3ZIK8NDoK" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6z3ZIK8NDoP" resolve="it" />
                                          </node>
                                          <node concept="3TrcHB" id="6z3ZIK8NDoL" role="2OqNvi">
                                            <ref role="3TsBF5" to="64hz:6$03NoGja_d" resolve="pattern" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="6z3ZIK8NDoM" role="37wK5m">
                                          <node concept="37vLTw" id="6z3ZIK8NDoN" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6z3ZIK8NDoP" resolve="it" />
                                          </node>
                                          <node concept="2qgKlT" id="6z3ZIK8NDoO" role="2OqNvi">
                                            <ref role="37wK5l" node="6z3ZIK8JXDd" resolve="asJson" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="6z3ZIK8NDoP" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="6z3ZIK8NDoQ" role="1tU5fm" />
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
                  <node concept="2n63Yl" id="6z3ZIK8NDoW" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8NDoX" role="2n6tg2">
                      <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="6z3ZIK8NDoY" role="37wK5m">
                        <property role="Xl_RC" value="required" />
                      </node>
                      <node concept="2YIFZM" id="6z3ZIK8NDoZ" role="37wK5m">
                        <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                        <ref role="37wK5l" node="4$rLBnujVDH" resolve="strings" />
                        <node concept="2OqwBi" id="6z3ZIK8NDp0" role="37wK5m">
                          <node concept="2OqwBi" id="6z3ZIK8NDp1" role="2Oq$k0">
                            <node concept="13iPFW" id="6z3ZIK8NDp2" role="2Oq$k0" />
                            <node concept="2qgKlT" id="6z3ZIK8NDp3" role="2OqNvi">
                              <ref role="37wK5l" node="4$rLBnujPEt" resolve="requiredProperties" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="6z3ZIK8NDp4" role="2OqNvi">
                            <node concept="1bVj0M" id="6z3ZIK8NDp5" role="23t8la">
                              <node concept="3clFbS" id="6z3ZIK8NDp6" role="1bW5cS">
                                <node concept="3clFbF" id="6z3ZIK8NDp7" role="3cqZAp">
                                  <node concept="2OqwBi" id="6z3ZIK8NDp8" role="3clFbG">
                                    <node concept="37vLTw" id="6z3ZIK8NDp9" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6z3ZIK8NDpb" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="6z3ZIK8NDpa" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6z3ZIK8NDpb" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6z3ZIK8NDpc" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="ZBzBlOHb6" role="3cqZAp">
                    <node concept="3clFbS" id="ZBzBlOHb8" role="3clFbx">
                      <node concept="2n63Yl" id="6z3ZIK8NDpd" role="3cqZAp">
                        <node concept="2YIFZM" id="6z3ZIK8NDpe" role="2n6tg2">
                          <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                          <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                          <node concept="Xl_RD" id="6z3ZIK8NDpf" role="37wK5m">
                            <property role="Xl_RC" value="additionalProperties" />
                          </node>
                          <node concept="2OqwBi" id="ZBzBlOFul" role="37wK5m">
                            <node concept="2OqwBi" id="ZBzBlOEfu" role="2Oq$k0">
                              <node concept="13iPFW" id="ZBzBlODVk" role="2Oq$k0" />
                              <node concept="3TrEf2" id="ZBzBlOERj" role="2OqNvi">
                                <ref role="3Tt5mk" to="64hz:6qrN1nFkMB" resolve="additionalPropertiesType" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="ZBzBlOGfn" role="2OqNvi">
                              <ref role="37wK5l" node="6z3ZIK8Q5WV" resolve="asJson" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="ZBzBlOKZh" role="3clFbw">
                      <node concept="10Nm6u" id="ZBzBlOLs6" role="3uHU7w" />
                      <node concept="2OqwBi" id="ZBzBlOHY8" role="3uHU7B">
                        <node concept="13iPFW" id="ZBzBlOHDN" role="2Oq$k0" />
                        <node concept="3TrEf2" id="ZBzBlOKkW" role="2OqNvi">
                          <ref role="3Tt5mk" to="64hz:6qrN1nFkMB" resolve="additionalPropertiesType" />
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
      <node concept="A3Dl8" id="6z3ZIK8NCCw" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8NCCx" role="A3Ik2">
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="6z3ZIK8NbLv" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8NbLM" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8NbWT" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8NbWJ" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8Nc36" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8Nc3s" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8Nc3t" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8Nc7d" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8Nc7e" role="2n6tg2">
                      <ref role="37wK5l" node="4$rLBnul_rJ" resolve="typedAs" />
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="6z3ZIK8Nc7f" role="37wK5m">
                        <property role="Xl_RC" value="array" />
                      </node>
                    </node>
                  </node>
                  <node concept="2n63Yl" id="6z3ZIK8Nc7g" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8Nc7h" role="2n6tg2">
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                      <node concept="Xl_RD" id="6z3ZIK8Nc7i" role="37wK5m">
                        <property role="Xl_RC" value="minItems" />
                      </node>
                      <node concept="2YIFZM" id="6z3ZIK8Nc7j" role="37wK5m">
                        <ref role="37wK5l" node="4$rLBnupB74" resolve="integer" />
                        <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                        <node concept="2OqwBi" id="6z3ZIK8Nc7k" role="37wK5m">
                          <node concept="13iPFW" id="6z3ZIK8Nc7l" role="2Oq$k0" />
                          <node concept="3TrcHB" id="6z3ZIK8Nc7m" role="2OqNvi">
                            <ref role="3TsBF5" to="64hz:2hQb6UNqw6G" resolve="minItems" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2n63Yl" id="6z3ZIK8Nc7n" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8Nc7o" role="2n6tg2">
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                      <node concept="Xl_RD" id="6z3ZIK8Nc7p" role="37wK5m">
                        <property role="Xl_RC" value="items" />
                      </node>
                      <node concept="2OqwBi" id="6z3ZIK8Q7En" role="37wK5m">
                        <node concept="2OqwBi" id="6z3ZIK8Q6ZX" role="2Oq$k0">
                          <node concept="13iPFW" id="6z3ZIK8Q6OD" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6z3ZIK8Q7oq" role="2OqNvi">
                            <ref role="3Tt5mk" to="64hz:2hQb6UNqw6I" resolve="itemsType" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="6z3ZIK8Q7YN" role="2OqNvi">
                          <ref role="37wK5l" node="6z3ZIK8Q5WV" resolve="asJson" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6z3ZIK8Nc7v" role="3cqZAp">
                    <node concept="3clFbS" id="6z3ZIK8Nc7w" role="3clFbx">
                      <node concept="2n63Yl" id="6z3ZIK8Nc7x" role="3cqZAp">
                        <node concept="2YIFZM" id="6z3ZIK8Nc7y" role="2n6tg2">
                          <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                          <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                          <node concept="Xl_RD" id="6z3ZIK8Nc7z" role="37wK5m">
                            <property role="Xl_RC" value="uniqueItems" />
                          </node>
                          <node concept="2YIFZM" id="6z3ZIK8Nc7$" role="37wK5m">
                            <ref role="37wK5l" node="4$rLBnuk$Oo" resolve="bool" />
                            <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                            <node concept="2OqwBi" id="6z3ZIK8Nc7_" role="37wK5m">
                              <node concept="13iPFW" id="6z3ZIK8Nc7A" role="2Oq$k0" />
                              <node concept="3TrcHB" id="6z3ZIK8Nc7B" role="2OqNvi">
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
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4$rLBnujVD2">
    <property role="TrG5h" value="JsonFactory" />
    <node concept="2tJIrI" id="4$rLBnujVDs" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnujVDH" role="jymVt">
      <property role="TrG5h" value="strings" />
      <node concept="3Tqbb2" id="4$rLBnuqoPZ" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdnJ" resolve="Array" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnujVDK" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnujVDL" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8K2tO" role="3cqZAp">
          <node concept="1rXfSq" id="6z3ZIK8K2tM" role="3clFbG">
            <ref role="37wK5l" node="6z3ZIK8K24C" resolve="array" />
            <node concept="2OqwBi" id="6z3ZIK8K2JP" role="37wK5m">
              <node concept="37vLTw" id="6z3ZIK8K2JQ" role="2Oq$k0">
                <ref role="3cqZAo" node="4$rLBnujVFc" resolve="strings" />
              </node>
              <node concept="3$u5V9" id="6z3ZIK8K2JR" role="2OqNvi">
                <node concept="1bVj0M" id="6z3ZIK8K2JS" role="23t8la">
                  <node concept="3clFbS" id="6z3ZIK8K2JT" role="1bW5cS">
                    <node concept="3clFbF" id="6z3ZIK8K2JU" role="3cqZAp">
                      <node concept="1rXfSq" id="6z3ZIK8K2JV" role="3clFbG">
                        <ref role="37wK5l" node="4$rLBnumqdU" resolve="string" />
                        <node concept="37vLTw" id="6z3ZIK8K2JW" role="37wK5m">
                          <ref role="3cqZAo" node="6z3ZIK8K2JX" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6z3ZIK8K2JX" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6z3ZIK8K2JY" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4$rLBnujVFc" role="3clF46">
        <property role="TrG5h" value="strings" />
        <node concept="A3Dl8" id="4$rLBnujVFa" role="1tU5fm">
          <node concept="17QB3L" id="4$rLBnujVFB" role="A3Ik2" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6z3ZIK8K1Yv" role="jymVt" />
    <node concept="2YIFZL" id="6z3ZIK8K24C" role="jymVt">
      <property role="TrG5h" value="array" />
      <node concept="3Tqbb2" id="6z3ZIK8K285" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdnJ" resolve="Array" />
      </node>
      <node concept="3Tm1VV" id="6z3ZIK8K24F" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8K24G" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8K2gi" role="3cqZAp">
          <node concept="2pJPEk" id="6z3ZIK8K2gg" role="3clFbG">
            <node concept="2pJPED" id="6z3ZIK8K2jy" role="2pJPEn">
              <ref role="2pJxaS" to="21pk:3L4lRB2GdnJ" resolve="Array" />
              <node concept="2pIpSj" id="6z3ZIK8K2jM" role="2pJxcM">
                <ref role="2pIpSl" to="21pk:3L4lRB2GdnM" resolve="values" />
                <node concept="36biLy" id="6z3ZIK8K2lR" role="2pJxcZ">
                  <node concept="37vLTw" id="6z3ZIK8K2pX" role="36biLW">
                    <ref role="3cqZAo" node="6z3ZIK8K2bQ" resolve="values" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6z3ZIK8K2bQ" role="3clF46">
        <property role="TrG5h" value="values" />
        <node concept="A3Dl8" id="6z3ZIK8K2bO" role="1tU5fm">
          <node concept="3Tqbb2" id="6z3ZIK8K2cZ" role="A3Ik2">
            <ref role="ehGHo" to="21pk:3L4lRB2GdnB" resolve="IValue" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnuk$Mc" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnuk$Oo" role="jymVt">
      <property role="TrG5h" value="bool" />
      <node concept="3Tqbb2" id="4$rLBnuk$Pt" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdnE" resolve="Boolean" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnuk$Or" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnuk$Os" role="3clF47">
        <node concept="3clFbF" id="4$rLBnuk$RO" role="3cqZAp">
          <node concept="2pJPEk" id="4$rLBnuk$RM" role="3clFbG">
            <node concept="2pJPED" id="4$rLBnuk$V4" role="2pJPEn">
              <ref role="2pJxaS" to="21pk:3L4lRB2GdnE" resolve="Boolean" />
              <node concept="2pJxcG" id="4$rLBnuk$X4" role="2pJxcM">
                <ref role="2pJxcJ" to="21pk:3L4lRB2GdnH" resolve="value" />
                <node concept="37vLTw" id="4$rLBnuk$ZO" role="2pJxcZ">
                  <ref role="3cqZAo" node="4$rLBnuk$Q_" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4$rLBnuk$Q_" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10P_77" id="4$rLBnuk$Q$" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnumq7R" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnumqdU" role="jymVt">
      <property role="TrG5h" value="string" />
      <node concept="3Tqbb2" id="4$rLBnumqhc" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2Gdrb" resolve="String" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnumqdX" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnumqdY" role="3clF47">
        <node concept="3clFbF" id="4$rLBnumqlL" role="3cqZAp">
          <node concept="2pJPEk" id="4$rLBnumqlJ" role="3clFbG">
            <node concept="2pJPED" id="4$rLBnumqr1" role="2pJPEn">
              <ref role="2pJxaS" to="21pk:3L4lRB2Gdrb" resolve="String" />
              <node concept="2pJxcG" id="4$rLBnumqt1" role="2pJxcM">
                <ref role="2pJxcJ" to="21pk:3L4lRB2Gdre" resolve="value" />
                <node concept="37vLTw" id="4$rLBnumqwl" role="2pJxcZ">
                  <ref role="3cqZAo" node="4$rLBnumqjC" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4$rLBnumqjC" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="4$rLBnumqjB" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnupB07" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnupB74" role="jymVt">
      <property role="TrG5h" value="integer" />
      <node concept="3Tqbb2" id="4$rLBnupBaN" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2Gdrg" resolve="Number" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnupB77" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnupB78" role="3clF47">
        <node concept="3clFbF" id="4$rLBnupBfW" role="3cqZAp">
          <node concept="2pJPEk" id="4$rLBnupBfU" role="3clFbG">
            <node concept="2pJPED" id="4$rLBnupBjc" role="2pJPEn">
              <ref role="2pJxaS" to="21pk:3L4lRB2Gdrg" resolve="Number" />
              <node concept="2pJxcG" id="4$rLBnupBlc" role="2pJxcM">
                <ref role="2pJxcJ" to="21pk:6Cwq1JbSTxh" resolve="value" />
                <node concept="3cpWs3" id="4$rLBnupBN6" role="2pJxcZ">
                  <node concept="37vLTw" id="4$rLBnupBOd" role="3uHU7w">
                    <ref role="3cqZAo" node="4$rLBnupBdr" resolve="value" />
                  </node>
                  <node concept="Xl_RD" id="4$rLBnupB_K" role="3uHU7B" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4$rLBnupBdr" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10Oyi0" id="4$rLBnupBdq" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnuk$Nz" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnukINa" role="jymVt">
      <property role="TrG5h" value="objectOf" />
      <node concept="3Tqbb2" id="4$rLBnukKKG" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdlQ" resolve="JSONObject" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnulXAc" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnukINe" role="3clF47">
        <node concept="3clFbF" id="4$rLBnukITz" role="3cqZAp">
          <node concept="2pJPEk" id="4$rLBnukITx" role="3clFbG">
            <node concept="2pJPED" id="4$rLBnukIVj" role="2pJPEn">
              <ref role="2pJxaS" to="21pk:3L4lRB2GdlQ" resolve="JSONObject" />
              <node concept="2pIpSj" id="4$rLBnukIXh" role="2pJxcM">
                <ref role="2pIpSl" to="21pk:3L4lRB2Gdr9" resolve="variables" />
                <node concept="36biLy" id="4$rLBnukLob" role="2pJxcZ">
                  <node concept="37vLTw" id="4$rLBnukLrl" role="36biLW">
                    <ref role="3cqZAo" node="4$rLBnukIQj" resolve="variables" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4$rLBnukIQj" role="3clF46">
        <property role="TrG5h" value="variables" />
        <node concept="A3Dl8" id="4$rLBnukIQh" role="1tU5fm">
          <node concept="3Tqbb2" id="4$rLBnukIQM" role="A3Ik2">
            <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnukMnX" role="jymVt" />
    <node concept="2tJIrI" id="4$rLBnulJJb" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnukMwb" role="jymVt">
      <property role="TrG5h" value="objectOf" />
      <node concept="3Tqbb2" id="4$rLBnukMy8" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdlQ" resolve="JSONObject" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnukMwe" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnukMwf" role="3clF47">
        <node concept="3clFbF" id="4$rLBnukMFD" role="3cqZAp">
          <node concept="1rXfSq" id="4$rLBnukMFC" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnukINa" resolve="objectOf" />
            <node concept="2OqwBi" id="4$rLBnukN7y" role="37wK5m">
              <node concept="37vLTw" id="4$rLBnukN7z" role="2Oq$k0">
                <ref role="3cqZAo" node="4$rLBnukMzx" resolve="variablesFunction" />
              </node>
              <node concept="1Bd96e" id="4$rLBnukN7$" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4$rLBnukMzx" role="3clF46">
        <property role="TrG5h" value="variablesFunction" />
        <node concept="1ajhzC" id="4$rLBnukMzv" role="1tU5fm">
          <node concept="A3Dl8" id="4$rLBnukM$g" role="1ajl9A">
            <node concept="3Tqbb2" id="4$rLBnukM_1" role="A3Ik2">
              <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnul_nq" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnul_rJ" role="jymVt">
      <property role="TrG5h" value="typedAs" />
      <node concept="3Tqbb2" id="4$rLBnul_ua" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnul_rM" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnul_rN" role="3clF47">
        <node concept="3clFbF" id="4$rLBnumKGx" role="3cqZAp">
          <node concept="1rXfSq" id="4$rLBnumKGv" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
            <node concept="Xl_RD" id="4$rLBnumKIp" role="37wK5m">
              <property role="Xl_RC" value="type" />
            </node>
            <node concept="1rXfSq" id="4$rLBnumKPi" role="37wK5m">
              <ref role="37wK5l" node="4$rLBnumqdU" resolve="string" />
              <node concept="37vLTw" id="4$rLBnumKTX" role="37wK5m">
                <ref role="3cqZAo" node="4$rLBnul_yh" resolve="typeName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4$rLBnul_yh" role="3clF46">
        <property role="TrG5h" value="typeName" />
        <node concept="17QB3L" id="4$rLBnul_yg" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnumJVC" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnumK0P" role="jymVt">
      <property role="TrG5h" value="var" />
      <node concept="3Tqbb2" id="4$rLBnumK4m" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnumK0S" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnumK0T" role="3clF47">
        <node concept="3clFbF" id="4$rLBnumKdY" role="3cqZAp">
          <node concept="2pJPEk" id="4$rLBnumKkf" role="3clFbG">
            <node concept="2pJPED" id="4$rLBnumKnw" role="2pJPEn">
              <ref role="2pJxaS" to="21pk:3L4lRB2GdlR" resolve="Variable" />
              <node concept="2pJxcG" id="4$rLBnumKpw" role="2pJxcM">
                <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                <node concept="37vLTw" id="4$rLBnumKyt" role="2pJxcZ">
                  <ref role="3cqZAo" node="4$rLBnumK6r" resolve="name" />
                </node>
              </node>
              <node concept="2pIpSj" id="4$rLBnumK$M" role="2pJxcM">
                <ref role="2pIpSl" to="21pk:3L4lRB2GdnC" resolve="value" />
                <node concept="36biLy" id="4$rLBnumKAW" role="2pJxcZ">
                  <node concept="37vLTw" id="4$rLBnumKEt" role="36biLW">
                    <ref role="3cqZAo" node="4$rLBnumK7x" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4$rLBnumK6r" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4$rLBnumK6q" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4$rLBnumK7x" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3Tqbb2" id="4$rLBnumK8l" role="1tU5fm">
          <ref role="ehGHo" to="21pk:3L4lRB2GdnB" resolve="IValue" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnukIOq" role="jymVt" />
    <node concept="2YIFZL" id="6z3ZIK8JZDS" role="jymVt">
      <property role="TrG5h" value="var" />
      <node concept="3Tqbb2" id="6z3ZIK8JZJ$" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
      </node>
      <node concept="3Tm1VV" id="6z3ZIK8JZDV" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8JZDW" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8JZWE" role="3cqZAp">
          <node concept="1rXfSq" id="6z3ZIK8JZWD" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
            <node concept="37vLTw" id="6z3ZIK8JZYS" role="37wK5m">
              <ref role="3cqZAo" node="6z3ZIK8JZMY" resolve="name" />
            </node>
            <node concept="1rXfSq" id="6z3ZIK8K03F" role="37wK5m">
              <ref role="37wK5l" node="4$rLBnumqdU" resolve="string" />
              <node concept="37vLTw" id="6z3ZIK8K0dt" role="37wK5m">
                <ref role="3cqZAo" node="6z3ZIK8JZOp" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6z3ZIK8JZMY" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6z3ZIK8JZMX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6z3ZIK8JZOp" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="6z3ZIK8JZQa" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6z3ZIK8JZGO" role="jymVt" />
    <node concept="3Tm1VV" id="4$rLBnujVD3" role="1B3o_S" />
  </node>
  <node concept="13h7C7" id="4$rLBnuk_vp">
    <ref role="13h7C2" to="64hz:2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    <node concept="13hLZK" id="4$rLBnuk_vq" role="13h7CW">
      <node concept="3clFbS" id="4$rLBnuk_vr" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6z3ZIK8JXLy" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="asVars" />
      <node concept="3Tm1VV" id="6z3ZIK8JXLz" role="1B3o_S" />
      <node concept="A3Dl8" id="6z3ZIK8JXR5" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8JXRi" role="A3Ik2">
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
        </node>
      </node>
      <node concept="3clFbS" id="6z3ZIK8JXL_" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8JXS7" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8JXS5" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8JYXx" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8JYXR" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8JYXS" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8JZ1C" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8JZ4Z" role="2n6tg2">
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" node="6z3ZIK8JZDS" resolve="var" />
                      <node concept="Xl_RD" id="6z3ZIK8JZ6C" role="37wK5m">
                        <property role="Xl_RC" value="error" />
                      </node>
                      <node concept="3cpWs3" id="6z3ZIK8JZhz" role="37wK5m">
                        <node concept="Xl_RD" id="6z3ZIK8JZh$" role="3uHU7B">
                          <property role="Xl_RC" value="!!! asVars() not implemented by " />
                        </node>
                        <node concept="2OqwBi" id="6z3ZIK8JZh_" role="3uHU7w">
                          <node concept="2OqwBi" id="6z3ZIK8JZhA" role="2Oq$k0">
                            <node concept="13iPFW" id="6z3ZIK8JZhB" role="2Oq$k0" />
                            <node concept="2yIwOk" id="6z3ZIK8JZhC" role="2OqNvi" />
                          </node>
                          <node concept="liA8E" id="6z3ZIK8JZhD" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
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
        <ref role="ehGHo" to="21pk:3L4lRB2GdlQ" resolve="JSONObject" />
      </node>
      <node concept="3clFbS" id="6z3ZIK8Q5WY" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8Q64u" role="3cqZAp">
          <node concept="2YIFZM" id="6z3ZIK8Q67e" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnukINa" resolve="objectOf" />
            <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
            <node concept="2OqwBi" id="6z3ZIK8Q6kD" role="37wK5m">
              <node concept="13iPFW" id="6z3ZIK8Q67O" role="2Oq$k0" />
              <node concept="2qgKlT" id="6z3ZIK8Q6yp" role="2OqNvi">
                <ref role="37wK5l" node="6z3ZIK8JXLy" resolve="asVars" />
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="6z3ZIK8MLwG" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8MLwZ" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8ML_F" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8ML_x" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8MLFS" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8MLGe" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8MLGf" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8MLJZ" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8MLKO" role="2n6tg2">
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" node="4$rLBnul_rJ" resolve="typedAs" />
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
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="6z3ZIK8K0Z5" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8K0Zo" role="3clF47">
        <node concept="3clFbF" id="5uyaFvvEHqC" role="3cqZAp">
          <node concept="BsUDl" id="5uyaFvvEIk3" role="3clFbG">
            <ref role="37wK5l" node="5uyaFvvEGbA" resolve="asVars" />
            <node concept="Xl_RD" id="5uyaFvvEIkD" role="37wK5m">
              <property role="Xl_RC" value="oneOf" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6z3ZIK8K0Zp" role="3clF45">
        <node concept="3Tqbb2" id="6z3ZIK8K0Zq" role="A3Ik2">
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="6z3ZIK8L2rX" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8L2sg" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8L2DJ" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8L2D_" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8L2JW" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8L2Ki" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8L2Kj" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8L2Rz" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8L2R$" role="2n6tg2">
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                      <node concept="Xl_RD" id="6z3ZIK8L2R_" role="37wK5m">
                        <property role="Xl_RC" value="enum" />
                      </node>
                      <node concept="2YIFZM" id="6z3ZIK8L2RA" role="37wK5m">
                        <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                        <ref role="37wK5l" node="4$rLBnujVDH" resolve="strings" />
                        <node concept="2OqwBi" id="6z3ZIK8L2RB" role="37wK5m">
                          <node concept="2OqwBi" id="6z3ZIK8L2RC" role="2Oq$k0">
                            <node concept="13iPFW" id="6z3ZIK8L2RD" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="6z3ZIK8L2RE" role="2OqNvi">
                              <ref role="3TtcxE" to="64hz:2hQb6UNpvye" resolve="values" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="6z3ZIK8L2RF" role="2OqNvi">
                            <node concept="1bVj0M" id="6z3ZIK8L2RG" role="23t8la">
                              <node concept="3clFbS" id="6z3ZIK8L2RH" role="1bW5cS">
                                <node concept="3clFbF" id="6z3ZIK8L2RI" role="3cqZAp">
                                  <node concept="2OqwBi" id="6z3ZIK8L2RJ" role="3clFbG">
                                    <node concept="37vLTw" id="6z3ZIK8L2RK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6z3ZIK8L2RM" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="6z3ZIK8L2RL" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6z3ZIK8L2RM" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6z3ZIK8L2RN" role="1tU5fm" />
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
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="6z3ZIK8ML2W" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8ML3f" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8MLcI" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8MLc$" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8MLiV" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8MLjh" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8MLji" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8MLn2" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8MLn3" role="2n6tg2">
                      <ref role="37wK5l" node="4$rLBnul_rJ" resolve="typedAs" />
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="6z3ZIK8MLn4" role="37wK5m">
                        <property role="Xl_RC" value="integer" />
                      </node>
                    </node>
                  </node>
                  <node concept="2n63Yl" id="6z3ZIK8MLn5" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8MLn6" role="2n6tg2">
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                      <node concept="Xl_RD" id="6z3ZIK8MLn7" role="37wK5m">
                        <property role="Xl_RC" value="minimum" />
                      </node>
                      <node concept="2YIFZM" id="6z3ZIK8MLn8" role="37wK5m">
                        <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                        <ref role="37wK5l" node="4$rLBnupB74" resolve="integer" />
                        <node concept="2OqwBi" id="6z3ZIK8MLn9" role="37wK5m">
                          <node concept="13iPFW" id="6z3ZIK8MLna" role="2Oq$k0" />
                          <node concept="3TrcHB" id="6z3ZIK8MLnb" role="2OqNvi">
                            <ref role="3TsBF5" to="64hz:2hQb6UNrK1M" resolve="minimum" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2n63Yl" id="6z3ZIK8MLnc" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8MLnd" role="2n6tg2">
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                      <node concept="Xl_RD" id="6z3ZIK8MLne" role="37wK5m">
                        <property role="Xl_RC" value="maximum" />
                      </node>
                      <node concept="2YIFZM" id="6z3ZIK8MLnf" role="37wK5m">
                        <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                        <ref role="37wK5l" node="4$rLBnupB74" resolve="integer" />
                        <node concept="2OqwBi" id="6z3ZIK8MLng" role="37wK5m">
                          <node concept="13iPFW" id="6z3ZIK8MLnh" role="2Oq$k0" />
                          <node concept="3TrcHB" id="6z3ZIK8MLni" role="2OqNvi">
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
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="6z3ZIK8KBNv" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8KBNM" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8KBZ8" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8KBZ6" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8KC5l" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8KC5F" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8KC5G" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8KC9s" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8KEd0" role="2n6tg2">
                      <ref role="37wK5l" node="6z3ZIK8JZDS" resolve="var" />
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="6z3ZIK8KEeJ" role="37wK5m">
                        <property role="Xl_RC" value="$ref" />
                      </node>
                      <node concept="3K4zz7" id="5uyaFvvG1VY" role="37wK5m">
                        <node concept="Xl_RD" id="5uyaFvvG24s" role="3K4E3e">
                          <property role="Xl_RC" value="#" />
                        </node>
                        <node concept="2OqwBi" id="5uyaFvvG3dc" role="3K4GZi">
                          <node concept="2OqwBi" id="5uyaFvvG2Av" role="2Oq$k0">
                            <node concept="13iPFW" id="5uyaFvvG27n" role="2Oq$k0" />
                            <node concept="3TrEf2" id="5uyaFvvG2I8" role="2OqNvi">
                              <ref role="3Tt5mk" to="64hz:2hQb6UNyLAi" resolve="ref" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="5uyaFvvG3wA" role="2OqNvi">
                            <ref role="37wK5l" node="4$rLBnutptZ" resolve="refString" />
                          </node>
                        </node>
                        <node concept="17R0WA" id="5uyaFvvG121" role="3K4Cdx">
                          <node concept="2OqwBi" id="5uyaFvvG1lp" role="3uHU7w">
                            <node concept="13iPFW" id="5uyaFvvG1da" role="2Oq$k0" />
                            <node concept="2Xjw5R" id="5uyaFvvG1Dg" role="2OqNvi">
                              <node concept="1xMEDy" id="5uyaFvvG1Di" role="1xVPHs">
                                <node concept="chp4Y" id="5uyaFvvG1Jl" role="ri$Ld">
                                  <ref role="cht4Q" to="64hz:2hQb6UNpmlE" resolve="JsonSchema" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5uyaFvvG0DA" role="3uHU7B">
                            <node concept="13iPFW" id="5uyaFvvG0xS" role="2Oq$k0" />
                            <node concept="3TrEf2" id="5uyaFvvG0Sb" role="2OqNvi">
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
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="6z3ZIK8Mn9F" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8Mn9Y" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8Mnm6" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8MnlW" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8Mnsj" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8MnsD" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8MnsE" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8Mnwq" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8Mnwr" role="2n6tg2">
                      <ref role="37wK5l" node="4$rLBnul_rJ" resolve="typedAs" />
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
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
                            <ref role="37wK5l" node="4$rLBnung_I" resolve="asVar" />
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
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
      <property role="TrG5h" value="asVar" />
      <node concept="3Tm1VV" id="4$rLBnung_J" role="1B3o_S" />
      <node concept="3Tqbb2" id="4$rLBnung_Y" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
      </node>
      <node concept="3clFbS" id="4$rLBnung_L" role="3clF47">
        <node concept="3clFbF" id="4$rLBnupa8R" role="3cqZAp">
          <node concept="2YIFZM" id="4$rLBnupaaR" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
            <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
            <node concept="Xl_RD" id="4$rLBnupabn" role="37wK5m">
              <property role="Xl_RC" value="error" />
            </node>
            <node concept="2YIFZM" id="4$rLBnupczw" role="37wK5m">
              <ref role="37wK5l" node="4$rLBnumqdU" resolve="string" />
              <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
              <node concept="3cpWs3" id="4$rLBnupb43" role="37wK5m">
                <node concept="2OqwBi" id="4$rLBnupbOb" role="3uHU7w">
                  <node concept="2OqwBi" id="4$rLBnupbhP" role="2Oq$k0">
                    <node concept="13iPFW" id="4$rLBnupb4b" role="2Oq$k0" />
                    <node concept="2yIwOk" id="4$rLBnupbvz" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="4$rLBnupc87" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="4$rLBnupagD" role="3uHU7B">
                  <property role="Xl_RC" value="!!! asVar() not implemented for by " />
                </node>
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
      <property role="TrG5h" value="asVar" />
      <ref role="13i0hy" node="4$rLBnung_I" resolve="asVar" />
      <node concept="3Tm1VV" id="4$rLBnungAH" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnungAK" role="3clF47">
        <node concept="3clFbF" id="4$rLBnungAZ" role="3cqZAp">
          <node concept="2YIFZM" id="4$rLBnungCZ" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
            <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
            <node concept="Xl_RD" id="4$rLBnungDv" role="37wK5m">
              <property role="Xl_RC" value="pattern" />
            </node>
            <node concept="2YIFZM" id="4$rLBnungLJ" role="37wK5m">
              <ref role="37wK5l" node="4$rLBnumqdU" resolve="string" />
              <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
              <node concept="2OqwBi" id="4$rLBnungUV" role="37wK5m">
                <node concept="13iPFW" id="4$rLBnungMJ" role="2Oq$k0" />
                <node concept="3TrcHB" id="4$rLBnunha6" role="2OqNvi">
                  <ref role="3TsBF5" to="64hz:2hQb6UNsfOl" resolve="pattern" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4$rLBnungAL" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
      <property role="TrG5h" value="asVar" />
      <ref role="13i0hy" node="4$rLBnung_I" resolve="asVar" />
      <node concept="3Tm1VV" id="4$rLBnunhdm" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnunhdp" role="3clF47">
        <node concept="3clFbF" id="5uyaFvvGV5I" role="3cqZAp">
          <node concept="3K4zz7" id="5uyaFvvH49E" role="3clFbG">
            <node concept="2YIFZM" id="5uyaFvvH4TY" role="3K4E3e">
              <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
              <ref role="37wK5l" node="6z3ZIK8JZDS" resolve="var" />
              <node concept="Xl_RD" id="5uyaFvvH5en" role="37wK5m">
                <property role="Xl_RC" value="format" />
              </node>
              <node concept="2OqwBi" id="5uyaFvvHcD_" role="37wK5m">
                <node concept="2OqwBi" id="5uyaFvvH8B$" role="2Oq$k0">
                  <node concept="2OqwBi" id="5uyaFvvH5oE" role="2Oq$k0">
                    <node concept="13iPFW" id="5uyaFvvH5gI" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5uyaFvvH5C3" role="2OqNvi">
                      <ref role="3TtcxE" to="64hz:2hQb6UNsfOa" resolve="formats" />
                    </node>
                  </node>
                  <node concept="1uHKPH" id="5uyaFvvHbdk" role="2OqNvi" />
                </node>
                <node concept="3TrcHB" id="5uyaFvvHcMc" role="2OqNvi">
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
            <node concept="2YIFZM" id="4$rLBnunhfE" role="3K4GZi">
              <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
              <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
              <node concept="Xl_RD" id="4$rLBnunhga" role="37wK5m">
                <property role="Xl_RC" value="oneOf" />
              </node>
              <node concept="2YIFZM" id="6z3ZIK8OHmy" role="37wK5m">
                <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                <ref role="37wK5l" node="4$rLBnukINa" resolve="objectOf" />
                <node concept="2OqwBi" id="6z3ZIK8OHmz" role="37wK5m">
                  <node concept="2OqwBi" id="6z3ZIK8OHm$" role="2Oq$k0">
                    <node concept="13iPFW" id="6z3ZIK8OHm_" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6z3ZIK8OHmA" role="2OqNvi">
                      <ref role="3TtcxE" to="64hz:2hQb6UNsfOa" resolve="formats" />
                    </node>
                  </node>
                  <node concept="3$u5V9" id="6z3ZIK8OHmB" role="2OqNvi">
                    <node concept="1bVj0M" id="6z3ZIK8OHmC" role="23t8la">
                      <node concept="3clFbS" id="6z3ZIK8OHmD" role="1bW5cS">
                        <node concept="3clFbF" id="6z3ZIK8OHmE" role="3cqZAp">
                          <node concept="2YIFZM" id="6z3ZIK8OHmF" role="3clFbG">
                            <ref role="37wK5l" node="6z3ZIK8JZDS" resolve="var" />
                            <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                            <node concept="Xl_RD" id="6z3ZIK8OHmG" role="37wK5m">
                              <property role="Xl_RC" value="format" />
                            </node>
                            <node concept="2OqwBi" id="6z3ZIK8OHmH" role="37wK5m">
                              <node concept="37vLTw" id="6z3ZIK8OHmI" role="2Oq$k0">
                                <ref role="3cqZAo" node="6z3ZIK8OHmK" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="6z3ZIK8OHmJ" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6z3ZIK8OHmK" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6z3ZIK8OHmL" role="1tU5fm" />
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
        <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="6z3ZIK8NAEb" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8NAEu" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8NAJ9" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8NAIZ" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8NAPm" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8NAPG" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8NAPH" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8NAW2" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8NAW3" role="2n6tg2">
                      <ref role="37wK5l" node="4$rLBnul_rJ" resolve="typedAs" />
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
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
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="6z3ZIK8NB6k" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8NB6B" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8NBfi" role="3cqZAp">
          <node concept="2ShNRf" id="6z3ZIK8NBf8" role="3clFbG">
            <node concept="kMnCb" id="6z3ZIK8NBlv" role="2ShVmc">
              <node concept="1bVj0M" id="6z3ZIK8NBlP" role="kMx8a">
                <node concept="3clFbS" id="6z3ZIK8NBlQ" role="1bW5cS">
                  <node concept="2n63Yl" id="6z3ZIK8NBrm" role="3cqZAp">
                    <node concept="2YIFZM" id="6z3ZIK8NBrn" role="2n6tg2">
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" node="6z3ZIK8JZDS" resolve="var" />
                      <node concept="Xl_RD" id="6z3ZIK8NBro" role="37wK5m">
                        <property role="Xl_RC" value="$ref" />
                      </node>
                      <node concept="2OqwBi" id="6z3ZIK8NBrq" role="37wK5m">
                        <node concept="13iPFW" id="6z3ZIK8NBrr" role="2Oq$k0" />
                        <node concept="3TrcHB" id="6z3ZIK8NBrs" role="2OqNvi">
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
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
            <ref role="37wK5l" node="4$rLBnukMwb" resolve="objectOf" />
            <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
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
                      <node concept="2YIFZM" id="6z3ZIK8Kav0" role="2n6tg2">
                        <ref role="37wK5l" node="6z3ZIK8JZDS" resolve="var" />
                        <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                        <node concept="Xl_RD" id="6z3ZIK8Kav1" role="37wK5m">
                          <property role="Xl_RC" value="description" />
                        </node>
                        <node concept="2OqwBi" id="6z3ZIK8Kav2" role="37wK5m">
                          <node concept="13iPFW" id="6z3ZIK8Kav3" role="2Oq$k0" />
                          <node concept="3TrcHB" id="6z3ZIK8Kav4" role="2OqNvi">
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
                      <ref role="37wK5l" node="6z3ZIK8JXLy" resolve="asVars" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6z3ZIK8K7uk" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdlQ" resolve="JSONObject" />
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
        <ref role="ehGHo" to="21pk:3L4lRB2GdlQ" resolve="JSONObject" />
      </node>
      <node concept="3clFbS" id="6z3ZIK8JXDg" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8K3IH" role="3cqZAp">
          <node concept="2YIFZM" id="6z3ZIK8K3Lt" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnukMwb" resolve="objectOf" />
            <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
            <node concept="1bVj0M" id="6z3ZIK8K3M3" role="37wK5m">
              <node concept="3clFbS" id="6z3ZIK8K3M4" role="1bW5cS">
                <node concept="2n63Yl" id="6z3ZIK8K3U9" role="3cqZAp">
                  <node concept="2YIFZM" id="6z3ZIK8K3Y4" role="2n6tg2">
                    <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                    <ref role="37wK5l" node="6z3ZIK8JZDS" resolve="var" />
                    <node concept="Xl_RD" id="6z3ZIK8K405" role="37wK5m">
                      <property role="Xl_RC" value="error" />
                    </node>
                    <node concept="3cpWs3" id="6z3ZIK8K4VW" role="37wK5m">
                      <node concept="2OqwBi" id="6z3ZIK8K5AE" role="3uHU7w">
                        <node concept="2OqwBi" id="6z3ZIK8K571" role="2Oq$k0">
                          <node concept="13iPFW" id="6z3ZIK8K4W4" role="2Oq$k0" />
                          <node concept="2yIwOk" id="6z3ZIK8K5kW" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="6z3ZIK8K5Uo" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6z3ZIK8K4aE" role="3uHU7B">
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
            <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
            <ref role="37wK5l" node="4$rLBnukINa" resolve="objectOf" />
            <node concept="2OqwBi" id="6z3ZIK8LXa9" role="37wK5m">
              <node concept="2OqwBi" id="6z3ZIK8LXaa" role="2Oq$k0">
                <node concept="13iPFW" id="6z3ZIK8LXab" role="2Oq$k0" />
                <node concept="3TrEf2" id="6z3ZIK8LXac" role="2OqNvi">
                  <ref role="3Tt5mk" to="64hz:4$rLBnuqZXm" resolve="type" />
                </node>
              </node>
              <node concept="2qgKlT" id="6z3ZIK8LXad" role="2OqNvi">
                <ref role="37wK5l" node="6z3ZIK8JXLy" resolve="asVars" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6z3ZIK8K6hD" role="3clF45">
        <ref role="ehGHo" to="21pk:3L4lRB2GdlQ" resolve="JSONObject" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5uyaFvvEGbr">
    <ref role="13h7C2" to="64hz:5uyaFvvEFAb" resolve="JsonSumType" />
    <node concept="13hLZK" id="5uyaFvvEGbs" role="13h7CW">
      <node concept="3clFbS" id="5uyaFvvEGbt" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5uyaFvvEGbA" role="13h7CS">
      <property role="TrG5h" value="asVars" />
      <node concept="3Tm1VV" id="5uyaFvvEGbB" role="1B3o_S" />
      <node concept="A3Dl8" id="5uyaFvvEGbQ" role="3clF45">
        <node concept="3Tqbb2" id="5uyaFvvEGeo" role="A3Ik2">
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
        </node>
      </node>
      <node concept="3clFbS" id="5uyaFvvEGbD" role="3clF47">
        <node concept="3clFbF" id="5uyaFvvEGjB" role="3cqZAp">
          <node concept="2ShNRf" id="5uyaFvvEGjC" role="3clFbG">
            <node concept="kMnCb" id="5uyaFvvEGjD" role="2ShVmc">
              <node concept="1bVj0M" id="5uyaFvvEGjE" role="kMx8a">
                <node concept="3clFbS" id="5uyaFvvEGjF" role="1bW5cS">
                  <node concept="2n63Yl" id="5uyaFvvEGjG" role="3cqZAp">
                    <node concept="2YIFZM" id="5uyaFvvEGjH" role="2n6tg2">
                      <ref role="37wK5l" node="4$rLBnul_rJ" resolve="typedAs" />
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <node concept="Xl_RD" id="5uyaFvvEGjI" role="37wK5m">
                        <property role="Xl_RC" value="object" />
                      </node>
                    </node>
                  </node>
                  <node concept="2n63Yl" id="5uyaFvvEGjJ" role="3cqZAp">
                    <node concept="2YIFZM" id="5uyaFvvEGjK" role="2n6tg2">
                      <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                      <ref role="37wK5l" node="4$rLBnumK0P" resolve="var" />
                      <node concept="2OqwBi" id="5uyaFvvGwTC" role="37wK5m">
                        <node concept="2OqwBi" id="5uyaFvvGw9X" role="2Oq$k0">
                          <node concept="13iPFW" id="5uyaFvvGvPm" role="2Oq$k0" />
                          <node concept="2yIwOk" id="5uyaFvvGwyU" role="2OqNvi" />
                        </node>
                        <node concept="3n3YKJ" id="5uyaFvvGxtH" role="2OqNvi" />
                      </node>
                      <node concept="2YIFZM" id="5uyaFvvEGjM" role="37wK5m">
                        <ref role="37wK5l" node="6z3ZIK8K24C" resolve="array" />
                        <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                        <node concept="2OqwBi" id="5uyaFvvEGjN" role="37wK5m">
                          <node concept="2OqwBi" id="5uyaFvvEGjO" role="2Oq$k0">
                            <node concept="13iPFW" id="5uyaFvvEGjP" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="5uyaFvvEGjQ" role="2OqNvi">
                              <ref role="3TtcxE" to="64hz:5uyaFvvEFNs" resolve="types" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="5uyaFvvEGjR" role="2OqNvi">
                            <node concept="1bVj0M" id="5uyaFvvEGjS" role="23t8la">
                              <node concept="3clFbS" id="5uyaFvvEGjT" role="1bW5cS">
                                <node concept="3clFbF" id="5uyaFvvEGjU" role="3cqZAp">
                                  <node concept="2OqwBi" id="5uyaFvvEGjV" role="3clFbG">
                                    <node concept="37vLTw" id="5uyaFvvEGjW" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5uyaFvvEGjY" resolve="it" />
                                    </node>
                                    <node concept="2qgKlT" id="5uyaFvvEGjX" role="2OqNvi">
                                      <ref role="37wK5l" node="6z3ZIK8Q5WV" resolve="asJson" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="5uyaFvvEGjY" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5uyaFvvEGjZ" role="1tU5fm" />
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="5uyaFvvEItF" role="1B3o_S" />
      <node concept="3clFbS" id="5uyaFvvEItY" role="3clF47">
        <node concept="3clFbF" id="5uyaFvvEIMP" role="3cqZAp">
          <node concept="BsUDl" id="5uyaFvvEIMO" role="3clFbG">
            <ref role="37wK5l" node="5uyaFvvEGbA" resolve="asVars" />
            <node concept="Xl_RD" id="5uyaFvvEINs" role="37wK5m">
              <property role="Xl_RC" value="anyOf" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5uyaFvvEItZ" role="3clF45">
        <node concept="3Tqbb2" id="5uyaFvvEIu0" role="A3Ik2">
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
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
      <property role="TrG5h" value="asVars" />
      <ref role="13i0hy" node="6z3ZIK8JXLy" resolve="asVars" />
      <node concept="3Tm1VV" id="5uyaFvvGvw5" role="1B3o_S" />
      <node concept="3clFbS" id="5uyaFvvGvwo" role="3clF47">
        <node concept="3clFbF" id="5uyaFvvGv$P" role="3cqZAp">
          <node concept="BsUDl" id="5uyaFvvGv$O" role="3clFbG">
            <ref role="37wK5l" node="5uyaFvvEGbA" resolve="asVars" />
            <node concept="Xl_RD" id="5uyaFvvGv_s" role="37wK5m">
              <property role="Xl_RC" value="allOf" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5uyaFvvGvwp" role="3clF45">
        <node concept="3Tqbb2" id="5uyaFvvGvwq" role="A3Ik2">
          <ref role="ehGHo" to="21pk:3L4lRB2GdlR" resolve="Variable" />
        </node>
      </node>
    </node>
  </node>
</model>

