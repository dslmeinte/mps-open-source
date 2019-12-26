<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:77f81d8a-6828-4270-80de-ba38ec129696(WSDL.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="iczy" ref="r:0fb2a1b8-0063-47ad-9b07-6462a5be9d39(WSDL.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
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
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
    </language>
  </registry>
  <node concept="18kY7G" id="3epa_KBInot">
    <property role="TrG5h" value="webServiceShouldHaveOperations" />
    <node concept="3clFbS" id="3epa_KBInou" role="18ibNy">
      <node concept="3clFbJ" id="6hkHye_UBvq" role="3cqZAp">
        <node concept="2OqwBi" id="6hkHye_UDRu" role="3clFbw">
          <node concept="2OqwBi" id="6hkHye_UBDJ" role="2Oq$k0">
            <node concept="1YBJjd" id="6hkHye_UBvA" role="2Oq$k0">
              <ref role="1YBMHb" node="3epa_KBInow" resolve="webService" />
            </node>
            <node concept="3Tsc0h" id="3epa_KBInJB" role="2OqNvi">
              <ref role="3TtcxE" to="iczy:6hkHye_UBvc" resolve="operations" />
            </node>
          </node>
          <node concept="1v1jN8" id="6hkHye_UGvR" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="6hkHye_UBvs" role="3clFbx">
          <node concept="a7r0C" id="6hkHye_UGwA" role="3cqZAp">
            <node concept="Xl_RD" id="6hkHye_UGwS" role="a7wSD">
              <property role="Xl_RC" value="A Web service should have operations." />
            </node>
            <node concept="1YBJjd" id="6hkHye_UGxE" role="1urrMF">
              <ref role="1YBMHb" node="3epa_KBInow" resolve="webService" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3epa_KBInow" role="1YuTPh">
      <property role="TrG5h" value="webService" />
      <ref role="1YaFvo" to="iczy:6hkHye_Tdgg" resolve="WebService" />
    </node>
  </node>
</model>

