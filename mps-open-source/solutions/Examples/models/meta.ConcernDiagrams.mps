<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:59b4d2cc-b5bb-4a6f-9dd6-68d72500d139(meta.ConcernDiagrams)">
  <persistence version="9" />
  <languages>
    <use id="6cb87c60-98d4-4c56-bf5b-436b79f1a174" name="ConcernDiagrams" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="603daafe-2a66-4fb4-b473-5f80d274b3b9" name="Svg">
      <concept id="4570454118466490498" name="Svg.structure.Vector" flags="ng" index="e1Ldc">
        <property id="4570454118466491758" name="y" index="e1Lqw" />
        <property id="4570454118466491757" name="x" index="e1Lqz" />
      </concept>
    </language>
    <language id="6cb87c60-98d4-4c56-bf5b-436b79f1a174" name="ConcernDiagrams">
      <concept id="8746850218553280750" name="ConcernDiagrams.structure.ConcernDiagram" flags="ng" index="H2ok0">
        <child id="6141149007615140004" name="relations" index="1yBhVo" />
        <child id="6141149007615140002" name="concerns" index="1yBhVu" />
      </concept>
      <concept id="8746850218552098385" name="ConcernDiagrams.structure.Concern" flags="ng" index="HeReZ">
        <child id="6141149007615139998" name="center" index="1yBhVy" />
      </concept>
      <concept id="8746850218552099661" name="ConcernDiagrams.structure.ConcernRelation" flags="ng" index="HeSUz">
        <property id="8746850218552099667" name="edgeLabel" index="HeSUX" />
        <reference id="8746850218552099662" name="source" index="HeSUw" />
        <reference id="8746850218552099664" name="destination" index="HeSUY" />
      </concept>
    </language>
    <language id="6bddcac0-8923-4b31-8631-cab5d93c0b72" name="MetaCore">
      <concept id="8746850218553263569" name="MetaCore.structure.IDescriptive" flags="ng" index="H2kwZ">
        <property id="8746850218553263570" name="description" index="H2kwW" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="H2ok0" id="7OceU2_kIKU">
    <property role="TrG5h" value="Gegevens" />
    <node concept="HeReZ" id="7OceU2_l9AF" role="1yBhVu">
      <property role="TrG5h" value="Term" />
      <property role="H2kwW" value="Foo bar..." />
      <node concept="e1Ldc" id="7OceU2_l9AG" role="1yBhVy">
        <property role="e1Lqz" value="100" />
        <property role="e1Lqw" value="100" />
      </node>
    </node>
    <node concept="HeReZ" id="7OceU2_l9AB" role="1yBhVu">
      <property role="TrG5h" value="Concept" />
      <property role="H2kwW" value="Lorem ipsum..." />
      <node concept="e1Ldc" id="7OceU2_l9AC" role="1yBhVy">
        <property role="e1Lqz" value="200" />
        <property role="e1Lqw" value="200" />
      </node>
    </node>
    <node concept="HeSUz" id="7OceU2_l9AL" role="1yBhVo">
      <property role="HeSUX" value="wordt gesmurfd door" />
      <ref role="HeSUw" node="7OceU2_l9AF" resolve="Term" />
      <ref role="HeSUY" node="7OceU2_l9AB" resolve="Concept" />
    </node>
  </node>
</model>

