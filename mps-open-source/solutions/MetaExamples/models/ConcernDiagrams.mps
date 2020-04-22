<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4e6a5a6a-d556-4cc7-86b3-00e73e4bff23(ConcernDiagrams)">
  <persistence version="9" />
  <languages>
    <use id="6cb87c60-98d4-4c56-bf5b-436b79f1a174" name="ConcernDiagrams" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="603daafe-2a66-4fb4-b473-5f80d274b3b9" name="Svg">
      <concept id="4570454118466490498" name="Svg.structure.IntVector" flags="ng" index="e1Ldc">
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="H2ok0" id="5MdW_poIXbg">
    <property role="TrG5h" value="example concern diagram" />
    <node concept="HeReZ" id="5MdW_poIXbh" role="1yBhVu">
      <property role="TrG5h" value="concern1" />
      <node concept="e1Ldc" id="5MdW_poIXbi" role="1yBhVy">
        <property role="e1Lqz" value="200" />
        <property role="e1Lqw" value="200" />
      </node>
    </node>
    <node concept="HeReZ" id="5MdW_poIXbl" role="1yBhVu">
      <property role="TrG5h" value="concern2" />
      <node concept="e1Ldc" id="5MdW_poIXbm" role="1yBhVy">
        <property role="e1Lqz" value="500" />
        <property role="e1Lqw" value="500" />
      </node>
    </node>
    <node concept="HeSUz" id="5MdW_poIXbr" role="1yBhVo">
      <property role="HeSUX" value="leads to..." />
      <ref role="HeSUw" node="5MdW_poIXbh" resolve="concern1" />
      <ref role="HeSUY" node="5MdW_poIXbl" resolve="concern2" />
    </node>
  </node>
</model>

