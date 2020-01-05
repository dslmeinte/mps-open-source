<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:43b8bd50-204c-48e6-b581-998506039531(Css.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="38dU5mNYAa4">
    <property role="EcuMT" value="3606794331383030404" />
    <property role="TrG5h" value="CssFile" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="CSS file" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="38dU5mNYAa5" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="38dU5mNYAfG" role="1TKVEi">
      <property role="IQ2ns" value="3606794331383030764" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="groups" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="38dU5mNYAa7" resolve="CssGroup" />
    </node>
  </node>
  <node concept="1TIwiD" id="38dU5mNYAa7">
    <property role="EcuMT" value="3606794331383030407" />
    <property role="TrG5h" value="CssGroup" />
    <property role="34LRSv" value="CSS group" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="38dU5mNYAcj" role="1TKVEi">
      <property role="IQ2ns" value="3606794331383030547" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="selectors" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="5MdW_poC93A" resolve="CssSelector" />
    </node>
    <node concept="1TJgyj" id="38dU5mNYAdS" role="1TKVEi">
      <property role="IQ2ns" value="3606794331383030648" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="properties" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="38dU5mNYAaF" resolve="CssProperty" />
    </node>
  </node>
  <node concept="1TIwiD" id="38dU5mNYAaF">
    <property role="EcuMT" value="3606794331383030443" />
    <property role="TrG5h" value="CssProperty" />
    <property role="34LRSv" value="CSS property" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="38dU5mNYAaI" role="1TKVEl">
      <property role="IQ2nx" value="3606794331383030446" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="38dU5mNZEKL" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5MdW_poC92e">
    <property role="EcuMT" value="6669253075873599630" />
    <property role="TrG5h" value="CssClassSelector" />
    <property role="34LRSv" value="class selector" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5MdW_poC92f" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="5MdW_poC$OO" role="PzmwI">
      <ref role="PrY4T" node="5MdW_poC93A" resolve="CssSelector" />
    </node>
  </node>
  <node concept="1TIwiD" id="5MdW_poC931">
    <property role="EcuMT" value="6669253075873599681" />
    <property role="TrG5h" value="CssTypeSelector" />
    <property role="34LRSv" value="type selector" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5MdW_poC932" role="1TKVEl">
      <property role="IQ2nx" value="6669253075873599682" />
      <property role="TrG5h" value="elementName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="5MdW_poC$OS" role="PzmwI">
      <ref role="PrY4T" node="5MdW_poC93A" resolve="CssSelector" />
    </node>
  </node>
  <node concept="PlHQZ" id="5MdW_poC93A">
    <property role="TrG5h" value="CssSelector" />
    <property role="34LRSv" value="CSS selector" />
    <property role="EcuMT" value="3606794331383030408" />
  </node>
  <node concept="1TIwiD" id="5MdW_poSfNX">
    <property role="EcuMT" value="6669253075877821693" />
    <property role="TrG5h" value="CssDescendantCombinator" />
    <property role="34LRSv" value="descendant combinator" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5MdW_poSfNY" role="1TKVEi">
      <property role="IQ2ns" value="6669253075877821694" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5MdW_poC93A" resolve="CssSelector" />
    </node>
    <node concept="1TJgyj" id="5MdW_poSfO1" role="1TKVEi">
      <property role="IQ2ns" value="6669253075877821697" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5MdW_poC93A" resolve="CssSelector" />
    </node>
    <node concept="PrWs8" id="5MdW_poSfPL" role="PzmwI">
      <ref role="PrY4T" node="5MdW_poC93A" resolve="CssSelector" />
    </node>
  </node>
  <node concept="1TIwiD" id="4$egv0eHCeU">
    <property role="EcuMT" value="5264217513737487290" />
    <property role="TrG5h" value="CssDirectCombinator" />
    <property role="34LRSv" value="direct combinator" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4$egv0eHCeV" role="1TKVEi">
      <property role="IQ2ns" value="5264217513737487291" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5MdW_poC93A" resolve="CssSelector" />
    </node>
    <node concept="1TJgyj" id="4$egv0eHCeX" role="1TKVEi">
      <property role="IQ2ns" value="5264217513737487293" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5MdW_poC93A" resolve="CssSelector" />
    </node>
    <node concept="PrWs8" id="4$egv0eHCN_" role="PzmwI">
      <ref role="PrY4T" node="5MdW_poC93A" resolve="CssSelector" />
    </node>
  </node>
</model>

