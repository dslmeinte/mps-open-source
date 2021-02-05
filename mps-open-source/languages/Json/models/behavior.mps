<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b9a28f2c-91e5-4b49-819f-5dd06df0e7fc(Json.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tay9" ref="r:4b82c70e-45f8-4502-a857-34e943edc354(Json.structure)" />
    <import index="7k8f" ref="b4c21c7b-9eb9-46a5-8813-d2e1d07a3f4a/java:com.fasterxml.jackson.databind(runtime.lib/)" />
    <import index="lhlt" ref="b4c21c7b-9eb9-46a5-8813-d2e1d07a3f4a/java:com.fasterxml.jackson.databind.node(runtime.lib/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="1221737317277" name="jetbrains.mps.baseLanguage.structure.StaticInitializer" flags="lg" index="1Pe0a1">
        <child id="1221737317278" name="statementList" index="1Pe0a2" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
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
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="4$rLBnujVD2">
    <property role="TrG5h" value="JsonFactory" />
    <node concept="2tJIrI" id="4$rLBnujVDs" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnujVDH" role="jymVt">
      <property role="TrG5h" value="strings" />
      <node concept="3Tqbb2" id="4$rLBnuqoPZ" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl4c" resolve="JsonArray" />
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
        <ref role="ehGHo" to="tay9:3QNkN21Fl4c" resolve="JsonArray" />
      </node>
      <node concept="3Tm1VV" id="6z3ZIK8K24F" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8K24G" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8K2gi" role="3cqZAp">
          <node concept="2pJPEk" id="6z3ZIK8K2gg" role="3clFbG">
            <node concept="2pJPED" id="6z3ZIK8K2jy" role="2pJPEn">
              <ref role="2pJxaS" to="tay9:3QNkN21Fl4c" resolve="JsonArray" />
              <node concept="2pIpSj" id="6z3ZIK8K2jM" role="2pJxcM">
                <ref role="2pIpSl" to="tay9:3QNkN21Fl5X" resolve="items" />
                <node concept="36biLy" id="6z3ZIK8K2lR" role="28nt2d">
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
            <ref role="ehGHo" to="tay9:3QNkN21Fl49" resolve="IJsonValue" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnuk$Mc" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnuk$Oo" role="jymVt">
      <property role="TrG5h" value="bool" />
      <node concept="3Tqbb2" id="4$rLBnuk$Pt" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21GywT" resolve="JsonBoolean" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnuk$Or" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnuk$Os" role="3clF47">
        <node concept="3clFbF" id="4$rLBnuk$RO" role="3cqZAp">
          <node concept="2pJPEk" id="4$rLBnuk$RM" role="3clFbG">
            <node concept="2pJPED" id="4$rLBnuk$V4" role="2pJPEn">
              <ref role="2pJxaS" to="tay9:3QNkN21GywT" resolve="JsonBoolean" />
              <node concept="2pJxcG" id="4$rLBnuk$X4" role="2pJxcM">
                <ref role="2pJxcJ" to="tay9:3QNkN21GywX" resolve="value" />
                <node concept="WxPPo" id="5wO1A4Dvvm8" role="28ntcv">
                  <node concept="37vLTw" id="4$rLBnuk$ZO" role="WxPPp">
                    <ref role="3cqZAo" node="4$rLBnuk$Q_" resolve="value" />
                  </node>
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
        <ref role="ehGHo" to="tay9:3QNkN21Fl4l" resolve="JsonString" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnumqdX" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnumqdY" role="3clF47">
        <node concept="3clFbF" id="4$rLBnumqlL" role="3cqZAp">
          <node concept="2pJPEk" id="4$rLBnumqlJ" role="3clFbG">
            <node concept="2pJPED" id="4$rLBnumqr1" role="2pJPEn">
              <ref role="2pJxaS" to="tay9:3QNkN21Fl4l" resolve="JsonString" />
              <node concept="2pJxcG" id="4$rLBnumqt1" role="2pJxcM">
                <ref role="2pJxcJ" to="tay9:3QNkN21Fl5A" resolve="value" />
                <node concept="WxPPo" id="5wO1A4Dvvm9" role="28ntcv">
                  <node concept="37vLTw" id="4$rLBnumqwl" role="WxPPp">
                    <ref role="3cqZAo" node="4$rLBnumqjC" resolve="value" />
                  </node>
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
        <ref role="ehGHo" to="tay9:3QNkN21Fl4k" resolve="JsonInteger" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnupB77" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnupB78" role="3clF47">
        <node concept="3clFbF" id="4$rLBnupBfW" role="3cqZAp">
          <node concept="2pJPEk" id="4$rLBnupBfU" role="3clFbG">
            <node concept="2pJPED" id="4$rLBnupBjc" role="2pJPEn">
              <ref role="2pJxaS" to="tay9:3QNkN21Fl4k" resolve="JsonInteger" />
              <node concept="2pJxcG" id="4$rLBnupBlc" role="2pJxcM">
                <ref role="2pJxcJ" to="tay9:3QNkN21Fl5P" resolve="value" />
                <node concept="WxPPo" id="5wO1A4Dvvma" role="28ntcv">
                  <node concept="3cpWs3" id="4$rLBnupBN6" role="WxPPp">
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
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnulXAc" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnukINe" role="3clF47">
        <node concept="3clFbF" id="4$rLBnukITz" role="3cqZAp">
          <node concept="2pJPEk" id="4$rLBnukITx" role="3clFbG">
            <node concept="2pJPED" id="4$rLBnukIVj" role="2pJPEn">
              <ref role="2pJxaS" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
              <node concept="2pIpSj" id="4$rLBnukIXh" role="2pJxcM">
                <ref role="2pIpSl" to="tay9:3QNkN21Flbb" resolve="pairs" />
                <node concept="36biLy" id="4$rLBnukLob" role="28nt2d">
                  <node concept="37vLTw" id="4$rLBnukLrl" role="36biLW">
                    <ref role="3cqZAo" node="4$rLBnukIQj" resolve="pairs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4$rLBnukIQj" role="3clF46">
        <property role="TrG5h" value="pairs" />
        <node concept="A3Dl8" id="4$rLBnukIQh" role="1tU5fm">
          <node concept="3Tqbb2" id="4$rLBnukIQM" role="A3Ik2">
            <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnukMnX" role="jymVt" />
    <node concept="2tJIrI" id="4$rLBnulJJb" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnukMwb" role="jymVt">
      <property role="TrG5h" value="objectOf" />
      <node concept="3Tqbb2" id="4$rLBnukMy8" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnukMwe" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnukMwf" role="3clF47">
        <node concept="3clFbF" id="4$rLBnukMFD" role="3cqZAp">
          <node concept="1rXfSq" id="4$rLBnukMFC" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnukINa" resolve="objectOf" />
            <node concept="2OqwBi" id="4$rLBnukN7y" role="37wK5m">
              <node concept="37vLTw" id="4$rLBnukN7z" role="2Oq$k0">
                <ref role="3cqZAo" node="4$rLBnukMzx" resolve="pairsFunction" />
              </node>
              <node concept="1Bd96e" id="4$rLBnukN7$" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4$rLBnukMzx" role="3clF46">
        <property role="TrG5h" value="pairsFunction" />
        <node concept="1ajhzC" id="4$rLBnukMzv" role="1tU5fm">
          <node concept="A3Dl8" id="4$rLBnukM$g" role="1ajl9A">
            <node concept="3Tqbb2" id="4$rLBnukM_1" role="A3Ik2">
              <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnul_nq" role="jymVt" />
    <node concept="2YIFZL" id="4$rLBnul_rJ" role="jymVt">
      <property role="TrG5h" value="typedAs" />
      <node concept="3Tqbb2" id="4$rLBnul_ua" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnul_rM" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnul_rN" role="3clF47">
        <node concept="3clFbF" id="4$rLBnumKGx" role="3cqZAp">
          <node concept="1rXfSq" id="4$rLBnumKGv" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnumK0P" resolve="pair" />
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
      <property role="TrG5h" value="pair" />
      <node concept="3Tqbb2" id="4$rLBnumK4m" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
      <node concept="3Tm1VV" id="4$rLBnumK0S" role="1B3o_S" />
      <node concept="3clFbS" id="4$rLBnumK0T" role="3clF47">
        <node concept="3clFbF" id="4$rLBnumKdY" role="3cqZAp">
          <node concept="2pJPEk" id="4$rLBnumKkf" role="3clFbG">
            <node concept="2pJPED" id="4$rLBnumKnw" role="2pJPEn">
              <ref role="2pJxaS" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
              <node concept="2pJxcG" id="4$rLBnumKpw" role="2pJxcM">
                <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                <node concept="WxPPo" id="5wO1A4Dvvmb" role="28ntcv">
                  <node concept="37vLTw" id="4$rLBnumKyt" role="WxPPp">
                    <ref role="3cqZAo" node="4$rLBnumK6r" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="2pIpSj" id="4$rLBnumK$M" role="2pJxcM">
                <ref role="2pIpSl" to="tay9:3QNkN21Fl62" resolve="value" />
                <node concept="36biLy" id="4$rLBnumKAW" role="28nt2d">
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
          <ref role="ehGHo" to="tay9:3QNkN21Fl49" resolve="IJsonValue" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4$rLBnukIOq" role="jymVt" />
    <node concept="2YIFZL" id="6z3ZIK8JZDS" role="jymVt">
      <property role="TrG5h" value="pair" />
      <node concept="3Tqbb2" id="6z3ZIK8JZJ$" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
      <node concept="3Tm1VV" id="6z3ZIK8JZDV" role="1B3o_S" />
      <node concept="3clFbS" id="6z3ZIK8JZDW" role="3clF47">
        <node concept="3clFbF" id="6z3ZIK8JZWE" role="3cqZAp">
          <node concept="1rXfSq" id="6z3ZIK8JZWD" role="3clFbG">
            <ref role="37wK5l" node="4$rLBnumK0P" resolve="pair" />
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
  <node concept="312cEu" id="4CcqqpgCNAP">
    <property role="TrG5h" value="JsonMapper" />
    <node concept="2tJIrI" id="4CcqqpgCNB9" role="jymVt" />
    <node concept="Wx3nA" id="4CcqqpgEEHf" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="objectMapper" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4CcqqpgEEEr" role="1B3o_S" />
      <node concept="3uibUv" id="4CcqqpgEEGO" role="1tU5fm">
        <ref role="3uigEE" to="7k8f:~ObjectMapper" resolve="ObjectMapper" />
      </node>
      <node concept="2ShNRf" id="4CcqqpgEEKG" role="33vP2m">
        <node concept="1pGfFk" id="4CcqqpgEEKr" role="2ShVmc">
          <ref role="37wK5l" to="7k8f:~ObjectMapper.&lt;init&gt;()" resolve="ObjectMapper" />
        </node>
      </node>
    </node>
    <node concept="1Pe0a1" id="4CcqqpgEENJ" role="jymVt">
      <node concept="3clFbS" id="4CcqqpgEENL" role="1Pe0a2">
        <node concept="3clFbF" id="4CcqqpgEEQI" role="3cqZAp">
          <node concept="2OqwBi" id="4CcqqpgEF7x" role="3clFbG">
            <node concept="37vLTw" id="4CcqqpgEEQH" role="2Oq$k0">
              <ref role="3cqZAo" node="4CcqqpgEEHf" resolve="objectMapper" />
            </node>
            <node concept="liA8E" id="4CcqqpgEFMg" role="2OqNvi">
              <ref role="37wK5l" to="7k8f:~ObjectMapper.enable(com.fasterxml.jackson.databind.SerializationFeature)" resolve="enable" />
              <node concept="Rm8GO" id="4CcqqpgEFUy" role="37wK5m">
                <ref role="Rm8GQ" to="7k8f:~SerializationFeature.INDENT_OUTPUT" resolve="INDENT_OUTPUT" />
                <ref role="1Px2BO" to="7k8f:~SerializationFeature" resolve="SerializationFeature" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4CcqqpgEECd" role="jymVt" />
    <node concept="2YIFZL" id="4CcqqpgCR$B" role="jymVt">
      <property role="TrG5h" value="toString" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4CcqqpgCR$E" role="3clF47">
        <node concept="3J1_TO" id="4CcqqpgCWjP" role="3cqZAp">
          <node concept="3clFbS" id="4CcqqpgCWjR" role="1zxBo7">
            <node concept="3cpWs8" id="4CcqqpgGpNM" role="3cqZAp">
              <node concept="3cpWsn" id="4CcqqpgGpNN" role="3cpWs9">
                <property role="TrG5h" value="stringWriter" />
                <node concept="3uibUv" id="4CcqqpgGpNO" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~StringWriter" resolve="StringWriter" />
                </node>
                <node concept="2ShNRf" id="4CcqqpgGqpI" role="33vP2m">
                  <node concept="1pGfFk" id="4CcqqpgGqD1" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~StringWriter.&lt;init&gt;()" resolve="StringWriter" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4CcqqpgH4j1" role="3cqZAp">
              <node concept="2OqwBi" id="4CcqqpgH51e" role="3clFbG">
                <node concept="37vLTw" id="4CcqqpgH4iZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4CcqqpgEEHf" resolve="objectMapper" />
                </node>
                <node concept="liA8E" id="4CcqqpgH5Je" role="2OqNvi">
                  <ref role="37wK5l" to="7k8f:~ObjectMapper.writeValue(java.io.Writer,java.lang.Object)" resolve="writeValue" />
                  <node concept="37vLTw" id="4CcqqpgH5QC" role="37wK5m">
                    <ref role="3cqZAo" node="4CcqqpgGpNN" resolve="stringWriter" />
                  </node>
                  <node concept="1rXfSq" id="4CcqqpgH68h" role="37wK5m">
                    <ref role="37wK5l" node="4CcqqpgE$Pq" resolve="asJsonNode" />
                    <node concept="2OqwBi" id="4CcqqpgH6Ah" role="37wK5m">
                      <node concept="37vLTw" id="4CcqqpgH6ln" role="2Oq$k0">
                        <ref role="3cqZAo" node="4CcqqpgCR_4" resolve="jsonFile" />
                      </node>
                      <node concept="3TrEf2" id="4CcqqpgH73s" role="2OqNvi">
                        <ref role="3Tt5mk" to="tay9:3QNkN21Fl4g" resolve="contents" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4CcqqpgCXuN" role="3cqZAp">
              <node concept="2OqwBi" id="4CcqqpgGtpY" role="3cqZAk">
                <node concept="37vLTw" id="4CcqqpgGsAj" role="2Oq$k0">
                  <ref role="3cqZAo" node="4CcqqpgGpNN" resolve="stringWriter" />
                </node>
                <node concept="liA8E" id="4CcqqpgGurA" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~StringWriter.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="4CcqqpgCWjS" role="1zxBo5">
            <node concept="XOnhg" id="4CcqqpgCWjU" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="5eWk6a8CcYM" role="1tU5fm">
                <node concept="3uibUv" id="4CcqqpgGqTN" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4CcqqpgCWjY" role="1zc67A">
              <node concept="YS8fn" id="4CcqqpgCX4u" role="3cqZAp">
                <node concept="2ShNRf" id="4CcqqpgCX5h" role="YScLw">
                  <node concept="1pGfFk" id="4CcqqpgCXeF" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="4CcqqpgCXgZ" role="37wK5m">
                      <ref role="3cqZAo" node="4CcqqpgCWjU" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4CcqqpgCQ4_" role="1B3o_S" />
      <node concept="17QB3L" id="4CcqqpgCTyz" role="3clF45" />
      <node concept="37vLTG" id="4CcqqpgCR_4" role="3clF46">
        <property role="TrG5h" value="jsonFile" />
        <node concept="3Tqbb2" id="4CcqqpgCR_3" role="1tU5fm">
          <ref role="ehGHo" to="tay9:3QNkN21Fl4f" resolve="JsonFile" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4CcqqpgCYK9" role="jymVt" />
    <node concept="2YIFZL" id="4CcqqpgE$Pq" role="jymVt">
      <property role="TrG5h" value="asJsonNode" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4CcqqpgE$Pt" role="3clF47">
        <node concept="Jncv_" id="4CcqqpgEMJ7" role="3cqZAp">
          <ref role="JncvD" to="tay9:3QNkN21Fl4c" resolve="JsonArray" />
          <node concept="37vLTw" id="4CcqqpgEMVq" role="JncvB">
            <ref role="3cqZAo" node="4CcqqpgE$Rm" resolve="value" />
          </node>
          <node concept="3clFbS" id="4CcqqpgEMJb" role="Jncv$">
            <node concept="3cpWs8" id="4CcqqpgEHrZ" role="3cqZAp">
              <node concept="3cpWsn" id="4CcqqpgEHs0" role="3cpWs9">
                <property role="TrG5h" value="arrayNode" />
                <node concept="3uibUv" id="4CcqqpgEHrT" role="1tU5fm">
                  <ref role="3uigEE" to="lhlt:~ArrayNode" resolve="ArrayNode" />
                </node>
                <node concept="2OqwBi" id="4CcqqpgEHs1" role="33vP2m">
                  <node concept="37vLTw" id="4CcqqpgENy2" role="2Oq$k0">
                    <ref role="3cqZAo" node="4CcqqpgEEHf" resolve="objectMapper" />
                  </node>
                  <node concept="liA8E" id="4CcqqpgEHs3" role="2OqNvi">
                    <ref role="37wK5l" to="7k8f:~ObjectMapper.createArrayNode()" resolve="createArrayNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4CcqqpgE$UO" role="3cqZAp">
              <node concept="2OqwBi" id="4CcqqpgEI17" role="3clFbG">
                <node concept="37vLTw" id="4CcqqpgEHs4" role="2Oq$k0">
                  <ref role="3cqZAo" node="4CcqqpgEHs0" resolve="arrayNode" />
                </node>
                <node concept="liA8E" id="4CcqqpgEIDU" role="2OqNvi">
                  <ref role="37wK5l" to="lhlt:~ArrayNode.addAll(java.util.Collection)" resolve="addAll" />
                  <node concept="2OqwBi" id="4CcqqpgEWlE" role="37wK5m">
                    <node concept="2OqwBi" id="4CcqqpgERxQ" role="2Oq$k0">
                      <node concept="2OqwBi" id="4CcqqpgEPo1" role="2Oq$k0">
                        <node concept="Jnkvi" id="4CcqqpgEOW6" role="2Oq$k0">
                          <ref role="1M0zk5" node="4CcqqpgEMJd" resolve="jsonArray" />
                        </node>
                        <node concept="3Tsc0h" id="4CcqqpgEQ11" role="2OqNvi">
                          <ref role="3TtcxE" to="tay9:3QNkN21Fl5X" resolve="items" />
                        </node>
                      </node>
                      <node concept="3$u5V9" id="4CcqqpgETTu" role="2OqNvi">
                        <node concept="1bVj0M" id="4CcqqpgETTw" role="23t8la">
                          <node concept="3clFbS" id="4CcqqpgETTx" role="1bW5cS">
                            <node concept="3clFbF" id="4CcqqpgEUim" role="3cqZAp">
                              <node concept="1rXfSq" id="4CcqqpgEV_W" role="3clFbG">
                                <ref role="37wK5l" node="4CcqqpgE$Pq" resolve="asJsonNode" />
                                <node concept="37vLTw" id="4CcqqpgEVS2" role="37wK5m">
                                  <ref role="3cqZAo" node="4CcqqpgETTy" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="4CcqqpgETTy" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4CcqqpgETTz" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="4CcqqpgEXdQ" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4CcqqpgEIK3" role="3cqZAp">
              <node concept="37vLTw" id="4CcqqpgEIMM" role="3cqZAk">
                <ref role="3cqZAo" node="4CcqqpgEHs0" resolve="arrayNode" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="4CcqqpgEMJd" role="JncvA">
            <property role="TrG5h" value="jsonArray" />
            <node concept="2jxLKc" id="4CcqqpgEMJe" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="4CcqqpgFer7" role="3cqZAp">
          <ref role="JncvD" to="tay9:3QNkN21GywT" resolve="JsonBoolean" />
          <node concept="37vLTw" id="4CcqqpgFeT6" role="JncvB">
            <ref role="3cqZAo" node="4CcqqpgE$Rm" resolve="value" />
          </node>
          <node concept="3clFbS" id="4CcqqpgFerb" role="Jncv$">
            <node concept="3cpWs6" id="4CcqqpgFsfV" role="3cqZAp">
              <node concept="2YIFZM" id="4CcqqpgFpPX" role="3cqZAk">
                <ref role="1Pybhc" to="lhlt:~BooleanNode" resolve="BooleanNode" />
                <ref role="37wK5l" to="lhlt:~BooleanNode.valueOf(boolean)" resolve="valueOf" />
                <node concept="2OqwBi" id="4CcqqpgFq8l" role="37wK5m">
                  <node concept="Jnkvi" id="4CcqqpgFpUC" role="2Oq$k0">
                    <ref role="1M0zk5" node="4CcqqpgFerd" resolve="jsonBoolean" />
                  </node>
                  <node concept="3TrcHB" id="4CcqqpgFqST" role="2OqNvi">
                    <ref role="3TsBF5" to="tay9:3QNkN21GywX" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="4CcqqpgFerd" role="JncvA">
            <property role="TrG5h" value="jsonBoolean" />
            <node concept="2jxLKc" id="4CcqqpgFere" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="4CcqqpgFuwe" role="3cqZAp">
          <ref role="JncvD" to="tay9:3QNkN21Fl4m" resolve="JsonNull" />
          <node concept="37vLTw" id="4CcqqpgFv2O" role="JncvB">
            <ref role="3cqZAo" node="4CcqqpgE$Rm" resolve="value" />
          </node>
          <node concept="3clFbS" id="4CcqqpgFuwi" role="Jncv$">
            <node concept="3cpWs6" id="4CcqqpgFx4S" role="3cqZAp">
              <node concept="10M0yZ" id="4CcqqpgFyc_" role="3cqZAk">
                <ref role="3cqZAo" to="lhlt:~NullNode.instance" resolve="instance" />
                <ref role="1PxDUh" to="lhlt:~NullNode" resolve="NullNode" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="4CcqqpgFuwk" role="JncvA">
            <property role="TrG5h" value="jsonNull" />
            <node concept="2jxLKc" id="4CcqqpgFuwl" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="4CcqqpgFzjV" role="3cqZAp">
          <ref role="JncvD" to="tay9:3QNkN21Fl4k" resolve="JsonInteger" />
          <node concept="37vLTw" id="4CcqqpgFzSP" role="JncvB">
            <ref role="3cqZAo" node="4CcqqpgE$Rm" resolve="value" />
          </node>
          <node concept="3clFbS" id="4CcqqpgFzjZ" role="Jncv$">
            <node concept="3cpWs6" id="4CcqqpgFH3e" role="3cqZAp">
              <node concept="2YIFZM" id="4CcqqpgFAau" role="3cqZAk">
                <ref role="1Pybhc" to="lhlt:~IntNode" resolve="IntNode" />
                <ref role="37wK5l" to="lhlt:~IntNode.valueOf(int)" resolve="valueOf" />
                <node concept="2YIFZM" id="2oHwIWH4wJ8" role="37wK5m">
                  <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String)" resolve="parseInt" />
                  <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                  <node concept="2OqwBi" id="2oHwIWH4wJ9" role="37wK5m">
                    <node concept="Jnkvi" id="2oHwIWH4wJa" role="2Oq$k0">
                      <ref role="1M0zk5" node="4CcqqpgFzk1" resolve="jsonNumber" />
                    </node>
                    <node concept="3TrcHB" id="2oHwIWH4wJb" role="2OqNvi">
                      <ref role="3TsBF5" to="tay9:3QNkN21Fl5P" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="4CcqqpgFzk1" role="JncvA">
            <property role="TrG5h" value="jsonNumber" />
            <node concept="2jxLKc" id="4CcqqpgFzk2" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="4CcqqpgFJRq" role="3cqZAp">
          <ref role="JncvD" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
          <node concept="37vLTw" id="4CcqqpgFKMU" role="JncvB">
            <ref role="3cqZAo" node="4CcqqpgE$Rm" resolve="value" />
          </node>
          <node concept="3clFbS" id="4CcqqpgFJRu" role="Jncv$">
            <node concept="3cpWs8" id="4CcqqpgFMSx" role="3cqZAp">
              <node concept="3cpWsn" id="4CcqqpgFMSy" role="3cpWs9">
                <property role="TrG5h" value="objectNode" />
                <node concept="3uibUv" id="4CcqqpgFMSz" role="1tU5fm">
                  <ref role="3uigEE" to="lhlt:~ObjectNode" resolve="ObjectNode" />
                </node>
                <node concept="2OqwBi" id="4CcqqpgFNXn" role="33vP2m">
                  <node concept="37vLTw" id="4CcqqpgFNy$" role="2Oq$k0">
                    <ref role="3cqZAo" node="4CcqqpgEEHf" resolve="objectMapper" />
                  </node>
                  <node concept="liA8E" id="4CcqqpgFOMK" role="2OqNvi">
                    <ref role="37wK5l" to="7k8f:~ObjectMapper.createObjectNode()" resolve="createObjectNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4CcqqpgGAn3" role="3cqZAp">
              <node concept="2OqwBi" id="4CcqqpgGE5e" role="3clFbG">
                <node concept="2OqwBi" id="4CcqqpgGBfq" role="2Oq$k0">
                  <node concept="Jnkvi" id="4CcqqpgGAn1" role="2Oq$k0">
                    <ref role="1M0zk5" node="4CcqqpgFJRw" resolve="jsonObject" />
                  </node>
                  <node concept="3Tsc0h" id="4CcqqpgGC8j" role="2OqNvi">
                    <ref role="3TtcxE" to="tay9:3QNkN21Flbb" resolve="pairs" />
                  </node>
                </node>
                <node concept="2es0OD" id="4CcqqpgGH_D" role="2OqNvi">
                  <node concept="1bVj0M" id="4CcqqpgGH_F" role="23t8la">
                    <node concept="3clFbS" id="4CcqqpgGH_G" role="1bW5cS">
                      <node concept="3clFbF" id="4CcqqpgGIf0" role="3cqZAp">
                        <node concept="2OqwBi" id="4CcqqpgGJ6d" role="3clFbG">
                          <node concept="37vLTw" id="4CcqqpgGIeZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="4CcqqpgFMSy" resolve="objectNode" />
                          </node>
                          <node concept="liA8E" id="4CcqqpgGKF8" role="2OqNvi">
                            <ref role="37wK5l" to="lhlt:~ObjectNode.set(java.lang.String,com.fasterxml.jackson.databind.JsonNode)" resolve="set" />
                            <node concept="2OqwBi" id="4CcqqpgGLwD" role="37wK5m">
                              <node concept="37vLTw" id="4CcqqpgGL38" role="2Oq$k0">
                                <ref role="3cqZAo" node="4CcqqpgGH_H" resolve="pair" />
                              </node>
                              <node concept="3TrcHB" id="4CcqqpgGMbm" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="1rXfSq" id="4CcqqpgGMZN" role="37wK5m">
                              <ref role="37wK5l" node="4CcqqpgE$Pq" resolve="asJsonNode" />
                              <node concept="2OqwBi" id="4CcqqpgGNRz" role="37wK5m">
                                <node concept="37vLTw" id="4CcqqpgGNsf" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4CcqqpgGH_H" resolve="pair" />
                                </node>
                                <node concept="3TrEf2" id="4CcqqpgGOyz" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tay9:3QNkN21Fl62" resolve="value" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4CcqqpgGH_H" role="1bW2Oz">
                      <property role="TrG5h" value="pair" />
                      <node concept="2jxLKc" id="4CcqqpgGH_I" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4CcqqpgFP9o" role="3cqZAp">
              <node concept="37vLTw" id="4CcqqpgFPOn" role="3cqZAk">
                <ref role="3cqZAo" node="4CcqqpgFMSy" resolve="objectNode" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="4CcqqpgFJRw" role="JncvA">
            <property role="TrG5h" value="jsonObject" />
            <node concept="2jxLKc" id="4CcqqpgFJRx" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="4CcqqpgFRgy" role="3cqZAp">
          <ref role="JncvD" to="tay9:3QNkN21Fl4l" resolve="JsonString" />
          <node concept="37vLTw" id="4CcqqpgFS0k" role="JncvB">
            <ref role="3cqZAo" node="4CcqqpgE$Rm" resolve="value" />
          </node>
          <node concept="3clFbS" id="4CcqqpgFRgA" role="Jncv$">
            <node concept="3cpWs6" id="4CcqqpgFUNg" role="3cqZAp">
              <node concept="2YIFZM" id="4CcqqpgFZVD" role="3cqZAk">
                <ref role="37wK5l" to="lhlt:~TextNode.valueOf(java.lang.String)" resolve="valueOf" />
                <ref role="1Pybhc" to="lhlt:~TextNode" resolve="TextNode" />
                <node concept="2OqwBi" id="4CcqqpgG1pD" role="37wK5m">
                  <node concept="Jnkvi" id="4CcqqpgG0Fo" role="2Oq$k0">
                    <ref role="1M0zk5" node="4CcqqpgFRgC" resolve="jsonString" />
                  </node>
                  <node concept="3TrcHB" id="4CcqqpgG2p$" role="2OqNvi">
                    <ref role="3TsBF5" to="tay9:3QNkN21Fl5A" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="4CcqqpgFRgC" role="JncvA">
            <property role="TrG5h" value="jsonString" />
            <node concept="2jxLKc" id="4CcqqpgFRgD" role="1tU5fm" />
          </node>
        </node>
        <node concept="YS8fn" id="4CcqqpgEIRq" role="3cqZAp">
          <node concept="2ShNRf" id="4CcqqpgEIWf" role="YScLw">
            <node concept="1pGfFk" id="4CcqqpgEJ9$" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
              <node concept="3cpWs3" id="4CcqqpgEKy7" role="37wK5m">
                <node concept="2OqwBi" id="4CcqqpgELtm" role="3uHU7w">
                  <node concept="2OqwBi" id="4CcqqpgEKMQ" role="2Oq$k0">
                    <node concept="37vLTw" id="4CcqqpgEKyy" role="2Oq$k0">
                      <ref role="3cqZAo" node="4CcqqpgE$Rm" resolve="value" />
                    </node>
                    <node concept="2yIwOk" id="4CcqqpgEL5k" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="4CcqqpgELPw" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="4CcqqpgEJox" role="3uHU7B">
                  <property role="Xl_RC" value="JsonMapper#asJsonNode not implemented for: " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4CcqqpgE$Nt" role="1B3o_S" />
      <node concept="3uibUv" id="4CcqqpgE$Ph" role="3clF45">
        <ref role="3uigEE" to="7k8f:~JsonNode" resolve="JsonNode" />
      </node>
      <node concept="37vLTG" id="4CcqqpgE$Rm" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3Tqbb2" id="4CcqqpgE$Rl" role="1tU5fm">
          <ref role="ehGHo" to="tay9:3QNkN21Fl49" resolve="IJsonValue" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4CcqqpgF83y" role="jymVt" />
    <node concept="2YIFZL" id="24g6AyKs5FS" role="jymVt">
      <property role="TrG5h" value="fromJsonNode" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="24g6AyKs5FV" role="3clF47">
        <node concept="3SKdUt" id="24g6AyKseio" role="3cqZAp">
          <node concept="1PaTwC" id="5xFSyvKSMBI" role="1aUNEU">
            <node concept="3oM_SD" id="5xFSyvKSMBJ" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="5xFSyvKSMBK" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5xFSyvKSMBL" role="1PaTwD">
              <property role="3oM_SC" value="implement" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="24g6AyKs9GG" role="3cqZAp">
          <node concept="3clFbS" id="24g6AyKs9GI" role="3clFbx">
            <node concept="3clFbF" id="24g6AyKsb8r" role="3cqZAp">
              <node concept="2YIFZM" id="24g6AyKsbck" role="3clFbG">
                <ref role="37wK5l" node="6z3ZIK8K24C" resolve="array" />
                <ref role="1Pybhc" node="4$rLBnujVD2" resolve="JsonFactory" />
                <node concept="2ShNRf" id="24g6AyKscp2" role="37wK5m">
                  <node concept="kMnCb" id="24g6AyKsecg" role="2ShVmc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="24g6AyKsalk" role="3clFbw">
            <node concept="37vLTw" id="24g6AyKs9OP" role="2Oq$k0">
              <ref role="3cqZAo" node="24g6AyKs5Nm" resolve="jsonNode" />
            </node>
            <node concept="liA8E" id="24g6AyKsb7i" role="2OqNvi">
              <ref role="37wK5l" to="7k8f:~JsonNode.isArray()" resolve="isArray" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="24g6AyKs5Vk" role="3cqZAp">
          <node concept="2ShNRf" id="24g6AyKs5Vl" role="YScLw">
            <node concept="1pGfFk" id="24g6AyKs5Vm" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
              <node concept="3cpWs3" id="24g6AyKs5Vn" role="37wK5m">
                <node concept="Xl_RD" id="24g6AyKs5Vt" role="3uHU7B">
                  <property role="Xl_RC" value="JsonMapper#fromJsonNode not implemented for: " />
                </node>
                <node concept="2OqwBi" id="24g6AyKs86V" role="3uHU7w">
                  <node concept="2OqwBi" id="24g6AyKs6$P" role="2Oq$k0">
                    <node concept="37vLTw" id="24g6AyKs6aB" role="2Oq$k0">
                      <ref role="3cqZAo" node="24g6AyKs5Nm" resolve="jsonNode" />
                    </node>
                    <node concept="liA8E" id="24g6AyKs7h2" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                    </node>
                  </node>
                  <node concept="liA8E" id="24g6AyKs8V0" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="24g6AyKs5xF" role="1B3o_S" />
      <node concept="3Tqbb2" id="24g6AyKs5FC" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl49" resolve="IJsonValue" />
      </node>
      <node concept="37vLTG" id="24g6AyKs5Nm" role="3clF46">
        <property role="TrG5h" value="jsonNode" />
        <node concept="3uibUv" id="24g6AyKs5Nl" role="1tU5fm">
          <ref role="3uigEE" to="7k8f:~JsonNode" resolve="JsonNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="24g6AyKs5NZ" role="jymVt" />
    <node concept="3Tm1VV" id="4CcqqpgCNAQ" role="1B3o_S" />
  </node>
</model>

