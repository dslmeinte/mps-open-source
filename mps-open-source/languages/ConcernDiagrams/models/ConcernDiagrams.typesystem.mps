<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7cc063e3-4001-4231-bfee-0df8d113a592(ConcernDiagrams.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="swkq" ref="r:ac7cd6df-39bd-4374-9f00-f8f8f1522bb9(ConcernDiagrams.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="9yr0" ref="r:3e379364-626a-45e2-b6bd-136d91176bc7(ConcernDiagrams.structure)" implicit="true" />
    <import index="r4xx" ref="r:25991841-12a0-400d-8d65-d016aab8719f(Svg.structure)" implicit="true" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
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
  <node concept="18kY7G" id="5MdW_poJbUq">
    <property role="TrG5h" value="check_Concern" />
    <node concept="3clFbS" id="5MdW_poJbUr" role="18ibNy">
      <node concept="3clFbJ" id="5MdW_poJbUx" role="3cqZAp">
        <node concept="3clFbS" id="5MdW_poJbUz" role="3clFbx">
          <node concept="a7r0C" id="5MdW_poJj7o" role="3cqZAp">
            <node concept="Xl_RD" id="5MdW_poJj7E" role="a7wSD">
              <property role="Xl_RC" value="Concern circle will does not fit on canvas by crossing the top-left." />
            </node>
            <node concept="1YBJjd" id="5MdW_poJjaq" role="1urrMF">
              <ref role="1YBMHb" node="5MdW_poJbUt" resolve="concern" />
            </node>
          </node>
        </node>
        <node concept="3eOVzh" id="5MdW_poJine" role="3clFbw">
          <node concept="2OqwBi" id="5MdW_poJixW" role="3uHU7w">
            <node concept="1YBJjd" id="5MdW_poJinD" role="2Oq$k0">
              <ref role="1YBMHb" node="5MdW_poJbUt" resolve="concern" />
            </node>
            <node concept="2qgKlT" id="5MdW_poJiHX" role="2OqNvi">
              <ref role="37wK5l" to="swkq:5MdW_poJ8Zw" resolve="radius" />
            </node>
          </node>
          <node concept="2YIFZM" id="5MdW_poJfJW" role="3uHU7B">
            <ref role="37wK5l" to="wyt6:~Math.min(int,int)" resolve="min" />
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <node concept="2OqwBi" id="5MdW_poJg7o" role="37wK5m">
              <node concept="2OqwBi" id="5MdW_poJfV9" role="2Oq$k0">
                <node concept="1YBJjd" id="5MdW_poJfKa" role="2Oq$k0">
                  <ref role="1YBMHb" node="5MdW_poJbUt" resolve="concern" />
                </node>
                <node concept="3TrEf2" id="5MdW_poJfWh" role="2OqNvi">
                  <ref role="3Tt5mk" to="9yr0:5kTJBKRDa2u" resolve="center" />
                </node>
              </node>
              <node concept="3TrcHB" id="5MdW_poJgoF" role="2OqNvi">
                <ref role="3TsBF5" to="r4xx:3XHwWSLqDlH" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="5MdW_poJhCv" role="37wK5m">
              <node concept="2OqwBi" id="5MdW_poJhsL" role="2Oq$k0">
                <node concept="1YBJjd" id="5MdW_poJhbB" role="2Oq$k0">
                  <ref role="1YBMHb" node="5MdW_poJbUt" resolve="concern" />
                </node>
                <node concept="3TrEf2" id="5MdW_poJhB$" role="2OqNvi">
                  <ref role="3Tt5mk" to="9yr0:5kTJBKRDa2u" resolve="center" />
                </node>
              </node>
              <node concept="3TrcHB" id="5MdW_poJhEe" role="2OqNvi">
                <ref role="3TsBF5" to="r4xx:3XHwWSLqDlI" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5MdW_poJbUt" role="1YuTPh">
      <property role="TrG5h" value="concern" />
      <ref role="1YaFvo" to="9yr0:7_z3uTkm7Th" resolve="Concern" />
    </node>
  </node>
</model>

