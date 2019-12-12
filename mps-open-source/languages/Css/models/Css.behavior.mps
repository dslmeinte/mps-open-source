<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0a4cfaa4-4ae4-4d86-9b82-5d7b63302b69(Css.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="6ltu" ref="r:43b8bd50-204c-48e6-b581-998506039531(Css.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
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
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="13h7C7" id="kYxf1acAyK">
    <ref role="13h7C2" to="6ltu:38dU5mNYAa7" resolve="CssGroup" />
    <node concept="13hLZK" id="kYxf1acAyL" role="13h7CW">
      <node concept="3clFbS" id="kYxf1acAyM" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="kYxf1acAyV" role="13h7CS">
      <property role="TrG5h" value="asText" />
      <node concept="3Tm1VV" id="kYxf1acAyW" role="1B3o_S" />
      <node concept="17QB3L" id="kYxf1acY0G" role="3clF45" />
      <node concept="3clFbS" id="kYxf1acAyY" role="3clF47">
        <node concept="3clFbF" id="kYxf1acA$l" role="3cqZAp">
          <node concept="2OqwBi" id="kYxf1acWcx" role="3clFbG">
            <node concept="2ShNRf" id="kYxf1acA$j" role="2Oq$k0">
              <node concept="kMnCb" id="kYxf1acBJ7" role="2ShVmc">
                <node concept="17QB3L" id="kYxf1acBJt" role="kMuH3" />
                <node concept="1bVj0M" id="kYxf1acBJV" role="kMx8a">
                  <node concept="3clFbS" id="kYxf1acBJW" role="1bW5cS">
                    <node concept="2n63Yl" id="kYxf1acBMI" role="3cqZAp">
                      <node concept="3cpWs3" id="kYxf1acLJh" role="2n6tg2">
                        <node concept="Xl_RD" id="kYxf1acLJk" role="3uHU7w">
                          <property role="Xl_RC" value=" {" />
                        </node>
                        <node concept="2OqwBi" id="kYxf1acEvu" role="3uHU7B">
                          <node concept="2OqwBi" id="kYxf1acIRm" role="2Oq$k0">
                            <node concept="2OqwBi" id="kYxf1acBXB" role="2Oq$k0">
                              <node concept="13iPFW" id="kYxf1acBNH" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="kYxf1acC67" role="2OqNvi">
                                <ref role="3TtcxE" to="6ltu:38dU5mNYAcj" resolve="selectors" />
                              </node>
                            </node>
                            <node concept="3$u5V9" id="kYxf1acKJB" role="2OqNvi">
                              <node concept="1bVj0M" id="kYxf1acKJD" role="23t8la">
                                <node concept="3clFbS" id="kYxf1acKJE" role="1bW5cS">
                                  <node concept="3clFbF" id="kYxf1acKQP" role="3cqZAp">
                                    <node concept="2OqwBi" id="kYxf1acL29" role="3clFbG">
                                      <node concept="37vLTw" id="kYxf1acKQO" role="2Oq$k0">
                                        <ref role="3cqZAo" node="kYxf1acKJF" resolve="it" />
                                      </node>
                                      <node concept="2qgKlT" id="kYxf1acLkv" role="2OqNvi">
                                        <ref role="37wK5l" node="kYxf1acCtk" resolve="asText" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="kYxf1acKJF" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="kYxf1acKJG" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uJxvA" id="kYxf1acGm_" role="2OqNvi">
                            <node concept="Xl_RD" id="kYxf1acH6b" role="3uJOhx">
                              <property role="Xl_RC" value=", " />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="_Z6PX" id="kYxf1acOmM" role="3cqZAp">
                      <node concept="2OqwBi" id="kYxf1acS84" role="_Z9Zf">
                        <node concept="2OqwBi" id="kYxf1acP97" role="2Oq$k0">
                          <node concept="13iPFW" id="kYxf1acOCt" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="kYxf1acPxj" role="2OqNvi">
                            <ref role="3TtcxE" to="6ltu:38dU5mNYAdS" resolve="properties" />
                          </node>
                        </node>
                        <node concept="3$u5V9" id="kYxf1acU48" role="2OqNvi">
                          <node concept="1bVj0M" id="kYxf1acU4a" role="23t8la">
                            <node concept="3clFbS" id="kYxf1acU4b" role="1bW5cS">
                              <node concept="3clFbF" id="kYxf1acUiJ" role="3cqZAp">
                                <node concept="2OqwBi" id="kYxf1acU_V" role="3clFbG">
                                  <node concept="37vLTw" id="kYxf1acUiI" role="2Oq$k0">
                                    <ref role="3cqZAo" node="kYxf1acU4c" resolve="it" />
                                  </node>
                                  <node concept="2qgKlT" id="kYxf1acV0V" role="2OqNvi">
                                    <ref role="37wK5l" node="kYxf1acMx3" resolve="asText" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="kYxf1acU4c" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="kYxf1acU4d" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2n63Yl" id="kYxf1acMcv" role="3cqZAp">
                      <node concept="Xl_RD" id="kYxf1acMhL" role="2n6tg2">
                        <property role="Xl_RC" value="}" />
                      </node>
                    </node>
                    <node concept="2n63Yl" id="kYxf1acVEm" role="3cqZAp">
                      <node concept="Xl_RD" id="kYxf1acVQ8" role="2n6tg2">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uJxvA" id="kYxf1acWPX" role="2OqNvi">
              <node concept="Xl_RD" id="kYxf1acXDM" role="3uJOhx">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="kYxf1acCt9">
    <ref role="13h7C2" to="6ltu:38dU5mNYAa8" resolve="CssSelector" />
    <node concept="13hLZK" id="kYxf1acCta" role="13h7CW">
      <node concept="3clFbS" id="kYxf1acCtb" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="kYxf1acCtk" role="13h7CS">
      <property role="TrG5h" value="asText" />
      <node concept="3Tm1VV" id="kYxf1acCtl" role="1B3o_S" />
      <node concept="17QB3L" id="kYxf1acCt$" role="3clF45" />
      <node concept="3clFbS" id="kYxf1acCtn" role="3clF47">
        <node concept="3clFbF" id="kYxf1acCu0" role="3cqZAp">
          <node concept="2OqwBi" id="kYxf1acC_U" role="3clFbG">
            <node concept="13iPFW" id="kYxf1acCtZ" role="2Oq$k0" />
            <node concept="3TrcHB" id="kYxf1acCId" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="kYxf1acMwS">
    <ref role="13h7C2" to="6ltu:38dU5mNYAaF" resolve="CssProperty" />
    <node concept="13hLZK" id="kYxf1acMwT" role="13h7CW">
      <node concept="3clFbS" id="kYxf1acMwU" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="kYxf1acMx3" role="13h7CS">
      <property role="TrG5h" value="asText" />
      <node concept="3Tm1VV" id="kYxf1acMx4" role="1B3o_S" />
      <node concept="17QB3L" id="kYxf1acMxj" role="3clF45" />
      <node concept="3clFbS" id="kYxf1acMx6" role="3clF47">
        <node concept="3clFbF" id="kYxf1acMSA" role="3cqZAp">
          <node concept="2YIFZM" id="kYxf1acMTe" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <node concept="Xl_RD" id="kYxf1acMXM" role="37wK5m">
              <property role="Xl_RC" value="    %s: %s;" />
            </node>
            <node concept="2OqwBi" id="kYxf1acNpy" role="37wK5m">
              <node concept="13iPFW" id="kYxf1acNdG" role="2Oq$k0" />
              <node concept="3TrcHB" id="kYxf1acNJe" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="kYxf1acOje" role="37wK5m">
              <node concept="13iPFW" id="kYxf1acO53" role="2Oq$k0" />
              <node concept="3TrcHB" id="kYxf1acOkX" role="2OqNvi">
                <ref role="3TsBF5" to="6ltu:38dU5mNYAaI" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="kYxf1acVgv">
    <ref role="13h7C2" to="6ltu:38dU5mNYAa4" resolve="CssFile" />
    <node concept="13hLZK" id="kYxf1acVgw" role="13h7CW">
      <node concept="3clFbS" id="kYxf1acVgx" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="kYxf1acYc8" role="13h7CS">
      <property role="TrG5h" value="asText" />
      <node concept="3Tm1VV" id="kYxf1acYc9" role="1B3o_S" />
      <node concept="17QB3L" id="kYxf1acYco" role="3clF45" />
      <node concept="3clFbS" id="kYxf1acYcb" role="3clF47">
        <node concept="3clFbF" id="kYxf1acYcO" role="3cqZAp">
          <node concept="2OqwBi" id="kYxf1ad7CH" role="3clFbG">
            <node concept="2OqwBi" id="kYxf1ad6zv" role="2Oq$k0">
              <node concept="2OqwBi" id="kYxf1acZUq" role="2Oq$k0">
                <node concept="2OqwBi" id="kYxf1acYgC" role="2Oq$k0">
                  <node concept="13iPFW" id="kYxf1acYcN" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="kYxf1acYid" role="2OqNvi">
                    <ref role="3TtcxE" to="6ltu:38dU5mNYAfG" resolve="groups" />
                  </node>
                </node>
                <node concept="3zZkjj" id="kYxf1ad1vZ" role="2OqNvi">
                  <node concept="1bVj0M" id="kYxf1ad1w1" role="23t8la">
                    <node concept="3clFbS" id="kYxf1ad1w2" role="1bW5cS">
                      <node concept="3clFbF" id="kYxf1ad1A9" role="3cqZAp">
                        <node concept="2OqwBi" id="kYxf1ad3UU" role="3clFbG">
                          <node concept="2OqwBi" id="kYxf1ad1Oh" role="2Oq$k0">
                            <node concept="37vLTw" id="kYxf1ad1A8" role="2Oq$k0">
                              <ref role="3cqZAo" node="kYxf1ad1w3" resolve="it" />
                            </node>
                            <node concept="3Tsc0h" id="kYxf1ad1Yl" role="2OqNvi">
                              <ref role="3TtcxE" to="6ltu:38dU5mNYAdS" resolve="properties" />
                            </node>
                          </node>
                          <node concept="3GX2aA" id="kYxf1ad6f9" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="kYxf1ad1w3" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="kYxf1ad1w4" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="kYxf1ad6Nq" role="2OqNvi">
                <node concept="1bVj0M" id="kYxf1ad6Ns" role="23t8la">
                  <node concept="3clFbS" id="kYxf1ad6Nt" role="1bW5cS">
                    <node concept="3clFbF" id="kYxf1ad6US" role="3cqZAp">
                      <node concept="2OqwBi" id="kYxf1ad75B" role="3clFbG">
                        <node concept="37vLTw" id="kYxf1ad6UR" role="2Oq$k0">
                          <ref role="3cqZAo" node="kYxf1ad6Nu" resolve="it" />
                        </node>
                        <node concept="2qgKlT" id="kYxf1ad7jL" role="2OqNvi">
                          <ref role="37wK5l" node="kYxf1acAyV" resolve="asText" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="kYxf1ad6Nu" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="kYxf1ad6Nv" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uJxvA" id="kYxf1ad7WV" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

