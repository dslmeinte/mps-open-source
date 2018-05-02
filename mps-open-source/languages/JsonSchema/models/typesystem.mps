<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5c5e42c7-88d8-4d1f-a859-a72749b89511(JsonSchema.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="64hz" ref="r:eca5c7f5-86ab-4d3c-9b6b-cf6848ecd9e6(JsonSchema.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
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
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
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
                <node concept="1YBJjd" id="6z3ZIK8QAfL" role="2OEOjV">
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
</model>

