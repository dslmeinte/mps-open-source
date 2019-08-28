<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0fb2a1b8-0063-47ad-9b07-6462a5be9d39(WSDL.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="irkh" ref="r:5453e083-42db-4474-9ebc-c4b11ee10157(XSD.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="6hkHye_UBuE">
    <property role="EcuMT" value="7229603566060205994" />
    <property role="TrG5h" value="Operation" />
    <property role="34LRSv" value="operation" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6hkHye_UBuF" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="3epa_KBLRvm" role="1TKVEi">
      <property role="IQ2ns" value="3718049542663796694" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="response" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="irkh:3epa_KBLTbI" resolve="XsdComplexTypeBody" />
    </node>
    <node concept="1TJgyj" id="3epa_KBLRvo" role="1TKVEi">
      <property role="IQ2ns" value="3718049542663796696" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="request" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="irkh:3epa_KBLTbI" resolve="XsdComplexTypeBody" />
    </node>
  </node>
  <node concept="1TIwiD" id="6hkHye_Tdgg">
    <property role="EcuMT" value="7229603566059836432" />
    <property role="TrG5h" value="WebService" />
    <property role="34LRSv" value="Web service" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="nxI_60tVQ9" role="1TKVEi">
      <property role="IQ2ns" value="423824699159985545" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="schemaBody" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="irkh:nxI_60uCZI" resolve="XsdSchemaBody" />
    </node>
    <node concept="PrWs8" id="6hkHye_Tsbu" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="zT7KcIBATc" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyi" id="6hkHye_TsmV" role="1TKVEl">
      <property role="IQ2nx" value="7229603566059898299" />
      <property role="TrG5h" value="namespaceUri" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="zT7KcJGJ_3" role="1TKVEl">
      <property role="IQ2nx" value="646582120049998147" />
      <property role="TrG5h" value="emitLengths" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="6hkHye_UBvc" role="1TKVEi">
      <property role="IQ2ns" value="7229603566060206028" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="operations" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6hkHye_UBuE" resolve="Operation" />
    </node>
  </node>
</model>

