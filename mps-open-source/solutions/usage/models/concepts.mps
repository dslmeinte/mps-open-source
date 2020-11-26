<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:92ed4844-c6c4-44d9-96d0-c753d4858b46(concepts)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
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
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4497478346159780083" name="jetbrains.mps.lang.smodel.structure.LanguageRefExpression" flags="ng" index="pHN19">
        <child id="3542851458883491298" name="languageId" index="2V$M_3" />
      </concept>
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
      </concept>
      <concept id="4040588429969021681" name="jetbrains.mps.lang.smodel.structure.ModuleReferenceExpression" flags="nn" index="3rM5sP">
        <property id="4040588429969021683" name="moduleId" index="3rM5sR" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="312cEu" id="5AIwsjkgKNT">
    <property role="TrG5h" value="UsageHelper" />
    <node concept="2tJIrI" id="5AIwsjkh4hb" role="jymVt" />
    <node concept="2YIFZL" id="5AIwsjkh4l3" role="jymVt">
      <property role="TrG5h" value="asSequence" />
      <node concept="A3Dl8" id="5AIwsjkh4nW" role="3clF45">
        <node concept="16syzq" id="5AIwsjkh4oo" role="A3Ik2">
          <ref role="16sUi3" node="5AIwsjkh4nq" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3UIvosib1Gp" role="1B3o_S" />
      <node concept="3clFbS" id="5AIwsjkh4l7" role="3clF47">
        <node concept="3clFbF" id="5AIwsjkh4uF" role="3cqZAp">
          <node concept="2ShNRf" id="5AIwsjkh4uD" role="3clFbG">
            <node concept="kMnCb" id="5AIwsjkh4CQ" role="2ShVmc">
              <node concept="16syzq" id="5AIwsjkh4Dc" role="kMuH3">
                <ref role="16sUi3" node="5AIwsjkh4nq" resolve="T" />
              </node>
              <node concept="1bVj0M" id="5AIwsjkh4DE" role="kMx8a">
                <node concept="3clFbS" id="5AIwsjkh4DF" role="1bW5cS">
                  <node concept="1DcWWT" id="5AIwsjkh4GH" role="3cqZAp">
                    <node concept="3cpWsn" id="5AIwsjkh4GI" role="1Duv9x">
                      <property role="TrG5h" value="t" />
                      <node concept="16syzq" id="5AIwsjkh4QI" role="1tU5fm">
                        <ref role="16sUi3" node="5AIwsjkh4nq" resolve="T" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5AIwsjkh59E" role="1DdaDG">
                      <ref role="3cqZAo" node="5AIwsjkh4qo" resolve="iterable" />
                    </node>
                    <node concept="3clFbS" id="5AIwsjkh4GK" role="2LFqv$">
                      <node concept="2n63Yl" id="5AIwsjkh5dx" role="3cqZAp">
                        <node concept="37vLTw" id="5AIwsjkh5eM" role="2n6tg2">
                          <ref role="3cqZAo" node="5AIwsjkh4GI" resolve="t" />
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
      <node concept="16euLQ" id="5AIwsjkh4nq" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="5AIwsjkh4qo" role="3clF46">
        <property role="TrG5h" value="iterable" />
        <node concept="3uibUv" id="5AIwsjkh4sV" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="16syzq" id="5AIwsjkh4tJ" role="11_B2D">
            <ref role="16sUi3" node="5AIwsjkh4nq" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AIwsjkmBur" role="jymVt" />
    <node concept="2YIFZL" id="5AIwsjkmxHo" role="jymVt">
      <property role="TrG5h" value="asSequence" />
      <node concept="A3Dl8" id="5AIwsjkmxXs" role="3clF45">
        <node concept="16syzq" id="5AIwsjkmy20" role="A3Ik2">
          <ref role="16sUi3" node="5AIwsjkmxSN" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5AIwsjkmxHr" role="1B3o_S" />
      <node concept="3clFbS" id="5AIwsjkmxHs" role="3clF47">
        <node concept="3clFbF" id="5AIwsjkmywU" role="3cqZAp">
          <node concept="2ShNRf" id="5AIwsjkmywS" role="3clFbG">
            <node concept="kMnCb" id="5AIwsjkmyEr" role="2ShVmc">
              <node concept="16syzq" id="5AIwsjkmyEL" role="kMuH3">
                <ref role="16sUi3" node="5AIwsjkmxSN" resolve="T" />
              </node>
              <node concept="1bVj0M" id="5AIwsjkmyKr" role="kMx8a">
                <node concept="3clFbS" id="5AIwsjkmyKs" role="1bW5cS">
                  <node concept="1DcWWT" id="5AIwsjkmyPm" role="3cqZAp">
                    <node concept="3cpWsn" id="5AIwsjkmyPn" role="1Duv9x">
                      <property role="TrG5h" value="t" />
                      <node concept="16syzq" id="5AIwsjkmyZF" role="1tU5fm">
                        <ref role="16sUi3" node="5AIwsjkmxSN" resolve="T" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5AIwsjkmzqA" role="1DdaDG">
                      <ref role="3cqZAo" node="5AIwsjkmyfE" resolve="items" />
                    </node>
                    <node concept="3clFbS" id="5AIwsjkmyPp" role="2LFqv$">
                      <node concept="2n63Yl" id="5AIwsjkmz_A" role="3cqZAp">
                        <node concept="37vLTw" id="5AIwsjkmzD3" role="2n6tg2">
                          <ref role="3cqZAo" node="5AIwsjkmyPn" resolve="t" />
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
      <node concept="16euLQ" id="5AIwsjkmxSN" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="5AIwsjkmyfE" role="3clF46">
        <property role="TrG5h" value="items" />
        <node concept="8X2XB" id="5AIwsjkmyfC" role="1tU5fm">
          <node concept="16syzq" id="5AIwsjkmykZ" role="8Xvag">
            <ref role="16sUi3" node="5AIwsjkmxSN" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AIwsjkh4jv" role="jymVt" />
    <node concept="2tJIrI" id="5AIwsjkhosg" role="jymVt" />
    <node concept="2YIFZL" id="5AIwsjkkZHk" role="jymVt">
      <property role="TrG5h" value="rootNodesIn" />
      <node concept="37vLTG" id="5AIwsjkkZVD" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="5AIwsjkkZVE" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="A3Dl8" id="5AIwsjkkZNY" role="3clF45">
        <node concept="3uibUv" id="5AIwsjkkZPU" role="A3Ik2">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5AIwsjkkZHn" role="1B3o_S" />
      <node concept="3clFbS" id="5AIwsjkkZHo" role="3clF47">
        <node concept="3clFbF" id="5AIwsjkkZXH" role="3cqZAp">
          <node concept="2OqwBi" id="5AIwsjkkZXJ" role="3clFbG">
            <node concept="2OqwBi" id="5AIwsjkkZXK" role="2Oq$k0">
              <node concept="1rXfSq" id="5AIwsjkkZXL" role="2Oq$k0">
                <ref role="37wK5l" node="5AIwsjkh4l3" resolve="asSequence" />
                <node concept="2OqwBi" id="5AIwsjkkZXM" role="37wK5m">
                  <node concept="37vLTw" id="5AIwsjkkZXN" role="2Oq$k0">
                    <ref role="3cqZAo" node="5AIwsjkkZVD" resolve="module" />
                  </node>
                  <node concept="liA8E" id="5AIwsjkkZXO" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModelRoots()" resolve="getModelRoots" />
                  </node>
                </node>
              </node>
              <node concept="3goQfb" id="5AIwsjkkZXP" role="2OqNvi">
                <node concept="1bVj0M" id="5AIwsjkkZXQ" role="23t8la">
                  <node concept="3clFbS" id="5AIwsjkkZXR" role="1bW5cS">
                    <node concept="3clFbF" id="5AIwsjkkZXS" role="3cqZAp">
                      <node concept="1rXfSq" id="5AIwsjkkZXT" role="3clFbG">
                        <ref role="37wK5l" node="5AIwsjkh4l3" resolve="asSequence" />
                        <node concept="2OqwBi" id="5AIwsjkkZXU" role="37wK5m">
                          <node concept="37vLTw" id="5AIwsjkkZXV" role="2Oq$k0">
                            <ref role="3cqZAo" node="5AIwsjkkZXX" resolve="modelRoot" />
                          </node>
                          <node concept="liA8E" id="5AIwsjkkZXW" role="2OqNvi">
                            <ref role="37wK5l" to="dush:~ModelRoot.getModels()" resolve="getModels" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5AIwsjkkZXX" role="1bW2Oz">
                    <property role="TrG5h" value="modelRoot" />
                    <node concept="2jxLKc" id="5AIwsjkkZXY" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3goQfb" id="5AIwsjkkZXZ" role="2OqNvi">
              <node concept="1bVj0M" id="5AIwsjkkZY0" role="23t8la">
                <node concept="3clFbS" id="5AIwsjkkZY1" role="1bW5cS">
                  <node concept="3clFbF" id="5AIwsjkkZY2" role="3cqZAp">
                    <node concept="1rXfSq" id="5AIwsjkkZY3" role="3clFbG">
                      <ref role="37wK5l" node="5AIwsjkh4l3" resolve="asSequence" />
                      <node concept="2OqwBi" id="5AIwsjkkZY4" role="37wK5m">
                        <node concept="37vLTw" id="5AIwsjkkZY5" role="2Oq$k0">
                          <ref role="3cqZAo" node="5AIwsjkkZY7" resolve="model" />
                        </node>
                        <node concept="liA8E" id="5AIwsjkkZY6" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5AIwsjkkZY7" role="1bW2Oz">
                  <property role="TrG5h" value="model" />
                  <node concept="2jxLKc" id="5AIwsjkkZY8" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AIwsjkhghn" role="jymVt" />
    <node concept="2YIFZL" id="5AIwsjkhouU" role="jymVt">
      <property role="TrG5h" value="allNodesUnder" />
      <node concept="A3Dl8" id="5AIwsjkhoxO" role="3clF45">
        <node concept="3uibUv" id="5AIwsjkhoyq" role="A3Ik2">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5AIwsjkhouX" role="1B3o_S" />
      <node concept="3clFbS" id="5AIwsjkhouY" role="3clF47">
        <node concept="3clFbF" id="5AIwsjkhtrf" role="3cqZAp">
          <node concept="2OqwBi" id="5AIwsjkhtWQ" role="3clFbG">
            <node concept="3QWeyG" id="5AIwsjkhulh" role="2OqNvi">
              <node concept="2OqwBi" id="5AIwsjkhs5F" role="576Qk">
                <node concept="1rXfSq" id="5AIwsjkhuAK" role="2Oq$k0">
                  <ref role="37wK5l" node="5AIwsjkh4l3" resolve="asSequence" />
                  <node concept="2OqwBi" id="5AIwsjkhuAL" role="37wK5m">
                    <node concept="37vLTw" id="5AIwsjkhuAM" role="2Oq$k0">
                      <ref role="3cqZAo" node="5AIwsjkho$e" resolve="parent" />
                    </node>
                    <node concept="liA8E" id="5AIwsjkhuAN" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                    </node>
                  </node>
                </node>
                <node concept="3goQfb" id="5AIwsjkhs5H" role="2OqNvi">
                  <node concept="1bVj0M" id="5AIwsjkhs5I" role="23t8la">
                    <node concept="3clFbS" id="5AIwsjkhs5J" role="1bW5cS">
                      <node concept="3clFbF" id="5AIwsjkhs5K" role="3cqZAp">
                        <node concept="1rXfSq" id="5AIwsjkhs5L" role="3clFbG">
                          <ref role="37wK5l" node="5AIwsjkhouU" resolve="allNodesUnder" />
                          <node concept="37vLTw" id="5AIwsjkhs5M" role="37wK5m">
                            <ref role="3cqZAo" node="5AIwsjkhs5N" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5AIwsjkhs5N" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5AIwsjkhs5O" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="5AIwsjki_Yy" role="2Oq$k0">
              <node concept="2HTt$P" id="5AIwsjkiAhg" role="2ShVmc">
                <node concept="3uibUv" id="5AIwsjkiAhR" role="2HTBi0">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="37vLTw" id="5AIwsjkiAkI" role="2HTEbv">
                  <ref role="3cqZAo" node="5AIwsjkho$e" resolve="parent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5AIwsjkho$e" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="5AIwsjkho$d" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AIwsjkl1sb" role="jymVt" />
    <node concept="2YIFZL" id="5AIwsjkl1N$" role="jymVt">
      <property role="TrG5h" value="conceptsOfAllNodesUnder" />
      <node concept="A3Dl8" id="5AIwsjkl1UK" role="3clF45">
        <node concept="3uibUv" id="5AIwsjkl1Xb" role="A3Ik2">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5AIwsjkl1NB" role="1B3o_S" />
      <node concept="3clFbS" id="5AIwsjkl1NC" role="3clF47">
        <node concept="3SKdUt" id="3UIvosia$jO" role="3cqZAp">
          <node concept="1PaTwC" id="3UIvosia$jP" role="1aUNEU">
            <node concept="3oM_SD" id="3UIvosia$jR" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="3UIvosia$tV" role="1PaTwD">
              <property role="3oM_SC" value="traverses" />
            </node>
            <node concept="3oM_SD" id="3UIvosia$um" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3UIvosia$uy" role="1PaTwD">
              <property role="3oM_SC" value="entire" />
            </node>
            <node concept="3oM_SD" id="3UIvosia$uZ" role="1PaTwD">
              <property role="3oM_SC" value="tree" />
            </node>
            <node concept="3oM_SD" id="3UIvosia$wy" role="1PaTwD">
              <property role="3oM_SC" value="hanging" />
            </node>
            <node concept="3oM_SD" id="3UIvosia$wT" role="1PaTwD">
              <property role="3oM_SC" value="off" />
            </node>
            <node concept="3oM_SD" id="3UIvosia$xh" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3UIvosia$xy" role="1PaTwD">
              <property role="3oM_SC" value="parent," />
            </node>
            <node concept="3oM_SD" id="3UIvosia$yc" role="1PaTwD">
              <property role="3oM_SC" value="gathering" />
            </node>
            <node concept="3oM_SD" id="3UIvosia$yv" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="3UIvosia$zJ" role="1PaTwD">
              <property role="3oM_SC" value="concepts." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3UIvosia$VR" role="3cqZAp">
          <node concept="1PaTwC" id="3UIvosia$VS" role="1aUNEU">
            <node concept="3oM_SD" id="3UIvosia$VU" role="1PaTwD">
              <property role="3oM_SC" value="It" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_5Y" role="1PaTwD">
              <property role="3oM_SC" value="behaves" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_69" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_6d" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_6i" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_7X" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_84" role="1PaTwD">
              <property role="3oM_SC" value="following," />
            </node>
            <node concept="3oM_SD" id="3UIvosia_8s" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_8_" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_8R" role="1PaTwD">
              <property role="3oM_SC" value="probably" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_9a" role="1PaTwD">
              <property role="3oM_SC" value="better" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_nw" role="1PaTwD">
              <property role="3oM_SC" value="performance:" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="5AIwsjklIRK" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5AIwsjklFW3" role="8Wnug">
            <node concept="2OqwBi" id="5AIwsjklI5H" role="3clFbG">
              <node concept="2OqwBi" id="5AIwsjklHmu" role="2Oq$k0">
                <node concept="1rXfSq" id="5AIwsjklFW1" role="2Oq$k0">
                  <ref role="37wK5l" node="5AIwsjkhouU" resolve="allNodesUnder" />
                  <node concept="37vLTw" id="5AIwsjklG8p" role="37wK5m">
                    <ref role="3cqZAo" node="5AIwsjkl2cM" resolve="parent" />
                  </node>
                </node>
                <node concept="3$u5V9" id="5AIwsjklHDz" role="2OqNvi">
                  <node concept="1bVj0M" id="5AIwsjklHD_" role="23t8la">
                    <node concept="3clFbS" id="5AIwsjklHDA" role="1bW5cS">
                      <node concept="3clFbF" id="5AIwsjklHJD" role="3cqZAp">
                        <node concept="2OqwBi" id="5AIwsjklHRH" role="3clFbG">
                          <node concept="37vLTw" id="5AIwsjklHJC" role="2Oq$k0">
                            <ref role="3cqZAo" node="5AIwsjklHDB" resolve="n" />
                          </node>
                          <node concept="liA8E" id="5AIwsjklHZx" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5AIwsjklHDB" role="1bW2Oz">
                      <property role="TrG5h" value="n" />
                      <node concept="2jxLKc" id="5AIwsjklHDC" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1VAtEI" id="5AIwsjklIyk" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5AIwsjkl2hM" role="3cqZAp">
          <node concept="2OqwBi" id="5AIwsjkl5SU" role="3clFbG">
            <node concept="2OqwBi" id="5AIwsjkl3G7" role="2Oq$k0">
              <node concept="2ShNRf" id="5AIwsjkl2hK" role="2Oq$k0">
                <node concept="2HTt$P" id="5AIwsjkl3v5" role="2ShVmc">
                  <node concept="3uibUv" id="5AIwsjkl5lj" role="2HTBi0">
                    <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                  </node>
                  <node concept="2OqwBi" id="5AIwsjkl3YB" role="2HTEbv">
                    <node concept="37vLTw" id="5AIwsjkl3yX" role="2Oq$k0">
                      <ref role="3cqZAo" node="5AIwsjkl2cM" resolve="parent" />
                    </node>
                    <node concept="liA8E" id="5AIwsjkl44C" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3QWeyG" id="5AIwsjkl3Rb" role="2OqNvi">
                <node concept="2OqwBi" id="5AIwsjkl4Cb" role="576Qk">
                  <node concept="1rXfSq" id="5AIwsjkl47O" role="2Oq$k0">
                    <ref role="37wK5l" node="5AIwsjkh4l3" resolve="asSequence" />
                    <node concept="2OqwBi" id="5AIwsjkl4mi" role="37wK5m">
                      <node concept="37vLTw" id="5AIwsjkl4dl" role="2Oq$k0">
                        <ref role="3cqZAo" node="5AIwsjkl2cM" resolve="parent" />
                      </node>
                      <node concept="liA8E" id="5AIwsjkl4rn" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                      </node>
                    </node>
                  </node>
                  <node concept="3goQfb" id="5AIwsjkl50r" role="2OqNvi">
                    <node concept="1bVj0M" id="5AIwsjkl50t" role="23t8la">
                      <node concept="3clFbS" id="5AIwsjkl50u" role="1bW5cS">
                        <node concept="3clFbF" id="5AIwsjkl5bW" role="3cqZAp">
                          <node concept="1rXfSq" id="5AIwsjkl5bV" role="3clFbG">
                            <ref role="37wK5l" node="5AIwsjkl1N$" resolve="conceptsOfAllNodesUnder" />
                            <node concept="37vLTw" id="5AIwsjkl5vS" role="37wK5m">
                              <ref role="3cqZAo" node="5AIwsjkl50v" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5AIwsjkl50v" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5AIwsjkl50w" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1VAtEI" id="5AIwsjkl6v3" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5AIwsjkl2cM" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="5AIwsjkl2cL" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AIwsjkl1GC" role="jymVt" />
    <node concept="2tJIrI" id="5AIwsjkl5BI" role="jymVt" />
    <node concept="2YIFZL" id="5AIwsjki0UX" role="jymVt">
      <property role="TrG5h" value="unusedConcepts" />
      <node concept="3Tm1VV" id="5AIwsjki0V0" role="1B3o_S" />
      <node concept="3clFbS" id="5AIwsjki0V1" role="3clF47">
        <node concept="3clFbF" id="5AIwsjki1mY" role="3cqZAp">
          <node concept="2OqwBi" id="40kJWW2Gdjm" role="3clFbG">
            <node concept="2OqwBi" id="5AIwsjkiaNq" role="2Oq$k0">
              <node concept="2OqwBi" id="5AIwsjkjHGL" role="2Oq$k0">
                <node concept="2OqwBi" id="5AIwsjkjHGM" role="2Oq$k0">
                  <node concept="37vLTw" id="5AIwsjkjHGN" role="2Oq$k0">
                    <ref role="3cqZAo" node="5AIwsjki15T" resolve="languages" />
                  </node>
                  <node concept="3goQfb" id="5AIwsjkjHGO" role="2OqNvi">
                    <node concept="1bVj0M" id="5AIwsjkjHGP" role="23t8la">
                      <node concept="3clFbS" id="5AIwsjkjHGQ" role="1bW5cS">
                        <node concept="3clFbF" id="5AIwsjkjHGR" role="3cqZAp">
                          <node concept="2OqwBi" id="5AIwsjkjHGS" role="3clFbG">
                            <node concept="37vLTw" id="5AIwsjkjHGT" role="2Oq$k0">
                              <ref role="3cqZAo" node="5AIwsjkjHGV" resolve="language" />
                            </node>
                            <node concept="liA8E" id="5AIwsjkjHGU" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SLanguage.getConcepts()" resolve="getConcepts" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5AIwsjkjHGV" role="1bW2Oz">
                        <property role="TrG5h" value="language" />
                        <node concept="2jxLKc" id="5AIwsjkjHGW" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="5AIwsjkjHGX" role="2OqNvi">
                  <node concept="1bVj0M" id="5AIwsjkjHGY" role="23t8la">
                    <node concept="3clFbS" id="5AIwsjkjHGZ" role="1bW5cS">
                      <node concept="3clFbF" id="5AIwsjkjHH0" role="3cqZAp">
                        <node concept="3fqX7Q" id="5AIwsjkjHH1" role="3clFbG">
                          <node concept="2OqwBi" id="5AIwsjkjHH2" role="3fr31v">
                            <node concept="37vLTw" id="5AIwsjkjHH3" role="2Oq$k0">
                              <ref role="3cqZAo" node="5AIwsjkjHH5" resolve="concept" />
                            </node>
                            <node concept="liA8E" id="5AIwsjkjHH4" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5AIwsjkjHH5" role="1bW2Oz">
                      <property role="TrG5h" value="concept" />
                      <node concept="2jxLKc" id="5AIwsjkjHH6" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="66VNe" id="5AIwsjkiaNL" role="2OqNvi">
                <node concept="2OqwBi" id="5AIwsjkkLJt" role="576Qk">
                  <node concept="2OqwBi" id="5AIwsjkiaNM" role="2Oq$k0">
                    <node concept="2OqwBi" id="5AIwsjkiaNN" role="2Oq$k0">
                      <node concept="37vLTw" id="5AIwsjkiaNO" role="2Oq$k0">
                        <ref role="3cqZAo" node="5AIwsjki5Rz" resolve="modules" />
                      </node>
                      <node concept="3goQfb" id="5AIwsjkiaNP" role="2OqNvi">
                        <node concept="1bVj0M" id="5AIwsjkiaNQ" role="23t8la">
                          <node concept="3clFbS" id="5AIwsjkiaNR" role="1bW5cS">
                            <node concept="3clFbF" id="5AIwsjkiaNS" role="3cqZAp">
                              <node concept="1rXfSq" id="5AIwsjkltQl" role="3clFbG">
                                <ref role="37wK5l" node="5AIwsjkkZHk" resolve="rootNodesIn" />
                                <node concept="37vLTw" id="5AIwsjklu8E" role="37wK5m">
                                  <ref role="3cqZAo" node="5AIwsjkiaNV" resolve="module" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="5AIwsjkiaNV" role="1bW2Oz">
                            <property role="TrG5h" value="module" />
                            <node concept="2jxLKc" id="5AIwsjkiaNW" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3goQfb" id="5AIwsjkluJU" role="2OqNvi">
                      <node concept="1bVj0M" id="5AIwsjkluJW" role="23t8la">
                        <node concept="3clFbS" id="5AIwsjkluJX" role="1bW5cS">
                          <node concept="3clFbF" id="5AIwsjklv$F" role="3cqZAp">
                            <node concept="1rXfSq" id="5AIwsjklv$E" role="3clFbG">
                              <ref role="37wK5l" node="5AIwsjkl1N$" resolve="conceptsOfAllNodesUnder" />
                              <node concept="37vLTw" id="5AIwsjklvQH" role="37wK5m">
                                <ref role="3cqZAo" node="5AIwsjkluJY" resolve="rootNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="5AIwsjkluJY" role="1bW2Oz">
                          <property role="TrG5h" value="rootNode" />
                          <node concept="2jxLKc" id="5AIwsjkluJZ" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1VAtEI" id="5AIwsjkkMot" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3$u5V9" id="40kJWW2GeNS" role="2OqNvi">
              <node concept="1bVj0M" id="40kJWW2GeNU" role="23t8la">
                <node concept="3clFbS" id="40kJWW2GeNV" role="1bW5cS">
                  <node concept="3clFbF" id="40kJWW2GeT0" role="3cqZAp">
                    <node concept="2OqwBi" id="40kJWW2Gff4" role="3clFbG">
                      <node concept="37vLTw" id="40kJWW2GeSZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="40kJWW2GeNW" resolve="it" />
                      </node>
                      <node concept="liA8E" id="40kJWW2Ggc4" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getDeclarationNode()" resolve="getDeclarationNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="40kJWW2GeNW" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="40kJWW2GeNX" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5AIwsjki5Rz" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="A3Dl8" id="5AIwsjki60R" role="1tU5fm">
          <node concept="3uibUv" id="5AIwsjki62_" role="A3Ik2">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5AIwsjki15T" role="3clF46">
        <property role="TrG5h" value="languages" />
        <node concept="A3Dl8" id="5AIwsjki15R" role="1tU5fm">
          <node concept="3uibUv" id="5AIwsjki17e" role="A3Ik2">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5AIwsjki1g_" role="3clF45">
        <node concept="3uibUv" id="40kJWW2Gh7h" role="A3Ik2">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AIwsjki1i0" role="jymVt" />
    <node concept="3Tm1VV" id="5AIwsjkgKNU" role="1B3o_S" />
    <node concept="2tJIrI" id="5AIwsjkmwon" role="jymVt" />
    <node concept="2YIFZL" id="5AIwsjkmP5D" role="jymVt">
      <property role="TrG5h" value="unusedConceptsWithFixedLanguage" />
      <node concept="A3Dl8" id="5AIwsjkmR8X" role="3clF45">
        <node concept="3uibUv" id="40kJWW2GhAW" role="A3Ik2">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5AIwsjkmP5G" role="1B3o_S" />
      <node concept="3clFbS" id="5AIwsjkmP5H" role="3clF47">
        <node concept="3SKdUt" id="3UIvosia_ph" role="3cqZAp">
          <node concept="1PaTwC" id="3UIvosia_pi" role="1aUNEU">
            <node concept="3oM_SD" id="3UIvosia_pk" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_z0" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_zb" role="1PaTwD">
              <property role="3oM_SC" value="replace" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_zv" role="1PaTwD">
              <property role="3oM_SC" value="list" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_$m" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3UIvosia_$s" role="1PaTwD">
              <property role="3oM_SC" value="languages" />
            </node>
            <node concept="3oM_SD" id="3UIvosia__l" role="1PaTwD">
              <property role="3oM_SC" value="ALEF-&quot;*spraak&quot;:" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5AIwsjkmSAK" role="3cqZAp">
          <node concept="1rXfSq" id="5AIwsjkmSAJ" role="3clFbG">
            <ref role="37wK5l" node="5AIwsjki0UX" resolve="unusedConcepts" />
            <node concept="1rXfSq" id="5AIwsjkmSRo" role="37wK5m">
              <ref role="37wK5l" node="5AIwsjkmxHo" resolve="asSequence" />
              <node concept="37vLTw" id="5AIwsjkmT8r" role="37wK5m">
                <ref role="3cqZAo" node="5AIwsjkmR$T" resolve="modules" />
              </node>
            </node>
            <node concept="1rXfSq" id="5AIwsjkmTCf" role="37wK5m">
              <ref role="37wK5l" node="5AIwsjkmxHo" resolve="asSequence" />
              <node concept="pHN19" id="5AIwsjkmTCg" role="37wK5m">
                <node concept="2V$Bhx" id="5AIwsjkmTCh" role="2V$M_3">
                  <property role="2V$B1T" value="8382542b-a045-4f73-951b-02d75ee252bf" />
                  <property role="2V$B1Q" value="Json" />
                </node>
              </node>
              <node concept="pHN19" id="5AIwsjkmTCi" role="37wK5m">
                <node concept="2V$Bhx" id="5AIwsjkmTCj" role="2V$M_3">
                  <property role="2V$B1T" value="332c9129-fd88-4f4c-a448-1f9b461e11cb" />
                  <property role="2V$B1Q" value="JsonSchema" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5AIwsjkmR$T" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="8X2XB" id="5AIwsjkmR$R" role="1tU5fm">
          <node concept="3uibUv" id="5AIwsjkmRMM" role="8Xvag">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AIwsjkmPqt" role="jymVt" />
    <node concept="2YIFZL" id="3UIvosibj5D" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3cqZAl" id="3UIvosibj5F" role="3clF45" />
      <node concept="3Tm1VV" id="3UIvosibj5G" role="1B3o_S" />
      <node concept="3clFbS" id="3UIvosibj5H" role="3clF47">
        <node concept="3SKdUt" id="3UIvosibIz6" role="3cqZAp">
          <node concept="1PaTwC" id="3UIvosibIz7" role="1aUNEU">
            <node concept="3oM_SD" id="3UIvosibIzr" role="1PaTwD">
              <property role="3oM_SC" value="example" />
            </node>
            <node concept="3oM_SD" id="3UIvosibIDm" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3UIvosibIDp" role="1PaTwD">
              <property role="3oM_SC" value="usage" />
            </node>
            <node concept="3oM_SD" id="3UIvosibIDX" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3UIvosibIEa" role="1PaTwD">
              <property role="3oM_SC" value="Console:" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3UIvosibknn" role="3cqZAp">
          <node concept="2YIFZM" id="3UIvosibkno" role="3clFbG">
            <ref role="37wK5l" node="5AIwsjki0UX" resolve="unusedConcepts" />
            <ref role="1Pybhc" node="5AIwsjkgKNT" resolve="UsageHelper" />
            <node concept="2YIFZM" id="3UIvosibknp" role="37wK5m">
              <ref role="1Pybhc" node="5AIwsjkgKNT" resolve="UsageHelper" />
              <ref role="37wK5l" node="5AIwsjkmxHo" resolve="asSequence" />
              <node concept="3rM5sP" id="3UIvosibknq" role="37wK5m">
                <property role="3rM5sR" value="c40976e2-5da8-4668-9319-1eba5e867a23" />
              </node>
            </node>
            <node concept="2YIFZM" id="3UIvosibknr" role="37wK5m">
              <ref role="1Pybhc" node="5AIwsjkgKNT" resolve="UsageHelper" />
              <ref role="37wK5l" node="5AIwsjkmxHo" resolve="asSequence" />
              <node concept="pHN19" id="3UIvosibkns" role="37wK5m">
                <node concept="2V$Bhx" id="3UIvosibknt" role="2V$M_3">
                  <property role="2V$B1T" value="8382542b-a045-4f73-951b-02d75ee252bf" />
                  <property role="2V$B1Q" value="Json" />
                </node>
              </node>
              <node concept="pHN19" id="3UIvosibknu" role="37wK5m">
                <node concept="2V$Bhx" id="3UIvosibknv" role="2V$M_3">
                  <property role="2V$B1T" value="332c9129-fd88-4f4c-a448-1f9b461e11cb" />
                  <property role="2V$B1Q" value="JsonSchema" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3UIvosibjql" role="jymVt" />
  </node>
</model>

