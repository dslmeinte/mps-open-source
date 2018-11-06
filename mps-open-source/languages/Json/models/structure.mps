<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4b82c70e-45f8-4502-a857-34e943edc354(Json.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="6" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="7862711839422615209" name="jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation" flags="ng" index="t5JxF">
        <property id="7862711839422615217" name="text" index="t5JxN" />
      </concept>
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
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
  <node concept="1TIwiD" id="3QNkN21Fl48">
    <property role="EcuMT" value="4445988724943966472" />
    <property role="TrG5h" value="JsonObject" />
    <property role="34LRSv" value="{" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3QNkN21Fl4a" role="PzmwI">
      <ref role="PrY4T" node="3QNkN21Fl49" resolve="IJsonValue" />
    </node>
    <node concept="1TJgyj" id="3QNkN21Flbb" role="1TKVEi">
      <property role="IQ2ns" value="4445988724943966923" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="pairs" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3QNkN21Fl5Z" resolve="JsonPair" />
    </node>
  </node>
  <node concept="PlHQZ" id="3QNkN21Fl49">
    <property role="EcuMT" value="4445988724943966473" />
    <property role="TrG5h" value="IJsonValue" />
  </node>
  <node concept="1TIwiD" id="3QNkN21Fl4c">
    <property role="EcuMT" value="4445988724943966476" />
    <property role="TrG5h" value="JsonArray" />
    <property role="34LRSv" value="[" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3QNkN21Fl4d" role="PzmwI">
      <ref role="PrY4T" node="3QNkN21Fl49" resolve="IJsonValue" />
    </node>
    <node concept="1TJgyj" id="3QNkN21Fl5X" role="1TKVEi">
      <property role="IQ2ns" value="4445988724943966589" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="items" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3QNkN21Fl49" resolve="IJsonValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="3QNkN21Fl4f">
    <property role="EcuMT" value="4445988724943966479" />
    <property role="TrG5h" value="JsonFile" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3QNkN21Fl4g" role="1TKVEi">
      <property role="IQ2ns" value="4445988724943966480" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3QNkN21Fl49" resolve="IJsonValue" />
    </node>
    <node concept="PrWs8" id="3QNkN21Fl4i" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3QNkN21Fl4k">
    <property role="EcuMT" value="4445988724943966484" />
    <property role="TrG5h" value="JsonNumber" />
    <property role="34LRSv" value="0" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3QNkN21Fl4n" role="PzmwI">
      <ref role="PrY4T" node="3QNkN21Fl49" resolve="IJsonValue" />
    </node>
    <node concept="1TJgyi" id="3QNkN21Fl5P" role="1TKVEl">
      <property role="IQ2nx" value="4445988724943966581" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" node="3QNkN21Fl5R" resolve="JsonNumberFormat" />
    </node>
  </node>
  <node concept="1TIwiD" id="3QNkN21Fl4l">
    <property role="EcuMT" value="4445988724943966485" />
    <property role="TrG5h" value="JsonString" />
    <property role="34LRSv" value="&quot;" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3QNkN21Fl4p" role="PzmwI">
      <ref role="PrY4T" node="3QNkN21Fl49" resolve="IJsonValue" />
    </node>
    <node concept="1TJgyi" id="3QNkN21Fl5A" role="1TKVEl">
      <property role="IQ2nx" value="4445988724943966566" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3QNkN21Fl4m">
    <property role="EcuMT" value="4445988724943966486" />
    <property role="TrG5h" value="JsonNull" />
    <property role="34LRSv" value="null" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3QNkN21Fl4r" role="PzmwI">
      <ref role="PrY4T" node="3QNkN21Fl49" resolve="IJsonValue" />
    </node>
  </node>
  <node concept="Az7Fb" id="3QNkN21Fl5R">
    <property role="TrG5h" value="JsonNumberFormat" />
    <property role="FLfZY" value="[0-9]+" />
  </node>
  <node concept="1TIwiD" id="3QNkN21Fl5Z">
    <property role="EcuMT" value="4445988724943966591" />
    <property role="TrG5h" value="JsonPair" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3QNkN21Fl62" role="1TKVEi">
      <property role="IQ2ns" value="4445988724943966594" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3QNkN21Fl49" resolve="IJsonValue" />
    </node>
    <node concept="PrWs8" id="3QNkN21G$$T" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="t5JxF" id="3QNkN21LVAQ" role="lGtFl">
      <property role="t5JxN" value="A key-value-pair for use in a JSON Object." />
    </node>
  </node>
  <node concept="1TIwiD" id="3QNkN21GywT">
    <property role="EcuMT" value="4445988724944283705" />
    <property role="TrG5h" value="JsonBoolean" />
    <property role="34LRSv" value="boolean" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3QNkN21GywU" role="PzmwI">
      <ref role="PrY4T" node="3QNkN21Fl49" resolve="IJsonValue" />
    </node>
    <node concept="1TJgyi" id="3QNkN21GywX" role="1TKVEl">
      <property role="IQ2nx" value="4445988724944283709" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
</model>

