<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8bf53499-f4d2-466a-a236-746e30009c7c(ConcernDiagrams.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="9yr0" ref="r:3e379364-626a-45e2-b6bd-136d91176bc7(ConcernDiagrams.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8401916545537438642" name="jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory" flags="ng" index="1dDu$B">
        <reference id="8401916545537438643" name="kind" index="1dDu$A" />
      </concept>
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="6DcOmRxqyE">
    <ref role="1M2myG" to="9yr0:7_z3uTkm8dd" resolve="ConcernRelation" />
    <node concept="1N5Pfh" id="6DcOmRxqzs" role="1Mr941">
      <ref role="1N5Vy1" to="9yr0:7_z3uTkm8de" resolve="source" />
      <node concept="1dDu$B" id="6DcOmRxq$U" role="1N6uqs">
        <ref role="1dDu$A" to="9yr0:7_z3uTkm7Th" resolve="Concern" />
      </node>
    </node>
    <node concept="1N5Pfh" id="6DcOmRxqyF" role="1Mr941">
      <ref role="1N5Vy1" to="9yr0:7_z3uTkm8dg" resolve="destination" />
      <node concept="1dDu$B" id="6DcOmRxqzq" role="1N6uqs">
        <ref role="1dDu$A" to="9yr0:7_z3uTkm7Th" resolve="Concern" />
      </node>
    </node>
  </node>
</model>

