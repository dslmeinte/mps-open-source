<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f1a3e78d-0501-4cd7-bd93-048bebea3b89(JsonSchema.MPSInspector)">
  <persistence version="9" />
  <languages>
    <use id="332c9129-fd88-4f4c-a448-1f9b461e11cb" name="JsonSchema" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="332c9129-fd88-4f4c-a448-1f9b461e11cb" name="JsonSchema">
      <concept id="6314656596746746251" name="JsonSchema.structure.JsonSumType" flags="ng" index="2829cW">
        <child id="6314656596746747100" name="types" index="2829pF" />
      </concept>
      <concept id="2627336286585054570" name="JsonSchema.structure.JsonSchema" flags="ng" index="2n4O$4">
        <property id="7566064099328922588" name="title" index="15lxNE" />
        <child id="2627336286585093422" name="definitions" index="2n4X50" />
        <child id="2627336286585092228" name="contents" index="2n4XjE" />
      </concept>
      <concept id="2627336286585093430" name="JsonSchema.structure.JsonArrayDef" flags="ng" index="2n4X5o">
        <child id="2627336286585356718" name="itemsType" index="2n72R0" />
      </concept>
      <concept id="2627336286585093431" name="JsonSchema.structure.JsonOneOf" flags="ng" index="2n4X5p" />
      <concept id="2627336286585093425" name="JsonSchema.structure.JsonDefinition" flags="ng" index="2n4X5v">
        <child id="2627336286585093428" name="def" index="2n4X5q" />
      </concept>
      <concept id="2627336286585092223" name="JsonSchema.structure.JsonRegularProperty" flags="ng" index="2n4Xgh">
        <property id="2627336286585092226" name="required" index="2n4XjG" />
        <property id="7566064099329218709" name="description" index="15mDuz" />
      </concept>
      <concept id="2627336286585092220" name="JsonSchema.structure.JsonObjectDef" flags="ng" index="2n4Xgi">
        <property id="7566064099329107203" name="title" index="15meCP" />
        <child id="2627336286585092230" name="properties" index="2n4XjC" />
      </concept>
      <concept id="2627336286585398777" name="JsonSchema.structure.JsonStringType" flags="ng" index="2n78An" />
      <concept id="2627336286585398785" name="JsonSchema.structure.JsonBooleanType" flags="ng" index="2n78DJ" />
      <concept id="5268022398685019987" name="JsonSchema.structure.JsonProperty" flags="ng" index="2ns3$A">
        <child id="5268022398685019990" name="type" index="2ns3$z" />
      </concept>
      <concept id="2627336286587525519" name="JsonSchema.structure.JsonReferableRef" flags="ng" index="2nZjnx">
        <reference id="2627336286587525522" name="ref" index="2nZjnW" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2n4O$4" id="3mDcvi9vBOL">
    <property role="TrG5h" value="configuration" />
    <property role="15lxNE" value="MPS Inspector configuration format" />
    <node concept="2n4X5v" id="3mDcvi9vBS4" role="2n4X50">
      <property role="TrG5h" value="configurationItem" />
      <node concept="2n4Xgi" id="3mDcvi9vBOS" role="2n4X5q">
        <property role="15meCP" value="Configuration for one MPS project." />
        <node concept="2n4Xgh" id="3mDcvi9vBOV" role="2n4XjC">
          <property role="TrG5h" value="mpsProjectPath" />
          <property role="2n4XjG" value="true" />
          <property role="15mDuz" value="Path (relative to cwd) of the MPS project to inspect." />
          <node concept="2n78An" id="3mDcvi9vBOZ" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="3mDcvi9vBP6" role="2n4XjC">
          <property role="TrG5h" value="sortModules" />
          <property role="15mDuz" value="Whether to sort the module entries in .mps/modules.xml, for easier diffing and such." />
          <node concept="2n78DJ" id="3mDcvi9vBPd" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="3mDcvi9vBPm" role="2n4XjC">
          <property role="TrG5h" value="usageAnalysisPath" />
          <property role="15mDuz" value="Path (relatieve to cwd) where to write a usage analysis: a simple CSV which details which concepts (with FQName) and concepts' features (with FQName of concept # feature name) are used in the projects, and how many times. The presence of this field triggers the analysis." />
          <node concept="2n78An" id="3mDcvi9vBPv" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="3mDcvi9vBQ6" role="2n4XjC">
          <property role="TrG5h" value="languageVersions" />
          <property role="15mDuz" value="Triggers analysis of language versions." />
          <node concept="2nZjnx" id="3mDcvi9vBQh" role="2ns3$z">
            <ref role="2nZjnW" node="3mDcvi9vBPy" resolve="languageVersionsConfiguration" />
          </node>
        </node>
        <node concept="2n4Xgh" id="3mDcvi9vBSD" role="2n4XjC">
          <property role="TrG5h" value="generations" />
          <property role="15mDuz" value="Triggers generators." />
          <node concept="2n4X5o" id="3mDcvi9vBSQ" role="2ns3$z">
            <node concept="2nZjnx" id="3mDcvi9vBSV" role="2n72R0">
              <ref role="2nZjnW" node="3mDcvi9vBQk" resolve="generateFromStructure" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="3mDcvi9vBPy" role="2n4X50">
      <property role="TrG5h" value="languageVersionsConfiguration" />
      <node concept="2n4Xgi" id="3mDcvi9vBPA" role="2n4X5q">
        <property role="15meCP" value="Base for triggering some language version analysis." />
        <node concept="2n4Xgh" id="3mDcvi9vBPD" role="2n4XjC">
          <property role="TrG5h" value="reportPath" />
          <property role="15mDuz" value="Path (relative to cwd) to write the language versions report to." />
          <node concept="2n78An" id="3mDcvi9vBPH" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="3mDcvi9vBPO" role="2n4XjC">
          <property role="TrG5h" value="checkMinus1sInModels" />
          <property role="15mDuz" value="Whether to warn (on the console) about models using -1 language versions (see https://youtrack.jetbrains.com/issue/MPS-29937)." />
          <node concept="2n78DJ" id="3mDcvi9vBPV" role="2ns3$z" />
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="3mDcvi9vBQk" role="2n4X50">
      <property role="TrG5h" value="generateFromStructure" />
      <node concept="2n4Xgi" id="3mDcvi9vBQu" role="2n4X5q">
        <property role="15meCP" value="Triggers generation from a specified language's structure." />
        <node concept="2n4Xgh" id="3mDcvi9vBQx" role="2n4XjC">
          <property role="TrG5h" value="languageName" />
          <property role="2n4XjG" value="true" />
          <property role="15mDuz" value="Name of the language for which to generate &quot;stuff&quot; from the structure." />
          <node concept="2n78An" id="3mDcvi9vBQ_" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="3mDcvi9vBQC" role="2n4XjC">
          <property role="TrG5h" value="generationPath" />
          <property role="2n4XjG" value="true" />
          <property role="15mDuz" value="Path (relative to cwd) to generate to." />
          <node concept="2n78An" id="3mDcvi9vBQD" role="2ns3$z" />
        </node>
      </node>
    </node>
    <node concept="2n4X5p" id="55X3kSPn63d" role="2n4XjE">
      <node concept="2nZjnx" id="55X3kSPn63n" role="2829pF">
        <ref role="2nZjnW" node="3mDcvi9vBS4" resolve="configurationItem" />
      </node>
      <node concept="2n4X5o" id="3mDcvi9vBON" role="2829pF">
        <node concept="2nZjnx" id="3mDcvi9vBSt" role="2n72R0">
          <ref role="2nZjnW" node="3mDcvi9vBS4" resolve="configurationItem" />
        </node>
      </node>
    </node>
  </node>
</model>

