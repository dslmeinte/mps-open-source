<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8111ce4c-bcdd-4b17-b2b3-2098ed4bc79f(JsonSchema.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="64hz" ref="r:eca5c7f5-86ab-4d3c-9b6b-cf6848ecd9e6(JsonSchema.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="7418278005949660372" name="jetbrains.mps.lang.editor.structure.FontFamilyStyleClassItem" flags="ln" index="2biZxu" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <property id="1221209241505" name="value" index="1lJzqX" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="7228435049763093185" name="jetbrains.mps.lang.editor.structure.FontFamilyContainer" flags="ng" index="1rj3mw">
        <property id="7228435049763093186" name="family" index="1rj3mz" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
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
  <node concept="24kQdi" id="2hQb6UNpwwA">
    <ref role="1XX52x" to="64hz:2hQb6UNpmlE" resolve="JsonSchema" />
    <node concept="3EZMnI" id="2hQb6UNpwwC" role="2wV5jI">
      <node concept="3EZMnI" id="2hQb6UNpwwJ" role="3EZMnx">
        <node concept="VPM3Z" id="2hQb6UNpwwL" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="2hQb6UNpwwT" role="3EZMnx">
          <property role="3F0ifm" value="JSON schema" />
        </node>
        <node concept="3F0A7n" id="2hQb6UNpwwZ" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="6$03NoGjSnf" resolve="ReferableName" />
        </node>
        <node concept="2iRfu4" id="2hQb6UNpwwO" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="2hQb6UNpwx3" role="3EZMnx" />
      <node concept="3EZMnI" id="2hQb6UNpwxS" role="3EZMnx">
        <node concept="VPM3Z" id="2hQb6UNpwxU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="2hQb6UNpwyl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3EZMnI" id="2hQb6UNpwxi" role="3EZMnx">
          <node concept="3EZMnI" id="6$03NoGlxhh" role="3EZMnx">
            <node concept="VPM3Z" id="6$03NoGlxhi" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="6$03NoGlxhj" role="3EZMnx">
              <property role="3F0ifm" value="title:" />
            </node>
            <node concept="3F0A7n" id="6$03NoGlxhW" role="3EZMnx">
              <property role="1O74Pk" value="true" />
              <ref role="1NtTu8" to="64hz:6$03NoGlxfs" resolve="title" />
            </node>
            <node concept="2iRfu4" id="6$03NoGlxhl" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="2hQb6UNpwz4" role="3EZMnx">
            <node concept="VPM3Z" id="2hQb6UNpwz6" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="2hQb6UNpwz8" role="3EZMnx">
              <property role="3F0ifm" value="description:" />
            </node>
            <node concept="3F0A7n" id="2hQb6UNpwzm" role="3EZMnx">
              <property role="1O74Pk" value="true" />
              <ref role="1NtTu8" to="64hz:2hQb6UNpvx7" resolve="description" />
            </node>
            <node concept="2iRfu4" id="2hQb6UNpwz9" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="2hQb6UNpwxk" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="lj46D" id="2hQb6UNy6Yl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3EZMnI" id="2hQb6UNpwyG" role="3EZMnx">
            <node concept="VPM3Z" id="2hQb6UNpwyI" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="2hQb6UNpwyK" role="3EZMnx">
              <property role="3F0ifm" value="id:" />
            </node>
            <node concept="3F0A7n" id="2hQb6UNpwyT" role="3EZMnx">
              <property role="1O74Pk" value="true" />
              <ref role="1NtTu8" to="64hz:2hQb6UNptUo" resolve="id" />
            </node>
            <node concept="2iRfu4" id="2hQb6UNpwyL" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="2hQb6UNpwzq" role="3EZMnx" />
          <node concept="3F0ifn" id="2hQb6UNyB31" role="3EZMnx" />
          <node concept="3F1sOY" id="2hQb6UNpwzN" role="3EZMnx">
            <ref role="1NtTu8" to="64hz:2hQb6UNpvy4" resolve="contents" />
          </node>
          <node concept="3F0ifn" id="2hQb6UNpw$1" role="3EZMnx" />
          <node concept="3F0ifn" id="2hQb6UNyB2c" role="3EZMnx" />
          <node concept="3F0ifn" id="2hQb6UNpw$f" role="3EZMnx">
            <property role="3F0ifm" value="definitions:" />
          </node>
          <node concept="3F0ifn" id="2hQb6UNyB2A" role="3EZMnx" />
          <node concept="3EZMnI" id="2hQb6UNpw$I" role="3EZMnx">
            <node concept="VPM3Z" id="2hQb6UNpw$K" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="lj46D" id="2hQb6UNpw_p" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3EZMnI" id="2hQb6UNpw_7" role="3EZMnx">
              <node concept="VPM3Z" id="2hQb6UNpw_9" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="lj46D" id="2hQb6UNy6Yp" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="3F2HdR" id="2hQb6UNpw_h" role="3EZMnx">
                <ref role="1NtTu8" to="64hz:2hQb6UNpvOI" resolve="definitions" />
                <node concept="2iRkQZ" id="2hQb6UNpw_j" role="2czzBx" />
              </node>
              <node concept="2iRkQZ" id="2hQb6UNpw_c" role="2iSdaV" />
            </node>
            <node concept="l2Vlx" id="2hQb6UNpw$N" role="2iSdaV" />
          </node>
          <node concept="2iRkQZ" id="2hQb6UNpwxn" role="2iSdaV" />
        </node>
        <node concept="l2Vlx" id="2hQb6UNpwxX" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="2hQb6UNpwwF" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGjSn0" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGjSn1" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGkgLq" role="3EZMnx">
        <property role="3F0ifm" value="Defines a JSON Schema." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNpGxp">
    <ref role="1XX52x" to="64hz:2hQb6UNpvxW" resolve="JsonObjectDef" />
    <node concept="3EZMnI" id="2hQb6UNpGxr" role="2wV5jI">
      <node concept="3EZMnI" id="2hQb6UNpGxy" role="3EZMnx">
        <node concept="VPM3Z" id="2hQb6UNpGx$" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="2hQb6UNpGxG" role="3EZMnx">
          <property role="3F0ifm" value="object" />
        </node>
        <node concept="3F0ifn" id="2hQb6UNpGxZ" role="3EZMnx">
          <property role="3F0ifm" value="with properties" />
          <node concept="Vb9p2" id="2hQb6UNpGy3" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="2hQb6UNqUo7" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="2iRfu4" id="2hQb6UNpGxB" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="2hQb6UNpGyd" role="3EZMnx">
        <node concept="VPM3Z" id="2hQb6UNpGyf" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3EZMnI" id="2hQb6UNpGyu" role="3EZMnx">
          <node concept="VPM3Z" id="2hQb6UNpGyw" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="lj46D" id="2hQb6UNxhKm" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F2HdR" id="2hQb6UNpGyC" role="3EZMnx">
            <ref role="1NtTu8" to="64hz:2hQb6UNpvy6" resolve="properties" />
            <node concept="2iRkQZ" id="6$03NoGmsaG" role="2czzBx" />
          </node>
          <node concept="3EZMnI" id="6qrN1nFkWg" role="3EZMnx">
            <node concept="VPM3Z" id="6qrN1nFkWi" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="6qrN1nFkWk" role="3EZMnx">
              <property role="3F0ifm" value="additionals:" />
              <node concept="Vb9p2" id="6qrN1nFwoO" role="3F10Kt">
                <property role="Vbekb" value="g1_kEg4/ITALIC" />
              </node>
            </node>
            <node concept="3F1sOY" id="6qrN1nFkWD" role="3EZMnx">
              <property role="1$x2rV" value="&lt;true (default)&gt;" />
              <ref role="1NtTu8" to="64hz:6qrN1nFkMB" resolve="additionalPropertiesType" />
            </node>
            <node concept="2iRfu4" id="6qrN1nFkWl" role="2iSdaV" />
          </node>
          <node concept="2iRkQZ" id="5uyaFvvFh7B" role="2iSdaV" />
        </node>
        <node concept="l2Vlx" id="2hQb6UNpGyi" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="2hQb6UNpGxu" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGjaqX" role="6VMZX">
      <node concept="3F0ifn" id="6$03NoGksj5" role="3EZMnx">
        <property role="3F0ifm" value="Defines the structure of a JSON object." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
      <node concept="3F0ifn" id="6$03NoGksjc" role="3EZMnx" />
      <node concept="3EZMnI" id="6$03NoGmetZ" role="3EZMnx">
        <node concept="VPM3Z" id="6$03NoGmeu1" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6$03NoGmeu3" role="3EZMnx">
          <property role="3F0ifm" value="title:" />
        </node>
        <node concept="3F0A7n" id="6$03NoGmeuj" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="64hz:6$03NoGmek3" resolve="title" />
        </node>
        <node concept="2iRfu4" id="6$03NoGmeu4" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="6$03NoGjaqY" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNpJqh">
    <ref role="1XX52x" to="64hz:2hQb6UNpvOL" resolve="JsonDefinition" />
    <node concept="3EZMnI" id="2hQb6UNyswT" role="2wV5jI">
      <node concept="3EZMnI" id="2hQb6UNpJqj" role="3EZMnx">
        <node concept="3F0A7n" id="2hQb6UNpJqq" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="6$03NoGjSnf" resolve="ReferableName" />
        </node>
        <node concept="3F0ifn" id="2hQb6UNpJqw" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="2hQb6UNpJqC" role="3EZMnx">
          <ref role="1NtTu8" to="64hz:2hQb6UNpvOO" resolve="def" />
        </node>
        <node concept="2iRfu4" id="2hQb6UNpJqm" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="2hQb6UNysx2" role="3EZMnx" />
      <node concept="2iRkQZ" id="2hQb6UNyswU" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGks99" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGks9a" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGks9d" role="3EZMnx">
        <property role="3F0ifm" value="Defines a referable type." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNpMRv">
    <ref role="1XX52x" to="64hz:2hQb6UNpvxZ" resolve="JsonRegularProperty" />
    <node concept="3EZMnI" id="2hQb6UNpMRx" role="2wV5jI">
      <node concept="3F0ifn" id="2hQb6UNpMRC" role="3EZMnx">
        <property role="3F0ifm" value="required" />
        <node concept="Vb9p2" id="2hQb6UNpMRF" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
        <node concept="pkWqt" id="2hQb6UNpMRH" role="pqm2j">
          <node concept="3clFbS" id="2hQb6UNpMRI" role="2VODD2">
            <node concept="3clFbF" id="2hQb6UNpMZ1" role="3cqZAp">
              <node concept="2OqwBi" id="2hQb6UNpNcf" role="3clFbG">
                <node concept="pncrf" id="2hQb6UNpMZ0" role="2Oq$k0" />
                <node concept="3TrcHB" id="2hQb6UNpNFG" role="2OqNvi">
                  <ref role="3TsBF5" to="64hz:2hQb6UNpvy2" resolve="required" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2hQb6UNpOmz" role="3EZMnx">
        <property role="3F0ifm" value="property" />
      </node>
      <node concept="3F0A7n" id="2hQb6UNpOD_" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2hQb6UNpOWD" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="2hQb6UNpPfJ" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:4$rLBnuqZXm" resolve="type" />
      </node>
      <node concept="2iRfu4" id="2hQb6UNpMR$" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGksJG" role="6VMZX">
      <node concept="3F0ifn" id="6$03NoGksTe" role="3EZMnx">
        <property role="3F0ifm" value="Defines a (regular) property of a JSON object, with non-variable/-patterned name and a type." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
      <node concept="3F0ifn" id="6$03NoGksTk" role="3EZMnx" />
      <node concept="3EZMnI" id="2hQb6UNpO3t" role="3EZMnx">
        <node concept="2iRfu4" id="2hQb6UNpO3u" role="2iSdaV" />
        <node concept="3F0ifn" id="2hQb6UNpOcR" role="3EZMnx">
          <property role="3F0ifm" value="required:" />
        </node>
        <node concept="3F0A7n" id="2hQb6UNpOcW" role="3EZMnx">
          <ref role="1NtTu8" to="64hz:2hQb6UNpvy2" resolve="required" />
        </node>
      </node>
      <node concept="3EZMnI" id="6$03NoGmDFX" role="3EZMnx">
        <node concept="VPM3Z" id="6$03NoGmDFZ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6$03NoGmDGd" role="3EZMnx">
          <property role="3F0ifm" value="description:" />
        </node>
        <node concept="3F0A7n" id="6$03NoGmDGj" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="64hz:6$03NoGmDyl" resolve="description" />
        </node>
        <node concept="2iRfu4" id="6$03NoGmDG2" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="6$03NoGksJH" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNq1cT">
    <ref role="1XX52x" to="64hz:2hQb6UNpvOR" resolve="JsonOneOf" />
    <node concept="3EZMnI" id="2hQb6UNu7du" role="2wV5jI">
      <node concept="3F0ifn" id="2hQb6UNu7d_" role="3EZMnx">
        <property role="3F0ifm" value="one of:" />
      </node>
      <node concept="3F2HdR" id="2hQb6UNu7dF" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:5uyaFvvEFNs" resolve="types" />
        <node concept="2iRkQZ" id="ZBzBlOz25" role="2czzBx" />
        <node concept="VPM3Z" id="2hQb6UNu7dJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2iRfu4" id="2hQb6UNu7dx" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGkO7e" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGkO7f" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGkO7i" role="3EZMnx">
        <property role="3F0ifm" value="Represents a choice of exactly one of the indicated types." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNqjzM">
    <ref role="1XX52x" to="64hz:2hQb6UNpvy8" resolve="JsonEnumerationDef" />
    <node concept="3EZMnI" id="2hQb6UNtVMk" role="2wV5jI">
      <node concept="3F0ifn" id="2hQb6UNtVMr" role="3EZMnx">
        <property role="3F0ifm" value="enum of:" />
      </node>
      <node concept="3F2HdR" id="2hQb6UNtVMx" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:2hQb6UNpvye" resolve="values" />
        <node concept="2iRfu4" id="2hQb6UNtVM$" role="2czzBx" />
        <node concept="VPM3Z" id="2hQb6UNtVM_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2iRfu4" id="2hQb6UNtVMn" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGks9f" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGks9g" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGks9j" role="3EZMnx">
        <property role="3F0ifm" value="Defines an enumeration of fixed string values." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNqpAf">
    <ref role="1XX52x" to="64hz:2hQb6UNpvyb" resolve="JsonEnumerationValue" />
    <node concept="3F0A7n" id="2hQb6UNqpAh" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      <ref role="1k5W1q" node="2hQb6UNw2PB" resolve="EnumValueLike" />
    </node>
    <node concept="3EZMnI" id="6$03NoGks9l" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGks9m" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGks9p" role="3EZMnx">
        <property role="3F0ifm" value="A string that declares one value of an enumeration." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNqw6N">
    <ref role="1XX52x" to="64hz:2hQb6UNpvOQ" resolve="JsonArrayDef" />
    <node concept="3EZMnI" id="2hQb6UNqw74" role="2wV5jI">
      <node concept="3F0ifn" id="2hQb6UNqw7b" role="3EZMnx">
        <property role="3F0ifm" value="array" />
      </node>
      <node concept="3F0ifn" id="2hQb6UNqw7h" role="3EZMnx">
        <property role="3F0ifm" value="with" />
        <node concept="Vb9p2" id="2hQb6UNqw7l" role="3F10Kt" />
      </node>
      <node concept="3F0A7n" id="2hQb6UNqw7s" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="&lt;0&gt;" />
        <ref role="1NtTu8" to="64hz:2hQb6UNqw6G" resolve="minItems" />
      </node>
      <node concept="3F0ifn" id="2hQb6UNqw7C" role="3EZMnx">
        <property role="3F0ifm" value="or more" />
        <node concept="Vb9p2" id="2hQb6UNqw7J" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="2hQb6UNqw7T" role="3EZMnx">
        <property role="3F0ifm" value="unique" />
        <node concept="Vb9p2" id="2hQb6UNqw82" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
        <node concept="pkWqt" id="2hQb6UNqw84" role="pqm2j">
          <node concept="3clFbS" id="2hQb6UNqw85" role="2VODD2">
            <node concept="3clFbF" id="2hQb6UNqwfo" role="3cqZAp">
              <node concept="2OqwBi" id="2hQb6UNqwrO" role="3clFbG">
                <node concept="pncrf" id="2hQb6UNqwfn" role="2Oq$k0" />
                <node concept="3TrcHB" id="2hQb6UNqwRO" role="2OqNvi">
                  <ref role="3TsBF5" to="64hz:2hQb6UNqw6K" resolve="uniqueItems" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2hQb6UNqxrm" role="3EZMnx">
        <property role="3F0ifm" value="items of type" />
        <node concept="Vb9p2" id="2hQb6UNqx$O" role="3F10Kt" />
        <node concept="3$7jql" id="z0cIsL6nI9" role="3F10Kt">
          <property role="3$6WeP" value="1" />
        </node>
      </node>
      <node concept="3F1sOY" id="2hQb6UNqxIl" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:2hQb6UNqw6I" resolve="itemsType" />
      </node>
      <node concept="2iRfu4" id="2hQb6UNqw77" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGkh4j" role="6VMZX">
      <node concept="3F0ifn" id="6$03NoGkhdP" role="3EZMnx">
        <property role="3F0ifm" value="Defines a JSON array." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
      <node concept="3F0ifn" id="6$03NoGkhdV" role="3EZMnx" />
      <node concept="3EZMnI" id="2hQb6UNqx8s" role="3EZMnx">
        <node concept="2iRfu4" id="2hQb6UNqx8t" role="2iSdaV" />
        <node concept="3F0ifn" id="2hQb6UNqxhH" role="3EZMnx">
          <property role="3F0ifm" value="unique items:" />
        </node>
        <node concept="3F0A7n" id="2hQb6UNqxhM" role="3EZMnx">
          <ref role="1NtTu8" to="64hz:2hQb6UNqw6K" resolve="uniqueItems" />
        </node>
      </node>
      <node concept="2iRkQZ" id="6$03NoGkh4k" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNqEnW">
    <ref role="1XX52x" to="64hz:2hQb6UNqEnT" resolve="JsonStringType" />
    <node concept="3EZMnI" id="2hQb6UNrqdu" role="2wV5jI">
      <node concept="3F0ifn" id="2hQb6UNrqdx" role="3EZMnx">
        <property role="3F0ifm" value="string" />
        <ref role="1k5W1q" node="6$03NoGms0I" resolve="Datatype" />
      </node>
      <node concept="3F1sOY" id="2hQb6UNsDdC" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:2hQb6UNsfOh" resolve="restriction" />
        <node concept="pkWqt" id="2hQb6UNsDdH" role="pqm2j">
          <node concept="3clFbS" id="2hQb6UNsDdI" role="2VODD2">
            <node concept="3clFbF" id="2hQb6UNsDl1" role="3cqZAp">
              <node concept="17QLQc" id="2hQb6UNsEG7" role="3clFbG">
                <node concept="10Nm6u" id="2hQb6UNsEXb" role="3uHU7w" />
                <node concept="2OqwBi" id="2hQb6UNsDyf" role="3uHU7B">
                  <node concept="pncrf" id="2hQb6UNsDl0" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2hQb6UNsE1G" role="2OqNvi">
                    <ref role="3Tt5mk" to="64hz:2hQb6UNsfOh" resolve="restriction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="2hQb6UNrqdz" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGktcZ" role="6VMZX">
      <node concept="3F0ifn" id="6$03NoGktmH" role="3EZMnx">
        <property role="3F0ifm" value="Instances of a JSON string with the indicated restriction (optional)." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
      <node concept="3F0ifn" id="6$03NoGktmQ" role="3EZMnx" />
      <node concept="3EZMnI" id="2hQb6UNsCTX" role="3EZMnx">
        <node concept="2iRfu4" id="2hQb6UNsCTY" role="2iSdaV" />
        <node concept="3F0ifn" id="2hQb6UNsD3v" role="3EZMnx">
          <property role="3F0ifm" value="restriction:" />
        </node>
        <node concept="3F1sOY" id="2hQb6UNsD3Q" role="3EZMnx">
          <ref role="1NtTu8" to="64hz:2hQb6UNsfOh" resolve="restriction" />
        </node>
      </node>
      <node concept="2iRkQZ" id="6$03NoGktd0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNqEo4">
    <ref role="1XX52x" to="64hz:2hQb6UNqEo1" resolve="JsonBooleanType" />
    <node concept="3F0ifn" id="2hQb6UNqEo6" role="2wV5jI">
      <property role="3F0ifm" value="boolean" />
      <ref role="1k5W1q" node="6$03NoGms0I" resolve="Datatype" />
    </node>
    <node concept="3EZMnI" id="6$03NoGkhe2" role="6VMZX">
      <node concept="2iRfu4" id="6$03NoGkhe3" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGkhe6" role="3EZMnx">
        <property role="3F0ifm" value="Instances of a JSON boolean:" />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
      <node concept="3F0ifn" id="6$03NoGkheb" role="3EZMnx">
        <property role="3F0ifm" value="true" />
      </node>
      <node concept="3F0ifn" id="6$03NoGkhej" role="3EZMnx">
        <property role="3F0ifm" value="false" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNrK1R">
    <ref role="1XX52x" to="64hz:2hQb6UNrK1L" resolve="JsonIntegerType" />
    <node concept="3EZMnI" id="2hQb6UNrK1T" role="2wV5jI">
      <node concept="3F0ifn" id="2hQb6UNrK20" role="3EZMnx">
        <property role="3F0ifm" value="integer" />
        <ref role="1k5W1q" node="6$03NoGms0I" resolve="Datatype" />
      </node>
      <node concept="3F0ifn" id="2hQb6UNrK2l" role="3EZMnx">
        <property role="3F0ifm" value="in the range of" />
        <node concept="Vb9p2" id="2hQb6UNrK2o" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="2hQb6UNrK2u" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3F0A7n" id="2hQb6UNsQTZ" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="&lt;-∞&gt;" />
        <ref role="1NtTu8" to="64hz:2hQb6UNrK1M" resolve="minimum" />
        <node concept="Vb9p2" id="2hQb6UNv0jL" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
      </node>
      <node concept="3F0ifn" id="2hQb6UNsQUd" role="3EZMnx">
        <property role="3F0ifm" value=".." />
      </node>
      <node concept="3F0A7n" id="2hQb6UNsQUt" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="&lt;+∞&gt;" />
        <ref role="1NtTu8" to="64hz:2hQb6UNrK1O" resolve="maximum" />
        <node concept="Vb9p2" id="2hQb6UNv0jS" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
      </node>
      <node concept="3F0ifn" id="2hQb6UNrK2C" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
      <node concept="2iRfu4" id="2hQb6UNrK1W" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGks9r" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGks9s" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGks9v" role="3EZMnx">
        <property role="3F0ifm" value="Instances of a JSON integer within the indicated range - with both ends optional." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNsfOn">
    <ref role="1XX52x" to="64hz:2hQb6UNsfOg" resolve="JsonStringPattern" />
    <node concept="3EZMnI" id="2hQb6UNsfOp" role="2wV5jI">
      <node concept="3F0ifn" id="2hQb6UNsfOw" role="3EZMnx">
        <property role="3F0ifm" value="with pattern" />
        <node concept="Vb9p2" id="2hQb6UNsfOE" role="3F10Kt" />
      </node>
      <node concept="3F0A7n" id="2hQb6UNsfOA" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:2hQb6UNsfOl" resolve="pattern" />
        <ref role="1k5W1q" node="2hQb6UNwKXk" resolve="Pattern" />
      </node>
      <node concept="2iRfu4" id="2hQb6UNsfOs" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGksTH" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGksTI" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGksTL" role="3EZMnx">
        <property role="3F0ifm" value="Declares a pattern for a string value." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNsfOI">
    <ref role="1XX52x" to="64hz:2hQb6UNsfOc" resolve="JsonStringFormat" />
    <node concept="3F0A7n" id="2hQb6UNsfOK" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
    <node concept="3EZMnI" id="6$03NoGksTx" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGksTy" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGksT_" role="3EZMnx">
        <property role="3F0ifm" value="Declares a format for a string." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNsfON">
    <ref role="1XX52x" to="64hz:2hQb6UNrK1K" resolve="JsonStringFormats" />
    <node concept="3EZMnI" id="2hQb6UNvSqZ" role="2wV5jI">
      <node concept="3F0ifn" id="2hQb6UNvSr6" role="3EZMnx">
        <property role="3F0ifm" value="with one of the following formats:" />
        <node concept="Vb9p2" id="2hQb6UNvSri" role="3F10Kt" />
      </node>
      <node concept="3F2HdR" id="2hQb6UNvSrc" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:2hQb6UNsfOa" resolve="formats" />
        <ref role="1k5W1q" node="2hQb6UNw2PB" resolve="EnumValueLike" />
        <node concept="2iRfu4" id="2hQb6UNvSre" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="2hQb6UNvSr2" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGksTB" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGksTC" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGksTF" role="3EZMnx">
        <property role="3F0ifm" value="Declares a set of formats for a string value." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="2hQb6UNw2PA">
    <property role="TrG5h" value="Editor_Styles" />
    <node concept="14StLt" id="2hQb6UNw2PB" role="V601i">
      <property role="TrG5h" value="EnumValueLike" />
      <node concept="VechU" id="2hQb6UNw2PD" role="3F10Kt">
        <property role="Vb096" value="g1_eI4o/darkBlue" />
      </node>
    </node>
    <node concept="14StLt" id="2hQb6UNwAla" role="V601i">
      <property role="TrG5h" value="Reference" />
      <node concept="VechU" id="2hQb6UNwAlg" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/darkGreen" />
      </node>
      <node concept="Vb9p2" id="2hQb6UNwAll" role="3F10Kt">
        <property role="Vbekb" value="g1_kEg4/ITALIC" />
      </node>
    </node>
    <node concept="14StLt" id="2hQb6UNwKXk" role="V601i">
      <property role="TrG5h" value="Pattern" />
      <node concept="VechU" id="2hQb6UNwKXx" role="3F10Kt">
        <property role="Vb096" value="fLwANPp/orange" />
      </node>
    </node>
    <node concept="14StLt" id="6$03NoGjSnf" role="V601i">
      <property role="TrG5h" value="ReferableName" />
      <node concept="Vb9p2" id="6$03NoGjSnr" role="3F10Kt">
        <property role="Vbekb" value="g1_kEg4/ITALIC" />
      </node>
    </node>
    <node concept="14StLt" id="6$03NoGkgKX" role="V601i">
      <property role="TrG5h" value="Documentation" />
      <node concept="Vb9p2" id="6$03NoGkgLf" role="3F10Kt" />
      <node concept="VSNWy" id="6$03NoGkgLm" role="3F10Kt">
        <property role="1lJzqX" value="12" />
      </node>
    </node>
    <node concept="14StLt" id="6$03NoGms0I" role="V601i">
      <property role="TrG5h" value="Datatype" />
      <node concept="Vb9p2" id="6$03NoGms0X" role="3F10Kt">
        <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2hQb6UNyLAk">
    <ref role="1XX52x" to="64hz:2hQb6UNyLAf" resolve="JsonReferableRef" />
    <node concept="3EZMnI" id="6$03NoGksTr" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGksTs" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGksTv" role="3EZMnx">
        <property role="3F0ifm" value="A reference to the mentioned type." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
    <node concept="1iCGBv" id="2hQb6UNyLAv" role="2wV5jI">
      <ref role="1k5W1q" node="2hQb6UNwAla" resolve="Reference" />
      <ref role="1NtTu8" to="64hz:2hQb6UNyLAi" resolve="ref" />
      <node concept="1sVBvm" id="2hQb6UNyLAx" role="1sWHZn">
        <node concept="3F0A7n" id="2hQb6UNyTuU" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6$03NoGja_h">
    <ref role="1XX52x" to="64hz:6$03NoGja_c" resolve="JsonPatternProperty" />
    <node concept="3EZMnI" id="6$03NoGja_v" role="2wV5jI">
      <node concept="3F0ifn" id="4$rLBnuqZNV" role="3EZMnx">
        <property role="3F0ifm" value="pattern" />
      </node>
      <node concept="3F0A7n" id="6$03NoGja_G" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:6$03NoGja_d" resolve="pattern" />
        <ref role="1k5W1q" node="2hQb6UNwKXk" resolve="Pattern" />
      </node>
      <node concept="3F0ifn" id="6$03NoGja_O" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="6$03NoGjaA4" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:4$rLBnuqZXm" resolve="type" />
      </node>
      <node concept="2iRfu4" id="6$03NoGja_y" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGkssJ" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGkssK" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGkssN" role="3EZMnx">
        <property role="3F0ifm" value="Defines a pattern and a type for properties of a JSON object." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6$03NoGms0r">
    <ref role="1XX52x" to="64hz:6$03NoGms0o" resolve="JsonNumberType" />
    <node concept="3F0ifn" id="6$03NoGms0t" role="2wV5jI">
      <property role="3F0ifm" value="number" />
      <ref role="1k5W1q" node="6$03NoGms0I" resolve="Datatype" />
    </node>
    <node concept="3EZMnI" id="6$03NoGmsaJ" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGmsaK" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGmsaN" role="3EZMnx">
        <property role="3F0ifm" value="Instances of a JSON number." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
      <node concept="3F0ifn" id="6$03NoGnj5_" role="3EZMnx" />
      <node concept="3EZMnI" id="6$03NoGnj5O" role="3EZMnx">
        <node concept="VPM3Z" id="6$03NoGnj5Q" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6$03NoGnj5S" role="3EZMnx">
          <property role="3F0ifm" value="exclusive minimum:" />
        </node>
        <node concept="3F0A7n" id="6$03NoGnj63" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="64hz:6$03NoGnj5z" resolve="exclusiveMinimum" />
        </node>
        <node concept="2iRfu4" id="6$03NoGnj5T" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6$03NoGnwKB">
    <ref role="1XX52x" to="64hz:6$03NoGnwKy" resolve="JsonExternalRef" />
    <node concept="3EZMnI" id="6$03NoGnwKM" role="2wV5jI">
      <node concept="3F0ifn" id="6$03NoGnwKT" role="3EZMnx">
        <property role="3F0ifm" value="ref URI" />
      </node>
      <node concept="3F0ifn" id="6$03NoGnwKZ" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="6$03NoGnwL7" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:6$03NoGnwK_" resolve="refUri" />
        <node concept="2biZxu" id="6$03NoGnZfr" role="3F10Kt">
          <property role="1rj3mz" value="Courier" />
        </node>
        <node concept="VSNWy" id="6$03NoGoPTw" role="3F10Kt">
          <property role="1lJzqX" value="15" />
        </node>
      </node>
      <node concept="2iRfu4" id="6$03NoGnwKP" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6$03NoGnwLc" role="6VMZX">
      <node concept="2iRkQZ" id="6$03NoGnwLd" role="2iSdaV" />
      <node concept="3F0ifn" id="6$03NoGnwLg" role="3EZMnx">
        <property role="3F0ifm" value="References an external type." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5uyaFvvEF_R">
    <ref role="1XX52x" to="64hz:5uyaFvvEF_p" resolve="JsonAnyOf" />
    <node concept="3EZMnI" id="5uyaFvvEF_T" role="6VMZX">
      <node concept="2iRkQZ" id="5uyaFvvEF_U" role="2iSdaV" />
      <node concept="3F0ifn" id="5uyaFvvEF_V" role="3EZMnx">
        <property role="3F0ifm" value="Represents a choice of any one of the indicated types." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
    <node concept="3EZMnI" id="5uyaFvvEF_Z" role="2wV5jI">
      <node concept="3F0ifn" id="5uyaFvvEFA0" role="3EZMnx">
        <property role="3F0ifm" value="any of:" />
      </node>
      <node concept="3F2HdR" id="5uyaFvvEFA1" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:5uyaFvvEFNs" resolve="types" />
        <node concept="2iRkQZ" id="6qrN1nFfHF" role="2czzBx" />
        <node concept="VPM3Z" id="5uyaFvvEFA3" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2iRfu4" id="5uyaFvvEFA4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6qrN1nGm_3">
    <ref role="1XX52x" to="64hz:5uyaFvvGuLw" resolve="JsonAllOf" />
    <node concept="3EZMnI" id="6qrN1nGm_5" role="2wV5jI">
      <node concept="3F0ifn" id="6qrN1nGm_6" role="3EZMnx">
        <property role="3F0ifm" value="all of:" />
      </node>
      <node concept="3F2HdR" id="6qrN1nGm_7" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:5uyaFvvEFNs" resolve="types" />
        <node concept="2iRkQZ" id="6qrN1nGm_8" role="2czzBx" />
        <node concept="VPM3Z" id="6qrN1nGm_9" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2iRfu4" id="6qrN1nGm_a" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6qrN1nGm_h" role="6VMZX">
      <node concept="2iRkQZ" id="6qrN1nGm_i" role="2iSdaV" />
      <node concept="3F0ifn" id="6qrN1nGm_j" role="3EZMnx">
        <property role="3F0ifm" value="Indicates all mentioned types should be instantiated." />
        <ref role="1k5W1q" node="6$03NoGkgKX" resolve="Documentation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6HQdUrgVIYY">
    <ref role="1XX52x" to="64hz:6HQdUrgVIYx" resolve="JsonNoneType" />
    <node concept="3F0ifn" id="6HQdUrgVIZ0" role="2wV5jI">
      <property role="3F0ifm" value="none" />
    </node>
  </node>
  <node concept="24kQdi" id="KZZITVYgUS">
    <ref role="1XX52x" to="64hz:KZZITVYgUp" resolve="JsonConst" />
    <node concept="3EZMnI" id="KZZITVYgUU" role="2wV5jI">
      <node concept="3F0ifn" id="KZZITVYgV1" role="3EZMnx">
        <property role="3F0ifm" value="const&lt;" />
        <node concept="11LMrY" id="KZZITVYk1o" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="KZZITVYgV7" role="3EZMnx">
        <ref role="1NtTu8" to="64hz:KZZITVYgUs" resolve="value" />
      </node>
      <node concept="3F0ifn" id="KZZITVYgVf" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="KZZITVYk1q" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="KZZITVYgUX" role="2iSdaV" />
    </node>
  </node>
</model>

