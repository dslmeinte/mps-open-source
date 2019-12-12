<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:62293826-7471-46f7-bfd4-1e05bde057be(Svg.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="13" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="r4xx" ref="r:25991841-12a0-400d-8d65-d016aab8719f(Svg.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2" />
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
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
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
  </registry>
  <node concept="24kQdi" id="3XHwWSLqDma">
    <ref role="1XX52x" to="r4xx:3XHwWSLqD22" resolve="Vector" />
    <node concept="3EZMnI" id="3XHwWSLqDmc" role="2wV5jI">
      <node concept="3F0ifn" id="3XHwWSLqDmj" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="3XHwWSLqDmp" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:3XHwWSLqDlH" resolve="x" />
      </node>
      <node concept="3F0ifn" id="3XHwWSLqDmx" role="3EZMnx">
        <property role="3F0ifm" value=", " />
      </node>
      <node concept="3F0A7n" id="3XHwWSLqDmF" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:3XHwWSLqDlI" resolve="y" />
      </node>
      <node concept="3F0ifn" id="3XHwWSLqDmR" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="2iRfu4" id="3XHwWSLqDmf" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3XHwWSLqDnp">
    <ref role="1XX52x" to="r4xx:3XHwWSLl7lU" resolve="SvgRoot" />
    <node concept="3EZMnI" id="3XHwWSLqDnu" role="2wV5jI">
      <node concept="3EZMnI" id="3XHwWSLqDnD" role="3EZMnx">
        <node concept="VPM3Z" id="3XHwWSLqDnF" role="3F10Kt" />
        <node concept="3F0ifn" id="3XHwWSLqDnH" role="3EZMnx">
          <property role="3F0ifm" value="&lt;svg" />
        </node>
        <node concept="3F0ifn" id="3XHwWSLqDnU" role="3EZMnx">
          <property role="3F0ifm" value="dimension=" />
        </node>
        <node concept="3F1sOY" id="3XHwWSLqDnZ" role="3EZMnx">
          <ref role="1NtTu8" to="r4xx:3XHwWSLqD21" resolve="dimension" />
        </node>
        <node concept="3F0ifn" id="3XHwWSLqDoI" role="3EZMnx">
          <property role="3F0ifm" value="css=" />
        </node>
        <node concept="1iCGBv" id="3XHwWSLqDoX" role="3EZMnx">
          <ref role="1NtTu8" to="r4xx:3XHwWSLqDoW" resolve="css" />
          <node concept="1sVBvm" id="3XHwWSLqDoZ" role="1sWHZn">
            <node concept="3F0A7n" id="3XHwWSLqDpb" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="3XHwWSLqDo9" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
        </node>
        <node concept="2iRfu4" id="3XHwWSLqDnI" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="7_z3uTkhSZs" role="3EZMnx">
        <node concept="VPM3Z" id="7_z3uTkhSZu" role="3F10Kt" />
        <node concept="3XFhqQ" id="7_z3uTkhSZY" role="3EZMnx" />
        <node concept="3EZMnI" id="7_z3uTkhT04" role="3EZMnx">
          <node concept="VPM3Z" id="7_z3uTkhT06" role="3F10Kt" />
          <node concept="3F2HdR" id="7_z3uTkhT0i" role="3EZMnx">
            <ref role="1NtTu8" to="r4xx:3XHwWSLtwQX" resolve="elements" />
            <node concept="2iRkQZ" id="7_z3uTkhT0k" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="7_z3uTkhT09" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="7_z3uTkhSZx" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3XHwWSLqDof" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/svg&gt;" />
      </node>
      <node concept="2iRkQZ" id="3XHwWSLqDnx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3XHwWSLrYN4">
    <ref role="1XX52x" to="r4xx:3XHwWSLqDqj" resolve="SvgGroup" />
    <node concept="3EZMnI" id="3XHwWSLrYN6" role="2wV5jI">
      <node concept="3F0ifn" id="3XHwWSLrYNd" role="3EZMnx">
        <property role="3F0ifm" value="&lt;g&gt;" />
      </node>
      <node concept="3EZMnI" id="7_z3uTkhPCx" role="3EZMnx">
        <node concept="VPM3Z" id="7_z3uTkhPCz" role="3F10Kt" />
        <node concept="3XFhqQ" id="7_z3uTkhPCN" role="3EZMnx" />
        <node concept="3EZMnI" id="7_z3uTkhPCT" role="3EZMnx">
          <node concept="VPM3Z" id="7_z3uTkhPCV" role="3F10Kt" />
          <node concept="3F2HdR" id="7_z3uTkhn01" role="3EZMnx">
            <ref role="1NtTu8" to="r4xx:7_z3uTkhmZm" resolve="elements" />
            <node concept="2iRkQZ" id="7_z3uTkhn03" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="7_z3uTkhPCY" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="7_z3uTkhPCA" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3XHwWSLrYNg" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/g&gt;" />
      </node>
      <node concept="2iRkQZ" id="3XHwWSLrYN9" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3XHwWSLrYXm">
    <ref role="1XX52x" to="r4xx:3XHwWSLrYWS" resolve="LiteralXmlContent" />
    <node concept="3EZMnI" id="3XHwWSLrYXo" role="2wV5jI">
      <node concept="3F0ifn" id="3XHwWSLrYXv" role="3EZMnx">
        <property role="3F0ifm" value="literal:" />
        <node concept="Vb9p2" id="3XHwWSLrYXH" role="3F10Kt" />
        <node concept="VechU" id="3XHwWSLrYXM" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F1sOY" id="3XHwWSLrYXD" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:3XHwWSLrYWU" resolve="literalXml" />
      </node>
      <node concept="2iRfu4" id="3XHwWSLrYXr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3XHwWSLt$X6">
    <ref role="1XX52x" to="r4xx:3XHwWSLt$WC" resolve="CssClassReference" />
    <node concept="1HlG4h" id="3XHwWSLt$X8" role="2wV5jI">
      <node concept="1HfYo3" id="3XHwWSLt$Xa" role="1HlULh">
        <node concept="3TQlhw" id="3XHwWSLt$Xc" role="1Hhtcw">
          <node concept="3clFbS" id="3XHwWSLt$Xe" role="2VODD2">
            <node concept="3clFbF" id="3XHwWSLt_1R" role="3cqZAp">
              <node concept="2OqwBi" id="3XHwWSLt_vq" role="3clFbG">
                <node concept="2OqwBi" id="3XHwWSLt_dz" role="2Oq$k0">
                  <node concept="pncrf" id="3XHwWSLt_1Q" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3XHwWSLt_mS" role="2OqNvi">
                    <ref role="3Tt5mk" to="r4xx:3XHwWSLt$WD" resolve="selector" />
                  </node>
                </node>
                <node concept="3TrcHB" id="3XHwWSLt_HU" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

