<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:08009ca3-5645-4d30-ae06-f21f40282875(Svg.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="8gcs" ref="r:d5f6aaf2-29aa-410d-a442-d0a3d98a8e90(Svg.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096620180" name="jetbrains.mps.lang.typesystem.structure.ReferenceMessageTarget" flags="ng" index="2OE7Q9">
        <reference id="1227096645744" name="linkDeclaration" index="2OEe5H" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246643443" name="messageTarget" index="1urrC5" />
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
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="2TQ3RGSCx6a">
    <property role="TrG5h" value="check_SvgRoot" />
    <node concept="3clFbS" id="2TQ3RGSCx6b" role="18ibNy">
      <node concept="3clFbJ" id="2TQ3RGSCx6h" role="3cqZAp">
        <node concept="3fqX7Q" id="2TQ3RGSCx6t" role="3clFbw">
          <node concept="2YIFZM" id="2TQ3RGSCx7g" role="3fr31v">
            <ref role="37wK5l" to="8gcs:2TQ3RGSCpZ4" resolve="isPathValid" />
            <ref role="1Pybhc" to="8gcs:2TQ3RGSCpQu" resolve="FileUtil" />
            <node concept="2OqwBi" id="2TQ3RGSCxhx" role="37wK5m">
              <node concept="1YBJjd" id="2TQ3RGSCx7z" role="2Oq$k0">
                <ref role="1YBMHb" node="2TQ3RGSCx6d" resolve="svgRoot" />
              </node>
              <node concept="3TrcHB" id="2TQ3RGSCxpZ" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2TQ3RGSCx6j" role="3clFbx">
          <node concept="2MkqsV" id="2TQ3RGSCxsp" role="3cqZAp">
            <node concept="Xl_RD" id="2TQ3RGSCxs_" role="2MkJ7o">
              <property role="Xl_RC" value="Not a valid file name." />
            </node>
            <node concept="1YBJjd" id="2TQ3RGSCxsK" role="1urrMF">
              <ref role="1YBMHb" node="2TQ3RGSCx6d" resolve="svgRoot" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2TQ3RGSCx6d" role="1YuTPh">
      <property role="TrG5h" value="svgRoot" />
      <ref role="1YaFvo" to="r4xx:3XHwWSLl7lU" resolve="SvgRoot" />
    </node>
  </node>
  <node concept="18kY7G" id="45lrTgpLKzn">
    <property role="TrG5h" value="check_LiteralXmlContent" />
    <node concept="3clFbS" id="45lrTgpLKzo" role="18ibNy">
      <node concept="a7r0C" id="45lrTgpLKzu" role="3cqZAp">
        <node concept="Xl_RD" id="45lrTgpLKzK" role="a7wSD">
          <property role="Xl_RC" value="Replace literal XML content with actual SVG constructs (when possible)." />
        </node>
        <node concept="2OE7Q9" id="45lrTgpLKA8" role="1urrC5">
          <ref role="2OEe5H" to="r4xx:3XHwWSLrYWU" resolve="literalXml" />
        </node>
        <node concept="1YBJjd" id="45lrTgpLK_E" role="1urrMF">
          <ref role="1YBMHb" node="45lrTgpLKzq" resolve="literalXmlContent" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="45lrTgpLKzq" role="1YuTPh">
      <property role="TrG5h" value="literalXmlContent" />
      <ref role="1YaFvo" to="r4xx:3XHwWSLrYWS" resolve="LiteralXmlContent" />
    </node>
  </node>
</model>

