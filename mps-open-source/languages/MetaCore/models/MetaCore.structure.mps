<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:85e6c920-f9a2-49eb-b9cd-5d4f39c5a122(MetaCore.structure)">
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
    <property role="TrG5h" value="Concept" />
    <property role="34LRSv" value="concept" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6UwFzwhFGFh" role="PzmwI">
      <ref role="PrY4T" node="6UwFzwhFGF7" resolve="Type" />
    </node>
    <node concept="PrWs8" id="LTSTewzZlR" role="PzmwI">
      <ref role="PrY4T" node="LTSTewzZlf" resolve="LanguageElement" />
    </node>
    <node concept="1TJgyj" id="7_z3uTkm7Tz" role="1TKVEi">
      <property role="IQ2ns" value="8746850218552098403" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="features" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7_z3uTkm7Tw" resolve="Feature" />
    </node>
    <node concept="1TJgyj" id="5lOnQVy9L7u" role="1TKVEi">
      <property role="IQ2ns" value="6157651520367563230" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="superConcepts" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5lOnQVy9L6V" resolve="ConcepReference" />
    </node>
    <node concept="1TJgyi" id="5lOnQVy74W2" role="1TKVEl">
      <property role="IQ2nx" value="6157651520366857986" />
      <property role="TrG5h" value="kind" />
      <ref role="AX2Wp" node="5lOnQVy74VT" resolve="ConceptKind" />
    </node>
  </node>
  <node concept="PlHQZ" id="7_z3uTkm7Tq">
    <property role="EcuMT" value="8746850218552098394" />
    <property role="TrG5h" value="MetaElement" />
    <node concept="PrWs8" id="7_z3uTkm7Tr" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="7_z3uTkq$nn" role="PrDN$">
      <ref role="PrY4T" node="7_z3uTkq$nh" resolve="Descriptive" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_z3uTkm7Tw">
    <property role="EcuMT" value="8746850218552098400" />
    <property role="TrG5h" value="Feature" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6UwFzwhFU3d" role="PzmwI">
      <ref role="PrY4T" node="7_z3uTkm7Tq" resolve="MetaElement" />
    </node>
    <node concept="1TJgyj" id="6UwFzwhG8Jp" role="1TKVEi">
      <property role="IQ2ns" value="7971562896283962329" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6UwFzwhFV4D" resolve="TypeExpression" />
    </node>
  </node>
  <node concept="PlHQZ" id="7_z3uTkq$nh">
    <property role="EcuMT" value="8746850218553263569" />
    <property role="TrG5h" value="Descriptive" />
    <node concept="1TJgyi" id="7_z3uTkq$ni" role="1TKVEl">
      <property role="IQ2nx" value="8746850218553263570" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3LV3NC6TMyp">
    <property role="EcuMT" value="4358093806309419161" />
    <property role="TrG5h" value="DataType" />
    <property role="34LRSv" value="data type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6UwFzwhFGFd" role="PzmwI">
      <ref role="PrY4T" node="6UwFzwhFGF7" resolve="Type" />
    </node>
    <node concept="PrWs8" id="LTSTewzZlY" role="PzmwI">
      <ref role="PrY4T" node="LTSTewzZlf" resolve="LanguageElement" />
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
      <ref role="20lvS9" node="LTSTewzZlf" resolve="LanguageElement" />
    </node>
    <node concept="PrWs8" id="6UwFzwhFU3f" role="PzmwI">
      <ref role="PrY4T" node="7_z3uTkm7Tq" resolve="MetaElement" />
    </node>
  </node>
  <node concept="PlHQZ" id="6UwFzwhFGF7">
    <property role="EcuMT" value="7971562896283847367" />
    <property role="TrG5h" value="Type" />
    <node concept="PrWs8" id="6UwFzwhFGFa" role="PrDN$">
      <ref role="PrY4T" node="7_z3uTkm7Tq" resolve="MetaElement" />
    </node>
  </node>
  <node concept="PlHQZ" id="6UwFzwhFV4D">
    <property role="EcuMT" value="7971562896283906345" />
    <property role="TrG5h" value="TypeExpression" />
  </node>
  <node concept="1TIwiD" id="6UwFzwhFV4E">
    <property role="EcuMT" value="7971562896283906346" />
    <property role="TrG5h" value="TypeReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6UwFzwhFV4F" role="1TKVEi">
      <property role="IQ2ns" value="7971562896283906347" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6UwFzwhFGF7" resolve="Type" />
    </node>
    <node concept="PrWs8" id="6UwFzwhFV4H" role="PzmwI">
      <ref role="PrY4T" node="6UwFzwhFV4D" resolve="TypeExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6UwFzwhG9LB">
    <property role="EcuMT" value="7971562896283966567" />
    <property role="TrG5h" value="ListOf" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6UwFzwhG9LC" role="PzmwI">
      <ref role="PrY4T" node="6UwFzwhFV4D" resolve="TypeExpression" />
    </node>
    <node concept="1TJgyj" id="6UwFzwhG9LE" role="1TKVEi">
      <property role="IQ2ns" value="7971562896283966570" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="itemType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6UwFzwhFV4D" resolve="TypeExpression" />
    </node>
  </node>
  <node concept="PlHQZ" id="LTSTewzZlf">
    <property role="EcuMT" value="898999823830611279" />
    <property role="TrG5h" value="LanguageElement" />
  </node>
  <node concept="1TIwiD" id="LTSTewBNt7">
    <property role="EcuMT" value="898999823831611207" />
    <property role="TrG5h" value="LiteralType" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="LTSTewBNt8" role="PzmwI">
      <ref role="PrY4T" node="6UwFzwhFV4D" resolve="TypeExpression" />
    </node>
    <node concept="1TJgyj" id="LTSTewBNta" role="1TKVEi">
      <property role="IQ2ns" value="898999823831611210" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6UwFzwhFGF7" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="LTSTewCsXe">
    <property role="EcuMT" value="898999823831781198" />
    <property role="TrG5h" value="Enumeration" />
    <property role="34LRSv" value="enumeration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="LTSTewCsXf" role="PzmwI">
      <ref role="PrY4T" node="6UwFzwhFGF7" resolve="Type" />
    </node>
    <node concept="PrWs8" id="LTSTewD$WF" role="PzmwI">
      <ref role="PrY4T" node="LTSTewzZlf" resolve="LanguageElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="LTSTewDNS3">
    <property role="EcuMT" value="898999823832137219" />
    <property role="TrG5h" value="LiteralLiteralType" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="LTSTewDNSz" role="PzmwI">
      <ref role="PrY4T" node="6UwFzwhFV4D" resolve="TypeExpression" />
    </node>
    <node concept="1TJgyi" id="LTSTewDNSK" role="1TKVEl">
      <property role="IQ2nx" value="898999823832137264" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="25R3W" id="5lOnQVy74VT">
    <property role="3F6X1D" value="6157651520366857977" />
    <property role="TrG5h" value="ConceptKind" />
    <ref role="1H5jkz" node="5lOnQVy74VU" resolve="regular" />
    <node concept="25R33" id="5lOnQVy74VU" role="25R1y">
      <property role="3tVfz5" value="6157651520366857978" />
      <property role="TrG5h" value="regular" />
      <property role="1L1pqM" value="concept" />
    </node>
    <node concept="25R33" id="5lOnQVy74VV" role="25R1y">
      <property role="3tVfz5" value="6157651520366857979" />
      <property role="TrG5h" value="abstract" />
      <property role="1L1pqM" value="abstract concept" />
    </node>
    <node concept="25R33" id="5lOnQVy74VY" role="25R1y">
      <property role="3tVfz5" value="6157651520366857982" />
      <property role="TrG5h" value="interface" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lOnQVy9L6V">
    <property role="EcuMT" value="6157651520367563195" />
    <property role="TrG5h" value="ConcepReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5lOnQVy9L6W" role="1TKVEl">
      <property role="IQ2nx" value="6157651520367563196" />
      <property role="TrG5h" value="conceptName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

