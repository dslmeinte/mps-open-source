<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c96b5359-e6d4-4be6-99a4-fa93d4243aa1(MetaUtil.mps)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
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
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="312cEu" id="2LYzq1l9MFy">
    <property role="TrG5h" value="MpsUtil" />
    <node concept="2tJIrI" id="LTSTew$UQJ" role="jymVt" />
    <node concept="2YIFZL" id="2LYzq1l9RmD" role="jymVt">
      <property role="TrG5h" value="allLanguages" />
      <node concept="3clFbS" id="2LYzq1l9N4g" role="3clF47">
        <node concept="3clFbF" id="LTSTew_j8Q" role="3cqZAp">
          <node concept="2ShNRf" id="LTSTew_j8M" role="3clFbG">
            <node concept="kMnCb" id="LTSTew_jgi" role="2ShVmc">
              <node concept="3uibUv" id="LTSTew_jgl" role="kMuH3">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
              <node concept="1bVj0M" id="LTSTew_jgn" role="kMx8a">
                <node concept="3clFbS" id="LTSTew_jgo" role="1bW5cS">
                  <node concept="3clFbF" id="LTSTew_jnk" role="3cqZAp">
                    <node concept="2OqwBi" id="LTSTew_jnm" role="3clFbG">
                      <node concept="2YIFZM" id="LTSTew_jnn" role="2Oq$k0">
                        <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                        <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance()" resolve="getInstance" />
                      </node>
                      <node concept="liA8E" id="LTSTew_jno" role="2OqNvi">
                        <ref role="37wK5l" to="vndm:~LanguageRegistry.getAllLanguages()" resolve="getAllLanguages" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="2LYzq1l9N3W" role="3clF45">
        <node concept="3uibUv" id="2LYzq1l9N49" role="A3Ik2">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2LYzq1l9MGe" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2LYzq1l9Oyw" role="jymVt" />
    <node concept="2YIFZL" id="2LYzq1l9WPL" role="jymVt">
      <property role="TrG5h" value="allLanguageNames" />
      <node concept="3Tm1VV" id="2LYzq1l9WPO" role="1B3o_S" />
      <node concept="3clFbS" id="2LYzq1l9WPP" role="3clF47">
        <node concept="3clFbF" id="2LYzq1l9WSi" role="3cqZAp">
          <node concept="2OqwBi" id="2LYzq1l9Y_r" role="3clFbG">
            <node concept="2OqwBi" id="2LYzq1l9X5k" role="2Oq$k0">
              <node concept="1rXfSq" id="2LYzq1l9WSh" role="2Oq$k0">
                <ref role="37wK5l" node="2LYzq1l9RmD" resolve="allLanguages" />
              </node>
              <node concept="3$u5V9" id="2LYzq1l9XkG" role="2OqNvi">
                <node concept="1bVj0M" id="2LYzq1l9XkI" role="23t8la">
                  <node concept="3clFbS" id="2LYzq1l9XkJ" role="1bW5cS">
                    <node concept="3clFbF" id="2LYzq1l9X_6" role="3cqZAp">
                      <node concept="3cpWs3" id="2LYzq1l9XZM" role="3clFbG">
                        <node concept="2OqwBi" id="2LYzq1l9Ycz" role="3uHU7w">
                          <node concept="37vLTw" id="2LYzq1l9XZX" role="2Oq$k0">
                            <ref role="3cqZAo" node="2LYzq1l9XkK" resolve="l" />
                          </node>
                          <node concept="liA8E" id="2LYzq1l9YmC" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2LYzq1l9X_5" role="3uHU7B">
                          <property role="Xl_RC" value="" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2LYzq1l9XkK" role="1bW2Oz">
                    <property role="TrG5h" value="l" />
                    <node concept="2jxLKc" id="2LYzq1l9XkL" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="2LYzq1l9Zap" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="2LYzq1l9Xr7" role="3clF45">
        <node concept="17QB3L" id="2LYzq1l9XvY" role="_ZDj9" />
      </node>
    </node>
    <node concept="2tJIrI" id="7x4zcIWDDqa" role="jymVt" />
    <node concept="2YIFZL" id="7x4zcIWDDtl" role="jymVt">
      <property role="TrG5h" value="findLanguageByName" />
      <node concept="3uibUv" id="7x4zcIWDDvb" role="3clF45">
        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
      </node>
      <node concept="3Tm1VV" id="7x4zcIWDDto" role="1B3o_S" />
      <node concept="3clFbS" id="7x4zcIWDDtp" role="3clF47">
        <node concept="3clFbF" id="7x4zcIWDDy6" role="3cqZAp">
          <node concept="2OqwBi" id="7x4zcIWDDT7" role="3clFbG">
            <node concept="1rXfSq" id="7x4zcIWDDIE" role="2Oq$k0">
              <ref role="37wK5l" node="2LYzq1l9RmD" resolve="allLanguages" />
            </node>
            <node concept="1z4cxt" id="7x4zcIWDE3r" role="2OqNvi">
              <node concept="1bVj0M" id="7x4zcIWDE3t" role="23t8la">
                <node concept="3clFbS" id="7x4zcIWDE3u" role="1bW5cS">
                  <node concept="3clFbF" id="7x4zcIWDE9e" role="3cqZAp">
                    <node concept="17R0WA" id="7x4zcIWDE$S" role="3clFbG">
                      <node concept="37vLTw" id="7x4zcIWDECD" role="3uHU7w">
                        <ref role="3cqZAo" node="7x4zcIWDDwU" resolve="name" />
                      </node>
                      <node concept="2OqwBi" id="7x4zcIWDEgz" role="3uHU7B">
                        <node concept="37vLTw" id="7x4zcIWDE9d" role="2Oq$k0">
                          <ref role="3cqZAo" node="7x4zcIWDE3v" resolve="l" />
                        </node>
                        <node concept="liA8E" id="7x4zcIWDEmP" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7x4zcIWDE3v" role="1bW2Oz">
                  <property role="TrG5h" value="l" />
                  <node concept="2jxLKc" id="7x4zcIWDE3w" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7x4zcIWDDwU" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7x4zcIWDDwT" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="LTSTewzeyT" role="jymVt" />
    <node concept="2YIFZL" id="LTSTewzeBA" role="jymVt">
      <property role="TrG5h" value="conceptsOf" />
      <node concept="A3Dl8" id="LTSTewzeEd" role="3clF45">
        <node concept="3uibUv" id="LTSTewzeKl" role="A3Ik2">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3Tm1VV" id="LTSTewzeBD" role="1B3o_S" />
      <node concept="3clFbS" id="LTSTewzeBE" role="3clF47">
        <node concept="3clFbF" id="LTSTew_heo" role="3cqZAp">
          <node concept="2ShNRf" id="LTSTew_hek" role="3clFbG">
            <node concept="kMnCb" id="LTSTew_hlO" role="2ShVmc">
              <node concept="3uibUv" id="LTSTew_hlR" role="kMuH3">
                <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
              </node>
              <node concept="1bVj0M" id="LTSTew_hlT" role="kMx8a">
                <node concept="3clFbS" id="LTSTew_hlU" role="1bW5cS">
                  <node concept="3clFbF" id="LTSTew_hue" role="3cqZAp">
                    <node concept="2OqwBi" id="LTSTew_hug" role="3clFbG">
                      <node concept="37vLTw" id="LTSTew_huh" role="2Oq$k0">
                        <ref role="3cqZAo" node="LTSTewzeLv" resolve="language" />
                      </node>
                      <node concept="liA8E" id="LTSTew_hui" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SLanguage.getConcepts()" resolve="getConcepts" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="LTSTewzeLv" role="3clF46">
        <property role="TrG5h" value="language" />
        <node concept="3uibUv" id="LTSTewzeLu" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2LYzq1l9Zjb" role="jymVt" />
    <node concept="2tJIrI" id="LTSTew_rwj" role="jymVt" />
    <node concept="2YIFZL" id="5lOnQVy8Pl5" role="jymVt">
      <property role="TrG5h" value="superConceptsOf" />
      <node concept="3clFbS" id="5lOnQVy8Pl8" role="3clF47">
        <node concept="3clFbF" id="5lOnQVyalgK" role="3cqZAp">
          <node concept="2ShNRf" id="5lOnQVyalgG" role="3clFbG">
            <node concept="kMnCb" id="5lOnQVyal_l" role="2ShVmc">
              <node concept="3uibUv" id="5lOnQVyal_D" role="kMuH3">
                <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
              </node>
              <node concept="1bVj0M" id="5lOnQVyalE3" role="kMx8a">
                <node concept="3clFbS" id="5lOnQVyalE4" role="1bW5cS">
                  <node concept="3clFbJ" id="5lOnQVyalFC" role="3cqZAp">
                    <node concept="2ZW3vV" id="5lOnQVyam7Q" role="3clFbw">
                      <node concept="3uibUv" id="5lOnQVyamf$" role="2ZW6by">
                        <ref role="3uigEE" to="c17a:~SInterfaceConcept" resolve="SInterfaceConcept" />
                      </node>
                      <node concept="37vLTw" id="5lOnQVyalHq" role="2ZW6bz">
                        <ref role="3cqZAo" node="5lOnQVy8RKt" resolve="abstractConcept" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5lOnQVyalFE" role="3clFbx">
                      <node concept="1DcWWT" id="5lOnQVyamhn" role="3cqZAp">
                        <node concept="3cpWsn" id="5lOnQVyamho" role="1Duv9x">
                          <property role="TrG5h" value="superInterface" />
                          <node concept="3uibUv" id="5lOnQVyaJ_o" role="1tU5fm">
                            <ref role="3uigEE" to="c17a:~SInterfaceConcept" resolve="SInterfaceConcept" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5lOnQVyaotu" role="1DdaDG">
                          <node concept="1eOMI4" id="5lOnQVyanSE" role="2Oq$k0">
                            <node concept="10QFUN" id="5lOnQVyanSB" role="1eOMHV">
                              <node concept="3uibUv" id="5lOnQVyanSG" role="10QFUM">
                                <ref role="3uigEE" to="c17a:~SInterfaceConcept" resolve="SInterfaceConcept" />
                              </node>
                              <node concept="37vLTw" id="5lOnQVyanSH" role="10QFUP">
                                <ref role="3cqZAo" node="5lOnQVy8RKt" resolve="abstractConcept" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="5lOnQVyaoTo" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SInterfaceConcept.getSuperInterfaces()" resolve="getSuperInterfaces" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="5lOnQVyamhq" role="2LFqv$">
                          <node concept="2n63Yl" id="5lOnQVyaoXd" role="3cqZAp">
                            <node concept="37vLTw" id="5lOnQVyaoZI" role="2n6tg2">
                              <ref role="3cqZAo" node="5lOnQVyamho" resolve="superInterface" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="5lOnQVyapiU" role="9aQIa">
                      <node concept="3clFbS" id="5lOnQVyapiV" role="9aQI4">
                        <node concept="3cpWs8" id="5lOnQVyap6n" role="3cqZAp">
                          <node concept="3cpWsn" id="5lOnQVyap6o" role="3cpWs9">
                            <property role="TrG5h" value="concept" />
                            <node concept="3uibUv" id="5lOnQVyap6p" role="1tU5fm">
                              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                            </node>
                            <node concept="1eOMI4" id="5lOnQVyap6q" role="33vP2m">
                              <node concept="10QFUN" id="5lOnQVyap6r" role="1eOMHV">
                                <node concept="3uibUv" id="5lOnQVyap6s" role="10QFUM">
                                  <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                                </node>
                                <node concept="37vLTw" id="5lOnQVyap6t" role="10QFUP">
                                  <ref role="3cqZAo" node="5lOnQVy8RKt" resolve="abstractConcept" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="5lOnQVy920N" role="3cqZAp">
                          <node concept="3clFbS" id="5lOnQVy920P" role="3clFbx">
                            <node concept="2n63Yl" id="5lOnQVy93Vs" role="3cqZAp">
                              <node concept="2OqwBi" id="5lOnQVyar8Q" role="2n6tg2">
                                <node concept="37vLTw" id="5lOnQVyaqCq" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5lOnQVyap6o" resolve="concept" />
                                </node>
                                <node concept="liA8E" id="5lOnQVyarwN" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SConcept.getSuperConcept()" resolve="getSuperConcept" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="5lOnQVy93_J" role="3clFbw">
                            <node concept="10Nm6u" id="5lOnQVy93Lq" role="3uHU7w" />
                            <node concept="2OqwBi" id="5lOnQVy92I1" role="3uHU7B">
                              <node concept="37vLTw" id="5lOnQVyaqiR" role="2Oq$k0">
                                <ref role="3cqZAo" node="5lOnQVyap6o" resolve="concept" />
                              </node>
                              <node concept="liA8E" id="5lOnQVy93gk" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SConcept.getSuperConcept()" resolve="getSuperConcept" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1DcWWT" id="5lOnQVy9v0q" role="3cqZAp">
                          <node concept="3clFbS" id="5lOnQVy9v0s" role="2LFqv$">
                            <node concept="2n63Yl" id="5lOnQVy9xB7" role="3cqZAp">
                              <node concept="37vLTw" id="5lOnQVy9xKP" role="2n6tg2">
                                <ref role="3cqZAo" node="5lOnQVy9v0t" resolve="intfc" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="5lOnQVy9v0t" role="1Duv9x">
                            <property role="TrG5h" value="intfc" />
                            <node concept="3uibUv" id="5lOnQVy9x3H" role="1tU5fm">
                              <ref role="3uigEE" to="c17a:~SInterfaceConcept" resolve="SInterfaceConcept" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5lOnQVy9vRY" role="1DdaDG">
                            <node concept="37vLTw" id="5lOnQVyarJk" role="2Oq$k0">
                              <ref role="3cqZAo" node="5lOnQVyap6o" resolve="concept" />
                            </node>
                            <node concept="liA8E" id="5lOnQVy9wuK" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SConcept.getSuperInterfaces()" resolve="getSuperInterfaces" />
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
      <node concept="3Tm1VV" id="5lOnQVyb1cy" role="1B3o_S" />
      <node concept="A3Dl8" id="5lOnQVy8Q6k" role="3clF45">
        <node concept="3uibUv" id="5lOnQVyaEF1" role="A3Ik2">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="5lOnQVy8RKt" role="3clF46">
        <property role="TrG5h" value="abstractConcept" />
        <node concept="3uibUv" id="5lOnQVy8RKs" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5lOnQVyb5g8" role="jymVt" />
    <node concept="2YIFZL" id="LTSTew$UPa" role="jymVt">
      <property role="TrG5h" value="featuresOf" />
      <node concept="A3Dl8" id="LTSTew$UVo" role="3clF45">
        <node concept="3qUE_q" id="LTSTew_kCY" role="A3Ik2">
          <node concept="3uibUv" id="LTSTew_kD4" role="3qUE_r">
            <ref role="3uigEE" to="c17a:~SConceptFeature" resolve="SConceptFeature" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="LTSTew$UPd" role="1B3o_S" />
      <node concept="3clFbS" id="LTSTew$UPe" role="3clF47">
        <node concept="3clFbF" id="LTSTewB6iZ" role="3cqZAp">
          <node concept="2OqwBi" id="LTSTewEPfj" role="3clFbG">
            <node concept="2OqwBi" id="LTSTewE1F6" role="2Oq$k0">
              <node concept="1rXfSq" id="LTSTewB6iX" role="2Oq$k0">
                <ref role="37wK5l" node="5qpupb_eX5j" resolve="ownProperties" />
                <node concept="37vLTw" id="LTSTewB6j_" role="37wK5m">
                  <ref role="3cqZAo" node="LTSTew$W9a" resolve="concept" />
                </node>
              </node>
              <node concept="3QWeyG" id="LTSTewE1Wd" role="2OqNvi">
                <node concept="1rXfSq" id="LTSTewE21l" role="576Qk">
                  <ref role="37wK5l" node="5qpupb_eX5K" resolve="ownContainmentLinks" />
                  <node concept="37vLTw" id="LTSTewE21I" role="37wK5m">
                    <ref role="3cqZAo" node="LTSTew$W9a" resolve="concept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3QWeyG" id="LTSTewEPtU" role="2OqNvi">
              <node concept="1rXfSq" id="LTSTewEPvE" role="576Qk">
                <ref role="37wK5l" node="5qpupb_eX62" resolve="ownReferenceLinks" />
                <node concept="37vLTw" id="LTSTewFCEa" role="37wK5m">
                  <ref role="3cqZAo" node="LTSTew$W9a" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="LTSTew$W9a" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="LTSTew$W99" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="LTSTew_lPr" role="jymVt" />
    <node concept="2YIFZL" id="5qpupb_eX6R" role="jymVt">
      <property role="TrG5h" value="named" />
      <node concept="37vLTG" id="5qpupb_eX6S" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5qpupb_eX6T" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="5qpupb_eX6U" role="3clF47">
        <node concept="3clFbF" id="5qpupb_ghSj" role="3cqZAp">
          <node concept="2OqwBi" id="5qpupb_giak" role="3clFbG">
            <node concept="37vLTw" id="5qpupb_ghSi" role="2Oq$k0">
              <ref role="3cqZAo" node="5qpupb_eX6S" resolve="concept" />
            </node>
            <node concept="liA8E" id="5qpupb_giEq" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
              <node concept="35c_gC" id="5qpupb_giJE" role="37wK5m">
                <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5qpupb_eX6V" role="1B3o_S" />
      <node concept="10P_77" id="5qpupb_eX6W" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="LTSTew_lR0" role="jymVt" />
    <node concept="2tJIrI" id="LTSTew_s1i" role="jymVt" />
    <node concept="2YIFZL" id="5qpupb_eX54" role="jymVt">
      <property role="TrG5h" value="isOwn" />
      <node concept="37vLTG" id="1ozEN9dN3XH" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="1ozEN9dN4zZ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="5qpupb_eX55" role="3clF46">
        <property role="TrG5h" value="feature" />
        <node concept="3uibUv" id="5qpupb_f1PD" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConceptFeature" resolve="SConceptFeature" />
        </node>
      </node>
      <node concept="3clFbS" id="5qpupb_eX57" role="3clF47">
        <node concept="3clFbF" id="1ozEN9dN1KV" role="3cqZAp">
          <node concept="17R0WA" id="1ozEN9dN2OZ" role="3clFbG">
            <node concept="37vLTw" id="1ozEN9dN5nq" role="3uHU7w">
              <ref role="3cqZAo" node="1ozEN9dN3XH" resolve="concept" />
            </node>
            <node concept="2OqwBi" id="1ozEN9dN1XI" role="3uHU7B">
              <node concept="37vLTw" id="1ozEN9dN1KT" role="2Oq$k0">
                <ref role="3cqZAo" node="5qpupb_eX55" resolve="feature" />
              </node>
              <node concept="liA8E" id="1ozEN9dN2uY" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SConceptFeature.getOwner()" resolve="getOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5qpupb_eX5h" role="1B3o_S" />
      <node concept="10P_77" id="5qpupb_eX5i" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="LTSTew_rj8" role="jymVt" />
    <node concept="2YIFZL" id="5qpupb_eX5j" role="jymVt">
      <property role="TrG5h" value="ownProperties" />
      <node concept="37vLTG" id="5qpupb_eX5k" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5qpupb_f3xe" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="5qpupb_eX5m" role="3clF47">
        <node concept="3clFbF" id="5qpupb_feO4" role="3cqZAp">
          <node concept="2OqwBi" id="5qpupb_fg$Q" role="3clFbG">
            <node concept="2ShNRf" id="5qpupb_feO0" role="2Oq$k0">
              <node concept="kMnCb" id="5qpupb_ff1x" role="2ShVmc">
                <node concept="3uibUv" id="5qpupb_ff6Y" role="kMuH3">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                </node>
                <node concept="1bVj0M" id="5qpupb_ffe8" role="kMx8a">
                  <node concept="3clFbS" id="5qpupb_ffe9" role="1bW5cS">
                    <node concept="3clFbF" id="5qpupb_ffmh" role="3cqZAp">
                      <node concept="2OqwBi" id="5qpupb_ffFC" role="3clFbG">
                        <node concept="37vLTw" id="5qpupb_ffmg" role="2Oq$k0">
                          <ref role="3cqZAo" node="5qpupb_eX5k" resolve="concept" />
                        </node>
                        <node concept="liA8E" id="5qpupb_fgeX" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="5qpupb_fy9Q" role="2OqNvi">
              <node concept="1bVj0M" id="5qpupb_fy9S" role="23t8la">
                <node concept="3clFbS" id="5qpupb_fy9T" role="1bW5cS">
                  <node concept="3clFbF" id="5qpupb_fyiy" role="3cqZAp">
                    <node concept="22lmx$" id="LTSTewEwOa" role="3clFbG">
                      <node concept="17R0WA" id="LTSTewExXV" role="3uHU7w">
                        <node concept="Xl_RD" id="LTSTewExYh" role="3uHU7w">
                          <property role="Xl_RC" value="name" />
                        </node>
                        <node concept="2OqwBi" id="LTSTewExps" role="3uHU7B">
                          <node concept="37vLTw" id="LTSTewEwOw" role="2Oq$k0">
                            <ref role="3cqZAo" node="5qpupb_fy9U" resolve="p" />
                          </node>
                          <node concept="liA8E" id="LTSTewExzx" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="5qpupb_f$4M" role="3uHU7B">
                        <ref role="37wK5l" node="5qpupb_eX54" resolve="isOwn" />
                        <node concept="37vLTw" id="1ozEN9dN5Oc" role="37wK5m">
                          <ref role="3cqZAo" node="5qpupb_eX5k" resolve="concept" />
                        </node>
                        <node concept="37vLTw" id="5qpupb_f$lK" role="37wK5m">
                          <ref role="3cqZAo" node="5qpupb_fy9U" resolve="p" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5qpupb_fy9U" role="1bW2Oz">
                  <property role="TrG5h" value="p" />
                  <node concept="2jxLKc" id="5qpupb_fy9V" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5qpupb_eX5y" role="1B3o_S" />
      <node concept="A3Dl8" id="5qpupb_f6OL" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="LTSTew_rfR" role="jymVt" />
    <node concept="2YIFZL" id="5qpupb_eX5K" role="jymVt">
      <property role="TrG5h" value="ownContainmentLinks" />
      <node concept="37vLTG" id="5qpupb_eX5L" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5qpupb_eX5M" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="5qpupb_eX5N" role="3clF47">
        <node concept="3clFbF" id="5qpupb_f_z3" role="3cqZAp">
          <node concept="2OqwBi" id="5qpupb_fC0g" role="3clFbG">
            <node concept="2ShNRf" id="5qpupb_f_yZ" role="2Oq$k0">
              <node concept="kMnCb" id="5qpupb_fAzN" role="2ShVmc">
                <node concept="3uibUv" id="5qpupb_fADc" role="kMuH3">
                  <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                </node>
                <node concept="1bVj0M" id="5qpupb_fAJG" role="kMx8a">
                  <node concept="3clFbS" id="5qpupb_fAJH" role="1bW5cS">
                    <node concept="3clFbF" id="5qpupb_fARD" role="3cqZAp">
                      <node concept="2OqwBi" id="5qpupb_fB6p" role="3clFbG">
                        <node concept="37vLTw" id="5qpupb_fARC" role="2Oq$k0">
                          <ref role="3cqZAo" node="5qpupb_eX5L" resolve="concept" />
                        </node>
                        <node concept="liA8E" id="5qpupb_fBEz" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="5qpupb_fTbW" role="2OqNvi">
              <node concept="1bVj0M" id="5qpupb_fTbY" role="23t8la">
                <node concept="3clFbS" id="5qpupb_fTbZ" role="1bW5cS">
                  <node concept="3clFbF" id="5qpupb_fTus" role="3cqZAp">
                    <node concept="1rXfSq" id="5qpupb_fTur" role="3clFbG">
                      <ref role="37wK5l" node="5qpupb_eX54" resolve="isOwn" />
                      <node concept="37vLTw" id="1ozEN9dN6df" role="37wK5m">
                        <ref role="3cqZAo" node="5qpupb_eX5L" resolve="concept" />
                      </node>
                      <node concept="37vLTw" id="5qpupb_fTJp" role="37wK5m">
                        <ref role="3cqZAo" node="5qpupb_fTc0" resolve="cl" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5qpupb_fTc0" role="1bW2Oz">
                  <property role="TrG5h" value="cl" />
                  <node concept="2jxLKc" id="5qpupb_fTc1" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5qpupb_eX5Z" role="1B3o_S" />
      <node concept="A3Dl8" id="5qpupb_f8cl" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="LTSTew_rmq" role="jymVt" />
    <node concept="2YIFZL" id="5qpupb_eX62" role="jymVt">
      <property role="TrG5h" value="ownReferenceLinks" />
      <node concept="37vLTG" id="5qpupb_eX63" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5qpupb_eX64" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="5qpupb_eX65" role="3clF47">
        <node concept="3clFbF" id="5qpupb_fVqT" role="3cqZAp">
          <node concept="2OqwBi" id="5qpupb_fXeQ" role="3clFbG">
            <node concept="2ShNRf" id="5qpupb_fVqP" role="2Oq$k0">
              <node concept="kMnCb" id="5qpupb_fVFz" role="2ShVmc">
                <node concept="3uibUv" id="5qpupb_fVKu" role="kMuH3">
                  <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                </node>
                <node concept="1bVj0M" id="5qpupb_fVR$" role="kMx8a">
                  <node concept="3clFbS" id="5qpupb_fVR_" role="1bW5cS">
                    <node concept="3clFbF" id="5qpupb_fVZf" role="3cqZAp">
                      <node concept="2OqwBi" id="5qpupb_fWms" role="3clFbG">
                        <node concept="37vLTw" id="5qpupb_fVZe" role="2Oq$k0">
                          <ref role="3cqZAo" node="5qpupb_eX63" resolve="concept" />
                        </node>
                        <node concept="liA8E" id="5qpupb_fWTN" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="5qpupb_geqy" role="2OqNvi">
              <node concept="1bVj0M" id="5qpupb_geq$" role="23t8la">
                <node concept="3clFbS" id="5qpupb_geq_" role="1bW5cS">
                  <node concept="3clFbF" id="5qpupb_geHN" role="3cqZAp">
                    <node concept="1rXfSq" id="5qpupb_geHM" role="3clFbG">
                      <ref role="37wK5l" node="5qpupb_eX54" resolve="isOwn" />
                      <node concept="37vLTw" id="1ozEN9dN6zq" role="37wK5m">
                        <ref role="3cqZAo" node="5qpupb_eX63" resolve="concept" />
                      </node>
                      <node concept="37vLTw" id="5qpupb_geYs" role="37wK5m">
                        <ref role="3cqZAo" node="5qpupb_geqA" resolve="rl" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5qpupb_geqA" role="1bW2Oz">
                  <property role="TrG5h" value="rl" />
                  <node concept="2jxLKc" id="5qpupb_geqB" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5qpupb_eX6h" role="1B3o_S" />
      <node concept="A3Dl8" id="5qpupb_fUzm" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="LTSTew_rpH" role="jymVt" />
    <node concept="2tJIrI" id="LTSTewD8jf" role="jymVt" />
    <node concept="2YIFZL" id="6RuYvJLvZIY" role="jymVt">
      <property role="TrG5h" value="typeNodeOf" />
      <node concept="3uibUv" id="6RuYvJLw0FT" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="6RuYvJLvZJ1" role="1B3o_S" />
      <node concept="3clFbS" id="6RuYvJLvZJ2" role="3clF47">
        <node concept="3clFbF" id="6RuYvJLvZO3" role="3cqZAp">
          <node concept="2OqwBi" id="6RuYvJLw0mP" role="3clFbG">
            <node concept="2OqwBi" id="6RuYvJLvZWm" role="2Oq$k0">
              <node concept="37vLTw" id="6RuYvJLvZO2" role="2Oq$k0">
                <ref role="3cqZAo" node="6RuYvJLvZN4" resolve="property" />
              </node>
              <node concept="liA8E" id="6RuYvJLw0gm" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SProperty.getDeclarationNode()" resolve="getDeclarationNode" />
              </node>
            </node>
            <node concept="liA8E" id="6RuYvJLw0$g" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(java.lang.String)" resolve="getReferenceTarget" />
              <node concept="Xl_RD" id="6RuYvJLw0_I" role="37wK5m">
                <property role="Xl_RC" value="dataType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6RuYvJLvZN4" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="6RuYvJLvZN3" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5lOnQVybqGG" role="jymVt" />
    <node concept="2tJIrI" id="5lOnQVybqT$" role="jymVt" />
    <node concept="2YIFZL" id="5lOnQVybrat" role="jymVt">
      <property role="TrG5h" value="documentationFor" />
      <node concept="37vLTG" id="5lOnQVybsMp" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5lOnQVybsN$" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="17QB3L" id="5lOnQVybrnB" role="3clF45" />
      <node concept="3Tm1VV" id="5lOnQVybraw" role="1B3o_S" />
      <node concept="3clFbS" id="5lOnQVybrax" role="3clF47">
        <node concept="3clFbF" id="5lOnQVybCPz" role="3cqZAp">
          <node concept="3K4zz7" id="5lOnQVycbxr" role="3clFbG">
            <node concept="10Nm6u" id="5lOnQVycHCG" role="3K4E3e" />
            <node concept="3clFbC" id="5lOnQVybDsh" role="3K4Cdx">
              <node concept="10Nm6u" id="5lOnQVybDyn" role="3uHU7w" />
              <node concept="2OqwBi" id="5lOnQVybD1x" role="3uHU7B">
                <node concept="37vLTw" id="5lOnQVybCPx" role="2Oq$k0">
                  <ref role="3cqZAo" node="5lOnQVybsMp" resolve="concept" />
                </node>
                <node concept="liA8E" id="5lOnQVybDet" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getDeclarationNode()" resolve="getDeclarationNode" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="5lOnQVycb_c" role="3K4GZi">
              <ref role="37wK5l" node="4N6wDK7AiWt" resolve="documentationFor" />
              <node concept="2OqwBi" id="5lOnQVycbNX" role="37wK5m">
                <node concept="37vLTw" id="5lOnQVycbCb" role="2Oq$k0">
                  <ref role="3cqZAo" node="5lOnQVybsMp" resolve="concept" />
                </node>
                <node concept="liA8E" id="5lOnQVycc0G" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getDeclarationNode()" resolve="getDeclarationNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5lOnQVybU5S" role="jymVt" />
    <node concept="2YIFZL" id="5lOnQVybUDn" role="jymVt">
      <property role="TrG5h" value="documentationOn" />
      <node concept="17QB3L" id="5lOnQVybUMW" role="3clF45" />
      <node concept="3Tm6S6" id="5lOnQVycOM8" role="1B3o_S" />
      <node concept="3clFbS" id="5lOnQVybUDr" role="3clF47">
        <node concept="1DcWWT" id="5lOnQVybWcz" role="3cqZAp">
          <node concept="3clFbS" id="5lOnQVybWc_" role="2LFqv$">
            <node concept="3clFbJ" id="5lOnQVybXph" role="3cqZAp">
              <node concept="3clFbS" id="5lOnQVybXpj" role="3clFbx">
                <node concept="3cpWs6" id="5lOnQVybYR$" role="3cqZAp">
                  <node concept="2OqwBi" id="5lOnQVybZi6" role="3cqZAk">
                    <node concept="37vLTw" id="5lOnQVybZ0Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="5lOnQVybWcA" resolve="attribute" />
                    </node>
                    <node concept="liA8E" id="5lOnQVybZnn" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getProperty(java.lang.String)" resolve="getProperty" />
                      <node concept="Xl_RD" id="5lOnQVybZxu" role="37wK5m">
                        <property role="Xl_RC" value="text" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5lOnQVybXBr" role="3clFbw">
                <node concept="37vLTw" id="5lOnQVybXq0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5lOnQVybWcA" resolve="attribute" />
                </node>
                <node concept="liA8E" id="5lOnQVybYB4" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.isInstanceOfConcept(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isInstanceOfConcept" />
                  <node concept="35c_gC" id="5lOnQVybYCJ" role="37wK5m">
                    <ref role="35c_gD" to="tpce:6OtXG9K2KUD" resolve="DocumentedNodeAnnotation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5lOnQVybWcA" role="1Duv9x">
            <property role="TrG5h" value="attribute" />
            <node concept="3uibUv" id="5lOnQVybWnf" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="2OqwBi" id="5lOnQVybVFA" role="1DdaDG">
            <node concept="37vLTw" id="5lOnQVybVFB" role="2Oq$k0">
              <ref role="3cqZAo" node="5lOnQVybUQ9" resolve="node" />
            </node>
            <node concept="liA8E" id="5lOnQVybVFC" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren(java.lang.String)" resolve="getChildren" />
              <node concept="Xl_RD" id="5lOnQVybVFD" role="37wK5m">
                <property role="Xl_RC" value="smodelAttribute" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5lOnQVybXaK" role="3cqZAp">
          <node concept="10Nm6u" id="5lOnQVybXhf" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="5lOnQVybUQ9" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5lOnQVybUQ8" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4N6wDK7AhTC" role="jymVt" />
    <node concept="2YIFZL" id="4N6wDK7AiWt" role="jymVt">
      <property role="TrG5h" value="documentationFor" />
      <node concept="17QB3L" id="4N6wDK7Aj76" role="3clF45" />
      <node concept="3Tm1VV" id="4N6wDK7AiWw" role="1B3o_S" />
      <node concept="3clFbS" id="4N6wDK7AiWx" role="3clF47">
        <node concept="3clFbF" id="4N6wDK7AjB4" role="3cqZAp">
          <node concept="2OqwBi" id="4N6wDK7Ao12" role="3clFbG">
            <node concept="2OqwBi" id="4N6wDK7An0t" role="2Oq$k0">
              <node concept="2OqwBi" id="4N6wDK7AlaI" role="2Oq$k0">
                <node concept="2OqwBi" id="4N6wDK7AjG5" role="2Oq$k0">
                  <node concept="37vLTw" id="4N6wDK7AjB3" role="2Oq$k0">
                    <ref role="3cqZAo" node="4N6wDK7Aj9G" resolve="node" />
                  </node>
                  <node concept="3Tsc0h" id="4N6wDK7AjNw" role="2OqNvi">
                    <ref role="3TtcxE" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                  </node>
                </node>
                <node concept="v3k3i" id="4N6wDK7AmKB" role="2OqNvi">
                  <node concept="chp4Y" id="4N6wDK7AmLG" role="v3oSu">
                    <ref role="cht4Q" to="tpce:6OtXG9K2KUD" resolve="DocumentedNodeAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="4N6wDK7Angg" role="2OqNvi">
                <node concept="1bVj0M" id="4N6wDK7Angi" role="23t8la">
                  <node concept="3clFbS" id="4N6wDK7Angj" role="1bW5cS">
                    <node concept="3clFbF" id="4N6wDK7AnnQ" role="3cqZAp">
                      <node concept="2OqwBi" id="4N6wDK7AnxJ" role="3clFbG">
                        <node concept="37vLTw" id="4N6wDK7AnnP" role="2Oq$k0">
                          <ref role="3cqZAo" node="4N6wDK7Angk" resolve="dna" />
                        </node>
                        <node concept="3TrcHB" id="4N6wDK7AnKA" role="2OqNvi">
                          <ref role="3TsBF5" to="tpce:6OtXG9K2KUL" resolve="text" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4N6wDK7Angk" role="1bW2Oz">
                    <property role="TrG5h" value="dna" />
                    <node concept="2jxLKc" id="4N6wDK7Angl" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uJxvA" id="4N6wDK7Aooz" role="2OqNvi">
              <node concept="Xl_RD" id="4N6wDK7AoKk" role="3uJOhx">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4N6wDK7Aj9G" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4N6wDK7Aj9F" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4N6wDK7AoRi" role="jymVt" />
    <node concept="3Tm1VV" id="2LYzq1l9MFz" role="1B3o_S" />
  </node>
</model>

