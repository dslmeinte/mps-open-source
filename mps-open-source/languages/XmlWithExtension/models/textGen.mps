<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:071e4a6e-ab9d-4798-9995-841d428712f3(XmlWithExtension.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="d3d5" ref="r:6c3caa24-760b-439b-8753-c846b671e1b0(XmlWithExtension.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
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
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="zT7KcJFIOg">
    <ref role="WuzLi" to="d3d5:zT7KcJFIOd" resolve="XmlFileWithExtension" />
    <node concept="29tfMY" id="zT7KcJFIOh" role="29tGrW">
      <node concept="3clFbS" id="zT7KcJFIOi" role="2VODD2">
        <node concept="3clFbF" id="zT7KcJFIWI" role="3cqZAp">
          <node concept="2OqwBi" id="zT7KcJFJ9V" role="3clFbG">
            <node concept="117lpO" id="zT7KcJFIWH" role="2Oq$k0" />
            <node concept="3TrcHB" id="zT7KcJFJ_o" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="zT7KcJFJK9" role="33IsuW">
      <node concept="3clFbS" id="zT7KcJFJKa" role="2VODD2">
        <node concept="3clFbF" id="zT7KcJFJVe" role="3cqZAp">
          <node concept="3K4zz7" id="4iz6u7xesI4" role="3clFbG">
            <node concept="Xl_RD" id="4iz6u7xesTG" role="3K4E3e">
              <property role="Xl_RC" value="xml" />
            </node>
            <node concept="2OqwBi" id="4iz6u7xetNC" role="3K4GZi">
              <node concept="117lpO" id="4iz6u7xet54" role="2Oq$k0" />
              <node concept="3TrcHB" id="4iz6u7xeurC" role="2OqNvi">
                <ref role="3TsBF5" to="d3d5:zT7KcJFIOe" resolve="extension" />
              </node>
            </node>
            <node concept="2OqwBi" id="4iz6u7xer3A" role="3K4Cdx">
              <node concept="2OqwBi" id="zT7KcJFK8r" role="2Oq$k0">
                <node concept="117lpO" id="zT7KcJFJVd" role="2Oq$k0" />
                <node concept="3TrcHB" id="zT7KcJFKBX" role="2OqNvi">
                  <ref role="3TsBF5" to="d3d5:zT7KcJFIOe" resolve="extension" />
                </node>
              </node>
              <node concept="17RlXB" id="4iz6u7xerMz" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

