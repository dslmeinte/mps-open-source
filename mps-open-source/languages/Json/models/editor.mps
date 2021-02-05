<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1bea1dc6-6b04-4f05-9e6a-fee4c3e30497(Json.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tay9" ref="r:4b82c70e-45f8-4502-a857-34e943edc354(Json.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1160590307797" name="usesFolding" index="S$F3r" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
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
  <node concept="24kQdi" id="3QNkN21Fl4Q">
    <ref role="1XX52x" to="tay9:3QNkN21Fl4m" resolve="JsonNull" />
    <node concept="3F0ifn" id="3QNkN21Fl4S" role="2wV5jI">
      <property role="3F0ifm" value="null" />
    </node>
  </node>
  <node concept="24kQdi" id="3QNkN21Fl5n">
    <ref role="1XX52x" to="tay9:3QNkN21Fl4l" resolve="JsonString" />
    <node concept="3EZMnI" id="3QNkN21Fl5p" role="2wV5jI">
      <node concept="3F0ifn" id="3QNkN21Fl5w" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11LMrY" id="7pDq5JwdUTw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="3QNkN21Fl5C" role="3EZMnx">
        <ref role="1NtTu8" to="tay9:3QNkN21Fl5A" resolve="value" />
      </node>
      <node concept="3F0ifn" id="3QNkN21Fl5K" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11L4FC" id="7pDq5JwdUTy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="3QNkN21Fl5s" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3QNkN21Fl6t">
    <ref role="1XX52x" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
    <node concept="3EZMnI" id="3QNkN21Fl6v" role="2wV5jI">
      <node concept="3F0A7n" id="3QNkN21Fl6A" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3QNkN21Fl6G" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="3QNkN21Fl6O" role="3EZMnx">
        <ref role="1NtTu8" to="tay9:3QNkN21Fl62" resolve="value" />
      </node>
      <node concept="2iRfu4" id="3QNkN21Fl6y" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3QNkN21Fl7i">
    <ref role="1XX52x" to="tay9:3QNkN21Fl4f" resolve="JsonFile" />
    <node concept="3EZMnI" id="3QNkN21Fl7k" role="2wV5jI">
      <node concept="3EZMnI" id="3QNkN21Fl7u" role="3EZMnx">
        <node concept="VPM3Z" id="3QNkN21Fl7w" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3QNkN21Fl7y" role="3EZMnx">
          <property role="3F0ifm" value="file name:" />
        </node>
        <node concept="3F0A7n" id="3QNkN21Fl7F" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="Vb9p2" id="3QNkN21FS6y" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
        </node>
        <node concept="3F0ifn" id="3QNkN21Fl7N" role="3EZMnx">
          <property role="3F0ifm" value=".json" />
        </node>
        <node concept="2iRfu4" id="3QNkN21Fl7z" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3QNkN21Fl7S" role="3EZMnx" />
      <node concept="3F0ifn" id="3QNkN21Fl80" role="3EZMnx">
        <property role="3F0ifm" value="contents:" />
      </node>
      <node concept="3EZMnI" id="3QNkN21Fl8j" role="3EZMnx">
        <node concept="VPM3Z" id="3QNkN21Fl8l" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="3QNkN21Fl8_" role="3EZMnx" />
        <node concept="3F1sOY" id="3QNkN21Fl8F" role="3EZMnx">
          <ref role="1NtTu8" to="tay9:3QNkN21Fl4g" resolve="contents" />
        </node>
        <node concept="2iRfu4" id="3QNkN21Fl8o" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3QNkN21Fl7n" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3QNkN21Fl8J">
    <ref role="1XX52x" to="tay9:3QNkN21Fl4c" resolve="JsonArray" />
    <node concept="3EZMnI" id="3QNkN21Fl8L" role="2wV5jI">
      <node concept="3F0ifn" id="3QNkN21Fl8S" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3EZMnI" id="3QNkN21FrZj" role="3EZMnx">
        <node concept="VPM3Z" id="3QNkN21FrZl" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="3QNkN21FrZ_" role="3EZMnx" />
        <node concept="3F2HdR" id="3QNkN21Fl9y" role="3EZMnx">
          <property role="S$F3r" value="true" />
          <ref role="1NtTu8" to="tay9:3QNkN21Fl5X" resolve="items" />
          <node concept="2iRkQZ" id="3QNkN21Fl9D" role="2czzBx" />
          <node concept="VPxyj" id="3QNkN21Fv51" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="3QNkN21FrZo" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3QNkN21Fl8V" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
      <node concept="2iRkQZ" id="3QNkN21Fl8O" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3QNkN21Flad">
    <ref role="1XX52x" to="tay9:3QNkN21Fl4k" resolve="JsonInteger" />
    <node concept="3F0A7n" id="3QNkN21Flaf" role="2wV5jI">
      <ref role="1NtTu8" to="tay9:3QNkN21Fl5P" resolve="value" />
    </node>
  </node>
  <node concept="24kQdi" id="3QNkN21FlaF">
    <ref role="1XX52x" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
    <node concept="3EZMnI" id="3QNkN21FlaK" role="2wV5jI">
      <node concept="3F0ifn" id="3QNkN21FlaM" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3EZMnI" id="3QNkN21Flbx" role="3EZMnx">
        <node concept="VPM3Z" id="3QNkN21Flbz" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="3QNkN21FlbN" role="3EZMnx" />
        <node concept="3F2HdR" id="3QNkN21Flbd" role="3EZMnx">
          <property role="S$F3r" value="true" />
          <ref role="1NtTu8" to="tay9:3QNkN21Flbb" resolve="pairs" />
          <node concept="VPxyj" id="3QNkN21Flbl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2EHx9g" id="3QNkN21Flbi" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="3QNkN21FlbA" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3QNkN21FlaR" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="2iRkQZ" id="3QNkN21FlaN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3QNkN21Gyxp">
    <ref role="1XX52x" to="tay9:3QNkN21GywT" resolve="JsonBoolean" />
    <node concept="3F0A7n" id="3QNkN21Gyxr" role="2wV5jI">
      <ref role="1NtTu8" to="tay9:3QNkN21GywX" resolve="value" />
    </node>
  </node>
</model>

