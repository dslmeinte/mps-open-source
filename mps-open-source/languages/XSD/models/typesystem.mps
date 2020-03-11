<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:37d1fab9-66dd-4517-8dd5-3697e2e5984d(XSD.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="jbym" ref="r:c546ab52-186f-4563-a0f9-eb59ddf54026(XSD.behavior)" />
    <import index="irkh" ref="r:5453e083-42db-4474-9ebc-c4b11ee10157(XSD.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="5nPH9FxCY0x">
    <property role="TrG5h" value="anAttributeMustSerialiseAsString" />
    <property role="3GE5qa" value="other" />
    <node concept="3clFbS" id="5nPH9FxCY0y" role="18ibNy">
      <node concept="3clFbJ" id="5nPH9FxCY0N" role="3cqZAp">
        <node concept="3clFbS" id="5nPH9FxCY0P" role="3clFbx">
          <node concept="2MkqsV" id="5nPH9FxD0M3" role="3cqZAp">
            <node concept="Xl_RD" id="5nPH9FxD0Mf" role="2MkJ7o">
              <property role="Xl_RC" value="An attribute must have a type that serialises as a simple string." />
            </node>
            <node concept="1YBJjd" id="5nPH9FxD0Oa" role="1urrMF">
              <ref role="1YBMHb" node="5nPH9FxCY0$" resolve="attribute" />
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="5nPH9FxD5DK" role="3clFbw">
          <node concept="1eOMI4" id="5nPH9FxD5Fb" role="3fr31v">
            <node concept="22lmx$" id="5nPH9FxD5VE" role="1eOMHV">
              <node concept="2OqwBi" id="5nPH9FxD6NI" role="3uHU7w">
                <node concept="2OqwBi" id="5nPH9FxD6g1" role="2Oq$k0">
                  <node concept="1YBJjd" id="5nPH9FxD5Xy" role="2Oq$k0">
                    <ref role="1YBMHb" node="5nPH9FxCY0$" resolve="attribute" />
                  </node>
                  <node concept="3TrEf2" id="5nPH9FxD6wp" role="2OqNvi">
                    <ref role="3Tt5mk" to="irkh:5nPH9FxCX7C" resolve="typeLiteral" />
                  </node>
                </node>
                <node concept="2qgKlT" id="5nPH9FxD765" role="2OqNvi">
                  <ref role="37wK5l" to="jbym:5nPH9FxCZ2O" resolve="instanceSerialisationIsAString" />
                </node>
              </node>
              <node concept="3clFbC" id="5nPH9FxD5OX" role="3uHU7B">
                <node concept="2OqwBi" id="5nPH9FxD8oP" role="3uHU7B">
                  <node concept="1YBJjd" id="5nPH9FxD5Ft" role="2Oq$k0">
                    <ref role="1YBMHb" node="5nPH9FxCY0$" resolve="attribute" />
                  </node>
                  <node concept="3TrEf2" id="5nPH9FxD8Iy" role="2OqNvi">
                    <ref role="3Tt5mk" to="irkh:5nPH9FxCX7C" resolve="typeLiteral" />
                  </node>
                </node>
                <node concept="10Nm6u" id="5nPH9FxD5TZ" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5nPH9FxCY0$" role="1YuTPh">
      <property role="TrG5h" value="attribute" />
      <ref role="1YaFvo" to="irkh:6P6yfMfjRvf" resolve="XsdAttribute" />
    </node>
  </node>
  <node concept="18kY7G" id="zT7KcIDm7m">
    <property role="TrG5h" value="check_XsdImport" />
    <node concept="3clFbS" id="zT7KcIDm7n" role="18ibNy">
      <node concept="3cpWs8" id="zT7KcIE3_B" role="3cqZAp">
        <node concept="3cpWsn" id="zT7KcIE3_C" role="3cpWs9">
          <property role="TrG5h" value="thisSchema" />
          <node concept="3Tqbb2" id="zT7KcIE3_z" role="1tU5fm">
            <ref role="ehGHo" to="irkh:GIhN6I5Rs" resolve="XsdSchema" />
          </node>
          <node concept="2OqwBi" id="zT7KcIE3_D" role="33vP2m">
            <node concept="1YBJjd" id="zT7KcIE3_E" role="2Oq$k0">
              <ref role="1YBMHb" node="zT7KcIDm7t" resolve="xsdImport" />
            </node>
            <node concept="2Xjw5R" id="zT7KcIE3_F" role="2OqNvi">
              <node concept="1xMEDy" id="zT7KcIE3_G" role="1xVPHs">
                <node concept="chp4Y" id="zT7KcIE3_H" role="ri$Ld">
                  <ref role="cht4Q" to="irkh:GIhN6I5Rs" resolve="XsdSchema" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="zT7KcIDm7A" role="3cqZAp">
        <node concept="17R0WA" id="zT7KcIDmHJ" role="3clFbw">
          <node concept="37vLTw" id="zT7KcIE3_I" role="3uHU7w">
            <ref role="3cqZAo" node="zT7KcIE3_C" resolve="thisSchema" />
          </node>
          <node concept="2OqwBi" id="zT7KcIDmgn" role="3uHU7B">
            <node concept="1YBJjd" id="zT7KcIDm7M" role="2Oq$k0">
              <ref role="1YBMHb" node="zT7KcIDm7t" resolve="xsdImport" />
            </node>
            <node concept="3TrEf2" id="zT7KcIDmsE" role="2OqNvi">
              <ref role="3Tt5mk" to="irkh:nxI_60tnHb" resolve="schema" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="zT7KcIDm7C" role="3clFbx">
          <node concept="2MkqsV" id="zT7KcIDneG" role="3cqZAp">
            <node concept="Xl_RD" id="zT7KcIDneS" role="2MkJ7o">
              <property role="Xl_RC" value="A schema must not import itself." />
            </node>
            <node concept="1YBJjd" id="zT7KcIDnfO" role="1urrMF">
              <ref role="1YBMHb" node="zT7KcIDm7t" resolve="xsdImport" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="zT7KcIDHpE" role="3cqZAp">
        <node concept="3clFbS" id="zT7KcIDHpG" role="3clFbx">
          <node concept="2MkqsV" id="zT7KcIE9wE" role="3cqZAp">
            <node concept="Xl_RD" id="zT7KcIE9wZ" role="2MkJ7o">
              <property role="Xl_RC" value="A schema must not import itself indirectly." />
            </node>
            <node concept="1YBJjd" id="zT7KcIE9Zh" role="1urrMF">
              <ref role="1YBMHb" node="zT7KcIDm7t" resolve="xsdImport" />
            </node>
          </node>
        </node>
        <node concept="2YIFZM" id="5RK56OEBYSl" role="3clFbw">
          <ref role="37wK5l" to="jbym:zT7KcIDxP5" resolve="hasCycles" />
          <ref role="1Pybhc" to="jbym:zT7KcIDxOb" resolve="TopologicalSorter" />
          <node concept="1YBJjd" id="5RK56OEBYSm" role="37wK5m">
            <ref role="1YBMHb" node="zT7KcIDm7t" resolve="xsdImport" />
          </node>
          <node concept="1bVj0M" id="5RK56OEBYSn" role="37wK5m">
            <node concept="37vLTG" id="5RK56OEBYSo" role="1bW2Oz">
              <property role="TrG5h" value="it" />
              <node concept="3Tqbb2" id="5RK56OEBYSp" role="1tU5fm" />
            </node>
            <node concept="3clFbS" id="5RK56OEBYSq" role="1bW5cS">
              <node concept="3clFbF" id="5RK56OEBYSr" role="3cqZAp">
                <node concept="2OqwBi" id="5RK56OEBYSs" role="3clFbG">
                  <node concept="2OqwBi" id="5RK56OEBYSt" role="2Oq$k0">
                    <node concept="2OqwBi" id="5RK56OEBYSu" role="2Oq$k0">
                      <node concept="1PxgMI" id="5RK56OEBYSv" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="5RK56OEBYSw" role="3oSUPX">
                          <ref role="cht4Q" to="irkh:nxI_60tnH4" resolve="XsdImport" />
                        </node>
                        <node concept="37vLTw" id="5RK56OEBYSx" role="1m5AlR">
                          <ref role="3cqZAo" node="5RK56OEBYSo" resolve="it" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="5RK56OEBYSy" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:nxI_60tnHb" resolve="schema" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="5RK56OEBYSz" role="2OqNvi">
                      <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5RK56OEBYS$" role="2OqNvi">
                    <ref role="3TtcxE" to="irkh:nxI_60uCZJ" resolve="imports" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="zT7KcIDm7t" role="1YuTPh">
      <property role="TrG5h" value="xsdImport" />
      <ref role="1YaFvo" to="irkh:nxI_60tnH4" resolve="XsdImport" />
    </node>
  </node>
  <node concept="18kY7G" id="3UUH6AJY5GI">
    <property role="TrG5h" value="check_XsdSchemaBody" />
    <node concept="3clFbS" id="3UUH6AJY5GJ" role="18ibNy">
      <node concept="3clFbJ" id="3UUH6AJZNoG" role="3cqZAp">
        <node concept="3clFbS" id="3UUH6AJZNoI" role="3clFbx">
          <node concept="2MkqsV" id="3UUH6AJZOPU" role="3cqZAp">
            <node concept="Xl_RD" id="3UUH6AJZOPV" role="2MkJ7o">
              <property role="Xl_RC" value="An XSD schema must have a target file name specified." />
            </node>
            <node concept="1YBJjd" id="3UUH6AJZOPW" role="1urrMF">
              <ref role="1YBMHb" node="3UUH6AJY5HF" resolve="body" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="3UUH6AJZOlo" role="3clFbw">
          <node concept="2OqwBi" id="3UUH6AJZNyA" role="2Oq$k0">
            <node concept="1YBJjd" id="3UUH6AJZNp5" role="2Oq$k0">
              <ref role="1YBMHb" node="3UUH6AJY5HF" resolve="body" />
            </node>
            <node concept="3TrcHB" id="6ZO2Qy6j2Cb" role="2OqNvi">
              <ref role="3TsBF5" to="irkh:6ZO2Qy6hDgR" resolve="targetFileName" />
            </node>
          </node>
          <node concept="17RlXB" id="3UUH6AJZOPG" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3UUH6AJY5HF" role="1YuTPh">
      <property role="TrG5h" value="body" />
      <ref role="1YaFvo" to="irkh:nxI_60uCZI" resolve="XsdSchemaBody" />
    </node>
  </node>
</model>

