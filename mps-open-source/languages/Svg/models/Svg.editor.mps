<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:62293826-7471-46f7-bfd4-1e05bde057be(Svg.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="r4xx" ref="r:25991841-12a0-400d-8d65-d016aab8719f(Svg.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="8gcs" ref="r:d5f6aaf2-29aa-410d-a442-d0a3d98a8e90(Svg.behavior)" implicit="true" />
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
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
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
      <concept id="1186414999511" name="jetbrains.mps.lang.editor.structure.UnderlinedStyleClassItem" flags="ln" index="VQ3r3">
        <property id="1214316229833" name="underlined" index="2USNnj" />
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
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="24kQdi" id="3XHwWSLqDma">
    <property role="3GE5qa" value="vector" />
    <ref role="1XX52x" to="r4xx:3XHwWSLqD22" resolve="IntVector" />
    <node concept="3EZMnI" id="3XHwWSLqDmc" role="2wV5jI">
      <node concept="3F0ifn" id="3XHwWSLqDmj" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11LMrY" id="7OceU2_l$eh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="3XHwWSLqDmp" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:3XHwWSLqDlH" resolve="x" />
      </node>
      <node concept="3F0ifn" id="3XHwWSLqDmx" role="3EZMnx">
        <property role="3F0ifm" value=", " />
        <node concept="11L4FC" id="7OceU2_lSE0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="7OceU2_lSE5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="3XHwWSLqDmF" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:3XHwWSLqDlI" resolve="y" />
      </node>
      <node concept="3F0ifn" id="3XHwWSLqDmR" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="7OceU2_l$ek" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="3XHwWSLqDmf" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3XHwWSLqDnp">
    <ref role="1XX52x" to="r4xx:3XHwWSLl7lU" resolve="SvgRoot" />
    <node concept="3EZMnI" id="3XHwWSLqDnu" role="2wV5jI">
      <node concept="3EZMnI" id="3XHwWSLqDnD" role="3EZMnx">
        <node concept="3F0A7n" id="7OceU2_m6rC" role="3EZMnx">
          <property role="1$x2rV" value="&lt;unnamed&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="Vb9p2" id="7OceU2_m6rP" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
          <node concept="VechU" id="7OceU2_m6rU" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/darkBlue" />
          </node>
        </node>
        <node concept="3F0ifn" id="2TQ3RGSHLpB" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="VPM3Z" id="3XHwWSLqDnF" role="3F10Kt" />
        <node concept="3F0ifn" id="3XHwWSLqDnH" role="3EZMnx">
          <property role="3F0ifm" value="&lt;svg" />
        </node>
        <node concept="3F0ifn" id="3XHwWSLqDnU" role="3EZMnx">
          <property role="3F0ifm" value="dimension=" />
          <node concept="11LMrY" id="7OceU2_lW00" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="3XHwWSLqDnZ" role="3EZMnx">
          <ref role="1NtTu8" to="r4xx:3XHwWSLqD21" resolve="dimension" />
        </node>
        <node concept="3F0ifn" id="3XHwWSLqDoI" role="3EZMnx">
          <property role="3F0ifm" value="css=" />
          <node concept="11LMrY" id="7OceU2_lZma" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
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
      <node concept="3EZMnI" id="45lrTgp$CkG" role="3EZMnx">
        <node concept="VPM3Z" id="45lrTgp$CkI" role="3F10Kt" />
        <node concept="3XFhqQ" id="45lrTgp$Clh" role="3EZMnx" />
        <node concept="3F0ifn" id="45lrTgp$Cln" role="3EZMnx">
          <property role="3F0ifm" value="definitions:" />
        </node>
        <node concept="3EZMnI" id="45lrTgp$Clv" role="3EZMnx">
          <node concept="VPM3Z" id="45lrTgp$Clx" role="3F10Kt" />
          <node concept="3F2HdR" id="45lrTgp$ClI" role="3EZMnx">
            <ref role="1NtTu8" to="r4xx:45lrTgp$Cka" resolve="definitions" />
            <node concept="2iRkQZ" id="45lrTgp$ClK" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="45lrTgp$Cl$" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="45lrTgp$CkL" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="7_z3uTkhSZs" role="3EZMnx">
        <node concept="VPM3Z" id="7_z3uTkhSZu" role="3F10Kt" />
        <node concept="3XFhqQ" id="7_z3uTkhSZY" role="3EZMnx" />
        <node concept="3F0ifn" id="45lrTgp$ClV" role="3EZMnx">
          <property role="3F0ifm" value="elements:" />
        </node>
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
      <node concept="3EZMnI" id="2rnOu5f9LQG" role="3EZMnx">
        <node concept="3F0ifn" id="2rnOu5fej5o" role="3EZMnx">
          <property role="3F0ifm" value="&lt;g" />
        </node>
        <node concept="VPM3Z" id="2rnOu5f9LQI" role="3F10Kt" />
        <node concept="PMmxH" id="2rnOu5fej5J" role="3EZMnx">
          <ref role="PMmxG" node="2rnOu5fej5w" resolve="classes" />
        </node>
        <node concept="3F1sOY" id="MRZty84EXA" role="3EZMnx">
          <ref role="1NtTu8" to="r4xx:MRZty84EXo" resolve="transform" />
        </node>
        <node concept="3F0ifn" id="2rnOu5fej5Q" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
          <node concept="11L4FC" id="5MdW_poWZ17" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="2rnOu5f9LQL" role="2iSdaV" />
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
        <property role="3F0ifm" value="literal content:" />
        <ref role="1k5W1q" node="2Z5X9nYQvqo" resolve="Literal" />
      </node>
      <node concept="3EZMnI" id="2rnOu5f8LEM" role="3EZMnx">
        <node concept="VPM3Z" id="2rnOu5f8LEO" role="3F10Kt" />
        <node concept="2iRkQZ" id="2rnOu5f8LER" role="2iSdaV" />
        <node concept="3F2HdR" id="2rnOu5f8LF0" role="3EZMnx">
          <ref role="1NtTu8" to="r4xx:3XHwWSLrYWU" resolve="literalXml" />
          <node concept="2iRkQZ" id="2rnOu5f8LF1" role="2czzBx" />
        </node>
      </node>
      <node concept="2iRfu4" id="3XHwWSLrYXr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3XHwWSLt$X6">
    <ref role="1XX52x" to="r4xx:3XHwWSLt$WC" resolve="CssClassReference" />
    <node concept="1iCGBv" id="5MdW_poA6ys" role="2wV5jI">
      <ref role="1NtTu8" to="r4xx:3XHwWSLt$WD" resolve="selector" />
      <node concept="1sVBvm" id="5MdW_poA6yu" role="1sWHZn">
        <node concept="3F0A7n" id="5MdW_poA6yC" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="2rnOu5fej5w">
    <property role="TrG5h" value="classes" />
    <ref role="1XX52x" to="r4xx:3XHwWSLt_T9" resolve="WithClasses" />
    <node concept="3EZMnI" id="2rnOu5fej5$" role="2wV5jI">
      <node concept="1HlG4h" id="2Z5X9nYLa6i" role="3EZMnx">
        <node concept="1HfYo3" id="2Z5X9nYLa6k" role="1HlULh">
          <node concept="3TQlhw" id="2Z5X9nYLa6m" role="1Hhtcw">
            <node concept="3clFbS" id="2Z5X9nYLa6o" role="2VODD2">
              <node concept="3clFbF" id="2Z5X9nYLabp" role="3cqZAp">
                <node concept="3cpWs3" id="2Z5X9nYL$23" role="3clFbG">
                  <node concept="Xl_RD" id="2Z5X9nYL$29" role="3uHU7w">
                    <property role="Xl_RC" value="=" />
                  </node>
                  <node concept="1eOMI4" id="2Z5X9nYLzdA" role="3uHU7B">
                    <node concept="3K4zz7" id="2Z5X9nYLfp4" role="1eOMHV">
                      <node concept="Xl_RD" id="2Z5X9nYLfri" role="3K4E3e">
                        <property role="Xl_RC" value="class" />
                      </node>
                      <node concept="Xl_RD" id="2Z5X9nYLfsW" role="3K4GZi">
                        <property role="Xl_RC" value="classes" />
                      </node>
                      <node concept="3clFbC" id="2Z5X9nYLeJw" role="3K4Cdx">
                        <node concept="3cmrfG" id="2Z5X9nYLeJY" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="2OqwBi" id="2Z5X9nYLbPI" role="3uHU7B">
                          <node concept="2OqwBi" id="2Z5X9nYLamZ" role="2Oq$k0">
                            <node concept="pncrf" id="2Z5X9nYLabo" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="2Z5X9nYLavR" role="2OqNvi">
                              <ref role="3TtcxE" to="r4xx:3XHwWSLt$WE" resolve="classes" />
                            </node>
                          </node>
                          <node concept="34oBXx" id="2Z5X9nYLdJr" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11LMrY" id="2Z5X9nYLfuR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="2Z5X9nYLIVP" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="2rnOu5fenfa" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <node concept="VechU" id="2rnOu5fenfh" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
        <node concept="11LMrY" id="2rnOu5ferjj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="2rnOu5f9LR3" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:3XHwWSLt$WE" resolve="classes" />
        <node concept="2iRfu4" id="2rnOu5f9LR5" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="2rnOu5ferjw" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <node concept="VechU" id="2rnOu5ferjE" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
        <node concept="11L4FC" id="2rnOu5ferjJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="2rnOu5fej5B" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2TQ3RGSHDlb">
    <ref role="1XX52x" to="r4xx:2TQ3RGSHDkD" resolve="SvgCircle" />
    <node concept="3EZMnI" id="2TQ3RGSHDld" role="2wV5jI">
      <node concept="3F0ifn" id="2TQ3RGSHDlk" role="3EZMnx">
        <property role="3F0ifm" value="&lt;circle" />
      </node>
      <node concept="PMmxH" id="5MdW_po_RzQ" role="3EZMnx">
        <ref role="PMmxG" node="2rnOu5fej5w" resolve="classes" />
      </node>
      <node concept="3F0ifn" id="2TQ3RGSHDlt" role="3EZMnx">
        <property role="3F0ifm" value="center=" />
        <node concept="11LMrY" id="2TQ3RGSHDlE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2TQ3RGSHDl_" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:2TQ3RGSHDkG" resolve="center" />
      </node>
      <node concept="3F0ifn" id="2TQ3RGSHDlM" role="3EZMnx">
        <property role="3F0ifm" value="radius=" />
        <node concept="11LMrY" id="2TQ3RGSHDlT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2TQ3RGSHDm3" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:2TQ3RGSHDkI" resolve="radius" />
      </node>
      <node concept="3F0ifn" id="2TQ3RGSHDmN" role="3EZMnx">
        <property role="3F0ifm" value="/&gt;" />
      </node>
      <node concept="2iRfu4" id="2TQ3RGSHDlg" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="45lrTgp$BBZ">
    <ref role="1XX52x" to="r4xx:45lrTgpzOU2" resolve="SvgDefinition" />
    <node concept="3EZMnI" id="45lrTgp$BC4" role="2wV5jI">
      <node concept="3EZMnI" id="45lrTgp$BCf" role="3EZMnx">
        <node concept="VPM3Z" id="45lrTgp$BCh" role="3F10Kt" />
        <node concept="3F0ifn" id="45lrTgp$BCs" role="3EZMnx">
          <property role="3F0ifm" value="id=" />
          <node concept="11LMrY" id="45lrTgp$BCw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VechU" id="45lrTgp$BC_" role="3F10Kt">
            <property role="Vb096" value="fLJRk5_/gray" />
          </node>
        </node>
        <node concept="1HlG4h" id="45lrTgp$BCQ" role="3EZMnx">
          <node concept="VechU" id="45lrTgp$BHF" role="3F10Kt">
            <property role="Vb096" value="fLJRk5_/gray" />
          </node>
          <node concept="1HfYo3" id="45lrTgp$BCS" role="1HlULh">
            <node concept="3TQlhw" id="45lrTgp$BCU" role="1Hhtcw">
              <node concept="3clFbS" id="45lrTgp$BCW" role="2VODD2">
                <node concept="3clFbF" id="45lrTgp$BHK" role="3cqZAp">
                  <node concept="2OqwBi" id="45lrTgp$BTs" role="3clFbG">
                    <node concept="pncrf" id="45lrTgp$BHJ" role="2Oq$k0" />
                    <node concept="2qgKlT" id="45lrTgp$C6Y" role="2OqNvi">
                      <ref role="37wK5l" to="8gcs:45lrTgpzOUF" resolve="id" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="45lrTgp$Cc0" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="45lrTgp$QuA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="45lrTgp$BCk" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="45lrTgp$Cip" role="3EZMnx">
        <node concept="VPM3Z" id="45lrTgp$Cir" role="3F10Kt" />
        <node concept="3XFhqQ" id="45lrTgp$Cjs" role="3EZMnx" />
        <node concept="3F1sOY" id="45lrTgp$Cjy" role="3EZMnx">
          <ref role="1NtTu8" to="r4xx:45lrTgpzOU3" resolve="literalXml" />
        </node>
        <node concept="2iRfu4" id="45lrTgp$Ciu" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="45lrTgp$BC7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="45lrTgpD9Ei">
    <ref role="1XX52x" to="r4xx:45lrTgpD9DO" resolve="SvgComment" />
    <node concept="3EZMnI" id="45lrTgpD9Ek" role="2wV5jI">
      <node concept="3F0ifn" id="45lrTgpD9Er" role="3EZMnx">
        <property role="3F0ifm" value="&lt;!--" />
        <node concept="VechU" id="45lrTgpD9EK" role="3F10Kt">
          <property role="Vb096" value="fLJRk5_/gray" />
        </node>
      </node>
      <node concept="3F0A7n" id="45lrTgpD9Ez" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:45lrTgpD9Ex" resolve="comment" />
      </node>
      <node concept="3F0ifn" id="45lrTgpD9EF" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
        <node concept="VechU" id="45lrTgpD9EM" role="3F10Kt">
          <property role="Vb096" value="fLJRk5_/gray" />
        </node>
      </node>
      <node concept="2iRfu4" id="45lrTgpD9En" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="45lrTgpGJE_">
    <ref role="1XX52x" to="r4xx:45lrTgpGDve" resolve="SvgPath" />
    <node concept="3EZMnI" id="45lrTgpGJEB" role="2wV5jI">
      <node concept="3F0ifn" id="45lrTgpGJEI" role="3EZMnx">
        <property role="3F0ifm" value="&lt;path" />
      </node>
      <node concept="PMmxH" id="45lrTgpGJES" role="3EZMnx">
        <ref role="PMmxG" node="2rnOu5fej5w" resolve="classes" />
      </node>
      <node concept="3F0ifn" id="45lrTgpGJEZ" role="3EZMnx">
        <property role="3F0ifm" value="d=&quot;" />
        <node concept="11LMrY" id="45lrTgpGJF4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="45lrTgpGJFc" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:45lrTgpGDwk" resolve="d" />
      </node>
      <node concept="3F0ifn" id="45lrTgpGJFq" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11L4FC" id="45lrTgpGJFy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="45lrTgpGJFH" role="3EZMnx">
        <property role="3F0ifm" value="marker-end=&quot;url(#" />
        <node concept="11LMrY" id="MRZty8bWAr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="45lrTgpGJG4" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:45lrTgpGDCu" resolve="markerEnd" />
        <node concept="1sVBvm" id="45lrTgpGJG6" role="1sWHZn">
          <node concept="1HlG4h" id="45lrTgpGJGm" role="2wV5jI">
            <node concept="1HfYo3" id="45lrTgpGJGo" role="1HlULh">
              <node concept="3TQlhw" id="45lrTgpGJGq" role="1Hhtcw">
                <node concept="3clFbS" id="45lrTgpGJGs" role="2VODD2">
                  <node concept="3clFbF" id="45lrTgpGJL5" role="3cqZAp">
                    <node concept="2OqwBi" id="45lrTgpGJWL" role="3clFbG">
                      <node concept="pncrf" id="45lrTgpGJL4" role="2Oq$k0" />
                      <node concept="2qgKlT" id="45lrTgpGKa0" role="2OqNvi">
                        <ref role="37wK5l" to="8gcs:45lrTgpzOUF" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VechU" id="45lrTgpJ22_" role="3F10Kt">
              <property role="Vb096" value="fLwANPu/blue" />
            </node>
            <node concept="Vb9p2" id="45lrTgpJ2b$" role="3F10Kt">
              <property role="Vbekb" value="g1_kEg4/ITALIC" />
            </node>
            <node concept="VQ3r3" id="45lrTgpJ2cW" role="3F10Kt">
              <property role="2USNnj" value="gtbM8PH/underlined" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="45lrTgpH31b" role="3EZMnx">
        <property role="3F0ifm" value=")&quot;" />
        <node concept="11L4FC" id="45lrTgpH31x" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="45lrTgpGJEE" role="2iSdaV" />
      <node concept="3F0ifn" id="5MdW_poWxWl" role="3EZMnx">
        <property role="3F0ifm" value="/&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="45lrTgpJx1k">
    <ref role="1XX52x" to="r4xx:45lrTgpGDu8" resolve="SvgText" />
    <node concept="3EZMnI" id="6DcOmRzli$" role="2wV5jI">
      <node concept="3EZMnI" id="45lrTgpJx1m" role="3EZMnx">
        <node concept="3F0ifn" id="45lrTgpJx1t" role="3EZMnx">
          <property role="3F0ifm" value="&lt;text" />
        </node>
        <node concept="PMmxH" id="45lrTgpJx1z" role="3EZMnx">
          <ref role="PMmxG" node="2rnOu5fej5w" resolve="classes" />
        </node>
        <node concept="3F0ifn" id="45lrTgpJx2e" role="3EZMnx">
          <property role="3F0ifm" value="topLeft=" />
          <node concept="11LMrY" id="45lrTgpJx2j" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="45lrTgpJx2y" role="3EZMnx">
          <ref role="1NtTu8" to="r4xx:45lrTgpGDD0" resolve="topLeft" />
        </node>
        <node concept="3F1sOY" id="5MdW_pp24vJ" role="3EZMnx">
          <ref role="1NtTu8" to="r4xx:5MdW_pp1MbT" resolve="transform" />
        </node>
        <node concept="3F0ifn" id="45lrTgpJx2K" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
          <node concept="11L4FC" id="45lrTgpJx4Q" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="45lrTgpJx1p" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="6DcOmRDfNd" role="3EZMnx">
        <node concept="VPM3Z" id="6DcOmRDfNf" role="3F10Kt" />
        <node concept="3XFhqQ" id="6DcOmRDfNC" role="3EZMnx" />
        <node concept="3F0A7n" id="45lrTgpJx4G" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;no simple text&gt;" />
          <ref role="1NtTu8" to="r4xx:45lrTgpGDCY" resolve="text" />
        </node>
        <node concept="2iRfu4" id="6DcOmRDfNi" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="6DcOmR$7mi" role="3EZMnx">
        <node concept="VPM3Z" id="6DcOmR$7mk" role="3F10Kt" />
        <node concept="3XFhqQ" id="6DcOmR$7mC" role="3EZMnx" />
        <node concept="3F2HdR" id="6DcOmREHbB" role="3EZMnx">
          <ref role="1NtTu8" to="r4xx:6DcOmRzljo" resolve="tspans" />
          <node concept="2iRkQZ" id="6DcOmREHbE" role="2czzBx" />
          <node concept="VPM3Z" id="6DcOmREHbF" role="3F10Kt" />
        </node>
        <node concept="2iRfu4" id="6DcOmR$7mn" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6DcOmRzliX" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/text&gt;" />
      </node>
      <node concept="2iRkQZ" id="6DcOmRzli_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="45lrTgpNRKN">
    <ref role="1XX52x" to="r4xx:45lrTgpGDLa" resolve="SvgRectangle" />
    <node concept="3EZMnI" id="45lrTgpNRKP" role="2wV5jI">
      <node concept="3F0ifn" id="45lrTgpNRKW" role="3EZMnx">
        <property role="3F0ifm" value="&lt;rect" />
      </node>
      <node concept="PMmxH" id="45lrTgpNRL2" role="3EZMnx">
        <ref role="PMmxG" node="2rnOu5fej5w" resolve="classes" />
      </node>
      <node concept="3F0ifn" id="45lrTgpNSov" role="3EZMnx">
        <property role="3F0ifm" value="topLeft=" />
        <node concept="11LMrY" id="45lrTgpNSpl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="45lrTgpNSoG" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:45lrTgpJLts" resolve="topLeft" />
      </node>
      <node concept="3F0ifn" id="45lrTgpNSoU" role="3EZMnx">
        <property role="3F0ifm" value="dimensions=" />
        <node concept="11LMrY" id="45lrTgpNSpj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="45lrTgpNSpa" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:45lrTgpNSoo" resolve="dimensions" />
      </node>
      <node concept="2iRfu4" id="45lrTgpNRKS" role="2iSdaV" />
      <node concept="3F0ifn" id="6SHPbET3EZP" role="3EZMnx">
        <property role="3F0ifm" value="/&gt;" />
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="MRZty8c7IW">
    <property role="3GE5qa" value="transform" />
    <property role="TrG5h" value="Transformation_Stylesheet" />
    <node concept="14StLt" id="MRZty8c7IX" role="V601i">
      <property role="TrG5h" value="transformation" />
      <node concept="Vb9p2" id="MRZty8c7IZ" role="3F10Kt" />
      <node concept="VechU" id="MRZty8c7J4" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/darkGreen" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5MdW_poZSNw">
    <property role="3GE5qa" value="transform" />
    <ref role="1XX52x" to="r4xx:5MdW_poZSMX" resolve="Translate" />
    <node concept="3EZMnI" id="5MdW_poZSNy" role="2wV5jI">
      <node concept="3F0ifn" id="5MdW_poZSNG" role="3EZMnx">
        <property role="3F0ifm" value="translate" />
        <ref role="1k5W1q" node="MRZty8c7IX" resolve="transformation" />
        <node concept="11LMrY" id="5MdW_poZSNK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5MdW_poZSO2" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:5MdW_poZSN2" resolve="vector" />
      </node>
      <node concept="2iRfu4" id="5MdW_poZSN_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5MdW_pp1Vfj">
    <property role="3GE5qa" value="transform" />
    <ref role="1XX52x" to="r4xx:5MdW_pp1E_K" resolve="TransformAttribute" />
    <node concept="3EZMnI" id="5MdW_pp1Vfl" role="2wV5jI">
      <node concept="3F0ifn" id="5MdW_pp1Vfm" role="3EZMnx">
        <property role="3F0ifm" value="transform=" />
        <node concept="11LMrY" id="5MdW_pp1Vfn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5MdW_pp1Vfo" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <node concept="VechU" id="5MdW_pp1Vfp" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
        <node concept="11LMrY" id="5MdW_pp1Vfq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5MdW_pp1Vfr" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:5MdW_pp1E_L" resolve="transformations" />
        <node concept="2iRfu4" id="5MdW_pp1Vfs" role="2czzBx" />
        <node concept="VPM3Z" id="5MdW_pp1Vft" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="5MdW_pp1Vfu" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <node concept="VechU" id="5MdW_pp1Vfv" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
        <node concept="11L4FC" id="5MdW_pp1Vfw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="5MdW_pp1Vfx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5MdW_pp1Mb1">
    <property role="3GE5qa" value="transform" />
    <ref role="1XX52x" to="r4xx:5MdW_pp1Mav" resolve="Rotate" />
    <node concept="3EZMnI" id="5MdW_pp1Mb3" role="2wV5jI">
      <node concept="3F0ifn" id="5MdW_pp1Mbd" role="3EZMnx">
        <property role="3F0ifm" value="rotate" />
        <ref role="1k5W1q" node="MRZty8c7IX" resolve="transformation" />
        <node concept="11LMrY" id="5MdW_pp1Mbh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="MRZty8c7Jf" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11LMrY" id="MRZty8c7Jn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="5MdW_pp1Mbr" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:5MdW_pp1Maz" resolve="radians" />
      </node>
      <node concept="3F0ifn" id="5MdW_pp1MbG" role="3EZMnx">
        <property role="3F0ifm" value="rad)" />
        <node concept="11L4FC" id="5MdW_pp1MbQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="5MdW_pp1Mb6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6DcOmRyyrz">
    <ref role="1XX52x" to="r4xx:6DcOmRyyqx" resolve="SvgTextSpan" />
    <node concept="3EZMnI" id="6DcOmRyyr_" role="2wV5jI">
      <node concept="3F0ifn" id="6DcOmRyyrG" role="3EZMnx">
        <property role="3F0ifm" value="&lt;tspan" />
      </node>
      <node concept="PMmxH" id="6DcOmREv3L" role="3EZMnx">
        <ref role="PMmxG" node="2rnOu5fej5w" resolve="classes" />
      </node>
      <node concept="3F0ifn" id="6DcOmRyyrM" role="3EZMnx">
        <property role="3F0ifm" value="dy=" />
        <node concept="11LMrY" id="6DcOmRyyrQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6DcOmRyyrX" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:6DcOmRyyr5" resolve="dy" />
      </node>
      <node concept="3F0ifn" id="6DcOmRyys9" role="3EZMnx">
        <property role="3F0ifm" value="em &gt;" />
        <node concept="11L4FC" id="6DcOmRyysg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6DcOmRyysq" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:6DcOmRyyqC" resolve="text" />
      </node>
      <node concept="3F0ifn" id="6DcOmRyysG" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/tspan&gt;" />
      </node>
      <node concept="2iRfu4" id="6DcOmRyyrC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6DcOmREG$O">
    <ref role="1XX52x" to="r4xx:6DcOmREG$m" resolve="WrappedString" />
    <node concept="3EZMnI" id="6DcOmREG$Q" role="2wV5jI">
      <node concept="3F0ifn" id="6DcOmREG$X" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11LMrY" id="6DcOmREG_q" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6DcOmREG_3" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:6DcOmREG$n" resolve="text" />
      </node>
      <node concept="3F0ifn" id="6DcOmREG_b" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11L4FC" id="6DcOmREG_o" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="6DcOmREG$T" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6DcOmRO$cV">
    <ref role="1XX52x" to="r4xx:6DcOmRO$cf" resolve="SvgEllipse" />
    <node concept="3EZMnI" id="6DcOmRO$cX" role="2wV5jI">
      <node concept="3F0ifn" id="6DcOmRO$cY" role="3EZMnx">
        <property role="3F0ifm" value="&lt;ellipse" />
      </node>
      <node concept="PMmxH" id="6DcOmRO$cZ" role="3EZMnx">
        <ref role="PMmxG" node="2rnOu5fej5w" resolve="classes" />
      </node>
      <node concept="3F0ifn" id="6DcOmRO$d0" role="3EZMnx">
        <property role="3F0ifm" value="center=" />
        <node concept="11LMrY" id="6DcOmRO$d1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6DcOmRO$d2" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:6DcOmRO$cp" resolve="center" />
      </node>
      <node concept="3F0ifn" id="6DcOmRO$d3" role="3EZMnx">
        <property role="3F0ifm" value="radii=" />
        <node concept="11LMrY" id="6DcOmRO$d4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6DcOmRO$d_" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:6DcOmRO$ct" resolve="radii" />
      </node>
      <node concept="3F0ifn" id="6DcOmRO$d6" role="3EZMnx">
        <property role="3F0ifm" value="/&gt;" />
      </node>
      <node concept="2iRfu4" id="6DcOmRO$d7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2Z5X9nYr6Ko">
    <property role="3GE5qa" value="vector" />
    <ref role="1XX52x" to="r4xx:2Z5X9nYr6JL" resolve="DoubleVector" />
    <node concept="3EZMnI" id="2Z5X9nYAgTb" role="2wV5jI">
      <node concept="3F0ifn" id="2Z5X9nYAgTc" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11LMrY" id="2Z5X9nYAgTd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2Z5X9nYAgTe" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:2Z5X9nYr6JP" resolve="x" />
      </node>
      <node concept="3F0ifn" id="2Z5X9nYAgTf" role="3EZMnx">
        <property role="3F0ifm" value=", " />
        <node concept="11L4FC" id="2Z5X9nYAgTg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2Z5X9nYAgTh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2Z5X9nYAgTi" role="3EZMnx">
        <ref role="1NtTu8" to="r4xx:2Z5X9nYr6JS" resolve="y" />
      </node>
      <node concept="3F0ifn" id="2Z5X9nYAgTj" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="2Z5X9nYAgTk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="2Z5X9nYAgTl" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2Z5X9nYNem5">
    <property role="3GE5qa" value="vector" />
    <ref role="1XX52x" to="r4xx:2Z5X9nYNelA" resolve="DummyVector" />
    <node concept="3EZMnI" id="2Z5X9nYNemb" role="2wV5jI">
      <node concept="3F0ifn" id="2Z5X9nYNemd" role="3EZMnx">
        <property role="3F0ifm" value="(x, y)" />
      </node>
      <node concept="2iRfu4" id="2Z5X9nYNeme" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2Z5X9nYQvpL">
    <ref role="1XX52x" to="r4xx:2Z5X9nYQvpc" resolve="CssLiteralClass" />
    <node concept="3EZMnI" id="2Z5X9nYQvpY" role="2wV5jI">
      <node concept="3F0ifn" id="2Z5X9nYQvq8" role="3EZMnx">
        <property role="3F0ifm" value="literal:" />
        <ref role="1k5W1q" node="2Z5X9nYQvqo" resolve="Literal" />
      </node>
      <node concept="3F0A7n" id="2Z5X9nYQvqh" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="2Z5X9nYQvq1" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="2Z5X9nYQvqn">
    <property role="TrG5h" value="styles" />
    <node concept="14StLt" id="2Z5X9nYQvqo" role="V601i">
      <property role="TrG5h" value="Literal" />
      <node concept="Vb9p2" id="2Z5X9nYQvqr" role="3F10Kt" />
      <node concept="VechU" id="2Z5X9nYQvqs" role="3F10Kt">
        <property role="Vb096" value="fLJRk5A/lightGray" />
      </node>
    </node>
  </node>
</model>

