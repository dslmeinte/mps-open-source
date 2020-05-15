<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2581b995-cc54-4cdd-a788-129fa414a530(MetaCore.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
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
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
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
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
    <ref role="1XX52x" to="1292:7_z3uTkm7Tn" resolve="Concept" />
    <node concept="3EZMnI" id="7_z3uTkqxq$" role="2wV5jI">
      <node concept="3EZMnI" id="7_z3uTkqxqF" role="3EZMnx">
        <node concept="3F0A7n" id="4N6wDK7Gyid" role="3EZMnx">
          <ref role="1NtTu8" to="1292:5lOnQVy74W2" resolve="kind" />
          <node concept="Vb9p2" id="4N6wDK7GHWq" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
        </node>
        <node concept="VPM3Z" id="7_z3uTkqxqH" role="3F10Kt" />
        <node concept="3F0A7n" id="7_z3uTkqxqY" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="7_z3uTkqxqK" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5lOnQVy9L_S" role="3EZMnx">
        <node concept="VPM3Z" id="5lOnQVy9L_U" role="3F10Kt" />
        <node concept="3XFhqQ" id="5lOnQVy9LCV" role="3EZMnx" />
        <node concept="3F0ifn" id="5lOnQVy9LD1" role="3EZMnx">
          <property role="3F0ifm" value="extends:" />
        </node>
        <node concept="3F2HdR" id="5lOnQVy9LD9" role="3EZMnx">
          <ref role="1NtTu8" to="1292:5lOnQVy9L7u" resolve="superConcepts" />
          <node concept="2iRfu4" id="5lOnQVy9LDc" role="2czzBx" />
          <node concept="VPM3Z" id="5lOnQVy9LDd" role="3F10Kt" />
        </node>
        <node concept="2iRfu4" id="5lOnQVy9L_X" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5lOnQVychSM" role="3EZMnx">
        <node concept="VPM3Z" id="5lOnQVychSO" role="3F10Kt" />
        <node concept="3XFhqQ" id="5lOnQVychW0" role="3EZMnx" />
        <node concept="3F0ifn" id="5lOnQVychW4" role="3EZMnx">
          <property role="3F0ifm" value="documentation:" />
        </node>
        <node concept="3F0A7n" id="5lOnQVychWc" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="1292:7_z3uTkq$ni" resolve="description" />
        </node>
        <node concept="2iRfu4" id="5lOnQVychSR" role="2iSdaV" />
        <node concept="pkWqt" id="5lOnQVycuko" role="pqm2j">
          <node concept="3clFbS" id="5lOnQVycukp" role="2VODD2">
            <node concept="3clFbF" id="5lOnQVycuol" role="3cqZAp">
              <node concept="2OqwBi" id="5lOnQVycvpc" role="3clFbG">
                <node concept="2OqwBi" id="5lOnQVycuDS" role="2Oq$k0">
                  <node concept="pncrf" id="5lOnQVycuok" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5lOnQVycuZL" role="2OqNvi">
                    <ref role="3TsBF5" to="1292:7_z3uTkq$ni" resolve="description" />
                  </node>
                </node>
                <node concept="17RvpY" id="5lOnQVycvHb" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
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
  </node>
  <node concept="24kQdi" id="7_z3uTkq$mK">
    <ref role="1XX52x" to="1292:7_z3uTkm7Tw" resolve="Feature" />
    <node concept="3EZMnI" id="7_z3uTkq$mM" role="2wV5jI">
      <node concept="3F0A7n" id="7_z3uTkq$mT" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="LTSTewBNsP" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="LTSTewBNsX" role="3EZMnx">
        <ref role="1NtTu8" to="1292:6UwFzwhG8Jp" resolve="type" />
      </node>
      <node concept="2iRfu4" id="7_z3uTkq$mP" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="3LV3NC6TFwR" role="6VMZX">
      <ref role="PMmxG" node="7_z3uTkq$o7" resolve="description" />
    </node>
  </node>
  <node concept="PKFIW" id="7_z3uTkq$o7">
    <property role="TrG5h" value="description" />
    <ref role="1XX52x" to="1292:7_z3uTkq$nh" resolve="Descriptive" />
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
    <ref role="1XX52x" to="1292:3LV3NC6TMyp" resolve="DataType" />
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
  <node concept="24kQdi" id="6UwFzwhG18$">
    <ref role="1XX52x" to="1292:6UwFzwhFV4E" resolve="TypeReference" />
    <node concept="1iCGBv" id="6UwFzwhG18A" role="2wV5jI">
      <ref role="1NtTu8" to="1292:6UwFzwhFV4F" resolve="type" />
      <node concept="1sVBvm" id="6UwFzwhG18C" role="1sWHZn">
        <node concept="3F0A7n" id="6UwFzwhG18J" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6UwFzwhNYmd">
    <ref role="1XX52x" to="1292:6UwFzwhG9LB" resolve="ListOf" />
    <node concept="3EZMnI" id="6UwFzwhNYmf" role="2wV5jI">
      <node concept="3F0ifn" id="6UwFzwhNYmm" role="3EZMnx">
        <property role="3F0ifm" value="list&lt;" />
        <node concept="11LMrY" id="6UwFzwhNYmD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6UwFzwhNYms" role="3EZMnx">
        <ref role="1NtTu8" to="1292:6UwFzwhG9LE" resolve="itemType" />
      </node>
      <node concept="3F0ifn" id="6UwFzwhNYm$" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="6UwFzwhNYmF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="6UwFzwhNYmi" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="LTSTewBNtB">
    <ref role="1XX52x" to="1292:LTSTewBNt7" resolve="LiteralType" />
    <node concept="3F1sOY" id="LTSTewBNtD" role="2wV5jI">
      <ref role="1NtTu8" to="1292:LTSTewBNta" resolve="type" />
    </node>
  </node>
  <node concept="24kQdi" id="LTSTewCsXG">
    <ref role="1XX52x" to="1292:LTSTewCsXe" resolve="Enumeration" />
    <node concept="3EZMnI" id="LTSTewD$Wj" role="2wV5jI">
      <node concept="3EZMnI" id="LTSTewCsXI" role="3EZMnx">
        <node concept="3F0ifn" id="LTSTewCsXP" role="3EZMnx">
          <property role="3F0ifm" value="enumeration" />
        </node>
        <node concept="3F0A7n" id="LTSTewCsXV" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="LTSTewCsXL" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="LTSTewD$Wx" role="3EZMnx" />
      <node concept="2iRkQZ" id="LTSTewD$Wk" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="LTSTewDNSx">
    <ref role="1XX52x" to="1292:LTSTewDNS3" resolve="LiteralLiteralType" />
    <node concept="3F0A7n" id="LTSTewDNSO" role="2wV5jI">
      <ref role="1NtTu8" to="1292:LTSTewDNSK" resolve="type" />
    </node>
  </node>
  <node concept="24kQdi" id="5lOnQVy9L7p">
    <ref role="1XX52x" to="1292:5lOnQVy9L6V" resolve="ConcepReference" />
    <node concept="3F0A7n" id="5lOnQVy9L7r" role="2wV5jI">
      <ref role="1NtTu8" to="1292:5lOnQVy9L6W" resolve="conceptName" />
    </node>
  </node>
</model>

