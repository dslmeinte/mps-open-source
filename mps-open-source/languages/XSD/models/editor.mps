<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:546b17e0-99d5-4d3a-99af-c233526188cf(XSD.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="irkh" ref="r:5453e083-42db-4474-9ebc-c4b11ee10157(XSD.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="jbym" ref="r:c546ab52-186f-4563-a0f9-eb59ddf54026(XSD.behavior)" implicit="true" />
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
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <property id="1221209241505" name="value" index="1lJzqX" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1165424453110" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item" flags="ng" index="1oHujT">
        <property id="1165424453111" name="matchingText" index="1oHujS" />
        <child id="1165424453112" name="handlerFunction" index="1oHujR" />
      </concept>
      <concept id="1165424657443" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item_Handler" flags="in" index="1oIgkG" />
      <concept id="7228435049763093185" name="jetbrains.mps.lang.editor.structure.FontFamilyContainer" flags="ng" index="1rj3mw">
        <property id="7228435049763093186" name="family" index="1rj3mz" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
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
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="GIhN6I5Sk">
    <property role="3GE5qa" value="topLevel" />
    <ref role="1XX52x" to="irkh:GIhN6I5Rs" resolve="XsdSchema" />
    <node concept="3EZMnI" id="GIhN6I5Sp" role="2wV5jI">
      <node concept="3EZMnI" id="GIhN6I5Sw" role="3EZMnx">
        <node concept="VPM3Z" id="GIhN6I5Sy" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="GIhN6I5S$" role="3EZMnx">
          <property role="3F0ifm" value="XSD schema" />
        </node>
        <node concept="3F0A7n" id="GIhN6I5SH" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="GIhN6I5S_" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="nxI_60tnIH" role="3EZMnx" />
      <node concept="3EZMnI" id="nxI_60tnIh" role="3EZMnx">
        <node concept="VPM3Z" id="nxI_60tnIj" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="nxI_60tnJh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="nxI_60tnIm" role="2iSdaV" />
        <node concept="3F1sOY" id="nxI_60uGp8" role="3EZMnx">
          <ref role="1NtTu8" to="irkh:nxI_60uCZN" resolve="body" />
        </node>
      </node>
      <node concept="2iRkQZ" id="GIhN6I5Ss" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="1QtHe4MIOTi" role="6VMZX">
      <node concept="VPM3Z" id="1QtHe4MIOTk" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="3F0ifn" id="1QtHe4MIOTm" role="3EZMnx">
        <property role="3F0ifm" value="description (optional)" />
      </node>
      <node concept="3F0ifn" id="1QtHe4MIOTH" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="1QtHe4MIOTP" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="irkh:1QtHe4MIOSQ" resolve="description" />
      </node>
      <node concept="2iRfu4" id="1QtHe4MIOTn" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="GIhN6Ifn9">
    <property role="3GE5qa" value="complex" />
    <ref role="1XX52x" to="irkh:GIhN6I5RP" resolve="XsdComplexType" />
    <node concept="3EZMnI" id="GIhN6Ifnb" role="2wV5jI">
      <node concept="2iRkQZ" id="GIhN6Ifne" role="2iSdaV" />
      <node concept="3EZMnI" id="GIhN6Ifno" role="3EZMnx">
        <node concept="VPM3Z" id="GIhN6Ifnq" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="GIhN6Ifns" role="3EZMnx">
          <property role="3F0ifm" value="complex type" />
        </node>
        <node concept="2iRfu4" id="GIhN6Ifnt" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5Ll95tHP1Rx" role="3EZMnx">
        <node concept="3EZMnI" id="6P6yfMfjTnD" role="3EZMnx">
          <node concept="3F1sOY" id="3epa_KBLXtx" role="3EZMnx">
            <ref role="1NtTu8" to="irkh:3epa_KBLTcx" resolve="body" />
          </node>
          <node concept="VPM3Z" id="6P6yfMfjTnF" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="6P6yfMfjTnI" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="5Ll95tHP1Rz" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="5Ll95tHP1RS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="5Ll95tHP1RA" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="GIhN6Iivo" role="3EZMnx" />
    </node>
  </node>
  <node concept="24kQdi" id="GIhN6IfnT">
    <property role="3GE5qa" value="other" />
    <ref role="1XX52x" to="irkh:GIhN6Iasm" resolve="XsdSimpleType" />
    <node concept="3EZMnI" id="GIhN6IfnV" role="2wV5jI">
      <node concept="2iRkQZ" id="GIhN6IfnW" role="2iSdaV" />
      <node concept="3EZMnI" id="GIhN6IfnX" role="3EZMnx">
        <node concept="VPM3Z" id="GIhN6IfnY" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="GIhN6IfnZ" role="3EZMnx">
          <property role="3F0ifm" value="simple type" />
        </node>
        <node concept="2iRfu4" id="GIhN6Ifo1" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5Ll95tHJIDL" role="3EZMnx">
        <node concept="VPM3Z" id="5Ll95tHJIDN" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="5Ll95tHJIE8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="5Ll95tHJIDQ" role="2iSdaV" />
        <node concept="3EZMnI" id="5Ll95tHJIEs" role="3EZMnx">
          <node concept="2iRkQZ" id="5Ll95tHJIEt" role="2iSdaV" />
          <node concept="VPM3Z" id="5Ll95tHJIEu" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3EZMnI" id="5Ll95tHJIF6" role="3EZMnx">
            <node concept="VPM3Z" id="5Ll95tHJIF8" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="5Ll95tHJIFa" role="3EZMnx">
              <property role="3F0ifm" value="base" />
            </node>
            <node concept="3F0ifn" id="5Ll95tHJIFp" role="3EZMnx">
              <property role="3F0ifm" value=":" />
            </node>
            <node concept="3F0A7n" id="5Ll95tHJIFx" role="3EZMnx">
              <ref role="1NtTu8" to="irkh:5xFSyvKSMCW" resolve="base" />
            </node>
            <node concept="2iRfu4" id="5Ll95tHJIFb" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="5Ll95tHJIE_" role="3EZMnx">
            <node concept="3F0ifn" id="5Ll95tHJIDP" role="3EZMnx">
              <property role="3F0ifm" value="restriction" />
            </node>
            <node concept="3F0ifn" id="5Ll95tHJIEf" role="3EZMnx">
              <property role="3F0ifm" value=":" />
            </node>
            <node concept="3F2HdR" id="DmPLYxt9de" role="3EZMnx">
              <ref role="1NtTu8" to="irkh:5Ll95tHJID$" resolve="restriction" />
              <node concept="2iRfu4" id="DmPLYxt9dh" role="2czzBx" />
              <node concept="VPM3Z" id="DmPLYxt9di" role="3F10Kt" />
            </node>
            <node concept="2iRfu4" id="5Ll95tHJIEA" role="2iSdaV" />
            <node concept="VPM3Z" id="5Ll95tHJIEB" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="GIhN6Iive" role="3EZMnx" />
    </node>
  </node>
  <node concept="24kQdi" id="5Ll95tHJIDb">
    <property role="3GE5qa" value="facets" />
    <ref role="1XX52x" to="irkh:5Ll95tHJICY" resolve="XsdPattern" />
    <node concept="3EZMnI" id="5Ll95tHJIDd" role="2wV5jI">
      <node concept="3F0ifn" id="5Ll95tHJIDk" role="3EZMnx">
        <property role="3F0ifm" value="pattern" />
      </node>
      <node concept="3F0A7n" id="5Ll95tHJIDq" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:5Ll95tHJID1" resolve="value" />
        <node concept="Vb9p2" id="5Ll95tHJZ8W" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
      </node>
      <node concept="2iRfu4" id="5Ll95tHJIDg" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Ll95tHN4hZ">
    <property role="3GE5qa" value="facets" />
    <ref role="1XX52x" to="irkh:5Ll95tHN4hJ" resolve="XsdEnumeration" />
    <node concept="3EZMnI" id="5Ll95tHN4i1" role="2wV5jI">
      <node concept="3F0ifn" id="5Ll95tHN4i8" role="3EZMnx">
        <property role="3F0ifm" value="enumeration of" />
      </node>
      <node concept="3F2HdR" id="5Ll95tHN4ig" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:5Ll95tHN4ie" resolve="values" />
        <node concept="2iRfu4" id="5Ll95tHN4ii" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="5Ll95tHN4i4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Ll95tHN4iu">
    <property role="3GE5qa" value="facets" />
    <ref role="1XX52x" to="irkh:5Ll95tHN4hO" resolve="XsdEnumerationValue" />
    <node concept="3F0A7n" id="5Ll95tHN4iw" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="5Ll95tHON90">
    <property role="3GE5qa" value="complex" />
    <ref role="1XX52x" to="irkh:5Ll95tHOMkd" resolve="XsdChoice" />
    <node concept="3EZMnI" id="5Ll95tHON92" role="2wV5jI">
      <node concept="3EZMnI" id="5Ll95tHON9c" role="3EZMnx">
        <node concept="VPM3Z" id="5Ll95tHON9e" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="5Ll95tHON9g" role="3EZMnx">
          <property role="3F0ifm" value="choice" />
        </node>
        <node concept="3F0ifn" id="5Ll95tHOPzL" role="3EZMnx">
          <property role="3F0ifm" value="(" />
        </node>
        <node concept="3F0A7n" id="5Ll95tHOPzV" role="3EZMnx">
          <ref role="1NtTu8" to="irkh:5xFSyvKSMCY" resolve="cardinality" />
        </node>
        <node concept="3F0ifn" id="5Ll95tHOP$7" role="3EZMnx">
          <property role="3F0ifm" value=")" />
        </node>
        <node concept="3F0ifn" id="5Ll95tHON9C" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="2iRfu4" id="5Ll95tHON9h" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5Ll95tHON9N" role="3EZMnx">
        <node concept="VPM3Z" id="5Ll95tHON9P" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="5Ll95tHONa6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3EZMnI" id="5Ll95tHONaa" role="3EZMnx">
          <node concept="VPM3Z" id="5Ll95tHONac" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F2HdR" id="5Ll95tHONak" role="3EZMnx">
            <ref role="1NtTu8" to="irkh:5Ll95tHON8K" resolve="elements" />
            <node concept="2iRkQZ" id="5Ll95tHONam" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="5Ll95tHONaf" role="2iSdaV" />
        </node>
        <node concept="l2Vlx" id="5Ll95tHON9S" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="5Ll95tHON95" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Ll95tHONax">
    <property role="3GE5qa" value="complex" />
    <ref role="1XX52x" to="irkh:5Ll95tHOMkg" resolve="XsdSequence" />
    <node concept="3EZMnI" id="5Ll95tHONaz" role="2wV5jI">
      <node concept="3EZMnI" id="5Ll95tHONa$" role="3EZMnx">
        <node concept="VPM3Z" id="5Ll95tHONa_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="5Ll95tHONaA" role="3EZMnx">
          <property role="3F0ifm" value="sequence" />
        </node>
        <node concept="3F0ifn" id="5Ll95tHONaB" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="2iRfu4" id="5Ll95tHONaC" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5Ll95tHONaD" role="3EZMnx">
        <node concept="VPM3Z" id="5Ll95tHONaE" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="5Ll95tHONaF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3EZMnI" id="5Ll95tHONaG" role="3EZMnx">
          <node concept="VPM3Z" id="5Ll95tHONaH" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F2HdR" id="5Ll95tHONaI" role="3EZMnx">
            <ref role="1NtTu8" to="irkh:5Ll95tHON8M" resolve="elements" />
            <node concept="2iRkQZ" id="5Ll95tHONaJ" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="5Ll95tHONaK" role="2iSdaV" />
        </node>
        <node concept="l2Vlx" id="5Ll95tHONaL" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="5Ll95tHONaM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Ll95tHOVWB">
    <property role="3GE5qa" value="other" />
    <ref role="1XX52x" to="irkh:5Ll95tHOMkj" resolve="XsdElement" />
    <node concept="3EZMnI" id="5Ll95tHOVWD" role="2wV5jI">
      <node concept="3F0ifn" id="5Ll95tHOVWK" role="3EZMnx">
        <property role="3F0ifm" value="element" />
      </node>
      <node concept="3F0A7n" id="5Ll95tHOVWQ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="5Ll95tHOVWY" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0ifn" id="4swNiJ3zo7j" role="3EZMnx">
        <property role="3F0ifm" value="?" />
        <node concept="pkWqt" id="4swNiJ3zo7q" role="pqm2j">
          <node concept="3clFbS" id="4swNiJ3zo7r" role="2VODD2">
            <node concept="3clFbF" id="4swNiJ3zoeI" role="3cqZAp">
              <node concept="2OqwBi" id="4swNiJ3zosI" role="3clFbG">
                <node concept="pncrf" id="4swNiJ3zoeH" role="2Oq$k0" />
                <node concept="3TrcHB" id="4swNiJ3zp3l" role="2OqNvi">
                  <ref role="3TsBF5" to="irkh:4swNiJ3zfKZ" resolve="optional" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="5Ll95tHOVX8" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:5Ll95tHON8O" resolve="typeLiteral" />
      </node>
      <node concept="2iRfu4" id="5Ll95tHOVWG" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="4swNiJ3zpke" role="6VMZX">
      <node concept="2iRfu4" id="4swNiJ3zpkf" role="2iSdaV" />
      <node concept="3F0ifn" id="4swNiJ3zptK" role="3EZMnx">
        <property role="3F0ifm" value="optional" />
      </node>
      <node concept="3F0ifn" id="4swNiJ3zptP" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="4swNiJ3zptX" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:4swNiJ3zfKZ" resolve="optional" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5Ll95tHOVXm">
    <property role="3GE5qa" value="other" />
    <ref role="1XX52x" to="irkh:5Ll95tHOMk_" resolve="XsdDataType" />
    <node concept="3EZMnI" id="5Ll95tHOVXo" role="2wV5jI">
      <node concept="3F0ifn" id="5Ll95tHOVXv" role="3EZMnx">
        <property role="3F0ifm" value="data type" />
      </node>
      <node concept="3F0ifn" id="5Ll95tHOVX_" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="5Ll95tHOVXH" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:5xFSyvKSMD0" resolve="dataType" />
      </node>
      <node concept="2iRfu4" id="5Ll95tHOVXr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Ll95tHOVXU">
    <property role="3GE5qa" value="other" />
    <ref role="1XX52x" to="irkh:5Ll95tHOMks" resolve="XsdTypeDeclarationRef" />
    <node concept="3EZMnI" id="5Ll95tHOVXW" role="2wV5jI">
      <node concept="3F0ifn" id="5Ll95tHOVY3" role="3EZMnx">
        <property role="3F0ifm" value="type" />
      </node>
      <node concept="3F0ifn" id="5Ll95tHOVY9" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="1iCGBv" id="5Ll95tHOVYt" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:5Ll95tHOVYh" resolve="typeDeclaration" />
        <node concept="1sVBvm" id="5Ll95tHOVYv" role="1sWHZn">
          <node concept="3F0A7n" id="5Ll95tHOVYC" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="5Ll95tHOVXZ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6P6yfMfjRvs">
    <property role="3GE5qa" value="other" />
    <ref role="1XX52x" to="irkh:6P6yfMfjRvf" resolve="XsdAttribute" />
    <node concept="3EZMnI" id="6P6yfMfjRvu" role="2wV5jI">
      <node concept="3F0A7n" id="6P6yfMfjRv_" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6P6yfMfjRvF" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="5nPH9FxCXR2" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:5nPH9FxCX7C" resolve="typeLiteral" />
      </node>
      <node concept="3F0ifn" id="6P6yfMfjRXp" role="3EZMnx">
        <property role="3F0ifm" value="?" />
        <node concept="pkWqt" id="6P6yfMfjRXv" role="pqm2j">
          <node concept="3clFbS" id="6P6yfMfjRXw" role="2VODD2">
            <node concept="3clFbF" id="6P6yfMfjS4D" role="3cqZAp">
              <node concept="2OqwBi" id="6P6yfMfjShC" role="3clFbG">
                <node concept="pncrf" id="6P6yfMfjS4C" role="2Oq$k0" />
                <node concept="3TrcHB" id="6P6yfMfjSMw" role="2OqNvi">
                  <ref role="3TsBF5" to="irkh:6P6yfMfjRX9" resolve="optional" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6P6yfMfjRvx" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6P6yfMfjT2R" role="6VMZX">
      <node concept="2iRfu4" id="6P6yfMfjT2S" role="2iSdaV" />
      <node concept="3F0ifn" id="6P6yfMfjTc1" role="3EZMnx">
        <property role="3F0ifm" value="optional" />
      </node>
      <node concept="3F0ifn" id="6P6yfMfjTc6" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="6P6yfMfjTce" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:6P6yfMfjRX9" resolve="optional" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3epa_KBLTbV">
    <property role="3GE5qa" value="complex" />
    <ref role="1XX52x" to="irkh:3epa_KBLTbI" resolve="XsdComplexTypeBody" />
    <node concept="3EZMnI" id="3epa_KBLTbX" role="2wV5jI">
      <node concept="VPM3Z" id="3epa_KBLTbY" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="3EZMnI" id="3epa_KBLTbZ" role="3EZMnx">
        <node concept="VPM3Z" id="3epa_KBLTc0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3epa_KBLTc1" role="3EZMnx">
          <property role="3F0ifm" value="attributes" />
        </node>
        <node concept="3F0ifn" id="3epa_KBLTc2" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="2iRfu4" id="3epa_KBLTc3" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3epa_KBLTc4" role="3EZMnx">
        <node concept="VPM3Z" id="3epa_KBLTc5" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="3epa_KBLTc6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="3epa_KBLTc7" role="2iSdaV" />
        <node concept="3EZMnI" id="3epa_KBLTc8" role="3EZMnx">
          <node concept="2iRkQZ" id="3epa_KBLTc9" role="2iSdaV" />
          <node concept="VPM3Z" id="3epa_KBLTca" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F2HdR" id="3epa_KBLTcb" role="3EZMnx">
            <ref role="1NtTu8" to="irkh:3epa_KBLTbJ" resolve="attributes" />
            <node concept="2iRkQZ" id="3epa_KBLTcc" role="2czzBx" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="3epa_KBLTcd" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:3epa_KBLTbK" resolve="contents" />
      </node>
      <node concept="2iRkQZ" id="3epa_KBLTce" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3epa_KBVLV_">
    <property role="3GE5qa" value="topLevel" />
    <ref role="1XX52x" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
    <node concept="3EZMnI" id="3epa_KBVLVB" role="2wV5jI">
      <node concept="3F0A7n" id="3epa_KBVLVI" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3epa_KBVLVO" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F1sOY" id="3epa_KBVLVW" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:3epa_KBVLVr" resolve="definition" />
      </node>
      <node concept="2iRfu4" id="3epa_KBVLVE" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="nxI_60h6UN">
    <property role="3GE5qa" value="facets" />
    <ref role="1XX52x" to="irkh:nxI_60h6UA" resolve="XsdLength" />
    <node concept="3EZMnI" id="nxI_60h6UP" role="2wV5jI">
      <node concept="3F0ifn" id="nxI_60h6UW" role="3EZMnx">
        <property role="3F0ifm" value="max length" />
      </node>
      <node concept="3F0ifn" id="nxI_60h6V2" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="nxI_60h6Va" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:nxI_60h6UD" resolve="maxLength" />
      </node>
      <node concept="2iRfu4" id="nxI_60h6US" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="nxI_60tnHl">
    <property role="3GE5qa" value="topLevel" />
    <ref role="1XX52x" to="irkh:nxI_60tnH4" resolve="XsdImport" />
    <node concept="3EZMnI" id="nxI_60tnHn" role="2wV5jI">
      <node concept="1iCGBv" id="nxI_60tnHQ" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:nxI_60tnHb" resolve="schema" />
        <node concept="1sVBvm" id="nxI_60tnHS" role="1sWHZn">
          <node concept="3F0A7n" id="nxI_60tnI2" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2VDbS_nLTan" role="3EZMnx">
        <property role="3F0ifm" value="as" />
      </node>
      <node concept="3F0A7n" id="2VDbS_nLTa_" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:2VDbS_nLTaf" resolve="prefix" />
      </node>
      <node concept="2iRfu4" id="nxI_60tnHq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="nxI_60uGom">
    <property role="3GE5qa" value="topLevel" />
    <ref role="1XX52x" to="irkh:nxI_60uCZI" resolve="XsdSchemaBody" />
    <node concept="3EZMnI" id="nxI_60uGoo" role="2wV5jI">
      <node concept="3EZMnI" id="V$LP5N73QW" role="3EZMnx">
        <node concept="VPM3Z" id="V$LP5N73QY" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="V$LP5N73R0" role="3EZMnx">
          <property role="3F0ifm" value="namespace (URI) =" />
        </node>
        <node concept="3F0A7n" id="V$LP5N73Ru" role="3EZMnx">
          <ref role="1NtTu8" to="irkh:V$LP5N73Qz" resolve="namespaceUri" />
        </node>
        <node concept="2iRfu4" id="V$LP5N73R1" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6ZO2Qy6hUtF" role="3EZMnx" />
      <node concept="3EZMnI" id="6ZO2Qy6hUsN" role="3EZMnx">
        <node concept="VPM3Z" id="6ZO2Qy6hUsO" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6ZO2Qy6hUsP" role="3EZMnx">
          <property role="3F0ifm" value="file name" />
        </node>
        <node concept="3F0ifn" id="6ZO2Qy6hUsQ" role="3EZMnx">
          <property role="3F0ifm" value="('.xsd'-extension is auto-added)" />
          <node concept="Vb9p2" id="6ZO2Qy6hUsR" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="6ZO2Qy6hUsS" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6ZO2Qy6hUsT" role="3EZMnx">
          <ref role="1NtTu8" to="irkh:6ZO2Qy6hDgR" resolve="targetFileName" />
        </node>
        <node concept="2iRfu4" id="6ZO2Qy6hUsU" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="V$LP5N73Ry" role="3EZMnx" />
      <node concept="VPM3Z" id="nxI_60uGop" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="3F0ifn" id="nxI_60uGoq" role="3EZMnx">
        <property role="3F0ifm" value="imports:" />
      </node>
      <node concept="3EZMnI" id="nxI_60uGor" role="3EZMnx">
        <node concept="VPM3Z" id="nxI_60uGos" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="nxI_60uGot" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3EZMnI" id="nxI_60uGou" role="3EZMnx">
          <node concept="VPM3Z" id="nxI_60uGov" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F2HdR" id="nxI_60uGow" role="3EZMnx">
            <ref role="1NtTu8" to="irkh:nxI_60uCZJ" resolve="imports" />
            <node concept="2iRkQZ" id="nxI_60uGox" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="nxI_60uGoy" role="2iSdaV" />
        </node>
        <node concept="l2Vlx" id="nxI_60uGoz" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="nxI_60uGo$" role="2iSdaV" />
      <node concept="3F0ifn" id="nxI_60uGo_" role="3EZMnx" />
      <node concept="3F0ifn" id="nxI_60uGoA" role="3EZMnx">
        <property role="3F0ifm" value="declarations:" />
      </node>
      <node concept="3EZMnI" id="nxI_60uGoB" role="3EZMnx">
        <node concept="VPM3Z" id="nxI_60uGoC" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="nxI_60uGoD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3EZMnI" id="nxI_60uGoE" role="3EZMnx">
          <node concept="VPM3Z" id="nxI_60uGoF" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F2HdR" id="nxI_60uGoG" role="3EZMnx">
            <ref role="1NtTu8" to="irkh:nxI_60uCZK" resolve="declarations" />
            <node concept="2iRkQZ" id="nxI_60uGoH" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="nxI_60uGoI" role="2iSdaV" />
        </node>
        <node concept="l2Vlx" id="nxI_60uGoJ" role="2iSdaV" />
      </node>
    </node>
    <node concept="3EZMnI" id="6ZO2Qy6hDgY" role="6VMZX">
      <node concept="3EZMnI" id="6ZO2Qy6hDhh" role="3EZMnx">
        <node concept="VPM3Z" id="6ZO2Qy6hDhi" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VSNWy" id="6ZO2Qy6hDhj" role="3F10Kt">
          <property role="1lJzqX" value="12" />
        </node>
        <node concept="2biZxu" id="6ZO2Qy6hDhk" role="3F10Kt">
          <property role="1rj3mz" value="Arial" />
        </node>
        <node concept="3F0ifn" id="6ZO2Qy6hDhl" role="3EZMnx">
          <property role="3F0ifm" value="Choose to emit an XML file for the generated XSD file detailing the minimum serialisation lengths (without whitespace and such) for each item." />
          <node concept="Vb9p2" id="6ZO2Qy6hDhm" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="6ZO2Qy6hDhn" role="3EZMnx">
          <property role="3F0ifm" value="This can help to (gu-)es(s)timate payload sizes." />
          <node concept="Vb9p2" id="6ZO2Qy6hDho" role="3F10Kt" />
        </node>
        <node concept="2iRkQZ" id="6ZO2Qy6hDhp" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="6ZO2Qy6hDhq" role="3EZMnx">
        <node concept="2iRfu4" id="6ZO2Qy6hDhr" role="2iSdaV" />
        <node concept="3F0ifn" id="6ZO2Qy6hDhs" role="3EZMnx">
          <property role="3F0ifm" value="emit lengths" />
        </node>
        <node concept="3F0ifn" id="6ZO2Qy6hDht" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6ZO2Qy6hDhu" role="3EZMnx">
          <ref role="1NtTu8" to="irkh:6ZO2Qy6hDgT" resolve="emitLengths" />
        </node>
      </node>
      <node concept="2iRkQZ" id="6ZO2Qy6hDgZ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1QVUG2pk0cQ">
    <property role="3GE5qa" value="facets" />
    <ref role="1XX52x" to="irkh:6GtTJsVQjWB" resolve="XsdRangeEnd" />
    <node concept="3EZMnI" id="1QVUG2pk0cS" role="2wV5jI">
      <node concept="2iRfu4" id="1QVUG2pk0cV" role="2iSdaV" />
      <node concept="1HlG4h" id="DmPLYxqxrH" role="3EZMnx">
        <node concept="1HfYo3" id="DmPLYxqxrI" role="1HlULh">
          <node concept="3TQlhw" id="DmPLYxqxrJ" role="1Hhtcw">
            <node concept="3clFbS" id="DmPLYxqxrK" role="2VODD2">
              <node concept="3clFbF" id="DmPLYxq__v" role="3cqZAp">
                <node concept="2OqwBi" id="DmPLYxq_Nn" role="3clFbG">
                  <node concept="pncrf" id="DmPLYxq__u" role="2Oq$k0" />
                  <node concept="2qgKlT" id="DmPLYxqAwb" role="2OqNvi">
                    <ref role="37wK5l" to="jbym:DmPLYxqx_0" resolve="tagName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Vb9p2" id="DmPLYxtlac" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
        <node concept="OXEIz" id="DmPLYxtwjs" role="P5bDN">
          <node concept="1oHujT" id="DmPLYxtww3" role="OY2wv">
            <property role="1oHujS" value="maxExclusive" />
            <node concept="1oIgkG" id="DmPLYxtww4" role="1oHujR">
              <node concept="3clFbS" id="DmPLYxtww5" role="2VODD2">
                <node concept="3clFbF" id="DmPLYxtwwl" role="3cqZAp">
                  <node concept="37vLTI" id="DmPLYxtx_S" role="3clFbG">
                    <node concept="3clFbT" id="DmPLYxtxCy" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2OqwBi" id="DmPLYxtwC3" role="37vLTJ">
                      <node concept="3GMtW1" id="DmPLYxtwwk" role="2Oq$k0" />
                      <node concept="3TrcHB" id="DmPLYxtxcE" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:DmPLYxqw4O" resolve="max" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="DmPLYxtxHC" role="3cqZAp">
                  <node concept="37vLTI" id="DmPLYxty_D" role="3clFbG">
                    <node concept="3clFbT" id="DmPLYxtyAb" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2OqwBi" id="DmPLYxtxPB" role="37vLTJ">
                      <node concept="3GMtW1" id="DmPLYxtxHA" role="2Oq$k0" />
                      <node concept="3TrcHB" id="DmPLYxtycr" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:6GtTJsVQjWE" resolve="exclusive" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1oHujT" id="DmPLYxtyMu" role="OY2wv">
            <property role="1oHujS" value="minExclusive" />
            <node concept="1oIgkG" id="DmPLYxtyMv" role="1oHujR">
              <node concept="3clFbS" id="DmPLYxtyMw" role="2VODD2">
                <node concept="3clFbF" id="DmPLYxtyMx" role="3cqZAp">
                  <node concept="37vLTI" id="DmPLYxtyMy" role="3clFbG">
                    <node concept="3clFbT" id="DmPLYxtyMz" role="37vLTx" />
                    <node concept="2OqwBi" id="DmPLYxtyM$" role="37vLTJ">
                      <node concept="3GMtW1" id="DmPLYxtyM_" role="2Oq$k0" />
                      <node concept="3TrcHB" id="DmPLYxtyMA" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:DmPLYxqw4O" resolve="max" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="DmPLYxtyMB" role="3cqZAp">
                  <node concept="37vLTI" id="DmPLYxtyMC" role="3clFbG">
                    <node concept="3clFbT" id="DmPLYxtyMD" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2OqwBi" id="DmPLYxtyME" role="37vLTJ">
                      <node concept="3GMtW1" id="DmPLYxtyMF" role="2Oq$k0" />
                      <node concept="3TrcHB" id="DmPLYxtyMG" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:6GtTJsVQjWE" resolve="exclusive" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1oHujT" id="DmPLYxtyR3" role="OY2wv">
            <property role="1oHujS" value="maxInclusive" />
            <node concept="1oIgkG" id="DmPLYxtyR4" role="1oHujR">
              <node concept="3clFbS" id="DmPLYxtyR5" role="2VODD2">
                <node concept="3clFbF" id="DmPLYxtyR6" role="3cqZAp">
                  <node concept="37vLTI" id="DmPLYxtyR7" role="3clFbG">
                    <node concept="3clFbT" id="DmPLYxtyR8" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2OqwBi" id="DmPLYxtyR9" role="37vLTJ">
                      <node concept="3GMtW1" id="DmPLYxtyRa" role="2Oq$k0" />
                      <node concept="3TrcHB" id="DmPLYxtyRb" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:DmPLYxqw4O" resolve="max" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="DmPLYxtyRc" role="3cqZAp">
                  <node concept="37vLTI" id="DmPLYxtyRd" role="3clFbG">
                    <node concept="3clFbT" id="DmPLYxtyRe" role="37vLTx" />
                    <node concept="2OqwBi" id="DmPLYxtyRf" role="37vLTJ">
                      <node concept="3GMtW1" id="DmPLYxtyRg" role="2Oq$k0" />
                      <node concept="3TrcHB" id="DmPLYxtyRh" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:6GtTJsVQjWE" resolve="exclusive" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1oHujT" id="DmPLYxtyWO" role="OY2wv">
            <property role="1oHujS" value="minInclusive" />
            <node concept="1oIgkG" id="DmPLYxtyWP" role="1oHujR">
              <node concept="3clFbS" id="DmPLYxtyWQ" role="2VODD2">
                <node concept="3clFbF" id="DmPLYxtyWR" role="3cqZAp">
                  <node concept="37vLTI" id="DmPLYxtyWS" role="3clFbG">
                    <node concept="3clFbT" id="DmPLYxtyWT" role="37vLTx" />
                    <node concept="2OqwBi" id="DmPLYxtyWU" role="37vLTJ">
                      <node concept="3GMtW1" id="DmPLYxtyWV" role="2Oq$k0" />
                      <node concept="3TrcHB" id="DmPLYxtyWW" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:DmPLYxqw4O" resolve="max" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="DmPLYxtyWX" role="3cqZAp">
                  <node concept="37vLTI" id="DmPLYxtyWY" role="3clFbG">
                    <node concept="3clFbT" id="DmPLYxtyWZ" role="37vLTx" />
                    <node concept="2OqwBi" id="DmPLYxtyX0" role="37vLTJ">
                      <node concept="3GMtW1" id="DmPLYxtyX1" role="2Oq$k0" />
                      <node concept="3TrcHB" id="DmPLYxtyX2" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:6GtTJsVQjWE" resolve="exclusive" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="DmPLYxqAUz" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="DmPLYxqBkk" role="3EZMnx">
        <ref role="1NtTu8" to="irkh:6GtTJsVQjWC" resolve="value" />
      </node>
    </node>
  </node>
</model>

