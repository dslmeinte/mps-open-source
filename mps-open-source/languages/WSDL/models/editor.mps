<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:416dd51e-86e0-4e8c-acee-b4f6b88aa3c8(WSDL.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
  </languages>
  <imports>
    <import index="iczy" ref="r:0fb2a1b8-0063-47ad-9b07-6462a5be9d39(WSDL.structure)" implicit="true" />
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
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <property id="1221209241505" name="value" index="1lJzqX" />
      </concept>
      <concept id="7228435049763093185" name="jetbrains.mps.lang.editor.structure.FontFamilyContainer" flags="ng" index="1rj3mw">
        <property id="7228435049763093186" name="family" index="1rj3mz" />
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
  </registry>
  <node concept="24kQdi" id="3epa_KBInlM">
    <ref role="1XX52x" to="iczy:6hkHye_UBuE" resolve="Operation" />
    <node concept="3EZMnI" id="3epa_KBLQvP" role="2wV5jI">
      <node concept="3EZMnI" id="3epa_KBInlO" role="3EZMnx">
        <node concept="3F0ifn" id="3epa_KBInlV" role="3EZMnx">
          <property role="3F0ifm" value="operation" />
        </node>
        <node concept="3F0A7n" id="3epa_KBInm1" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="3epa_KBInlR" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3epa_KBMaEx" role="3EZMnx">
        <node concept="VPM3Z" id="3epa_KBMaEz" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="3epa_KBMaEY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3EZMnI" id="3epa_KBMaF2" role="3EZMnx">
          <node concept="VPM3Z" id="3epa_KBMaF4" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3EZMnI" id="3epa_KBLRvE" role="3EZMnx">
            <node concept="VPM3Z" id="3epa_KBLRvG" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="3epa_KBLRvI" role="3EZMnx">
              <property role="3F0ifm" value="request:" />
            </node>
            <node concept="3F1sOY" id="3epa_KBLS7N" role="3EZMnx">
              <ref role="1NtTu8" to="iczy:3epa_KBLRvo" resolve="request" />
            </node>
            <node concept="2iRfu4" id="3epa_KBLRvJ" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3epa_KBLRwn" role="3EZMnx">
            <node concept="VPM3Z" id="3epa_KBLRwp" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="3epa_KBLRwr" role="3EZMnx">
              <property role="3F0ifm" value="response:" />
            </node>
            <node concept="3F1sOY" id="3epa_KBLRwI" role="3EZMnx">
              <ref role="1NtTu8" to="iczy:3epa_KBLRvm" resolve="response" />
            </node>
            <node concept="2iRfu4" id="3epa_KBLRws" role="2iSdaV" />
          </node>
          <node concept="2iRkQZ" id="3epa_KBMaF7" role="2iSdaV" />
        </node>
        <node concept="l2Vlx" id="3epa_KBMaEA" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3epa_KBLQvX" role="3EZMnx" />
      <node concept="2iRkQZ" id="3epa_KBLQvQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3epa_KBInm5">
    <ref role="1XX52x" to="iczy:6hkHye_Tdgg" resolve="WebService" />
    <node concept="3EZMnI" id="3epa_KBInm7" role="2wV5jI">
      <node concept="3EZMnI" id="3epa_KBInmk" role="3EZMnx">
        <node concept="VPM3Z" id="3epa_KBInmm" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3epa_KBInmo" role="3EZMnx">
          <property role="3F0ifm" value="Web service" />
        </node>
        <node concept="3F0A7n" id="3epa_KBInmy" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="3epa_KBInmp" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3epa_KBLR9R" role="3EZMnx" />
      <node concept="3EZMnI" id="nxI_60tVQM" role="3EZMnx">
        <node concept="VPM3Z" id="nxI_60tVQO" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="nxI_60tVRz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3EZMnI" id="nxI_60tVSh" role="3EZMnx">
          <node concept="3EZMnI" id="V$LP5N7pW0" role="3EZMnx">
            <node concept="VPM3Z" id="V$LP5N7pW2" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="V$LP5N7pW4" role="3EZMnx">
              <property role="3F0ifm" value="namespace (URI) = " />
            </node>
            <node concept="3F0A7n" id="V$LP5N7pW7" role="3EZMnx">
              <ref role="1NtTu8" to="iczy:6hkHye_TsmV" resolve="namespaceUri" />
            </node>
            <node concept="2iRfu4" id="V$LP5N7pW5" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="V$LP5N7pWn" role="3EZMnx" />
          <node concept="3F0ifn" id="V$LP5N7OO3" role="3EZMnx" />
          <node concept="3EZMnI" id="V$LP5N7pWc" role="3EZMnx">
            <node concept="VPM3Z" id="V$LP5N7pWe" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F2HdR" id="V$LP5N7pWi" role="3EZMnx">
              <ref role="1NtTu8" to="iczy:6hkHye_UBvc" resolve="operations" />
              <node concept="2iRkQZ" id="V$LP5N7pWk" role="2czzBx" />
            </node>
            <node concept="2iRkQZ" id="V$LP5N7pWh" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="V$LP5N7t6h" role="3EZMnx" />
          <node concept="3F0ifn" id="V$LP5N7OO2" role="3EZMnx" />
          <node concept="3F0ifn" id="V$LP5N7rxF" role="3EZMnx">
            <property role="3F0ifm" value="schema:" />
          </node>
          <node concept="3F0ifn" id="V$LP5N7sjO" role="3EZMnx" />
          <node concept="3EZMnI" id="V$LP5N7rxH" role="3EZMnx">
            <node concept="VPM3Z" id="V$LP5N7rxJ" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="lj46D" id="V$LP5N7rxR" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3F1sOY" id="V$LP5N7rxO" role="3EZMnx">
              <ref role="1NtTu8" to="iczy:nxI_60tVQ9" resolve="schemaBody" />
            </node>
            <node concept="l2Vlx" id="V$LP5N7rxM" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="nxI_60tVSj" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="nxI_60tVSm" role="2iSdaV" />
        </node>
        <node concept="l2Vlx" id="nxI_60tVQR" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3epa_KBInma" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="zT7KcJGJ_d" role="6VMZX">
      <node concept="3EZMnI" id="zT7KcJGJ_k" role="3EZMnx">
        <node concept="VPM3Z" id="zT7KcJGJ_m" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VSNWy" id="zT7KcJGLen" role="3F10Kt">
          <property role="1lJzqX" value="12" />
        </node>
        <node concept="2biZxu" id="zT7KcJGLeq" role="3F10Kt">
          <property role="1rj3mz" value="Arial" />
        </node>
        <node concept="3F0ifn" id="zT7KcJGJ_f" role="3EZMnx">
          <property role="3F0ifm" value="Choose to emit an XML file for the generated XSD file detailing the minimum serialisation lengths (without whitespace and such) for each item." />
          <node concept="Vb9p2" id="zT7KcJGKtg" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="zT7KcJGJ_g" role="3EZMnx">
          <property role="3F0ifm" value="This can help to (gu-)es(s)timate payload sizes." />
          <node concept="Vb9p2" id="zT7KcJGM0b" role="3F10Kt" />
        </node>
        <node concept="2iRkQZ" id="zT7KcJGJ_p" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="zT7KcJGJ_4" role="3EZMnx">
        <node concept="2iRfu4" id="zT7KcJGJ_5" role="2iSdaV" />
        <node concept="3F0ifn" id="zT7KcJGJ_6" role="3EZMnx">
          <property role="3F0ifm" value="emit lengths" />
        </node>
        <node concept="3F0ifn" id="zT7KcJGJ_8" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="zT7KcJGJ_b" role="3EZMnx">
          <ref role="1NtTu8" to="iczy:zT7KcJGJ_3" resolve="emitLengths" />
        </node>
      </node>
      <node concept="2iRkQZ" id="zT7KcJGJ_e" role="2iSdaV" />
    </node>
  </node>
</model>

