<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2950ac8d-2b56-43b1-89fa-efff36b574c0(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="b5c0bb04-c583-4b2a-a66e-1eab92d33c68" name="com.mbeddr.mpsutil.json" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="64hz" ref="r:eca5c7f5-86ab-4d3c-9b6b-cf6848ecd9e6(JsonSchema.structure)" />
    <import index="9kkn" ref="r:1bb62361-461e-46f8-b718-18c46702e73a(JsonSchema.behavior)" implicit="true" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
    </language>
    <language id="b5c0bb04-c583-4b2a-a66e-1eab92d33c68" name="com.mbeddr.mpsutil.json">
      <concept id="4342692121161028982" name="com.mbeddr.mpsutil.json.structure.JSONObject" flags="ng" index="3YX88f" />
      <concept id="4342692121161094115" name="com.mbeddr.mpsutil.json.structure.ObjectClass" flags="ng" index="3YXoiq">
        <child id="4342692121161094142" name="object" index="3YXoi7" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="2_XG2jMjnNN">
    <property role="TrG5h" value="mainJsonSchema" />
    <node concept="3lhOvk" id="2_XG2jMjtja" role="3lj3bC">
      <ref role="30HIoZ" to="64hz:2hQb6UNpmlE" resolve="JsonSchemaDef" />
      <ref role="3lhOvi" node="2_XG2jMjtfE" resolve="jsonSchema" />
    </node>
  </node>
  <node concept="3YXoiq" id="2_XG2jMjtfE">
    <property role="TrG5h" value="jsonSchema" />
    <node concept="3YX88f" id="2_XG2jMjtfF" role="3YXoi7">
      <node concept="29HgVG" id="4$rLBnuiLJA" role="lGtFl">
        <node concept="3NFfHV" id="4$rLBnuiMhZ" role="3NFExx">
          <node concept="3clFbS" id="4$rLBnuiMi0" role="2VODD2">
            <node concept="3clFbF" id="4$rLBnuiMVS" role="3cqZAp">
              <node concept="2OqwBi" id="4$rLBnuiNAY" role="3clFbG">
                <node concept="30H73N" id="4$rLBnuiMVR" role="2Oq$k0" />
                <node concept="2qgKlT" id="4$rLBnuiOXJ" role="2OqNvi">
                  <ref role="37wK5l" to="9kkn:4$rLBnuijZt" resolve="asJson" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="2_XG2jMjtfG" role="lGtFl">
      <ref role="n9lRv" to="64hz:2hQb6UNpmlE" resolve="JsonSchemaDef" />
    </node>
    <node concept="17Uvod" id="2_XG2jMjyIw" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="2_XG2jMjyIx" role="3zH0cK">
        <node concept="3clFbS" id="2_XG2jMjyIy" role="2VODD2">
          <node concept="3clFbF" id="2_XG2jMjyQX" role="3cqZAp">
            <node concept="2OqwBi" id="2_XG2jMjz5t" role="3clFbG">
              <node concept="30H73N" id="2_XG2jMjyQW" role="2Oq$k0" />
              <node concept="3TrcHB" id="2_XG2jMjzzK" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

