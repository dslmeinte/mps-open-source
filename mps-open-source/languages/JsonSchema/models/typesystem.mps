<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5c5e42c7-88d8-4d1f-a859-a72749b89511(JsonSchema.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="64hz" ref="r:eca5c7f5-86ab-4d3c-9b6b-cf6848ecd9e6(JsonSchema.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1145573345940" name="jetbrains.mps.lang.smodel.structure.Node_GetAllSiblingsOperation" flags="nn" index="2TvwIu" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="18kY7G" id="6z3ZIK8Qy0U">
    <property role="TrG5h" value="aRerencedSchemaMustHaveAnId" />
    <node concept="3clFbS" id="6z3ZIK8Qy0V" role="18ibNy">
      <node concept="Jncv_" id="6z3ZIK8Qy44" role="3cqZAp">
        <ref role="JncvD" to="64hz:2hQb6UNpmlE" resolve="JsonSchema" />
        <node concept="2OqwBi" id="6z3ZIK8QycE" role="JncvB">
          <node concept="1YBJjd" id="6z3ZIK8Qy4_" role="2Oq$k0">
            <ref role="1YBMHb" node="6z3ZIK8Qy0X" resolve="ref" />
          </node>
          <node concept="3TrEf2" id="6z3ZIK8Qyr$" role="2OqNvi">
            <ref role="3Tt5mk" to="64hz:2hQb6UNyLAi" resolve="ref" />
          </node>
        </node>
        <node concept="3clFbS" id="6z3ZIK8Qy4c" role="Jncv$">
          <node concept="3clFbJ" id="6z3ZIK8QyyP" role="3cqZAp">
            <node concept="2OqwBi" id="6z3ZIK8QzC2" role="3clFbw">
              <node concept="2OqwBi" id="6z3ZIK8QyHh" role="2Oq$k0">
                <node concept="Jnkvi" id="6z3ZIK8Qyz1" role="2Oq$k0">
                  <ref role="1M0zk5" node="6z3ZIK8Qy4g" resolve="schema" />
                </node>
                <node concept="3TrcHB" id="6z3ZIK8Qz83" role="2OqNvi">
                  <ref role="3TsBF5" to="64hz:2hQb6UNptUo" resolve="id" />
                </node>
              </node>
              <node concept="17RlXB" id="6z3ZIK8Q$8s" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="6z3ZIK8QyyR" role="3clFbx">
              <node concept="2MkqsV" id="6z3ZIK8Q$8E" role="3cqZAp">
                <node concept="Xl_RD" id="6z3ZIK8Q$8Q" role="2MkJ7o">
                  <property role="Xl_RC" value="Id of a referenced schema must be set." />
                </node>
                <node concept="1YBJjd" id="6z3ZIK8QAfL" role="1urrMF">
                  <ref role="1YBMHb" node="6z3ZIK8Qy0X" resolve="ref" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="JncvC" id="6z3ZIK8Qy4g" role="JncvA">
          <property role="TrG5h" value="schema" />
          <node concept="2jxLKc" id="6z3ZIK8Qy4h" role="1tU5fm" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6z3ZIK8Qy0X" role="1YuTPh">
      <property role="TrG5h" value="ref" />
      <ref role="1YaFvo" to="64hz:2hQb6UNyLAf" resolve="JsonReferableRef" />
    </node>
  </node>
  <node concept="18kY7G" id="5uyaFvvFlrR">
    <property role="TrG5h" value="namesOfPropertiesMustBeUnique" />
    <node concept="3clFbS" id="5uyaFvvFlrS" role="18ibNy">
      <node concept="3clFbJ" id="5uyaFvvFlsf" role="3cqZAp">
        <node concept="2OqwBi" id="5uyaFvvFoMb" role="3clFbw">
          <node concept="2OqwBi" id="5uyaFvvFn1p" role="2Oq$k0">
            <node concept="2OqwBi" id="5uyaFvvFlA$" role="2Oq$k0">
              <node concept="1YBJjd" id="5uyaFvvFlsr" role="2Oq$k0">
                <ref role="1YBMHb" node="5uyaFvvFlrU" resolve="property" />
              </node>
              <node concept="2TvwIu" id="5uyaFvvFlRV" role="2OqNvi" />
            </node>
            <node concept="v3k3i" id="5uyaFvvFoz3" role="2OqNvi">
              <node concept="chp4Y" id="5uyaFvvFozR" role="v3oSu">
                <ref role="cht4Q" to="64hz:2hQb6UNpvxZ" resolve="JsonRegularProperty" />
              </node>
            </node>
          </node>
          <node concept="2HwmR7" id="5uyaFvvFp35" role="2OqNvi">
            <node concept="1bVj0M" id="5uyaFvvFp37" role="23t8la">
              <node concept="3clFbS" id="5uyaFvvFp38" role="1bW5cS">
                <node concept="3clFbF" id="5uyaFvvFp65" role="3cqZAp">
                  <node concept="17R0WA" id="5uyaFvvFqaD" role="3clFbG">
                    <node concept="2OqwBi" id="5uyaFvvFqAi" role="3uHU7w">
                      <node concept="1YBJjd" id="5uyaFvvFqjf" role="2Oq$k0">
                        <ref role="1YBMHb" node="5uyaFvvFlrU" resolve="property" />
                      </node>
                      <node concept="3TrcHB" id="5uyaFvvFCjs" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5uyaFvvFplu" role="3uHU7B">
                      <node concept="37vLTw" id="5uyaFvvFp64" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uyaFvvFp39" resolve="it" />
                      </node>
                      <node concept="3TrcHB" id="5uyaFvvFpxP" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="5uyaFvvFp39" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="5uyaFvvFp3a" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5uyaFvvFlsh" role="3clFbx">
          <node concept="2MkqsV" id="5uyaFvvFr1K" role="3cqZAp">
            <node concept="2YIFZM" id="5uyaFvvFr3N" role="2MkJ7o">
              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="Xl_RD" id="5uyaFvvFr4N" role="37wK5m">
                <property role="Xl_RC" value="Name '%s' of property must occur at most once." />
              </node>
              <node concept="2OqwBi" id="5uyaFvvF$EK" role="37wK5m">
                <node concept="1YBJjd" id="5uyaFvvF$ts" role="2Oq$k0">
                  <ref role="1YBMHb" node="5uyaFvvFlrU" resolve="property" />
                </node>
                <node concept="3TrcHB" id="5uyaFvvFCKt" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="5uyaFvvFrbX" role="1urrMF">
              <ref role="1YBMHb" node="5uyaFvvFlrU" resolve="property" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="5uyaFvvFNxq" role="3cqZAp">
        <node concept="3clFbS" id="5uyaFvvFNxs" role="3clFbx">
          <node concept="2MkqsV" id="5uyaFvvFUEW" role="3cqZAp">
            <node concept="2YIFZM" id="5uyaFvvFUFr" role="2MkJ7o">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
              <node concept="Xl_RD" id="5uyaFvvFUGq" role="37wK5m">
                <property role="Xl_RC" value="Name '%s' is matched by a pattern property." />
              </node>
            </node>
            <node concept="1YBJjd" id="5uyaFvvFV3I" role="1urrMF">
              <ref role="1YBMHb" node="5uyaFvvFlrU" resolve="property" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="5uyaFvvFRqm" role="3clFbw">
          <node concept="2OqwBi" id="5uyaFvvFPuV" role="2Oq$k0">
            <node concept="2OqwBi" id="5uyaFvvFNSc" role="2Oq$k0">
              <node concept="1YBJjd" id="5uyaFvvFNI3" role="2Oq$k0">
                <ref role="1YBMHb" node="5uyaFvvFlrU" resolve="property" />
              </node>
              <node concept="2TvwIu" id="5uyaFvvFOlt" role="2OqNvi" />
            </node>
            <node concept="v3k3i" id="5uyaFvvFRbh" role="2OqNvi">
              <node concept="chp4Y" id="5uyaFvvFRc5" role="v3oSu">
                <ref role="cht4Q" to="64hz:6$03NoGja_c" resolve="JsonPatternProperty" />
              </node>
            </node>
          </node>
          <node concept="2HwmR7" id="5uyaFvvFRQO" role="2OqNvi">
            <node concept="1bVj0M" id="5uyaFvvFRQQ" role="23t8la">
              <node concept="3clFbS" id="5uyaFvvFRQR" role="1bW5cS">
                <node concept="3clFbF" id="5uyaFvvFRTO" role="3cqZAp">
                  <node concept="2OqwBi" id="5uyaFvvFSUS" role="3clFbG">
                    <node concept="2OqwBi" id="5uyaFvvFS6y" role="2Oq$k0">
                      <node concept="37vLTw" id="5uyaFvvFRTN" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uyaFvvFRQS" resolve="it" />
                      </node>
                      <node concept="3TrcHB" id="5uyaFvvFSq4" role="2OqNvi">
                        <ref role="3TsBF5" to="64hz:6$03NoGja_d" resolve="pattern" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5uyaFvvFTqR" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                      <node concept="2OqwBi" id="5uyaFvvFTJm" role="37wK5m">
                        <node concept="1YBJjd" id="5uyaFvvFTyI" role="2Oq$k0">
                          <ref role="1YBMHb" node="5uyaFvvFlrU" resolve="property" />
                        </node>
                        <node concept="3TrcHB" id="5uyaFvvFUpF" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="5uyaFvvFRQS" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="5uyaFvvFRQT" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5uyaFvvFlrU" role="1YuTPh">
      <property role="TrG5h" value="property" />
      <ref role="1YaFvo" to="64hz:2hQb6UNpvxZ" resolve="JsonRegularProperty" />
    </node>
  </node>
  <node concept="18kY7G" id="5uyaFvvFCWx">
    <property role="TrG5h" value="patternPropertiesMustNotMatchNamesOfOtherProperties" />
    <node concept="3clFbS" id="5uyaFvvFCWy" role="18ibNy">
      <node concept="3cpWs8" id="5uyaFvvFIGk" role="3cqZAp">
        <node concept="3cpWsn" id="5uyaFvvFIGl" role="3cpWs9">
          <property role="TrG5h" value="matches" />
          <node concept="A3Dl8" id="5uyaFvvFIGg" role="1tU5fm">
            <node concept="3Tqbb2" id="5uyaFvvFIGj" role="A3Ik2">
              <ref role="ehGHo" to="64hz:2hQb6UNpvxZ" resolve="JsonRegularProperty" />
            </node>
          </node>
          <node concept="2OqwBi" id="5uyaFvvFIGm" role="33vP2m">
            <node concept="2OqwBi" id="5uyaFvvFIGn" role="2Oq$k0">
              <node concept="2OqwBi" id="5uyaFvvFIGo" role="2Oq$k0">
                <node concept="1YBJjd" id="5uyaFvvFIGp" role="2Oq$k0">
                  <ref role="1YBMHb" node="5uyaFvvFCW$" resolve="property" />
                </node>
                <node concept="2TvwIu" id="5uyaFvvFIGq" role="2OqNvi" />
              </node>
              <node concept="v3k3i" id="5uyaFvvFIGr" role="2OqNvi">
                <node concept="chp4Y" id="5uyaFvvFIGs" role="v3oSu">
                  <ref role="cht4Q" to="64hz:2hQb6UNpvxZ" resolve="JsonRegularProperty" />
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="5uyaFvvFIGt" role="2OqNvi">
              <node concept="1bVj0M" id="5uyaFvvFIGu" role="23t8la">
                <node concept="3clFbS" id="5uyaFvvFIGv" role="1bW5cS">
                  <node concept="3clFbF" id="5uyaFvvFIGw" role="3cqZAp">
                    <node concept="2OqwBi" id="5uyaFvvFIGx" role="3clFbG">
                      <node concept="2OqwBi" id="5uyaFvvFIGy" role="2Oq$k0">
                        <node concept="1YBJjd" id="5uyaFvvFIGz" role="2Oq$k0">
                          <ref role="1YBMHb" node="5uyaFvvFCW$" resolve="property" />
                        </node>
                        <node concept="3TrcHB" id="5uyaFvvFIG$" role="2OqNvi">
                          <ref role="3TsBF5" to="64hz:6$03NoGja_d" resolve="pattern" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5uyaFvvFIG_" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                        <node concept="2OqwBi" id="5uyaFvvFIGA" role="37wK5m">
                          <node concept="37vLTw" id="5uyaFvvFIGB" role="2Oq$k0">
                            <ref role="3cqZAo" node="5uyaFvvFIGD" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="5uyaFvvFIGC" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5uyaFvvFIGD" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5uyaFvvFIGE" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="5uyaFvvFIQ4" role="3cqZAp">
        <node concept="3clFbS" id="5uyaFvvFIQ6" role="3clFbx">
          <node concept="2MkqsV" id="5uyaFvvFJiV" role="3cqZAp">
            <node concept="3cpWs3" id="5uyaFvvFJ_i" role="2MkJ7o">
              <node concept="2OqwBi" id="5uyaFvvFM0t" role="3uHU7w">
                <node concept="2OqwBi" id="5uyaFvvFJOR" role="2Oq$k0">
                  <node concept="37vLTw" id="5uyaFvvFJ_$" role="2Oq$k0">
                    <ref role="3cqZAo" node="5uyaFvvFIGl" resolve="matches" />
                  </node>
                  <node concept="3$u5V9" id="5uyaFvvFLbE" role="2OqNvi">
                    <node concept="1bVj0M" id="5uyaFvvFLbG" role="23t8la">
                      <node concept="3clFbS" id="5uyaFvvFLbH" role="1bW5cS">
                        <node concept="3clFbF" id="5uyaFvvFLhZ" role="3cqZAp">
                          <node concept="2OqwBi" id="5uyaFvvFLya" role="3clFbG">
                            <node concept="37vLTw" id="5uyaFvvFLhY" role="2Oq$k0">
                              <ref role="3cqZAo" node="5uyaFvvFLbI" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="5uyaFvvFLHa" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5uyaFvvFLbI" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5uyaFvvFLbJ" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uJxvA" id="5uyaFvvFMhI" role="2OqNvi">
                  <node concept="Xl_RD" id="5uyaFvvFMR4" role="3uJOhx">
                    <property role="Xl_RC" value=", " />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="5uyaFvvFJjd" role="3uHU7B">
                <property role="Xl_RC" value="Pattern property matches names of other properties: " />
              </node>
            </node>
            <node concept="1YBJjd" id="5uyaFvvFN8y" role="1urrMF">
              <ref role="1YBMHb" node="5uyaFvvFCW$" resolve="property" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="5uyaFvvFJ3T" role="3clFbw">
          <node concept="37vLTw" id="5uyaFvvFIQO" role="2Oq$k0">
            <ref role="3cqZAo" node="5uyaFvvFIGl" resolve="matches" />
          </node>
          <node concept="3GX2aA" id="5uyaFvvFJiK" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5uyaFvvFCW$" role="1YuTPh">
      <property role="TrG5h" value="property" />
      <ref role="1YaFvo" to="64hz:6$03NoGja_c" resolve="JsonPatternProperty" />
    </node>
  </node>
</model>

