<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:eca5c7f5-86ab-4d3c-9b6b-cf6848ecd9e6(JsonSchema.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tay9" ref="r:4b82c70e-45f8-4502-a857-34e943edc354(Json.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="7862711839422615209" name="jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation" flags="ng" index="t5JxF">
        <property id="7862711839422615217" name="text" index="t5JxN" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="2hQb6UNpmlE">
    <property role="EcuMT" value="2627336286585054570" />
    <property role="TrG5h" value="JsonSchema" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="schema" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2hQb6UNptUl" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2hQb6UNyLAb" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNyLA0" resolve="JsonReferable" />
    </node>
    <node concept="1TJgyi" id="2hQb6UNptUo" role="1TKVEl">
      <property role="IQ2nx" value="2627336286585085592" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2hQb6UNpvx7" role="1TKVEl">
      <property role="IQ2nx" value="2627336286585092167" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6$03NoGlxfs" role="1TKVEl">
      <property role="IQ2nx" value="7566064099328922588" />
      <property role="TrG5h" value="title" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="2hQb6UNpvy4" role="1TKVEi">
      <property role="IQ2ns" value="2627336286585092228" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
    <node concept="1TJgyj" id="2hQb6UNpvOI" role="1TKVEi">
      <property role="IQ2ns" value="2627336286585093422" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="definitions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2hQb6UNpvOL" resolve="JsonDefinition" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNpvxW">
    <property role="EcuMT" value="2627336286585092220" />
    <property role="TrG5h" value="JsonObjectDef" />
    <property role="34LRSv" value="object" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6$03NoGmek3" role="1TKVEl">
      <property role="IQ2nx" value="7566064099329107203" />
      <property role="TrG5h" value="title" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="2hQb6UNpvy6" role="1TKVEi">
      <property role="IQ2ns" value="2627336286585092230" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="properties" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4$rLBnuqZXj" resolve="JsonProperty" />
    </node>
    <node concept="1TJgyj" id="6qrN1nFkMB" role="1TKVEi">
      <property role="IQ2ns" value="115526993871457447" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="additionalPropertiesType" />
      <ref role="20lvS9" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
    <node concept="PrWs8" id="5uyaFvvDpC8" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNpvxZ">
    <property role="EcuMT" value="2627336286585092223" />
    <property role="TrG5h" value="JsonRegularProperty" />
    <property role="34LRSv" value="property" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4$rLBnurgKr" role="PzmwI">
      <ref role="PrY4T" node="4$rLBnuqZXj" resolve="JsonProperty" />
    </node>
    <node concept="PrWs8" id="4$rLBnut0nA" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="2hQb6UNpvy2" role="1TKVEl">
      <property role="IQ2nx" value="2627336286585092226" />
      <property role="TrG5h" value="required" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="6$03NoGmDyl" role="1TKVEl">
      <property role="IQ2nx" value="7566064099329218709" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNpvy8">
    <property role="EcuMT" value="2627336286585092232" />
    <property role="TrG5h" value="JsonEnumerationDef" />
    <property role="34LRSv" value="enum" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2hQb6UNpvye" role="1TKVEi">
      <property role="IQ2ns" value="2627336286585092238" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="values" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="2hQb6UNpvyb" resolve="JsonEnumerationValue" />
    </node>
    <node concept="PrWs8" id="2hQb6UNqjdN" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNpvyb">
    <property role="EcuMT" value="2627336286585092235" />
    <property role="TrG5h" value="JsonEnumerationValue" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2hQb6UNpvyc" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNpvOL">
    <property role="EcuMT" value="2627336286585093425" />
    <property role="TrG5h" value="JsonDefinition" />
    <property role="34LRSv" value="def" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2hQb6UNpvOM" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2hQb6UNyLA4" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNyLA0" resolve="JsonReferable" />
    </node>
    <node concept="1TJgyj" id="2hQb6UNpvOO" role="1TKVEi">
      <property role="IQ2ns" value="2627336286585093428" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="def" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNpvOQ">
    <property role="EcuMT" value="2627336286585093430" />
    <property role="TrG5h" value="JsonArrayDef" />
    <property role="34LRSv" value="array" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="2hQb6UNqw6G" role="1TKVEl">
      <property role="IQ2nx" value="2627336286585356716" />
      <property role="TrG5h" value="minItems" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="2hQb6UNqw6K" role="1TKVEl">
      <property role="IQ2nx" value="2627336286585356720" />
      <property role="TrG5h" value="uniqueItems" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="2hQb6UNqw6I" role="1TKVEi">
      <property role="IQ2ns" value="2627336286585356718" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="itemsType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
    <node concept="PrWs8" id="5uyaFvvDpC5" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNpvOR">
    <property role="EcuMT" value="2627336286585093431" />
    <property role="TrG5h" value="JsonOneOf" />
    <property role="34LRSv" value="oneOf" />
    <ref role="1TJDcQ" node="5uyaFvvEFAb" resolve="JsonSumType" />
    <node concept="PrWs8" id="2hQb6UNqiS9" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="PlHQZ" id="2hQb6UNqiS8">
    <property role="EcuMT" value="2627336286585302536" />
    <property role="TrG5h" value="JsonTypeLiteral" />
  </node>
  <node concept="1TIwiD" id="2hQb6UNqEnT">
    <property role="EcuMT" value="2627336286585398777" />
    <property role="TrG5h" value="JsonStringType" />
    <property role="34LRSv" value="string" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2hQb6UNqEnU" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
    <node concept="1TJgyi" id="2hQb6UNrqds" role="1TKVEl">
      <property role="IQ2nx" value="2627336286585594716" />
      <property role="TrG5h" value="pattern" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="2hQb6UNsfOh" role="1TKVEi">
      <property role="IQ2ns" value="2627336286585814289" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="restriction" />
      <ref role="20lvS9" node="2hQb6UNsfOf" resolve="JsonStringRestriction" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNqEo1">
    <property role="EcuMT" value="2627336286585398785" />
    <property role="TrG5h" value="JsonBooleanType" />
    <property role="34LRSv" value="boolean" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2hQb6UNqEo2" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNrK1K">
    <property role="EcuMT" value="2627336286585684080" />
    <property role="TrG5h" value="JsonStringFormats" />
    <property role="34LRSv" value="formats" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2hQb6UNsfOa" role="1TKVEi">
      <property role="IQ2ns" value="2627336286585814282" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="formats" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="2hQb6UNsfOc" resolve="JsonStringFormat" />
    </node>
    <node concept="PrWs8" id="2hQb6UNsfPf" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNsfOf" resolve="JsonStringRestriction" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNrK1L">
    <property role="EcuMT" value="2627336286585684081" />
    <property role="TrG5h" value="JsonIntegerType" />
    <property role="34LRSv" value="integer" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="2hQb6UNrK1M" role="1TKVEl">
      <property role="IQ2nx" value="2627336286585684082" />
      <property role="TrG5h" value="minimum" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="2hQb6UNrK1O" role="1TKVEl">
      <property role="IQ2nx" value="2627336286585684084" />
      <property role="TrG5h" value="maximum" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="2hQb6UNsQom" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNsfOc">
    <property role="EcuMT" value="2627336286585814284" />
    <property role="TrG5h" value="JsonStringFormat" />
    <property role="34LRSv" value="format" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2hQb6UNsfOd" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="2hQb6UNsfOf">
    <property role="EcuMT" value="2627336286585814287" />
    <property role="TrG5h" value="JsonStringRestriction" />
  </node>
  <node concept="1TIwiD" id="2hQb6UNsfOg">
    <property role="EcuMT" value="2627336286585814288" />
    <property role="TrG5h" value="JsonStringPattern" />
    <property role="34LRSv" value="pattern" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2hQb6UNsfOj" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNsfOf" resolve="JsonStringRestriction" />
    </node>
    <node concept="1TJgyi" id="2hQb6UNsfOl" role="1TKVEl">
      <property role="IQ2nx" value="2627336286585814293" />
      <property role="TrG5h" value="pattern" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="PlHQZ" id="2hQb6UNyLA0">
    <property role="EcuMT" value="2627336286587525504" />
    <property role="TrG5h" value="JsonReferable" />
    <node concept="PrWs8" id="2hQb6UNyTuS" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2hQb6UNyLAf">
    <property role="EcuMT" value="2627336286587525519" />
    <property role="TrG5h" value="JsonReferableRef" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2hQb6UNyLAg" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
    <node concept="1TJgyj" id="2hQb6UNyLAi" role="1TKVEi">
      <property role="IQ2ns" value="2627336286587525522" />
      <property role="20kJfa" value="ref" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2hQb6UNyLA0" resolve="JsonReferable" />
    </node>
    <node concept="t5JxF" id="6z3ZIK8Qy1P" role="lGtFl">
      <property role="t5JxN" value="Note: leave alias unset to make ref a smart reference!" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$03NoGja_c">
    <property role="EcuMT" value="7566064099328305484" />
    <property role="TrG5h" value="JsonPatternProperty" />
    <property role="34LRSv" value="pattern" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6$03NoGja_d" role="1TKVEl">
      <property role="IQ2nx" value="7566064099328305485" />
      <property role="TrG5h" value="pattern" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="4$rLBnurgKp" role="PzmwI">
      <ref role="PrY4T" node="4$rLBnuqZXj" resolve="JsonProperty" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$03NoGms0o">
    <property role="EcuMT" value="7566064099329163288" />
    <property role="TrG5h" value="JsonNumberType" />
    <property role="34LRSv" value="number" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6$03NoGnj5z" role="1TKVEl">
      <property role="IQ2nx" value="7566064099329388899" />
      <property role="TrG5h" value="exclusiveMinimum" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="6$03NoGms0p" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$03NoGnwKy">
    <property role="EcuMT" value="7566064099329444898" />
    <property role="TrG5h" value="JsonExternalRef" />
    <property role="34LRSv" value="external ref" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6$03NoGnwKz" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
    <node concept="1TJgyi" id="6$03NoGnwK_" role="1TKVEl">
      <property role="IQ2nx" value="7566064099329444901" />
      <property role="TrG5h" value="refUri" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="PlHQZ" id="4$rLBnuqZXj">
    <property role="EcuMT" value="5268022398685019987" />
    <property role="TrG5h" value="JsonProperty" />
    <node concept="1TJgyj" id="4$rLBnuqZXm" role="1TKVEi">
      <property role="IQ2ns" value="5268022398685019990" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="5uyaFvvEF_p">
    <property role="EcuMT" value="6314656596746746201" />
    <property role="TrG5h" value="JsonAnyOf" />
    <property role="34LRSv" value="anyOf" />
    <ref role="1TJDcQ" node="5uyaFvvEFAb" resolve="JsonSumType" />
    <node concept="PrWs8" id="5uyaFvvEF_q" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="5uyaFvvEFAb">
    <property role="EcuMT" value="6314656596746746251" />
    <property role="TrG5h" value="JsonSumType" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5uyaFvvEFNs" role="1TKVEi">
      <property role="IQ2ns" value="6314656596746747100" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="types" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
    <node concept="PrWs8" id="5uyaFvvEFAc" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="5uyaFvvGuLw">
    <property role="EcuMT" value="6314656596747218016" />
    <property role="TrG5h" value="JsonAllOf" />
    <property role="34LRSv" value="allOf" />
    <ref role="1TJDcQ" node="5uyaFvvEFAb" resolve="JsonSumType" />
    <node concept="PrWs8" id="5uyaFvvGuLx" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="6HQdUrgVIYx">
    <property role="EcuMT" value="7743437798919565217" />
    <property role="TrG5h" value="JsonNoneType" />
    <property role="34LRSv" value="none" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6HQdUrgVIYy" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
    <node concept="t5JxF" id="6HQdUrgYkrf" role="lGtFl">
      <property role="t5JxN" value="Signifies a type without any value." />
    </node>
  </node>
  <node concept="1TIwiD" id="KZZITVYgUp">
    <property role="EcuMT" value="882704352223497881" />
    <property role="TrG5h" value="JsonConst" />
    <property role="34LRSv" value="const" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="KZZITVYgUq" role="PzmwI">
      <ref role="PrY4T" node="2hQb6UNqiS8" resolve="JsonTypeLiteral" />
    </node>
    <node concept="1TJgyj" id="KZZITVYgUs" role="1TKVEi">
      <property role="IQ2ns" value="882704352223497884" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tay9:3QNkN21Fl49" resolve="IJsonValue" />
    </node>
  </node>
</model>

