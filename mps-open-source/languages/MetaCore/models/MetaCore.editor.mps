<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2581b995-cc54-4cdd-a788-129fa414a530(MetaCore.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="13" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="1292" ref="r:85e6c920-f9a2-49eb-b9cd-5d4f39c5a122(MetaCore.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
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
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="7_z3uTkqxmB">
    <ref role="1XX52x" to="1292:7_z3uTkm7Tk" resolve="MetaModel" />
    <node concept="3EZMnI" id="7_z3uTkqxmD" role="2wV5jI">
      <node concept="3EZMnI" id="7_z3uTkqxmK" role="3EZMnx">
        <node concept="VPM3Z" id="7_z3uTkqxmM" role="3F10Kt" />
        <node concept="3F0ifn" id="7_z3uTkqxmU" role="3EZMnx">
          <property role="3F0ifm" value="meta model" />
        </node>
        <node concept="3F0A7n" id="7_z3uTkqxn0" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="7_z3uTkqxmP" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="7_z3uTkqxn4" role="3EZMnx" />
      <node concept="3EZMnI" id="7_z3uTkqxnj" role="3EZMnx">
        <node concept="VPM3Z" id="7_z3uTkqxnl" role="3F10Kt" />
        <node concept="3XFhqQ" id="7_z3uTkqxnD" role="3EZMnx" />
        <node concept="3EZMnI" id="7_z3uTkqxnJ" role="3EZMnx">
          <node concept="VPM3Z" id="7_z3uTkqxnL" role="3F10Kt" />
          <node concept="3F2HdR" id="7_z3uTkqxnU" role="3EZMnx">
            <ref role="1NtTu8" to="1292:5kTJBKRBo7s" resolve="languages" />
            <node concept="2iRkQZ" id="7_z3uTkqxnW" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="7_z3uTkqxnO" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="7_z3uTkqxno" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="7_z3uTkqxmG" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7_z3uTkqxqy">
    <ref role="1XX52x" to="1292:7_z3uTkm7Tn" resolve="MetaConcept" />
    <node concept="3EZMnI" id="7_z3uTkqxq$" role="2wV5jI">
      <node concept="3EZMnI" id="7_z3uTkqxqF" role="3EZMnx">
        <node concept="VPM3Z" id="7_z3uTkqxqH" role="3F10Kt" />
        <node concept="3F0ifn" id="7_z3uTkqxqS" role="3EZMnx">
          <property role="3F0ifm" value="concept" />
        </node>
        <node concept="3F0A7n" id="7_z3uTkqxqY" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="7_z3uTkqxqK" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="7_z3uTkqxr2" role="3EZMnx" />
      <node concept="3EZMnI" id="7_z3uTkqxrh" role="3EZMnx">
        <node concept="VPM3Z" id="7_z3uTkqxrj" role="3F10Kt" />
        <node concept="3XFhqQ" id="7_z3uTkqxrx" role="3EZMnx" />
        <node concept="3EZMnI" id="7_z3uTkqxrB" role="3EZMnx">
          <node concept="VPM3Z" id="7_z3uTkqxrD" role="3F10Kt" />
          <node concept="3F2HdR" id="7_z3uTkqxrP" role="3EZMnx">
            <ref role="1NtTu8" to="1292:7_z3uTkm7Tz" resolve="features" />
            <node concept="2iRkQZ" id="7_z3uTkqxrR" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="7_z3uTkqxrG" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="7_z3uTkqxrm" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="6VHpyjBhODk" role="3EZMnx" />
      <node concept="2iRkQZ" id="7_z3uTkqxqB" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="7_z3uTkq$oz" role="6VMZX">
      <ref role="PMmxG" node="7_z3uTkq$o7" resolve="description" />
    </node>
  </node>
  <node concept="24kQdi" id="7_z3uTkq$mK">
    <ref role="1XX52x" to="1292:7_z3uTkm7Tw" resolve="MetaFeature" />
    <node concept="3EZMnI" id="7_z3uTkq$mM" role="2wV5jI">
      <node concept="3F0A7n" id="7_z3uTkq$mT" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="7_z3uTkq$mP" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="3LV3NC6TFwR" role="6VMZX">
      <ref role="PMmxG" node="7_z3uTkq$o7" resolve="description" />
    </node>
  </node>
  <node concept="PKFIW" id="7_z3uTkq$o7">
    <property role="TrG5h" value="description" />
    <ref role="1XX52x" to="1292:7_z3uTkq$nh" resolve="IDescriptive" />
    <node concept="3EZMnI" id="7_z3uTkq$o9" role="2wV5jI">
      <node concept="3F0ifn" id="7_z3uTkq$og" role="3EZMnx">
        <property role="3F0ifm" value="description" />
      </node>
      <node concept="3F0ifn" id="7_z3uTkq$om" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="7_z3uTkq$ou" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="1292:7_z3uTkq$ni" resolve="description" />
      </node>
      <node concept="2iRfu4" id="7_z3uTkq$oc" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3LV3NC6TMzO">
    <ref role="1XX52x" to="1292:3LV3NC6TMyp" resolve="MetaDataType" />
    <node concept="PMmxH" id="3LV3NC6TMzQ" role="6VMZX">
      <ref role="PMmxG" node="7_z3uTkq$o7" resolve="description" />
    </node>
    <node concept="3EZMnI" id="6VHpyjBhTeJ" role="2wV5jI">
      <node concept="3EZMnI" id="3LV3NC6TMzS" role="3EZMnx">
        <node concept="3F0ifn" id="3LV3NC6TMzZ" role="3EZMnx">
          <property role="3F0ifm" value="data type" />
        </node>
        <node concept="3F0A7n" id="3LV3NC6TM$5" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="3LV3NC6TMzV" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="6VHpyjBhTeX" role="3EZMnx" />
      <node concept="2iRkQZ" id="6VHpyjBhTeK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5kTJBKRBo8x">
    <ref role="1XX52x" to="1292:5kTJBKRBo7g" resolve="Language" />
    <node concept="PMmxH" id="5kTJBKRBo8z" role="6VMZX">
      <ref role="PMmxG" node="7_z3uTkq$o7" resolve="description" />
    </node>
    <node concept="3EZMnI" id="5kTJBKRBo8_" role="2wV5jI">
      <node concept="3EZMnI" id="5kTJBKRBo8A" role="3EZMnx">
        <node concept="VPM3Z" id="5kTJBKRBo8B" role="3F10Kt" />
        <node concept="3F0ifn" id="5kTJBKRBo8C" role="3EZMnx">
          <property role="3F0ifm" value="language" />
        </node>
        <node concept="3F0A7n" id="5kTJBKRBo8D" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="5kTJBKRBo8E" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5kTJBKRBo8F" role="3EZMnx" />
      <node concept="3EZMnI" id="5kTJBKRBo8G" role="3EZMnx">
        <node concept="VPM3Z" id="5kTJBKRBo8H" role="3F10Kt" />
        <node concept="3XFhqQ" id="5kTJBKRBo8I" role="3EZMnx" />
        <node concept="3EZMnI" id="5kTJBKRBo8J" role="3EZMnx">
          <node concept="VPM3Z" id="5kTJBKRBo8K" role="3F10Kt" />
          <node concept="3F2HdR" id="5kTJBKRBo8L" role="3EZMnx">
            <ref role="1NtTu8" to="1292:5kTJBKRBo7q" resolve="elements" />
            <node concept="2iRkQZ" id="5kTJBKRBo8M" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="5kTJBKRBo8N" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="5kTJBKRBo8O" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="6VHpyjBhODA" role="3EZMnx" />
      <node concept="2iRkQZ" id="5kTJBKRBo8P" role="2iSdaV" />
    </node>
  </node>
</model>

