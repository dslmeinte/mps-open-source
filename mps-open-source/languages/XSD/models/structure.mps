<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5453e083-42db-4474-9ebc-c4b11ee10157(XSD.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
    <node concept="1TJgyi" id="5xFSyvKSMCW" role="1TKVEl">
      <property role="TrG5h" value="base" />
      <property role="IQ2nx" value="12588432219503341" />
      <ref role="AX2Wp" node="5xFSyvKSMCa" resolve="XsdDataTypes" />
    </node>
    <node concept="1TJgyj" id="5Ll95tHJID$" role="1TKVEi">
      <property role="IQ2ns" value="6653263982431758948" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="restriction" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5Ll95tHJICX" resolve="XsdFacet" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="values" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
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
    <node concept="1TJgyi" id="5xFSyvKSMCY" role="1TKVEl">
      <property role="TrG5h" value="cardinality" />
      <property role="IQ2nx" value="6653263982433088046" />
      <ref role="AX2Wp" node="5xFSyvKSMCj" resolve="XsdCardinality" />
    </node>
    <node concept="1TJgyj" id="5Ll95tHON8K" role="1TKVEi">
      <property role="IQ2ns" value="6653263982433088048" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="typeLiteral" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
      <property role="20kJfa" value="typeDeclaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
    <node concept="1TJgyi" id="5xFSyvKSMD0" role="1TKVEl">
      <property role="TrG5h" value="dataType" />
      <property role="IQ2nx" value="6653263982433088054" />
      <ref role="AX2Wp" node="5xFSyvKSMCa" resolve="XsdDataTypes" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="typeLiteral" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="attributes" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6P6yfMfjRvf" resolve="XsdAttribute" />
    </node>
    <node concept="1TJgyj" id="3epa_KBLTbK" role="1TKVEi">
      <property role="IQ2ns" value="3718049542663803632" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contents" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="definition" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
      <property role="20kJfa" value="schema" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
    <node concept="1TJgyi" id="6ZO2Qy6hDgT" role="1TKVEl">
      <property role="IQ2nx" value="8067085376084677689" />
      <property role="TrG5h" value="emitLengths" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="nxI_60uCZJ" role="1TKVEi">
      <property role="IQ2ns" value="423824699160170479" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="imports" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="nxI_60tnH4" resolve="XsdImport" />
    </node>
    <node concept="1TJgyj" id="nxI_60uCZK" role="1TKVEi">
      <property role="IQ2ns" value="423824699160170480" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="declarations" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6hkHye_VsFq" resolve="XsdDeclaration" />
    </node>
    <node concept="PrWs8" id="zT7KcIBrwm" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="6GtTJsVQjWB">
    <property role="EcuMT" value="7718579285918301991" />
    <property role="3GE5qa" value="facets" />
    <property role="TrG5h" value="XsdRangeEnd" />
    <property role="34LRSv" value="max/min-Ex/Inclusive" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6GtTJsVQjWC" role="1TKVEl">
      <property role="IQ2nx" value="7718579285918301992" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="DmPLYxqw4O" role="1TKVEl">
      <property role="IQ2nx" value="745019319228432692" />
      <property role="TrG5h" value="max" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="6GtTJsVQjWE" role="1TKVEl">
      <property role="IQ2nx" value="7718579285918301994" />
      <property role="TrG5h" value="exclusive" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="DmPLYxqwvD" role="PzmwI">
      <ref role="PrY4T" node="5Ll95tHJICX" resolve="XsdFacet" />
    </node>
  </node>
  <node concept="25R3W" id="5xFSyvKSMCa">
    <property role="TrG5h" value="XsdDataTypes" />
    <property role="3GE5qa" value="other" />
    <property role="3F6X1D" value="12588432219503332" />
    <ref role="1H5jkz" node="5xFSyvKSMCc" resolve="string" />
    <node concept="25R33" id="5xFSyvKSMCc" role="25R1y">
      <property role="TrG5h" value="string" />
      <property role="3tVfz5" value="12588432219503333" />
    </node>
    <node concept="25R33" id="5xFSyvKSMCd" role="25R1y">
      <property role="TrG5h" value="boolean" />
      <property role="3tVfz5" value="12588432219503334" />
    </node>
    <node concept="25R33" id="5xFSyvKSMCe" role="25R1y">
      <property role="TrG5h" value="date" />
      <property role="3tVfz5" value="6653263982433162601" />
    </node>
    <node concept="25R33" id="5xFSyvKSMCf" role="25R1y">
      <property role="TrG5h" value="dateTime" />
      <property role="3tVfz5" value="12588432219503337" />
    </node>
    <node concept="25R33" id="5xFSyvKSMCg" role="25R1y">
      <property role="TrG5h" value="integer" />
      <property role="3tVfz5" value="6653263982432314188" />
    </node>
    <node concept="25R33" id="5xFSyvKSMCh" role="25R1y">
      <property role="TrG5h" value="float" />
      <property role="3tVfz5" value="6653263982432314193" />
    </node>
    <node concept="25R33" id="5xFSyvKSMCi" role="25R1y">
      <property role="TrG5h" value="long" />
      <property role="3tVfz5" value="120656147455632366" />
    </node>
  </node>
  <node concept="25R3W" id="5xFSyvKSMCj">
    <property role="TrG5h" value="XsdCardinality" />
    <property role="3GE5qa" value="complex" />
    <property role="3F6X1D" value="6653263982433088037" />
    <ref role="1H5jkz" node="5xFSyvKSMCl" resolve="required" />
    <node concept="25R33" id="5xFSyvKSMCl" role="25R1y">
      <property role="TrG5h" value="required" />
      <property role="1L1pqM" value="1" />
      <property role="3tVfz5" value="6653263982433088042" />
    </node>
    <node concept="25R33" id="5xFSyvKSMCm" role="25R1y">
      <property role="TrG5h" value="optional" />
      <property role="1L1pqM" value="0..1" />
      <property role="3tVfz5" value="6653263982433323249" />
    </node>
    <node concept="25R33" id="5xFSyvKSMCn" role="25R1y">
      <property role="TrG5h" value="many" />
      <property role="1L1pqM" value="0..n" />
      <property role="3tVfz5" value="6653263982433088039" />
    </node>
  </node>
</model>

