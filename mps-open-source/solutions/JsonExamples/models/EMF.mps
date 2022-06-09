<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b367ce8c-48f3-485e-a8d6-582c925c0ffd(EMF)">
  <persistence version="9" />
  <languages>
    <use id="332c9129-fd88-4f4c-a448-1f9b461e11cb" name="JsonSchema" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="332c9129-fd88-4f4c-a448-1f9b461e11cb" name="JsonSchema">
      <concept id="6314656596746746251" name="JsonSchema.structure.JsonSumType" flags="ng" index="2829cW">
        <child id="6314656596746747100" name="types" index="2829pF" />
      </concept>
      <concept id="6314656596746746201" name="JsonSchema.structure.JsonAnyOf" flags="ng" index="2829fI" />
      <concept id="2627336286585054570" name="JsonSchema.structure.JsonSchema" flags="ng" index="2n4O$4">
        <child id="2627336286585093422" name="definitions" index="2n4X50" />
        <child id="2627336286585092228" name="contents" index="2n4XjE" />
      </concept>
      <concept id="2627336286585093430" name="JsonSchema.structure.JsonArrayDef" flags="ng" index="2n4X5o">
        <child id="2627336286585356718" name="itemsType" index="2n72R0" />
      </concept>
      <concept id="2627336286585093431" name="JsonSchema.structure.JsonOneOf" flags="ng" index="2n4X5p" />
      <concept id="2627336286585093425" name="JsonSchema.structure.JsonDefinition" flags="ng" index="2n4X5v">
        <child id="2627336286585093428" name="def" index="2n4X5q" />
      </concept>
      <concept id="2627336286585092223" name="JsonSchema.structure.JsonRegularProperty" flags="ng" index="2n4Xgh">
        <property id="2627336286585092226" name="required" index="2n4XjG" />
      </concept>
      <concept id="2627336286585092220" name="JsonSchema.structure.JsonObjectDef" flags="ng" index="2n4Xgi">
        <child id="2627336286585092230" name="properties" index="2n4XjC" />
        <child id="115526993871457447" name="additionalPropertiesType" index="1mdMen" />
      </concept>
      <concept id="2627336286585684081" name="JsonSchema.structure.JsonIntegerType" flags="ng" index="2n6iKv">
        <property id="2627336286585684082" name="minimum" index="2n6iKs" />
      </concept>
      <concept id="2627336286585398777" name="JsonSchema.structure.JsonStringType" flags="ng" index="2n78An" />
      <concept id="5268022398685019987" name="JsonSchema.structure.JsonProperty" flags="ng" index="2ns3$A">
        <child id="5268022398685019990" name="type" index="2ns3$z" />
      </concept>
      <concept id="2627336286587525519" name="JsonSchema.structure.JsonReferableRef" flags="ng" index="2nZjnx">
        <reference id="2627336286587525522" name="ref" index="2nZjnW" />
      </concept>
      <concept id="7743437798919565217" name="JsonSchema.structure.JsonNoneType" flags="ng" index="2VAdw7" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2n4O$4" id="3XZPegc1mnO">
    <property role="TrG5h" value="document1" />
    <node concept="2829fI" id="3XZPegc1mnQ" role="2n4XjE">
      <node concept="2nZjnx" id="3XZPegc1moe" role="2829pF">
        <ref role="2nZjnW" node="3XZPegc1mnV" resolve="EClass" />
      </node>
      <node concept="2n4X5o" id="2oHwIWH5$vw" role="2829pF">
        <node concept="2nZjnx" id="2oHwIWH5$vA" role="2n72R0">
          <ref role="2nZjnW" node="3XZPegc1mnV" resolve="EClass" />
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="3XZPegc1mnV" role="2n4X50">
      <property role="TrG5h" value="EClass" />
      <node concept="2n4Xgi" id="3XZPegc1mnZ" role="2n4X5q">
        <node concept="2n4Xgh" id="2oHwIWH2dwH" role="2n4XjC">
          <property role="TrG5h" value="eClass" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2oHwIWH2dwL" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="2oHwIWH2dwS" role="2n4XjC">
          <property role="TrG5h" value="name" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2oHwIWH2dwZ" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="2oHwIWH2dx8" role="2n4XjC">
          <property role="TrG5h" value="eStructuralFeatures" />
          <node concept="2n4X5o" id="2oHwIWH2dxh" role="2ns3$z">
            <node concept="2829fI" id="2oHwIWH2dyd" role="2n72R0">
              <node concept="2nZjnx" id="2oHwIWH2dyi" role="2829pF">
                <ref role="2nZjnW" node="2oHwIWH2dxm" resolve="EAttribute" />
              </node>
              <node concept="2nZjnx" id="2oHwIWH4qBi" role="2829pF">
                <ref role="2nZjnW" node="2oHwIWH2dyl" resolve="EReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="2oHwIWH2dxm" role="2n4X50">
      <property role="TrG5h" value="EAttribute" />
      <node concept="2n4Xgi" id="2oHwIWH2dxz" role="2n4X5q">
        <node concept="2n4Xgh" id="2oHwIWH2dxA" role="2n4XjC">
          <property role="TrG5h" value="eClass" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2oHwIWH2dxE" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="2oHwIWH2dxL" role="2n4XjC">
          <property role="TrG5h" value="name" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2oHwIWH2dxS" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="2oHwIWH2dy1" role="2n4XjC">
          <property role="TrG5h" value="eType" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2oHwIWH2dya" role="2ns3$z" />
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="2oHwIWH2dyl" role="2n4X50">
      <property role="TrG5h" value="EReference" />
      <node concept="2n4Xgi" id="2oHwIWH2dyF" role="2n4X5q">
        <node concept="2n4Xgh" id="2oHwIWH2dyI" role="2n4XjC">
          <property role="TrG5h" value="eClass" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2oHwIWH2dyJ" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="2oHwIWH2dyK" role="2n4XjC">
          <property role="TrG5h" value="name" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2oHwIWH2dyL" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="2oHwIWH2dz2" role="2n4XjC">
          <property role="TrG5h" value="upperBound" />
          <property role="2n4XjG" value="true" />
          <node concept="2n6iKv" id="2oHwIWH2dzd" role="2ns3$z">
            <property role="2n6iKs" value="-1" />
          </node>
        </node>
        <node concept="2n4Xgh" id="2oHwIWH2dyM" role="2n4XjC">
          <property role="TrG5h" value="eType" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2oHwIWH2dyN" role="2ns3$z" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2n4O$4" id="2oHwIWH5$Df">
    <property role="TrG5h" value="document2" />
    <node concept="2n4X5o" id="2oHwIWH5$DH" role="2n4XjE">
      <node concept="2nZjnx" id="2oHwIWH5$DM" role="2n72R0">
        <ref role="2nZjnW" node="2oHwIWH5$Dh" resolve="Foo" />
      </node>
    </node>
    <node concept="2n4X5v" id="2oHwIWH5$Dh" role="2n4X50">
      <property role="TrG5h" value="Foo" />
      <node concept="2n4Xgi" id="2oHwIWH5$Dl" role="2n4X5q">
        <node concept="2n4Xgh" id="2oHwIWH5$Do" role="2n4XjC">
          <property role="TrG5h" value="eClass" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2oHwIWH5$Ds" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="2oHwIWH5$Dz" role="2n4XjC">
          <property role="TrG5h" value="bar" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2oHwIWH5$DE" role="2ns3$z" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2n4O$4" id="4cj0le$DuTj">
    <property role="TrG5h" value="resource" />
    <node concept="2n4X5v" id="4cj0le$DuTl" role="2n4X50">
      <property role="TrG5h" value="EObject" />
      <node concept="2n4Xgi" id="4cj0le$DuTp" role="2n4X5q">
        <node concept="2n4Xgh" id="4cj0le$DuTs" role="2n4XjC">
          <property role="TrG5h" value="eClass" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="4cj0le$DuTw" role="2ns3$z" />
        </node>
      </node>
    </node>
    <node concept="2n4X5p" id="4cj0le$DuWZ" role="2n4XjE">
      <node concept="2nZjnx" id="4cj0le$DuX4" role="2829pF">
        <ref role="2nZjnW" node="4cj0le$DuTl" resolve="EObject" />
      </node>
      <node concept="2n4X5o" id="4cj0le$DuXa" role="2829pF">
        <node concept="2nZjnx" id="4cj0le$DuXg" role="2n72R0">
          <ref role="2nZjnW" node="4cj0le$DuTl" resolve="EObject" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2n4O$4" id="6IrDMmcILZD">
    <property role="TrG5h" value="Ecore" />
    <node concept="2nZjnx" id="6IrDMmcJyb2" role="2n4XjE">
      <ref role="2nZjnW" node="6IrDMmcILZF" resolve="EPackage" />
    </node>
    <node concept="2n4X5v" id="6IrDMmcILZF" role="2n4X50">
      <property role="TrG5h" value="EPackage" />
      <node concept="2n4Xgi" id="6IrDMmcILZJ" role="2n4X5q">
        <node concept="2VAdw7" id="6IrDMmcJy8l" role="1mdMen" />
        <node concept="2n4Xgh" id="6IrDMmcJy8n" role="2n4XjC">
          <property role="TrG5h" value="eClass" />
          <node concept="2n78An" id="6IrDMmcJy8r" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="6IrDMmcJy8y" role="2n4XjC">
          <property role="TrG5h" value="name" />
          <node concept="2n78An" id="6IrDMmcJy8D" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="6IrDMmcJy8G" role="2n4XjC">
          <property role="TrG5h" value="nsURI" />
          <node concept="2n78An" id="6IrDMmcJy8H" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="6IrDMmcJycf" role="2n4XjC">
          <property role="TrG5h" value="eClassifiers" />
          <node concept="2n4X5o" id="6IrDMmcJycq" role="2ns3$z">
            <node concept="2nZjnx" id="6IrDMmcJycv" role="2n72R0">
              <ref role="2nZjnW" node="6IrDMmcJybo" resolve="EClassifier" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="6IrDMmcJy8O" role="2n4X50">
      <property role="TrG5h" value="EClass" />
      <node concept="2n4Xgi" id="6IrDMmcJy91" role="2n4X5q">
        <node concept="2n4Xgh" id="6IrDMmcJy96" role="2n4XjC">
          <property role="TrG5h" value="eClass" />
          <node concept="2n78An" id="6IrDMmcJy97" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="6IrDMmcJy98" role="2n4XjC">
          <property role="TrG5h" value="name" />
          <node concept="2n78An" id="6IrDMmcJy99" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="6IrDMmcJy9k" role="2n4XjC">
          <property role="TrG5h" value="eStructuralFeatures" />
          <node concept="2n4X5o" id="6IrDMmcJy9t" role="2ns3$z">
            <node concept="2nZjnx" id="6IrDMmcJyb5" role="2n72R0">
              <ref role="2nZjnW" node="6IrDMmcJyao" resolve="EStructuralFeature" />
            </node>
          </node>
        </node>
        <node concept="2VAdw7" id="6IrDMmcJy94" role="1mdMen" />
      </node>
    </node>
    <node concept="2n4X5v" id="6IrDMmcJy9y" role="2n4X50">
      <property role="TrG5h" value="EAttribute" />
      <node concept="2n4Xgi" id="6IrDMmcJy9T" role="2n4X5q">
        <node concept="2n4Xgh" id="6IrDMmcJyb8" role="2n4XjC">
          <property role="TrG5h" value="eClass" />
          <node concept="2n78An" id="6IrDMmcJyb9" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="6IrDMmcJyba" role="2n4XjC">
          <property role="TrG5h" value="name" />
          <node concept="2n78An" id="6IrDMmcJybb" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="6IrDMmcJyh3" role="2n4XjC">
          <property role="TrG5h" value="eType" />
          <node concept="2n78An" id="6IrDMmcJyhc" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="6IrDMmcJyhn" role="2n4XjC">
          <property role="TrG5h" value="upperBound" />
          <property role="2n4XjG" value="true" />
          <node concept="2n6iKv" id="6IrDMmcJyho" role="2ns3$z">
            <property role="2n6iKs" value="-1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="6IrDMmcJy9W" role="2n4X50">
      <property role="TrG5h" value="EReference" />
      <node concept="2n4Xgi" id="6IrDMmcJyal" role="2n4X5q">
        <node concept="2n4Xgh" id="6IrDMmcJybg" role="2n4XjC">
          <property role="TrG5h" value="eClass" />
          <node concept="2n78An" id="6IrDMmcJybh" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="6IrDMmcJybi" role="2n4XjC">
          <property role="TrG5h" value="name" />
          <node concept="2n78An" id="6IrDMmcJybj" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="6IrDMmcJyhB" role="2n4XjC">
          <property role="TrG5h" value="eType" />
          <node concept="2n78An" id="6IrDMmcJyhC" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="6IrDMmcJyhD" role="2n4XjC">
          <property role="TrG5h" value="upperBound" />
          <property role="2n4XjG" value="true" />
          <node concept="2n6iKv" id="6IrDMmcJyhE" role="2ns3$z">
            <property role="2n6iKs" value="-1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="6IrDMmcJyao" role="2n4X50">
      <property role="TrG5h" value="EStructuralFeature" />
      <node concept="2n4X5p" id="6IrDMmcJyaN" role="2n4X5q">
        <node concept="2nZjnx" id="6IrDMmcJyaS" role="2829pF">
          <ref role="2nZjnW" node="6IrDMmcJy9y" resolve="EAttribute" />
        </node>
        <node concept="2nZjnx" id="6IrDMmcJyaY" role="2829pF">
          <ref role="2nZjnW" node="6IrDMmcJy9W" resolve="EReference" />
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="6IrDMmcJybo" role="2n4X50">
      <property role="TrG5h" value="EClassifier" />
      <node concept="2n4X5p" id="6IrDMmcJybZ" role="2n4X5q">
        <node concept="2nZjnx" id="6IrDMmcJyc4" role="2829pF">
          <ref role="2nZjnW" node="6IrDMmcJy8O" resolve="EClass" />
        </node>
      </node>
    </node>
  </node>
</model>

