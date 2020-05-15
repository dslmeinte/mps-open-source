<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:43668a4e-ad03-47f0-97e0-343532210332(ConcernDiagrams.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="9yr0" ref="r:3e379364-626a-45e2-b6bd-136d91176bc7(ConcernDiagrams.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
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
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="7_z3uTkqCyo">
    <ref role="1XX52x" to="9yr0:7_z3uTkm8dd" resolve="ConcernRelation" />
    <node concept="3EZMnI" id="7_z3uTkqCyq" role="2wV5jI">
      <node concept="1iCGBv" id="7_z3uTkqCyx" role="3EZMnx">
        <ref role="1NtTu8" to="9yr0:7_z3uTkm8de" resolve="source" />
        <node concept="1sVBvm" id="7_z3uTkqCyz" role="1sWHZn">
          <node concept="3F0A7n" id="7_z3uTkqCyE" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7_z3uTkqCyM" role="3EZMnx">
        <property role="3F0ifm" value="-- &quot;" />
        <node concept="11LMrY" id="7OceU2_lp_N" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="7_z3uTkqCyY" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="9yr0:7_z3uTkm8dj" resolve="edgeLabel" />
      </node>
      <node concept="3F0ifn" id="7_z3uTkqCzc" role="3EZMnx">
        <property role="3F0ifm" value="&quot; --&gt;" />
        <node concept="11L4FC" id="7OceU2_luTP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="7_z3uTkqCzs" role="3EZMnx">
        <ref role="1NtTu8" to="9yr0:7_z3uTkm8dg" resolve="destination" />
        <node concept="1sVBvm" id="7_z3uTkqCzu" role="1sWHZn">
          <node concept="3F0A7n" id="7_z3uTkqCzF" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="7_z3uTkqCyt" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6DcOmREdWf" role="6VMZX">
      <node concept="2iRkQZ" id="6DcOmREdWg" role="2iSdaV" />
      <node concept="3EZMnI" id="6DcOmREdWj" role="3EZMnx">
        <node concept="2iRfu4" id="6DcOmREdWk" role="2iSdaV" />
        <node concept="VPM3Z" id="6DcOmREdWl" role="3F10Kt" />
        <node concept="3F0ifn" id="6DcOmREdWp" role="3EZMnx">
          <property role="3F0ifm" value="no rotate:" />
        </node>
        <node concept="3F0A7n" id="6DcOmREdWu" role="3EZMnx">
          <ref role="1NtTu8" to="9yr0:6DcOmREdWc" resolve="noRotate" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3LV3NC6Tk2F">
    <ref role="1XX52x" to="9yr0:7_z3uTkqCzI" resolve="ConcernDiagram" />
    <node concept="3EZMnI" id="3LV3NC6Tk2H" role="2wV5jI">
      <node concept="3EZMnI" id="3LV3NC6Tk2O" role="3EZMnx">
        <node concept="VPM3Z" id="3LV3NC6Tk2Q" role="3F10Kt" />
        <node concept="3F0ifn" id="3LV3NC6Tk2Y" role="3EZMnx">
          <property role="3F0ifm" value="concern diagram" />
        </node>
        <node concept="3F0A7n" id="3LV3NC6Tk36" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="3LV3NC6Tk2T" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3LV3NC6Tk3a" role="3EZMnx" />
      <node concept="3EZMnI" id="7_z3uTkqxnj" role="3EZMnx">
        <node concept="VPM3Z" id="7_z3uTkqxnl" role="3F10Kt" />
        <node concept="3XFhqQ" id="7_z3uTkqxnD" role="3EZMnx" />
        <node concept="3EZMnI" id="7OceU2_l4gS" role="3EZMnx">
          <node concept="VPM3Z" id="7OceU2_l4gU" role="3F10Kt" />
          <node concept="3F0ifn" id="7OceU2_l4h3" role="3EZMnx">
            <property role="3F0ifm" value="concerns:" />
          </node>
          <node concept="3F0ifn" id="7OceU2_l4h6" role="3EZMnx" />
          <node concept="3EZMnI" id="7OceU2_l4hR" role="3EZMnx">
            <node concept="VPM3Z" id="7OceU2_l4hT" role="3F10Kt" />
            <node concept="3XFhqQ" id="7OceU2_l4i4" role="3EZMnx" />
            <node concept="3EZMnI" id="7_z3uTkqxnJ" role="3EZMnx">
              <node concept="VPM3Z" id="7_z3uTkqxnL" role="3F10Kt" />
              <node concept="3F2HdR" id="7_z3uTkqxnU" role="3EZMnx">
                <ref role="1NtTu8" to="9yr0:5kTJBKRDa2y" resolve="concerns" />
                <node concept="2EHx9g" id="1LrIrtJXwpZ" role="2czzBx" />
              </node>
              <node concept="2iRkQZ" id="7_z3uTkqxnO" role="2iSdaV" />
            </node>
            <node concept="2iRfu4" id="7OceU2_l4hW" role="2iSdaV" />
          </node>
          <node concept="2iRkQZ" id="7OceU2_l4gX" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="7_z3uTkqxno" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5kTJBKRDdND" role="3EZMnx" />
      <node concept="3EZMnI" id="5kTJBKRDdOc" role="3EZMnx">
        <node concept="VPM3Z" id="5kTJBKRDdOd" role="3F10Kt" />
        <node concept="3XFhqQ" id="5kTJBKRDdOe" role="3EZMnx" />
        <node concept="3EZMnI" id="5kTJBKRDdOf" role="3EZMnx">
          <node concept="VPM3Z" id="5kTJBKRDdOg" role="3F10Kt" />
          <node concept="2iRkQZ" id="5kTJBKRDdOj" role="2iSdaV" />
          <node concept="3F0ifn" id="7OceU2_l4id" role="3EZMnx">
            <property role="3F0ifm" value="relations:" />
          </node>
          <node concept="3F0ifn" id="7OceU2_l4if" role="3EZMnx" />
          <node concept="3EZMnI" id="7OceU2_l4im" role="3EZMnx">
            <node concept="VPM3Z" id="7OceU2_l4io" role="3F10Kt" />
            <node concept="3XFhqQ" id="7OceU2_l4iy" role="3EZMnx" />
            <node concept="3F2HdR" id="5kTJBKRDdOh" role="3EZMnx">
              <ref role="1NtTu8" to="9yr0:5kTJBKRDa2$" resolve="relations" />
              <node concept="2iRkQZ" id="5kTJBKRDdOi" role="2czzBx" />
            </node>
            <node concept="2iRfu4" id="7OceU2_l4ir" role="2iSdaV" />
          </node>
        </node>
        <node concept="2iRfu4" id="5kTJBKRDdOk" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3LV3NC6Tk2K" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7_z3uTkqxoq">
    <ref role="1XX52x" to="9yr0:7_z3uTkm7Th" resolve="Concern" />
    <node concept="3EZMnI" id="7_z3uTkqxoz" role="2wV5jI">
      <node concept="3F0ifn" id="5kTJBKRDa2R" role="3EZMnx">
        <property role="3F0ifm" value="@" />
      </node>
      <node concept="3F1sOY" id="5kTJBKRDa37" role="3EZMnx">
        <ref role="1NtTu8" to="9yr0:5kTJBKRDa2u" resolve="center" />
      </node>
      <node concept="VPM3Z" id="7_z3uTkqxo_" role="3F10Kt" />
      <node concept="3F0ifn" id="7_z3uTkqxoH" role="3EZMnx">
        <property role="3F0ifm" value="concern" />
      </node>
      <node concept="3F0A7n" id="7_z3uTkqxoN" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="7_z3uTkqxoC" role="2iSdaV" />
    </node>
  </node>
</model>

