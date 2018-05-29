<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2b296c28-6707-41cb-a18c-6d578fccbad9(JsonSchema.meta)">
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
      <concept id="2627336286585814284" name="JsonSchema.structure.JsonStringFormat" flags="ng" index="2n1H5y" />
      <concept id="2627336286585054570" name="JsonSchema.structure.JsonSchema" flags="ng" index="2n4O$4">
        <property id="2627336286585085592" name="id" index="2n4ZbQ" />
        <property id="7566064099328922588" name="title" index="15lxNE" />
        <child id="2627336286585093422" name="definitions" index="2n4X50" />
        <child id="2627336286585092228" name="contents" index="2n4XjE" />
      </concept>
      <concept id="2627336286585093430" name="JsonSchema.structure.JsonArrayDef" flags="ng" index="2n4X5o">
        <property id="2627336286585356716" name="minItems" index="2n72R2" />
        <property id="2627336286585356720" name="uniqueItems" index="2n72Ru" />
        <child id="2627336286585356718" name="itemsType" index="2n72R0" />
      </concept>
      <concept id="2627336286585093425" name="JsonSchema.structure.JsonDefinition" flags="ng" index="2n4X5v">
        <child id="2627336286585093428" name="def" index="2n4X5q" />
      </concept>
      <concept id="2627336286585092223" name="JsonSchema.structure.JsonRegularProperty" flags="ng" index="2n4Xgh" />
      <concept id="2627336286585092220" name="JsonSchema.structure.JsonObjectDef" flags="ng" index="2n4Xgi">
        <child id="2627336286585092230" name="properties" index="2n4XjC" />
        <child id="115526993871457447" name="additionalPropertiesType" index="1mdMen" />
      </concept>
      <concept id="2627336286585092235" name="JsonSchema.structure.JsonEnumerationValue" flags="ng" index="2n4Xj_" />
      <concept id="2627336286585092232" name="JsonSchema.structure.JsonEnumerationDef" flags="ng" index="2n4XjA">
        <child id="2627336286585092238" name="values" index="2n4Xjw" />
      </concept>
      <concept id="2627336286585684080" name="JsonSchema.structure.JsonStringFormats" flags="ng" index="2n6iKu">
        <child id="2627336286585814282" name="formats" index="2n1H5$" />
      </concept>
      <concept id="2627336286585684081" name="JsonSchema.structure.JsonIntegerType" flags="ng" index="2n6iKv">
        <property id="2627336286585684082" name="minimum" index="2n6iKs" />
      </concept>
      <concept id="2627336286585398777" name="JsonSchema.structure.JsonStringType" flags="ng" index="2n78An">
        <child id="2627336286585814289" name="restriction" index="2n1H5Z" />
      </concept>
      <concept id="2627336286585398785" name="JsonSchema.structure.JsonBooleanType" flags="ng" index="2n78DJ" />
      <concept id="5268022398685019987" name="JsonSchema.structure.JsonProperty" flags="ng" index="2ns3$A">
        <child id="5268022398685019990" name="type" index="2ns3$z" />
      </concept>
      <concept id="2627336286587525519" name="JsonSchema.structure.JsonReferableRef" flags="ng" index="2nZjnx">
        <reference id="2627336286587525522" name="ref" index="2nZjnW" />
      </concept>
      <concept id="7566064099329163288" name="JsonSchema.structure.JsonNumberType" flags="ng" index="15msWI" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2n4O$4" id="5uyaFvvDoEr">
    <property role="TrG5h" value="meta-schema" />
    <property role="15lxNE" value="Core schema meta-schema" />
    <property role="2n4ZbQ" value="http://json-schema.org/draft-07/schema#" />
    <node concept="2n4Xgi" id="5uyaFvvDp_a" role="2n4XjE">
      <node concept="2n4Xgh" id="5uyaFvvDp_d" role="2n4XjC">
        <property role="TrG5h" value="$id" />
        <node concept="2n78An" id="5uyaFvvDp_h" role="2ns3$z">
          <node concept="2n6iKu" id="5uyaFvvDp_q" role="2n1H5Z">
            <node concept="2n1H5y" id="5uyaFvvDp_r" role="2n1H5$">
              <property role="TrG5h" value="uri-reference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDp_$" role="2n4XjC">
        <property role="TrG5h" value="$schema" />
        <node concept="2n78An" id="5uyaFvvDp_H" role="2ns3$z">
          <node concept="2n6iKu" id="5uyaFvvDp_K" role="2n1H5Z">
            <node concept="2n1H5y" id="5uyaFvvDp_L" role="2n1H5$">
              <property role="TrG5h" value="uri" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDp_Y" role="2n4XjC">
        <property role="TrG5h" value="$ref" />
        <node concept="2n78An" id="5uyaFvvDpAb" role="2ns3$z">
          <node concept="2n6iKu" id="5uyaFvvDpAe" role="2n1H5Z">
            <node concept="2n1H5y" id="5uyaFvvDpAf" role="2n1H5$">
              <property role="TrG5h" value="uri-reference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDpA$" role="2n4XjC">
        <property role="TrG5h" value="$comment" />
        <node concept="2n78An" id="5uyaFvvDpAP" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDpB8" role="2n4XjC">
        <property role="TrG5h" value="title" />
        <node concept="2n78An" id="5uyaFvvDpBr" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDpBK" role="2n4XjC">
        <property role="TrG5h" value="description" />
        <node concept="2n78An" id="5uyaFvvDpBL" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDXqf" role="2n4XjC">
        <property role="TrG5h" value="readOnly" />
        <node concept="2n78DJ" id="5uyaFvvDXqA" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDXqZ" role="2n4XjC">
        <property role="TrG5h" value="multipleOf" />
        <node concept="2n6iKv" id="5uyaFvvDXro" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDXrN" role="2n4XjC">
        <property role="TrG5h" value="maximum" />
        <node concept="15msWI" id="5uyaFvvDXse" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDXsF" role="2n4XjC">
        <property role="TrG5h" value="exclusiveMaximum" />
        <node concept="15msWI" id="5uyaFvvDXt8" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDXtB" role="2n4XjC">
        <property role="TrG5h" value="minimum" />
        <node concept="15msWI" id="5uyaFvvDXu6" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDXuB" role="2n4XjC">
        <property role="TrG5h" value="exclusiveMinimum" />
        <node concept="15msWI" id="5uyaFvvDXv8" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDXvF" role="2n4XjC">
        <property role="TrG5h" value="maxLength" />
        <node concept="2nZjnx" id="5uyaFvvDXwe" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDp_3" resolve="nonNegativeInteger" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDXwN" role="2n4XjC">
        <property role="TrG5h" value="minLength" />
        <node concept="2nZjnx" id="5uyaFvvDXxo" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDp_3" resolve="nonNegativeInteger" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDXxZ" role="2n4XjC">
        <property role="TrG5h" value="pattern" />
        <node concept="2n78An" id="5uyaFvvDXyA" role="2ns3$z">
          <node concept="2n6iKu" id="5uyaFvvDXyD" role="2n1H5Z">
            <node concept="2n1H5y" id="5uyaFvvDXyE" role="2n1H5$">
              <property role="TrG5h" value="regex" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDXzl" role="2n4XjC">
        <property role="TrG5h" value="additionalItems" />
        <node concept="2nZjnx" id="5uyaFvvDX$0" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvDX$H" role="2n4XjC">
        <property role="TrG5h" value="items" />
        <node concept="2829fI" id="5uyaFvvFcp1" role="2ns3$z">
          <node concept="2nZjnx" id="5uyaFvvFcp3" role="2829pF">
            <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
          </node>
          <node concept="2nZjnx" id="5uyaFvvFctf" role="2829pF">
            <ref role="2nZjnW" node="5uyaFvvDoEx" resolve="schemaArray" />
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvFcvE" role="2n4XjC">
        <property role="TrG5h" value="maxItems" />
        <node concept="2nZjnx" id="5uyaFvvFcwv" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDp_3" resolve="nonNegativeInteger" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvFZnM" role="2n4XjC">
        <property role="TrG5h" value="minItems" />
        <node concept="2nZjnx" id="5uyaFvvFZo_" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDp_3" resolve="nonNegativeInteger" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvFZpq" role="2n4XjC">
        <property role="TrG5h" value="uniqueItems" />
        <node concept="2n78DJ" id="5uyaFvvFZqf" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvFZr6" role="2n4XjC">
        <property role="TrG5h" value="contains" />
        <node concept="2nZjnx" id="5uyaFvvFZrX" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGtn2" role="2n4XjC">
        <property role="TrG5h" value="maxProperties" />
        <node concept="2nZjnx" id="5uyaFvvGtnV" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDp_3" resolve="nonNegativeInteger" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGtoQ" role="2n4XjC">
        <property role="TrG5h" value="minProperties" />
        <node concept="2nZjnx" id="5uyaFvvGtpL" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDp_3" resolve="nonNegativeInteger" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGtqI" role="2n4XjC">
        <property role="TrG5h" value="required" />
        <node concept="2nZjnx" id="5uyaFvvGtrF" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDQRn" resolve="stringArray" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGtsE" role="2n4XjC">
        <property role="TrG5h" value="additionalProperties" />
        <node concept="2nZjnx" id="5uyaFvvGttD" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGtuE" role="2n4XjC">
        <property role="TrG5h" value="definitions" />
        <node concept="2n4Xgi" id="5uyaFvvGtvF" role="2ns3$z">
          <node concept="2nZjnx" id="ZBzBlPaoB" role="1mdMen">
            <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGtxk" role="2n4XjC">
        <property role="TrG5h" value="properties" />
        <node concept="2n4Xgi" id="5uyaFvvGtyn" role="2ns3$z">
          <node concept="2nZjnx" id="ZBzBlPao_" role="1mdMen">
            <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGtzs" role="2n4XjC">
        <property role="TrG5h" value="patternProperties" />
        <node concept="2n4Xgi" id="5uyaFvvGt$x" role="2ns3$z">
          <node concept="2n4Xgh" id="5uyaFvvGt$$" role="2n4XjC">
            <property role="TrG5h" value="propertyNames" />
            <node concept="2n78An" id="5uyaFvvGt$C" role="2ns3$z">
              <node concept="2n6iKu" id="5uyaFvvGt$F" role="2n1H5Z">
                <node concept="2n1H5y" id="5uyaFvvGt$G" role="2n1H5$">
                  <property role="TrG5h" value="regex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2nZjnx" id="ZBzBlOCfk" role="1mdMen">
            <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="ZBzBlOCh0" role="2n4XjC">
        <property role="TrG5h" value="propertyNames" />
        <node concept="2nZjnx" id="ZBzBlOCiH" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGt_R" role="2n4XjC">
        <property role="TrG5h" value="dependencies" />
        <node concept="2n4Xgi" id="5uyaFvvGtB2" role="2ns3$z">
          <node concept="2829fI" id="6qrN1nFr7m" role="1mdMen">
            <node concept="2nZjnx" id="6qrN1nFr7q" role="2829pF">
              <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
            </node>
            <node concept="2nZjnx" id="6qrN1nFr7w" role="2829pF">
              <ref role="2nZjnW" node="5uyaFvvDQRn" resolve="stringArray" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGtCf" role="2n4XjC">
        <property role="TrG5h" value="enum" />
        <node concept="2n4X5o" id="5uyaFvvGtDs" role="2ns3$z">
          <property role="2n72R2" value="1" />
          <property role="2n72Ru" value="true" />
          <node concept="2n78An" id="5uyaFvvGtDx" role="2n72R0" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGtEL" role="2n4XjC">
        <property role="TrG5h" value="type" />
        <node concept="2829fI" id="5uyaFvvGtG1" role="2ns3$z">
          <node concept="2nZjnx" id="5uyaFvvGtG3" role="2829pF">
            <ref role="2nZjnW" node="5uyaFvvDQQn" resolve="simpleTypes" />
          </node>
          <node concept="2n4X5o" id="5uyaFvvGut_" role="2829pF">
            <property role="2n72R2" value="1" />
            <property role="2n72Ru" value="true" />
            <node concept="2nZjnx" id="5uyaFvvGutF" role="2n72R0">
              <ref role="2nZjnW" node="5uyaFvvDQQn" resolve="simpleTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGuv0" role="2n4XjC">
        <property role="TrG5h" value="format" />
        <node concept="2n78An" id="5uyaFvvGuwl" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGuxG" role="2n4XjC">
        <property role="TrG5h" value="contentMediaType" />
        <node concept="2n78An" id="5uyaFvvGuz3" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGu$s" role="2n4XjC">
        <property role="TrG5h" value="contentEncoding" />
        <node concept="2n78An" id="5uyaFvvGu_P" role="2ns3$z" />
      </node>
      <node concept="2n4Xgh" id="6qrN1nF5ro" role="2n4XjC">
        <property role="TrG5h" value="if" />
        <node concept="2nZjnx" id="6qrN1nF5sV" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
        </node>
      </node>
      <node concept="2n4Xgh" id="6qrN1nF5uw" role="2n4XjC">
        <property role="TrG5h" value="then" />
        <node concept="2nZjnx" id="6qrN1nF5ux" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
        </node>
      </node>
      <node concept="2n4Xgh" id="6qrN1nF5w5" role="2n4XjC">
        <property role="TrG5h" value="else" />
        <node concept="2nZjnx" id="6qrN1nF5w6" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGuBg" role="2n4XjC">
        <property role="TrG5h" value="allOf" />
        <node concept="2nZjnx" id="5uyaFvvGuCF" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDoEx" resolve="schemaArray" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGuE8" role="2n4XjC">
        <property role="TrG5h" value="anyOf" />
        <node concept="2nZjnx" id="5uyaFvvGuF_" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDoEx" resolve="schemaArray" />
        </node>
      </node>
      <node concept="2n4Xgh" id="5uyaFvvGuH4" role="2n4XjC">
        <property role="TrG5h" value="oneOf" />
        <node concept="2nZjnx" id="5uyaFvvGuIz" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDoEx" resolve="schemaArray" />
        </node>
      </node>
      <node concept="2n4Xgh" id="6qrN1nF5ok" role="2n4XjC">
        <property role="TrG5h" value="not" />
        <node concept="2nZjnx" id="6qrN1nF5pP" role="2ns3$z">
          <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="5uyaFvvDoEx" role="2n4X50">
      <property role="TrG5h" value="schemaArray" />
      <node concept="2n4X5o" id="5uyaFvvDp$V" role="2n4X5q">
        <property role="2n72R2" value="1" />
        <node concept="2nZjnx" id="5uyaFvvDp_0" role="2n72R0">
          <ref role="2nZjnW" node="5uyaFvvDoEr" resolve="meta-schema" />
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="5uyaFvvDp_3" role="2n4X50">
      <property role="TrG5h" value="nonNegativeInteger" />
      <node concept="2n6iKv" id="5uyaFvvDQQk" role="2n4X5q">
        <property role="2n6iKs" value="0" />
      </node>
    </node>
    <node concept="2n4X5v" id="5uyaFvvDQQn" role="2n4X50">
      <property role="TrG5h" value="simpleTypes" />
      <node concept="2n4XjA" id="5uyaFvvDQQw" role="2n4X5q">
        <node concept="2n4Xj_" id="5uyaFvvDQQy" role="2n4Xjw">
          <property role="TrG5h" value="array" />
        </node>
        <node concept="2n4Xj_" id="5uyaFvvDQQA" role="2n4Xjw">
          <property role="TrG5h" value="boolean" />
        </node>
        <node concept="2n4Xj_" id="5uyaFvvDQQD" role="2n4Xjw">
          <property role="TrG5h" value="integer" />
        </node>
        <node concept="2n4Xj_" id="5uyaFvvDQQH" role="2n4Xjw">
          <property role="TrG5h" value="null" />
        </node>
        <node concept="2n4Xj_" id="5uyaFvvDQQM" role="2n4Xjw">
          <property role="TrG5h" value="number" />
        </node>
        <node concept="2n4Xj_" id="5uyaFvvDQQS" role="2n4Xjw">
          <property role="TrG5h" value="object" />
        </node>
        <node concept="2n4Xj_" id="5uyaFvvDQQZ" role="2n4Xjw">
          <property role="TrG5h" value="string" />
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="5uyaFvvDQRn" role="2n4X50">
      <property role="TrG5h" value="stringArray" />
      <node concept="2n4X5o" id="5uyaFvvDQRD" role="2n4X5q">
        <property role="2n72Ru" value="true" />
        <node concept="2n78An" id="5uyaFvvDQRI" role="2n72R0" />
      </node>
    </node>
  </node>
</model>

