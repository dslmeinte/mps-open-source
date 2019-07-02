<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5453e083-42db-4474-9ebc-c4b11ee10157(XSD.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="7" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <property id="1197591154882" name="memberIdentifierPolicy" index="3lZH7k" />
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="GIhN6I5Rs">
    <property role="EcuMT" value="12588432219463132" />
    <property role="TrG5h" value="XsdSchema" />
    <property role="34LRSv" value="XSD schema" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="topLevel" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1QtHe4MIOSQ" role="1TKVEl">
      <property role="IQ2nx" value="2134060677755260470" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="GIhN6I5Rt" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="nxI_60uCZN" role="1TKVEi">
      <property role="IQ2ns" value="423824699160170483" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="nxI_60uCZI" resolve="XsdSchemaBody" />
    </node>
  </node>
  <node concept="1TIwiD" id="GIhN6I5RP">
    <property role="EcuMT" value="12588432219463157" />
    <property role="TrG5h" value="XsdComplexType" />
    <property role="34LRSv" value="complex type" />
    <property role="3GE5qa" value="complex" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3epa_KBVSBT" role="PzmwI">
      <ref role="PrY4T" node="3epa_KBVSBS" resolve="XsdTypeDefinition" />
    </node>
    <node concept="PrWs8" id="nxI_60h6Uy" role="PzmwI">
      <ref role="PrY4T" node="5Ll95tHQEF5" resolve="XsdTypeLiteral" />
    </node>
    <node concept="1TJgyj" id="3epa_KBLTcx" role="1TKVEi">
      <property role="IQ2ns" value="3718049542663803681" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3epa_KBLTbI" resolve="XsdComplexTypeBody" />
    </node>
  </node>
  <node concept="1TIwiD" id="GIhN6Iasm">
    <property role="EcuMT" value="12588432219481878" />
    <property role="TrG5h" value="XsdSimpleType" />
    <property role="34LRSv" value="simple type" />
    <property role="3GE5qa" value="other" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3epa_KBVSBW" role="PzmwI">
      <ref role="PrY4T" node="3epa_KBVSBS" resolve="XsdTypeDefinition" />
    </node>
    <node concept="PrWs8" id="nxI_60h5V7" role="PzmwI">
      <ref role="PrY4T" node="5Ll95tHQEF5" resolve="XsdTypeLiteral" />
    </node>
    <node concept="1TJgyi" id="GIhN6IfFH" role="1TKVEl">
      <property role="IQ2nx" value="12588432219503341" />
      <property role="TrG5h" value="base" />
      <ref role="AX2Wp" node="GIhN6IfF$" resolve="XsdDataTypes" />
    </node>
    <node concept="1TJgyj" id="5Ll95tHJID$" role="1TKVEi">
      <property role="IQ2ns" value="6653263982431758948" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="restriction" />
      <ref role="20lvS9" node="5Ll95tHJICX" resolve="XsdFacet" />
    </node>
  </node>
  <node concept="AxPO7" id="GIhN6IfF$">
    <property role="TrG5h" value="XsdDataTypes" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <property role="3GE5qa" value="other" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="GIhN6IfF_" role="M5hS2">
      <property role="1uS6qv" value="string" />
      <property role="1uS6qo" value="string" />
    </node>
    <node concept="M4N5e" id="GIhN6IfFA" role="M5hS2">
      <property role="1uS6qv" value="boolean" />
      <property role="1uS6qo" value="boolean" />
    </node>
    <node concept="M4N5e" id="5Ll95tHP5lD" role="M5hS2">
      <property role="1uS6qo" value="date" />
      <property role="1uS6qv" value="date" />
    </node>
    <node concept="M4N5e" id="GIhN6IfFD" role="M5hS2">
      <property role="1uS6qv" value="dateTime" />
      <property role="1uS6qo" value="dateTime" />
    </node>
    <node concept="M4N5e" id="5Ll95tHLQdc" role="M5hS2">
      <property role="1uS6qo" value="integer" />
      <property role="1uS6qv" value="integer" />
    </node>
    <node concept="M4N5e" id="5Ll95tHLQdh" role="M5hS2">
      <property role="1uS6qo" value="float" />
      <property role="1uS6qv" value="float" />
    </node>
    <node concept="M4N5e" id="6GE21T3QfI" role="M5hS2">
      <property role="1uS6qo" value="long" />
      <property role="1uS6qv" value="long" />
    </node>
  </node>
  <node concept="PlHQZ" id="5Ll95tHJICX">
    <property role="EcuMT" value="6653263982431758909" />
    <property role="TrG5h" value="XsdFacet" />
    <property role="3GE5qa" value="facets" />
  </node>
  <node concept="1TIwiD" id="5Ll95tHJICY">
    <property role="EcuMT" value="6653263982431758910" />
    <property role="TrG5h" value="XsdPattern" />
    <property role="34LRSv" value="pattern" />
    <property role="3GE5qa" value="facets" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5Ll95tHJICZ" role="PzmwI">
      <ref role="PrY4T" node="5Ll95tHJICX" resolve="XsdFacet" />
    </node>
    <node concept="1TJgyi" id="5Ll95tHJID1" role="1TKVEl">
      <property role="IQ2nx" value="6653263982431758913" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Ll95tHN4hJ">
    <property role="EcuMT" value="6653263982432633967" />
    <property role="TrG5h" value="XsdEnumeration" />
    <property role="34LRSv" value="enumeration" />
    <property role="3GE5qa" value="facets" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5Ll95tHN4hK" role="PzmwI">
      <ref role="PrY4T" node="5Ll95tHJICX" resolve="XsdFacet" />
    </node>
    <node concept="1TJgyj" id="5Ll95tHN4ie" role="1TKVEi">
      <property role="IQ2ns" value="6653263982432633998" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="values" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5Ll95tHN4hO" resolve="XsdEnumerationValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Ll95tHN4hO">
    <property role="EcuMT" value="6653263982432633972" />
    <property role="TrG5h" value="XsdEnumerationValue" />
    <property role="3GE5qa" value="facets" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5Ll95tHN4hP" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="5Ll95tHOMkc">
    <property role="EcuMT" value="6653263982433084684" />
    <property role="TrG5h" value="XsdComplexContents" />
    <property role="3GE5qa" value="complex" />
  </node>
  <node concept="1TIwiD" id="5Ll95tHOMkd">
    <property role="EcuMT" value="6653263982433084685" />
    <property role="TrG5h" value="XsdChoice" />
    <property role="34LRSv" value="choice" />
    <property role="3GE5qa" value="complex" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5Ll95tHOMke" role="PzmwI">
      <ref role="PrY4T" node="5Ll95tHOMkc" resolve="XsdComplexContents" />
    </node>
    <node concept="1TJgyi" id="5Ll95tHON8I" role="1TKVEl">
      <property role="IQ2nx" value="6653263982433088046" />
      <property role="TrG5h" value="cardinality" />
      <ref role="AX2Wp" node="5Ll95tHON8_" resolve="XsdCardinality" />
    </node>
    <node concept="1TJgyj" id="5Ll95tHON8K" role="1TKVEi">
      <property role="IQ2ns" value="6653263982433088048" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5Ll95tHOMkj" resolve="XsdElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Ll95tHOMkg">
    <property role="EcuMT" value="6653263982433084688" />
    <property role="TrG5h" value="XsdSequence" />
    <property role="34LRSv" value="sequence" />
    <property role="3GE5qa" value="complex" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5Ll95tHOMkh" role="PzmwI">
      <ref role="PrY4T" node="5Ll95tHOMkc" resolve="XsdComplexContents" />
    </node>
    <node concept="1TJgyj" id="5Ll95tHON8M" role="1TKVEi">
      <property role="IQ2ns" value="6653263982433088050" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5Ll95tHOMkj" resolve="XsdElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Ll95tHOMkj">
    <property role="EcuMT" value="6653263982433084691" />
    <property role="TrG5h" value="XsdElement" />
    <property role="34LRSv" value="element" />
    <property role="3GE5qa" value="other" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6hkHye_VsFt" role="PzmwI">
      <ref role="PrY4T" node="6hkHye_VsFq" resolve="XsdDeclaration" />
    </node>
    <node concept="1TJgyj" id="5Ll95tHON8O" role="1TKVEi">
      <property role="IQ2ns" value="6653263982433088052" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="typeLiteral" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5Ll95tHQEF5" resolve="XsdTypeLiteral" />
    </node>
    <node concept="1TJgyi" id="4swNiJ3zfKZ" role="1TKVEl">
      <property role="IQ2nx" value="5125321963795708991" />
      <property role="TrG5h" value="optional" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Ll95tHOMks">
    <property role="EcuMT" value="6653263982433084700" />
    <property role="TrG5h" value="XsdTypeDeclarationRef" />
    <property role="34LRSv" value="type ref" />
    <property role="3GE5qa" value="other" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5Ll95tHQEF6" role="PzmwI">
      <ref role="PrY4T" node="5Ll95tHQEF5" resolve="XsdTypeLiteral" />
    </node>
    <node concept="1TJgyj" id="5Ll95tHOVYh" role="1TKVEi">
      <property role="IQ2ns" value="6653263982433124241" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="typeDeclaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3epa_KBVLVo" resolve="XsdTypeDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Ll95tHOMk_">
    <property role="EcuMT" value="6653263982433084709" />
    <property role="TrG5h" value="XsdDataType" />
    <property role="34LRSv" value="data type" />
    <property role="3GE5qa" value="other" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3epa_KBWdNT" role="PzmwI">
      <ref role="PrY4T" node="5Ll95tHQEF5" resolve="XsdTypeLiteral" />
    </node>
    <node concept="1TJgyi" id="5Ll95tHON8Q" role="1TKVEl">
      <property role="IQ2nx" value="6653263982433088054" />
      <property role="TrG5h" value="dataType" />
      <ref role="AX2Wp" node="GIhN6IfF$" resolve="XsdDataTypes" />
    </node>
  </node>
  <node concept="AxPO7" id="5Ll95tHON8_">
    <property role="TrG5h" value="XsdCardinality" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <property role="3GE5qa" value="complex" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="5Ll95tHON8E" role="M5hS2">
      <property role="1uS6qv" value="required" />
      <property role="1uS6qo" value="1" />
    </node>
    <node concept="M4N5e" id="5Ll95tHPGzL" role="M5hS2">
      <property role="1uS6qo" value="0..1" />
      <property role="1uS6qv" value="optional" />
    </node>
    <node concept="M4N5e" id="5Ll95tHON8B" role="M5hS2">
      <property role="1uS6qv" value="many" />
      <property role="1uS6qo" value="0..n" />
    </node>
  </node>
  <node concept="PlHQZ" id="5Ll95tHQEF5">
    <property role="EcuMT" value="6653263982433577669" />
    <property role="TrG5h" value="XsdTypeLiteral" />
    <property role="3GE5qa" value="other" />
  </node>
  <node concept="1TIwiD" id="6P6yfMfjRvf">
    <property role="EcuMT" value="7874131616821376975" />
    <property role="TrG5h" value="XsdAttribute" />
    <property role="34LRSv" value="attribute" />
    <property role="3GE5qa" value="other" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5nPH9FxCX7C" role="1TKVEi">
      <property role="IQ2ns" value="6194055439821558248" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="typeLiteral" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5Ll95tHQEF5" resolve="XsdTypeLiteral" />
    </node>
    <node concept="PrWs8" id="6P6yfMfjRvg" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="6P6yfMfjRX9" role="1TKVEl">
      <property role="IQ2nx" value="7874131616821378889" />
      <property role="TrG5h" value="optional" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="PlHQZ" id="6hkHye_VsFq">
    <property role="EcuMT" value="7229603566060423898" />
    <property role="TrG5h" value="XsdDeclaration" />
    <property role="3GE5qa" value="topLevel" />
    <node concept="PrWs8" id="6hkHye_VsFr" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3epa_KBLTbI">
    <property role="EcuMT" value="3718049542663803630" />
    <property role="TrG5h" value="XsdComplexTypeBody" />
    <property role="34LRSv" value="body" />
    <property role="3GE5qa" value="complex" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3epa_KBLTbJ" role="1TKVEi">
      <property role="IQ2ns" value="3718049542663803631" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="attributes" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="6P6yfMfjRvf" resolve="XsdAttribute" />
    </node>
    <node concept="1TJgyj" id="3epa_KBLTbK" role="1TKVEi">
      <property role="IQ2ns" value="3718049542663803632" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="5Ll95tHOMkc" resolve="XsdComplexContents" />
    </node>
  </node>
  <node concept="1TIwiD" id="3epa_KBVLVo">
    <property role="EcuMT" value="3718049542666395352" />
    <property role="TrG5h" value="XsdTypeDeclaration" />
    <property role="34LRSv" value="type definition" />
    <property role="3GE5qa" value="topLevel" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3epa_KBVLW4" role="PzmwI">
      <ref role="PrY4T" node="6hkHye_VsFq" resolve="XsdDeclaration" />
    </node>
    <node concept="1TJgyj" id="3epa_KBVLVr" role="1TKVEi">
      <property role="IQ2ns" value="3718049542666395355" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="definition" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3epa_KBVSBS" resolve="XsdTypeDefinition" />
    </node>
  </node>
  <node concept="PlHQZ" id="3epa_KBVSBS">
    <property role="EcuMT" value="3718049542666422776" />
    <property role="TrG5h" value="XsdTypeDefinition" />
    <property role="3GE5qa" value="topLevel" />
  </node>
  <node concept="1TIwiD" id="nxI_60h6UA">
    <property role="EcuMT" value="423824699156623014" />
    <property role="TrG5h" value="XsdLength" />
    <property role="34LRSv" value="length" />
    <property role="3GE5qa" value="facets" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="nxI_60h6UB" role="PzmwI">
      <ref role="PrY4T" node="5Ll95tHJICX" resolve="XsdFacet" />
    </node>
    <node concept="1TJgyi" id="nxI_60h6UD" role="1TKVEl">
      <property role="IQ2nx" value="423824699156623017" />
      <property role="TrG5h" value="maxLength" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="nxI_60tnH4">
    <property role="EcuMT" value="423824699159837508" />
    <property role="TrG5h" value="XsdImport" />
    <property role="34LRSv" value="import" />
    <property role="3GE5qa" value="topLevel" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="nxI_60tnHb" role="1TKVEi">
      <property role="IQ2ns" value="423824699159837515" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="schema" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="GIhN6I5Rs" resolve="XsdSchema" />
    </node>
    <node concept="1TJgyi" id="2VDbS_nLTaf" role="1TKVEl">
      <property role="IQ2nx" value="3380285262247989903" />
      <property role="TrG5h" value="prefix" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="nxI_60uCZI">
    <property role="EcuMT" value="423824699160170478" />
    <property role="3GE5qa" value="topLevel" />
    <property role="TrG5h" value="XsdSchemaBody" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="V$LP5N73Qz" role="1TKVEl">
      <property role="IQ2nx" value="1073201763858529699" />
      <property role="TrG5h" value="namespaceUri" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6ZO2Qy6hDgR" role="1TKVEl">
      <property role="IQ2nx" value="8067085376084677687" />
      <property role="TrG5h" value="targetFileName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6ZO2Qy6hDgS" role="1TKVEl">
      <property role="IQ2nx" value="8067085376084677688" />
      <property role="TrG5h" value="targetJavaPackage" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6ZO2Qy6hDgT" role="1TKVEl">
      <property role="IQ2nx" value="8067085376084677689" />
      <property role="TrG5h" value="emitLengths" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="nxI_60uCZJ" role="1TKVEi">
      <property role="IQ2ns" value="423824699160170479" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="imports" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="nxI_60tnH4" resolve="XsdImport" />
    </node>
    <node concept="1TJgyj" id="nxI_60uCZK" role="1TKVEi">
      <property role="IQ2ns" value="423824699160170480" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="declarations" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="6hkHye_VsFq" resolve="XsdDeclaration" />
    </node>
    <node concept="PrWs8" id="zT7KcIBrwm" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
</model>

