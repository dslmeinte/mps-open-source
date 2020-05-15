<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:05001bc0-c747-41ec-8926-0b43ff9e59a5(Css.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
  </languages>
  <imports>
    <import index="6ltu" ref="r:43b8bd50-204c-48e6-b581-998506039531(Css.structure)" implicit="true" />
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
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
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
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
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
  <node concept="24kQdi" id="38dU5mNYAba">
    <ref role="1XX52x" to="6ltu:38dU5mNYAaF" resolve="CssProperty" />
    <node concept="3EZMnI" id="38dU5mNYAbc" role="2wV5jI">
      <node concept="3F0A7n" id="38dU5mNZFBg" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="38dU5mNZEKu" resolve="propertyName" />
      </node>
      <node concept="3F0ifn" id="38dU5mNYAbp" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="38dU5mO0AYo" role="3EZMnx">
        <ref role="1NtTu8" to="6ltu:38dU5mNYAaI" resolve="value" />
        <ref role="1k5W1q" node="38dU5mNZEKD" resolve="propertyValue" />
      </node>
      <node concept="3F0ifn" id="38dU5mNYAbF" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="38dU5mO0Q7Z" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="38dU5mNYAbf" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="38dU5mNYAca">
    <ref role="1XX52x" to="6ltu:38dU5mNYAa7" resolve="CssGroup" />
    <node concept="3EZMnI" id="38dU5mNYAcc" role="2wV5jI">
      <node concept="2iRkQZ" id="38dU5mNYAcf" role="2iSdaV" />
      <node concept="3EZMnI" id="38dU5mNYAcJ" role="3EZMnx">
        <node concept="3F2HdR" id="38dU5mNYAcq" role="3EZMnx">
          <ref role="1NtTu8" to="6ltu:38dU5mNYAcj" resolve="selectors" />
          <node concept="2iRfu4" id="38dU5mNYAcr" role="2czzBx" />
          <node concept="VPM3Z" id="38dU5mNYAcs" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="38dU5mNYAcX" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
        <node concept="2iRfu4" id="38dU5mNYAcK" role="2iSdaV" />
        <node concept="VPM3Z" id="38dU5mNYAcL" role="3F10Kt" />
      </node>
      <node concept="3EZMnI" id="2juo8sUAY4v" role="3EZMnx">
        <node concept="VPM3Z" id="2juo8sUAY4w" role="3F10Kt" />
        <node concept="3F2HdR" id="2juo8sUAY4x" role="3EZMnx">
          <ref role="1NtTu8" to="6ltu:38dU5mNYAdS" resolve="properties" />
          <node concept="2EHx9g" id="38dU5mO0T$n" role="2czzBx" />
          <node concept="VPM3Z" id="2juo8sUAY4z" role="3F10Kt" />
          <node concept="lj46D" id="2juo8sUAY4$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="2juo8sUAY4_" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="38dU5mNYAd3" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="3F0ifn" id="38dU5mNYAdV" role="3EZMnx" />
    </node>
  </node>
  <node concept="24kQdi" id="38dU5mNYAe_">
    <ref role="1XX52x" to="6ltu:38dU5mNYAa4" resolve="CssFile" />
    <node concept="3EZMnI" id="38dU5mNYAeE" role="2wV5jI">
      <node concept="3EZMnI" id="38dU5mNYAeL" role="3EZMnx">
        <node concept="VPM3Z" id="38dU5mNYAeN" role="3F10Kt" />
        <node concept="3F0ifn" id="38dU5mNYAeP" role="3EZMnx">
          <property role="3F0ifm" value="CSS file" />
        </node>
        <node concept="3F0A7n" id="38dU5mNYAeY" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="38dU5mNYAeQ" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="38dU5mNYAf2" role="3EZMnx" />
      <node concept="3EZMnI" id="3enhrAfsJMO" role="3EZMnx">
        <node concept="VPM3Z" id="3enhrAfsJMP" role="3F10Kt" />
        <node concept="3F2HdR" id="3enhrAfsJMQ" role="3EZMnx">
          <ref role="1NtTu8" to="6ltu:38dU5mNYAfG" resolve="groups" />
          <node concept="2iRkQZ" id="3enhrAfsJMR" role="2czzBx" />
          <node concept="VPM3Z" id="3enhrAfsJMS" role="3F10Kt" />
          <node concept="lj46D" id="3enhrAfsJMT" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="3enhrAfsJMU" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="38dU5mNYAeH" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="38dU5mNZBnk">
    <property role="TrG5h" value="css" />
    <node concept="14StLt" id="38dU5mNZBnl" role="V601i">
      <property role="TrG5h" value="selector" />
      <node concept="VechU" id="38dU5mNZBnn" role="3F10Kt">
        <property role="Vb096" value="fLwANPu/blue" />
      </node>
    </node>
    <node concept="14StLt" id="38dU5mNZEKu" role="V601i">
      <property role="TrG5h" value="propertyName" />
      <node concept="VechU" id="38dU5mNZEKB" role="3F10Kt">
        <property role="Vb096" value="g1_qVrt/darkMagenta" />
      </node>
    </node>
    <node concept="14StLt" id="38dU5mNZEKD" role="V601i">
      <property role="TrG5h" value="propertyValue" />
      <node concept="VechU" id="38dU5mNZEKE" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/darkGreen" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5MdW_poC92G">
    <ref role="1XX52x" to="6ltu:5MdW_poC92e" resolve="CssClassSelector" />
    <node concept="3EZMnI" id="5MdW_poC92I" role="2wV5jI">
      <node concept="3F0ifn" id="5MdW_poC92P" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11LMrY" id="5MdW_poC92Z" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="5MdW_poC92V" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="5MdW_poC92L" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5MdW_poC93v">
    <ref role="1XX52x" to="6ltu:5MdW_poC931" resolve="CssTypeSelector" />
    <node concept="3F0A7n" id="5MdW_poC93x" role="2wV5jI">
      <ref role="1NtTu8" to="6ltu:5MdW_poC932" resolve="elementName" />
      <node concept="Vb9p2" id="5MdW_poC93$" role="3F10Kt">
        <property role="Vbekb" value="g1_kEg4/ITALIC" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5MdW_poSfOx">
    <ref role="1XX52x" to="6ltu:5MdW_poSfNX" resolve="CssDescendantCombinator" />
    <node concept="3EZMnI" id="5MdW_poSfOz" role="2wV5jI">
      <node concept="3F1sOY" id="5MdW_poSfOH" role="3EZMnx">
        <ref role="1NtTu8" to="6ltu:5MdW_poSfNY" resolve="left" />
      </node>
      <node concept="3F0ifn" id="5MdW_poSfOQ" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3F1sOY" id="5MdW_poSfP3" role="3EZMnx">
        <ref role="1NtTu8" to="6ltu:5MdW_poSfO1" resolve="right" />
      </node>
      <node concept="2iRfu4" id="5MdW_poSfOA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4$egv0eHPDh">
    <ref role="1XX52x" to="6ltu:4$egv0eHCeU" resolve="CssDirectCombinator" />
    <node concept="3EZMnI" id="4$egv0eHPDj" role="2wV5jI">
      <node concept="3F1sOY" id="4$egv0eHPDq" role="3EZMnx">
        <ref role="1NtTu8" to="6ltu:4$egv0eHCeV" resolve="left" />
      </node>
      <node concept="3F1sOY" id="4$egv0eHPDw" role="3EZMnx">
        <ref role="1NtTu8" to="6ltu:4$egv0eHCeX" resolve="right" />
      </node>
      <node concept="2iRfu4" id="4$egv0eHPDm" role="2iSdaV" />
    </node>
  </node>
</model>

