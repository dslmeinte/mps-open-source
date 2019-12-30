<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:85e6c920-f9a2-49eb-b9cd-5d4f39c5a122(MetaCore.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="9yr0" ref="r:3e379364-626a-45e2-b6bd-136d91176bc7(ConcernDiagrams.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="7_z3uTkm7Tk">
    <property role="EcuMT" value="8746850218552098388" />
    <property role="TrG5h" value="MetaModel" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7_z3uTkm7Tl" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="7_z3uTkm7TB" role="1TKVEi">
      <property role="IQ2ns" value="8746850218552098407" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="concerns" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="9yr0:7_z3uTkm7Th" resolve="Concern" />
    </node>
    <node concept="1TJgyj" id="5kTJBKRBo7s" role="1TKVEi">
      <property role="IQ2ns" value="6141149007614673372" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="languages" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5kTJBKRBo7g" resolve="Language" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_z3uTkm7Tn">
    <property role="EcuMT" value="8746850218552098391" />
    <property role="TrG5h" value="MetaConcept" />
    <property role="34LRSv" value="concept" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7_z3uTkm7Tt" role="PzmwI">
      <ref role="PrY4T" node="7_z3uTkm7Tq" resolve="IMetaElement" />
    </node>
    <node concept="1TJgyj" id="7_z3uTkm7Tz" role="1TKVEi">
      <property role="IQ2ns" value="8746850218552098403" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="features" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7_z3uTkm7Tw" resolve="MetaFeature" />
    </node>
  </node>
  <node concept="PlHQZ" id="7_z3uTkm7Tq">
    <property role="EcuMT" value="8746850218552098394" />
    <property role="TrG5h" value="IMetaElement" />
    <node concept="PrWs8" id="7_z3uTkm7Tr" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="7_z3uTkq$nn" role="PrDN$">
      <ref role="PrY4T" node="7_z3uTkq$nh" resolve="IDescriptive" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_z3uTkm7Tw">
    <property role="EcuMT" value="8746850218552098400" />
    <property role="TrG5h" value="MetaFeature" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7_z3uTkm7Tx" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="3LV3NC6TFwN" role="PzmwI">
      <ref role="PrY4T" node="7_z3uTkq$nh" resolve="IDescriptive" />
    </node>
  </node>
  <node concept="PlHQZ" id="7_z3uTkq$nh">
    <property role="EcuMT" value="8746850218553263569" />
    <property role="TrG5h" value="IDescriptive" />
    <node concept="1TJgyi" id="7_z3uTkq$ni" role="1TKVEl">
      <property role="IQ2nx" value="8746850218553263570" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3LV3NC6TMyp">
    <property role="EcuMT" value="4358093806309419161" />
    <property role="TrG5h" value="MetaDataType" />
    <property role="34LRSv" value="data type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3LV3NC6TMyq" role="PzmwI">
      <ref role="PrY4T" node="7_z3uTkm7Tq" resolve="IMetaElement" />
    </node>
    <node concept="PrWs8" id="3LV3NC6TMzl" role="PzmwI">
      <ref role="PrY4T" node="7_z3uTkq$nh" resolve="IDescriptive" />
    </node>
  </node>
  <node concept="1TIwiD" id="5kTJBKRBo7g">
    <property role="EcuMT" value="6141149007614673360" />
    <property role="TrG5h" value="Language" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5kTJBKRBo7q" role="1TKVEi">
      <property role="IQ2ns" value="6141149007614673370" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7_z3uTkm7Tq" resolve="IMetaElement" />
    </node>
    <node concept="PrWs8" id="5kTJBKRBo7h" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="5kTJBKRBo7m" role="PzmwI">
      <ref role="PrY4T" node="7_z3uTkq$nh" resolve="IDescriptive" />
    </node>
  </node>
</model>

