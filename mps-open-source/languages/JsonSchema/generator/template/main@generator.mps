<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2950ac8d-2b56-43b1-89fa-efff36b574c0(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="8382542b-a045-4f73-951b-02d75ee252bf" name="Json" version="0" />
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
      <concept id="1311078761699563727" name="jetbrains.mps.lang.generator.structure.InsertMacro_CreateNodeQuery" flags="in" index="3_AbJw" />
      <concept id="1311078761699563726" name="jetbrains.mps.lang.generator.structure.InsertMacro" flags="ln" index="3_AbJx">
        <child id="1311078761699602381" name="createNodeQuery" index="3_A0Ny" />
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
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="8382542b-a045-4f73-951b-02d75ee252bf" name="Json">
      <concept id="4445988724943966472" name="Json.structure.JsonObject" flags="ng" index="2W7w8S" />
      <concept id="4445988724943966479" name="Json.structure.JsonFile" flags="ng" index="2W7w8Z">
        <child id="4445988724943966480" name="contents" index="2W7w8w" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="2_XG2jMjnNN">
    <property role="TrG5h" value="mainJsonSchema" />
    <node concept="3lhOvk" id="2_XG2jMjtja" role="3lj3bC">
      <ref role="30HIoZ" to="64hz:2hQb6UNpmlE" resolve="JsonSchema" />
      <ref role="3lhOvi" node="3QNkN21HGjn" resolve="jsonSchema" />
    </node>
  </node>
  <node concept="2W7w8Z" id="3QNkN21HGjn">
    <property role="TrG5h" value="jsonSchema" />
    <node concept="2W7w8S" id="3QNkN21HHAD" role="2W7w8w">
      <node concept="3_AbJx" id="3QNkN21HHLs" role="lGtFl">
        <node concept="3_AbJw" id="3QNkN21HHLt" role="3_A0Ny">
          <node concept="3clFbS" id="3QNkN21HHLu" role="2VODD2">
            <node concept="3clFbF" id="3QNkN21HHOS" role="3cqZAp">
              <node concept="2OqwBi" id="3QNkN21HHZj" role="3clFbG">
                <node concept="30H73N" id="3QNkN21HHOR" role="2Oq$k0" />
                <node concept="2qgKlT" id="3QNkN21HI$O" role="2OqNvi">
                  <ref role="37wK5l" to="9kkn:4$rLBnuijZt" resolve="asJson" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="3QNkN21HGjp" role="lGtFl">
      <ref role="n9lRv" to="64hz:2hQb6UNpmlE" resolve="JsonSchema" />
    </node>
    <node concept="17Uvod" id="3QNkN21HGkw" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="3QNkN21HGkx" role="3zH0cK">
        <node concept="3clFbS" id="3QNkN21HGky" role="2VODD2">
          <node concept="3clFbF" id="3QNkN21HGth" role="3cqZAp">
            <node concept="2OqwBi" id="3QNkN21HGG1" role="3clFbG">
              <node concept="30H73N" id="3QNkN21HGtg" role="2Oq$k0" />
              <node concept="3TrcHB" id="3QNkN21HHcS" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

