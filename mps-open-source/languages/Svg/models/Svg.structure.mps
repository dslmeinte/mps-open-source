<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:25991841-12a0-400d-8d65-d016aab8719f(Svg.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="6ltu" ref="r:43b8bd50-204c-48e6-b581-998506039531(Css.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="iuxj" ref="r:64db3a92-5968-4a73-b456-34504a2d97a6(jetbrains.mps.core.xml.structure)" implicit="true" />
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
  <node concept="1TIwiD" id="3XHwWSLl7lU">
    <property role="EcuMT" value="4570454118465041786" />
    <property role="TrG5h" value="SvgRoot" />
    <property role="34LRSv" value="svg" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3XHwWSLqD21" role="1TKVEi">
      <property role="IQ2ns" value="4570454118466490497" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dimension" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3XHwWSLqD22" resolve="Vector" />
    </node>
    <node concept="1TJgyj" id="45lrTgp$Cka" role="1TKVEi">
      <property role="IQ2ns" value="4707791667360597258" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="definitions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="45lrTgpzOU2" resolve="SvgDefinition" />
    </node>
    <node concept="1TJgyj" id="3XHwWSLtwQX" role="1TKVEi">
      <property role="IQ2ns" value="4570454118467243453" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3XHwWSLqDps" resolve="SvgElement" />
    </node>
    <node concept="1TJgyj" id="3XHwWSLqDoW" role="1TKVEi">
      <property role="IQ2ns" value="4570454118466491964" />
      <property role="20kJfa" value="css" />
      <ref role="20lvS9" to="6ltu:38dU5mNYAa4" resolve="CssFile" />
    </node>
    <node concept="PrWs8" id="7OceU2_m6rq" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3XHwWSLqD22">
    <property role="EcuMT" value="4570454118466490498" />
    <property role="TrG5h" value="Vector" />
    <property role="34LRSv" value="xy" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3XHwWSLqDlH" role="1TKVEl">
      <property role="IQ2nx" value="4570454118466491757" />
      <property role="TrG5h" value="x" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3XHwWSLqDlI" role="1TKVEl">
      <property role="IQ2nx" value="4570454118466491758" />
      <property role="TrG5h" value="y" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="PlHQZ" id="3XHwWSLqDps">
    <property role="EcuMT" value="4570454118466491996" />
    <property role="TrG5h" value="SvgElement" />
  </node>
  <node concept="1TIwiD" id="3XHwWSLqDqj">
    <property role="EcuMT" value="4570454118466492051" />
    <property role="TrG5h" value="SvgGroup" />
    <property role="34LRSv" value="g" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3XHwWSLqDqk" role="PzmwI">
      <ref role="PrY4T" node="3XHwWSLqDps" resolve="SvgElement" />
    </node>
    <node concept="PrWs8" id="3XHwWSLt_Tb" role="PzmwI">
      <ref role="PrY4T" node="3XHwWSLt_T9" resolve="CanHaveClassNames" />
    </node>
    <node concept="1TJgyj" id="7_z3uTkhmZm" role="1TKVEi">
      <property role="IQ2ns" value="8746850218550849494" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3XHwWSLqDps" resolve="SvgElement" />
    </node>
    <node concept="1TJgyj" id="45lrTgpKNYz" role="1TKVEi">
      <property role="IQ2ns" value="4707791667363790755" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="translate" />
      <ref role="20lvS9" node="3XHwWSLqD22" resolve="Vector" />
    </node>
  </node>
  <node concept="1TIwiD" id="3XHwWSLrYWS">
    <property role="EcuMT" value="4570454118466842424" />
    <property role="TrG5h" value="LiteralXmlContent" />
    <property role="34LRSv" value="literal" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3XHwWSLrYWT" role="PzmwI">
      <ref role="PrY4T" node="3XHwWSLqDps" resolve="SvgElement" />
    </node>
    <node concept="1TJgyj" id="3XHwWSLrYWU" role="1TKVEi">
      <property role="IQ2ns" value="4570454118466842426" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="literalXml" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="iuxj:5M4a$b5iL2M" resolve="XmlElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="3XHwWSLt$WC">
    <property role="EcuMT" value="4570454118467260200" />
    <property role="TrG5h" value="CssClassReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3XHwWSLt$WD" role="1TKVEi">
      <property role="IQ2ns" value="4570454118467260201" />
      <property role="20kJfa" value="selector" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="6ltu:38dU5mNYAa8" resolve="CssSelector" />
    </node>
  </node>
  <node concept="PlHQZ" id="3XHwWSLt_T9">
    <property role="EcuMT" value="4570454118467264073" />
    <property role="TrG5h" value="CanHaveClassNames" />
    <node concept="1TJgyj" id="3XHwWSLt$WE" role="1TKVEi">
      <property role="IQ2ns" value="4570454118467260202" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="classNames" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3XHwWSLt$WC" resolve="CssClassReference" />
    </node>
  </node>
  <node concept="25R3W" id="5xFSyvKUzDU">
    <property role="TrG5h" value="Anchor" />
    <property role="3F6X1D" value="4945825273720097592" />
    <ref role="1H5jkz" node="5xFSyvKUzDW" resolve="top_left" />
    <node concept="25R33" id="5xFSyvKUzDW" role="25R1y">
      <property role="TrG5h" value="top_left" />
      <property role="1L1pqM" value="top-left" />
      <property role="3tVfz5" value="4945825273720097593" />
    </node>
    <node concept="25R33" id="5xFSyvKUzDX" role="25R1y">
      <property role="TrG5h" value="top_middle" />
      <property role="1L1pqM" value="top-middle" />
      <property role="3tVfz5" value="4945825273720097594" />
    </node>
    <node concept="25R33" id="5xFSyvKUzDY" role="25R1y">
      <property role="TrG5h" value="top_right" />
      <property role="1L1pqM" value="top-right" />
      <property role="3tVfz5" value="4945825273720097597" />
    </node>
    <node concept="25R33" id="5xFSyvKUzDZ" role="25R1y">
      <property role="TrG5h" value="right_middle" />
      <property role="1L1pqM" value="right-middle" />
      <property role="3tVfz5" value="4945825273720097601" />
    </node>
    <node concept="25R33" id="5xFSyvKUzE0" role="25R1y">
      <property role="TrG5h" value="bottom_right" />
      <property role="1L1pqM" value="bottom-right" />
      <property role="3tVfz5" value="4945825273720097606" />
    </node>
    <node concept="25R33" id="5xFSyvKUzE1" role="25R1y">
      <property role="TrG5h" value="bottom_middle" />
      <property role="1L1pqM" value="bottom-middle" />
      <property role="3tVfz5" value="4945825273720097612" />
    </node>
    <node concept="25R33" id="5xFSyvKUzE2" role="25R1y">
      <property role="TrG5h" value="bottom_left" />
      <property role="1L1pqM" value="bottom-left" />
      <property role="3tVfz5" value="4945825273720097619" />
    </node>
    <node concept="25R33" id="5xFSyvKUzE3" role="25R1y">
      <property role="TrG5h" value="left_middle" />
      <property role="1L1pqM" value="left-middle" />
      <property role="3tVfz5" value="4945825273720097627" />
    </node>
  </node>
  <node concept="1TIwiD" id="2TQ3RGSHDkD">
    <property role="EcuMT" value="3347880394903426345" />
    <property role="TrG5h" value="SvgCircle" />
    <property role="34LRSv" value="circle" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2TQ3RGSHDkE" role="PzmwI">
      <ref role="PrY4T" node="3XHwWSLqDps" resolve="SvgElement" />
    </node>
    <node concept="1TJgyj" id="2TQ3RGSHDkG" role="1TKVEi">
      <property role="IQ2ns" value="3347880394903426348" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="center" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3XHwWSLqD22" resolve="Vector" />
    </node>
    <node concept="1TJgyi" id="2TQ3RGSHDkI" role="1TKVEl">
      <property role="IQ2nx" value="3347880394903426350" />
      <property role="TrG5h" value="radius" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="45lrTgpzOU2">
    <property role="EcuMT" value="4707791667360386690" />
    <property role="TrG5h" value="SvgDefinition" />
    <property role="34LRSv" value="def" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="45lrTgpzOU3" role="1TKVEi">
      <property role="IQ2ns" value="4707791667360386691" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="literalXml" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="iuxj:5M4a$b5iL2M" resolve="XmlElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="45lrTgpD9DO">
    <property role="EcuMT" value="4707791667361782388" />
    <property role="TrG5h" value="SvgComment" />
    <property role="34LRSv" value="&lt;!--" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="45lrTgpD9DP" role="PzmwI">
      <ref role="PrY4T" node="3XHwWSLqDps" resolve="SvgElement" />
    </node>
    <node concept="1TJgyi" id="45lrTgpD9Ex" role="1TKVEl">
      <property role="IQ2nx" value="4707791667361782433" />
      <property role="TrG5h" value="comment" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="45lrTgpGDu8">
    <property role="EcuMT" value="4707791667362699144" />
    <property role="TrG5h" value="SvgText" />
    <property role="34LRSv" value="text" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="45lrTgpGDuB" role="PzmwI">
      <ref role="PrY4T" node="3XHwWSLqDps" resolve="SvgElement" />
    </node>
    <node concept="PrWs8" id="45lrTgpGDuG" role="PzmwI">
      <ref role="PrY4T" node="3XHwWSLt_T9" resolve="CanHaveClassNames" />
    </node>
    <node concept="1TJgyi" id="45lrTgpGDCY" role="1TKVEl">
      <property role="IQ2nx" value="4707791667362699838" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="45lrTgpGDD0" role="1TKVEi">
      <property role="IQ2ns" value="4707791667362699840" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="topLeft" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3XHwWSLqD22" resolve="Vector" />
    </node>
  </node>
  <node concept="1TIwiD" id="45lrTgpGDve">
    <property role="EcuMT" value="4707791667362699214" />
    <property role="TrG5h" value="SvgPath" />
    <property role="34LRSv" value="path" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="45lrTgpGDvf" role="PzmwI">
      <ref role="PrY4T" node="3XHwWSLqDps" resolve="SvgElement" />
    </node>
    <node concept="PrWs8" id="45lrTgpGDvM" role="PzmwI">
      <ref role="PrY4T" node="3XHwWSLt_T9" resolve="CanHaveClassNames" />
    </node>
    <node concept="1TJgyi" id="45lrTgpGDwk" role="1TKVEl">
      <property role="IQ2nx" value="4707791667362699284" />
      <property role="TrG5h" value="d" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="45lrTgpGDCu" role="1TKVEi">
      <property role="IQ2ns" value="4707791667362699806" />
      <property role="20kJfa" value="markerEnd" />
      <ref role="20lvS9" node="45lrTgpzOU2" resolve="SvgDefinition" />
    </node>
  </node>
  <node concept="1TIwiD" id="45lrTgpGDLa">
    <property role="EcuMT" value="4707791667362700362" />
    <property role="TrG5h" value="SvgRectangle" />
    <property role="34LRSv" value="rect" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="45lrTgpGDLb" role="PzmwI">
      <ref role="PrY4T" node="3XHwWSLqDps" resolve="SvgElement" />
    </node>
    <node concept="PrWs8" id="45lrTgpGDLg" role="PzmwI">
      <ref role="PrY4T" node="3XHwWSLt_T9" resolve="CanHaveClassNames" />
    </node>
    <node concept="1TJgyj" id="45lrTgpJLts" role="1TKVEi">
      <property role="IQ2ns" value="4707791667363518300" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="topLeft" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3XHwWSLqD22" resolve="Vector" />
    </node>
    <node concept="1TJgyj" id="45lrTgpNSoo" role="1TKVEi">
      <property role="IQ2ns" value="4707791667364595224" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dimensions" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3XHwWSLqD22" resolve="Vector" />
    </node>
  </node>
</model>

