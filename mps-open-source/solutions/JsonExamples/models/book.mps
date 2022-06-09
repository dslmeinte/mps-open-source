<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ee962bb5-5ce8-41bd-a50f-62c374b4c182(book)">
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
      <concept id="2627336286585054570" name="JsonSchema.structure.JsonSchema" flags="ng" index="2n4O$4">
        <property id="2627336286585092167" name="description" index="2n4XgD" />
        <property id="2627336286585085592" name="id" index="2n4ZbQ" />
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
      <concept id="2627336286585092235" name="JsonSchema.structure.JsonEnumerationValue" flags="ng" index="2n4Xj_" />
      <concept id="2627336286585092232" name="JsonSchema.structure.JsonEnumerationDef" flags="ng" index="2n4XjA">
        <child id="2627336286585092238" name="values" index="2n4Xjw" />
      </concept>
      <concept id="2627336286585398777" name="JsonSchema.structure.JsonStringType" flags="ng" index="2n78An" />
      <concept id="2627336286585398785" name="JsonSchema.structure.JsonBooleanType" flags="ng" index="2n78DJ" />
      <concept id="5268022398685019987" name="JsonSchema.structure.JsonProperty" flags="ng" index="2ns3$A">
        <child id="5268022398685019990" name="type" index="2ns3$z" />
      </concept>
      <concept id="2627336286587525519" name="JsonSchema.structure.JsonReferableRef" flags="ng" index="2nZjnx">
        <reference id="2627336286587525522" name="ref" index="2nZjnW" />
      </concept>
      <concept id="7743437798919565217" name="JsonSchema.structure.JsonNoneType" flags="ng" index="2VAdw7" />
      <concept id="7566064099329163288" name="JsonSchema.structure.JsonNumberType" flags="ng" index="15msWI" />
      <concept id="882704352223497881" name="JsonSchema.structure.JsonConst" flags="ng" index="1RLJ1R">
        <child id="882704352223497884" name="value" index="1RLJ1M" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="8382542b-a045-4f73-951b-02d75ee252bf" name="Json">
      <concept id="4445988724943966485" name="Json.structure.JsonString" flags="ng" index="2W7w8_">
        <property id="4445988724943966566" name="value" index="2W7w9m" />
      </concept>
    </language>
  </registry>
  <node concept="2n4O$4" id="z0cIsL5zHB">
    <property role="TrG5h" value="low-level generic serialized AST structure" />
    <property role="2n4ZbQ" value="™" />
    <property role="2n4XgD" value="&quot;&quot;" />
    <node concept="2nZjnx" id="z0cIsL6_K2" role="2n4XjE">
      <ref role="2nZjnW" node="z0cIsL5zHD" resolve="ASTObject" />
    </node>
    <node concept="2n4X5v" id="z0cIsL5zHD" role="2n4X50">
      <property role="TrG5h" value="ASTObject" />
      <node concept="2n4Xgi" id="z0cIsL5zHH" role="2n4X5q">
        <node concept="2VAdw7" id="z0cIsL5zHK" role="1mdMen" />
        <node concept="2n4Xgh" id="z0cIsL5zHM" role="2n4XjC">
          <property role="TrG5h" value="id" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="z0cIsL5zHQ" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="z0cIsL5zHX" role="2n4XjC">
          <property role="TrG5h" value="concept" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="z0cIsL5zI4" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="z0cIsL5zId" role="2n4XjC">
          <property role="TrG5h" value="settings" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4Xgi" id="z0cIsL5zIm" role="2ns3$z">
            <node concept="2nZjnx" id="z0cIsL6_Lw" role="1mdMen">
              <ref role="2nZjnW" node="z0cIsL5zIt" resolve="ASTAnyValue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="z0cIsL5zJm" role="2n4X50">
      <property role="TrG5h" value="ASTReferenceObject" />
      <node concept="2n4Xgi" id="z0cIsL5zJG" role="2n4X5q">
        <node concept="2n4Xgh" id="z0cIsL5zJJ" role="2n4XjC">
          <property role="TrG5h" value="refId" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="z0cIsL5zJN" role="2ns3$z" />
        </node>
        <node concept="2VAdw7" id="z0cIsL5zJQ" role="1mdMen" />
      </node>
    </node>
    <node concept="2n4X5v" id="z0cIsL5zIt" role="2n4X50">
      <property role="TrG5h" value="ASTAnyValue" />
      <node concept="2n4X5p" id="z0cIsL5zIG" role="2n4X5q">
        <node concept="2n78DJ" id="z0cIsL5zIL" role="2829pF" />
        <node concept="2n78An" id="z0cIsL5zIR" role="2829pF" />
        <node concept="15msWI" id="z0cIsL6_Lo" role="2829pF" />
        <node concept="2nZjnx" id="z0cIsL5zJf" role="2829pF">
          <ref role="2nZjnW" node="z0cIsL5zHD" resolve="ASTObject" />
        </node>
        <node concept="2nZjnx" id="KZZITVYgrH" role="2829pF">
          <ref role="2nZjnW" node="z0cIsL5zJm" resolve="ASTReferenceObject" />
        </node>
        <node concept="2n4X5o" id="z0cIsL5zIZ" role="2829pF">
          <node concept="2nZjnx" id="z0cIsL5zJ6" role="2n72R0">
            <ref role="2nZjnW" node="z0cIsL5zIt" resolve="ASTAnyValue" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="6UoLykF24Ek" role="2n4X50">
      <property role="TrG5h" value="Foo" />
      <node concept="2n4Xgi" id="6UoLykF24Ep" role="2n4X5q">
        <node concept="2n4Xgh" id="6UoLykF24Er" role="2n4XjC">
          <property role="TrG5h" value="bar" />
          <node concept="2nZjnx" id="6UoLykF24Ew" role="2ns3$z">
            <ref role="2nZjnW" node="KZZITVYgvD" resolve="Data Attribute" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2n4O$4" id="KZZITVYgum">
    <property role="TrG5h" value="serialized-v1" />
    <node concept="2nZjnx" id="KZZITVYguT" role="2n4XjE">
      <ref role="2nZjnW" node="KZZITVYguo" resolve="Record Type" />
    </node>
    <node concept="2n4X5v" id="KZZITVYguo" role="2n4X50">
      <property role="TrG5h" value="Record Type" />
      <node concept="2n4Xgi" id="KZZITVYgus" role="2n4X5q">
        <node concept="2VAdw7" id="KZZITVYguv" role="1mdMen" />
        <node concept="2n4Xgh" id="KZZITVYgux" role="2n4XjC">
          <property role="TrG5h" value="id" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="KZZITVYgu_" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="KZZITVYguG" role="2n4XjC">
          <property role="TrG5h" value="concept" />
          <node concept="1RLJ1R" id="KZZITVZsbh" role="2ns3$z">
            <node concept="2W7w8_" id="KZZITVZsbm" role="1RLJ1M">
              <property role="2W7w9m" value="Record Type" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="KZZITVYgv3" role="2n4XjC">
          <property role="TrG5h" value="settings" />
          <node concept="2n4Xgi" id="KZZITVYgvd" role="2ns3$z">
            <node concept="2VAdw7" id="KZZITVYgvg" role="1mdMen" />
            <node concept="2n4Xgh" id="KZZITVYgvi" role="2n4XjC">
              <property role="TrG5h" value="name" />
              <property role="2n4XjG" value="true" />
              <node concept="2n78An" id="KZZITVYgvm" role="2ns3$z" />
            </node>
            <node concept="2n4Xgh" id="KZZITVYgvt" role="2n4XjC">
              <property role="TrG5h" value="attributes" />
              <property role="2n4XjG" value="true" />
              <node concept="2n4X5o" id="KZZITVYgv$" role="2ns3$z">
                <node concept="2nZjnx" id="KZZITVYgvX" role="2n72R0">
                  <ref role="2nZjnW" node="KZZITVYgvD" resolve="Data Attribute" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="KZZITVYgvD" role="2n4X50">
      <property role="TrG5h" value="Data Attribute" />
      <node concept="2n4Xgi" id="KZZITVYgw0" role="2n4X5q">
        <node concept="2n4Xgh" id="KZZITVYgw3" role="2n4XjC">
          <property role="TrG5h" value="id" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="KZZITVYgw4" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="KZZITVYgw5" role="2n4XjC">
          <property role="TrG5h" value="concept" />
          <property role="2n4XjG" value="true" />
          <node concept="1RLJ1R" id="KZZITW1pXa" role="2ns3$z">
            <node concept="2W7w8_" id="KZZITW1pXf" role="1RLJ1M">
              <property role="2W7w9m" value="Data Attribute" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="KZZITVYgw8" role="2n4XjC">
          <property role="TrG5h" value="settings" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4Xgi" id="KZZITVYgw9" role="2ns3$z">
            <node concept="2VAdw7" id="KZZITVYgwa" role="1mdMen" />
            <node concept="2n4Xgh" id="KZZITVYgwb" role="2n4XjC">
              <property role="TrG5h" value="name" />
              <property role="2n4XjG" value="true" />
              <node concept="2n78An" id="KZZITVYgwc" role="2ns3$z" />
            </node>
            <node concept="2n4Xgh" id="KZZITVYgwd" role="2n4XjC">
              <property role="TrG5h" value="type" />
              <property role="2n4XjG" value="true" />
              <node concept="2n4XjA" id="KZZITVYgwv" role="2ns3$z">
                <node concept="2n4Xj_" id="KZZITVYgwx" role="2n4Xjw">
                  <property role="TrG5h" value="amount" />
                </node>
                <node concept="2n4Xj_" id="KZZITVYgwL" role="2n4Xjw">
                  <property role="TrG5h" value="percentage" />
                </node>
                <node concept="2n4Xj_" id="KZZITVYgwO" role="2n4Xjw">
                  <property role="TrG5h" value="period in days" />
                </node>
              </node>
            </node>
            <node concept="2n4Xgh" id="KZZITVYgx1" role="2n4XjC">
              <property role="TrG5h" value="initial value" />
              <node concept="2nZjnx" id="KZZITVYgyz" role="2ns3$z">
                <ref role="2nZjnW" node="KZZITVYgxd" resolve="Value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2VAdw7" id="KZZITVYgEr" role="1mdMen" />
      </node>
    </node>
    <node concept="2n4X5v" id="KZZITVYgzb" role="2n4X50">
      <property role="TrG5h" value="ASTSerializedReferenceObject" />
      <node concept="2n4Xgi" id="KZZITVYg$8" role="2n4X5q">
        <node concept="2VAdw7" id="KZZITVYg$b" role="1mdMen" />
        <node concept="2n4Xgh" id="KZZITVYg$d" role="2n4XjC">
          <property role="TrG5h" value="refId" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="KZZITVYg$h" role="2ns3$z" />
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="KZZITVYgxT" role="2n4X50">
      <property role="TrG5h" value="Attribute Reference" />
      <node concept="2n4Xgi" id="KZZITVYgyA" role="2n4X5q">
        <node concept="2n4Xgh" id="KZZITVYgyD" role="2n4XjC">
          <property role="TrG5h" value="id" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="KZZITVYgyE" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="KZZITVYgyF" role="2n4XjC">
          <property role="TrG5h" value="concept" />
          <property role="2n4XjG" value="true" />
          <node concept="1RLJ1R" id="KZZITW1pXk" role="2ns3$z">
            <node concept="2W7w8_" id="KZZITW1pXp" role="1RLJ1M">
              <property role="2W7w9m" value="Attribute Reference" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="KZZITVYgyI" role="2n4XjC">
          <property role="TrG5h" value="settings" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4Xgi" id="KZZITVYgyJ" role="2ns3$z">
            <node concept="2VAdw7" id="KZZITVYgyK" role="1mdMen" />
            <node concept="2n4Xgh" id="KZZITVYgyL" role="2n4XjC">
              <property role="TrG5h" value="attribute" />
              <property role="2n4XjG" value="true" />
              <node concept="2nZjnx" id="KZZITVYg$m" role="2ns3$z">
                <ref role="2nZjnW" node="KZZITVYgzb" resolve="ASTSerializedReferenceObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2VAdw7" id="KZZITVYg_p" role="1mdMen" />
      </node>
    </node>
    <node concept="2n4X5v" id="KZZITVYg$u" role="2n4X50">
      <property role="TrG5h" value="Number Literal" />
      <node concept="2n4Xgi" id="KZZITVYg_r" role="2n4X5q">
        <node concept="2n4Xgh" id="KZZITVYg_s" role="2n4XjC">
          <property role="TrG5h" value="id" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="KZZITVYg_t" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="KZZITVYg_u" role="2n4XjC">
          <property role="TrG5h" value="concept" />
          <property role="2n4XjG" value="true" />
          <node concept="1RLJ1R" id="KZZITW1pXu" role="2ns3$z">
            <node concept="2W7w8_" id="KZZITW1pXz" role="1RLJ1M">
              <property role="2W7w9m" value="Number Literal" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="KZZITVYg_x" role="2n4XjC">
          <property role="TrG5h" value="settings" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4Xgi" id="KZZITVYg_y" role="2ns3$z">
            <node concept="2VAdw7" id="KZZITVYg_z" role="1mdMen" />
            <node concept="2n4Xgh" id="KZZITVYg_$" role="2n4XjC">
              <property role="TrG5h" value="value" />
              <property role="2n4XjG" value="true" />
              <node concept="2n78An" id="KZZITVYg_P" role="2ns3$z" />
            </node>
          </node>
        </node>
        <node concept="2VAdw7" id="KZZITVYg_A" role="1mdMen" />
      </node>
    </node>
    <node concept="2n4X5v" id="KZZITVYgxd" role="2n4X50">
      <property role="TrG5h" value="Value" />
      <node concept="2n4X5p" id="KZZITVYgxO" role="2n4X5q">
        <node concept="2nZjnx" id="KZZITVYg$r" role="2829pF">
          <ref role="2nZjnW" node="KZZITVYgxT" resolve="Attribute Reference" />
        </node>
        <node concept="2nZjnx" id="KZZITVYg_V" role="2829pF">
          <ref role="2nZjnW" node="KZZITVYg$u" resolve="Number Literal" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2n4O$4" id="KZZITVYgIR">
    <property role="TrG5h" value="serialized-v2" />
    <node concept="2nZjnx" id="KZZITVYgIS" role="2n4XjE">
      <ref role="2nZjnW" node="KZZITVYgIT" resolve="Record Type" />
    </node>
    <node concept="2n4X5v" id="KZZITVYgIT" role="2n4X50">
      <property role="TrG5h" value="Record Type" />
      <node concept="2n4Xgi" id="KZZITVYgIU" role="2n4X5q">
        <node concept="2VAdw7" id="KZZITVYgIV" role="1mdMen" />
        <node concept="2n4Xgh" id="KZZITVYgIW" role="2n4XjC">
          <property role="TrG5h" value="id" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="KZZITVYgIX" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="KZZITVYgIY" role="2n4XjC">
          <property role="TrG5h" value="concept" />
          <node concept="1RLJ1R" id="KZZITW1pXC" role="2ns3$z">
            <node concept="2W7w8_" id="KZZITW1pXH" role="1RLJ1M">
              <property role="2W7w9m" value="Record Type" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="KZZITVYgJ1" role="2n4XjC">
          <property role="TrG5h" value="settings" />
          <node concept="2n4Xgi" id="KZZITVYgJ2" role="2ns3$z">
            <node concept="2VAdw7" id="KZZITVYgJ3" role="1mdMen" />
            <node concept="2n4Xgh" id="KZZITVYgJ4" role="2n4XjC">
              <property role="TrG5h" value="name" />
              <property role="2n4XjG" value="true" />
              <node concept="2n78An" id="KZZITVYgJ5" role="2ns3$z" />
            </node>
            <node concept="2n4Xgh" id="KZZITVYgJ6" role="2n4XjC">
              <property role="TrG5h" value="attributes" />
              <property role="2n4XjG" value="true" />
              <node concept="2n4X5o" id="KZZITVYgJ7" role="2ns3$z">
                <node concept="2nZjnx" id="KZZITVYgJ8" role="2n72R0">
                  <ref role="2nZjnW" node="KZZITVYgJ9" resolve="Attribute" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="KZZITVYgJ9" role="2n4X50">
      <property role="TrG5h" value="Attribute" />
      <node concept="2n4Xgi" id="KZZITVYgJa" role="2n4X5q">
        <node concept="2n4Xgh" id="KZZITVYgJb" role="2n4XjC">
          <property role="TrG5h" value="id" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="KZZITVYgJc" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="KZZITVYgJd" role="2n4XjC">
          <property role="TrG5h" value="concept" />
          <property role="2n4XjG" value="true" />
          <node concept="1RLJ1R" id="KZZITW1EAa" role="2ns3$z">
            <node concept="2W7w8_" id="KZZITW1EA9" role="1RLJ1M">
              <property role="2W7w9m" value="Attribute" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="KZZITVYgJg" role="2n4XjC">
          <property role="TrG5h" value="settings" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4Xgi" id="KZZITVYgJh" role="2ns3$z">
            <node concept="2VAdw7" id="KZZITVYgJi" role="1mdMen" />
            <node concept="2n4Xgh" id="KZZITVYgJj" role="2n4XjC">
              <property role="TrG5h" value="name" />
              <property role="2n4XjG" value="true" />
              <node concept="2n78An" id="KZZITVYgJk" role="2ns3$z" />
            </node>
            <node concept="2n4Xgh" id="KZZITVYgJl" role="2n4XjC">
              <property role="TrG5h" value="type" />
              <property role="2n4XjG" value="true" />
              <node concept="2n4XjA" id="KZZITVYgJm" role="2ns3$z">
                <node concept="2n4Xj_" id="KZZITVYgJn" role="2n4Xjw">
                  <property role="TrG5h" value="amount" />
                </node>
                <node concept="2n4Xj_" id="KZZITVYgJo" role="2n4Xjw">
                  <property role="TrG5h" value="percentage" />
                </node>
                <node concept="2n4Xj_" id="KZZITVYgJp" role="2n4Xjw">
                  <property role="TrG5h" value="period in days" />
                </node>
              </node>
            </node>
            <node concept="2n4Xgh" id="KZZITVYgJq" role="2n4XjC">
              <property role="TrG5h" value="value" />
              <node concept="2nZjnx" id="KZZITVYgJr" role="2ns3$z">
                <ref role="2nZjnW" node="KZZITVYgJW" resolve="Value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2VAdw7" id="KZZITVYgJs" role="1mdMen" />
      </node>
    </node>
    <node concept="2n4X5v" id="KZZITVYgJt" role="2n4X50">
      <property role="TrG5h" value="ASTSerializedReferenceObject" />
      <node concept="2n4Xgi" id="KZZITVYgJu" role="2n4X5q">
        <node concept="2VAdw7" id="KZZITVYgJv" role="1mdMen" />
        <node concept="2n4Xgh" id="KZZITVYgJw" role="2n4XjC">
          <property role="TrG5h" value="refId" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="KZZITVYgJx" role="2ns3$z" />
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="KZZITVYgJy" role="2n4X50">
      <property role="TrG5h" value="Attribute Reference" />
      <node concept="2n4Xgi" id="KZZITVYgJz" role="2n4X5q">
        <node concept="2n4Xgh" id="KZZITVYgJ$" role="2n4XjC">
          <property role="TrG5h" value="id" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="KZZITVYgJ_" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="KZZITVYgJA" role="2n4XjC">
          <property role="TrG5h" value="concept" />
          <property role="2n4XjG" value="true" />
          <node concept="1RLJ1R" id="KZZITW1EAe" role="2ns3$z">
            <node concept="2W7w8_" id="KZZITW1EAd" role="1RLJ1M">
              <property role="2W7w9m" value="Attribute Reference" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="KZZITVYgJD" role="2n4XjC">
          <property role="TrG5h" value="settings" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4Xgi" id="KZZITVYgJE" role="2ns3$z">
            <node concept="2VAdw7" id="KZZITVYgJF" role="1mdMen" />
            <node concept="2n4Xgh" id="KZZITVYgJG" role="2n4XjC">
              <property role="TrG5h" value="attribute" />
              <property role="2n4XjG" value="true" />
              <node concept="2nZjnx" id="KZZITVYgJH" role="2ns3$z">
                <ref role="2nZjnW" node="KZZITVYgJt" resolve="ASTSerializedReferenceObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2VAdw7" id="KZZITVYgJI" role="1mdMen" />
      </node>
    </node>
    <node concept="2n4X5v" id="KZZITVYgK0" role="2n4X50">
      <property role="TrG5h" value="Binary Operation" />
      <node concept="2n4Xgi" id="KZZITVYgLb" role="2n4X5q">
        <node concept="2n4Xgh" id="KZZITVYgLc" role="2n4XjC">
          <property role="TrG5h" value="id" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="KZZITVYgLd" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="KZZITVYgLe" role="2n4XjC">
          <property role="TrG5h" value="concept" />
          <property role="2n4XjG" value="true" />
          <node concept="1RLJ1R" id="KZZITW1EAi" role="2ns3$z">
            <node concept="2W7w8_" id="KZZITW1EAh" role="1RLJ1M">
              <property role="2W7w9m" value="Attribute Reference" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="KZZITVYgLh" role="2n4XjC">
          <property role="TrG5h" value="settings" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4Xgi" id="KZZITVYgLi" role="2ns3$z">
            <node concept="2VAdw7" id="KZZITVYgLj" role="1mdMen" />
            <node concept="2n4Xgh" id="KZZITVYgLk" role="2n4XjC">
              <property role="TrG5h" value="left" />
              <property role="2n4XjG" value="true" />
              <node concept="2nZjnx" id="KZZITVYgLz" role="2ns3$z">
                <ref role="2nZjnW" node="KZZITVYgJW" resolve="Value" />
              </node>
            </node>
            <node concept="2n4Xgh" id="KZZITVYgLM" role="2n4XjC">
              <property role="TrG5h" value="operator" />
              <property role="2n4XjG" value="true" />
              <node concept="2n4XjA" id="KZZITVYgLV" role="2ns3$z">
                <node concept="2n4Xj_" id="KZZITVYgLX" role="2n4Xjw">
                  <property role="TrG5h" value="+" />
                </node>
                <node concept="2n4Xj_" id="KZZITVYgM1" role="2n4Xjw">
                  <property role="TrG5h" value="of" />
                </node>
              </node>
            </node>
            <node concept="2n4Xgh" id="KZZITVYgLA" role="2n4XjC">
              <property role="TrG5h" value="right" />
              <property role="2n4XjG" value="true" />
              <node concept="2nZjnx" id="KZZITVYgLB" role="2ns3$z">
                <ref role="2nZjnW" node="KZZITVYgJW" resolve="Value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2VAdw7" id="KZZITVYgLm" role="1mdMen" />
      </node>
    </node>
    <node concept="2n4X5v" id="KZZITVYgJJ" role="2n4X50">
      <property role="TrG5h" value="Number Literal" />
      <node concept="2n4Xgi" id="KZZITVYgJK" role="2n4X5q">
        <node concept="2n4Xgh" id="KZZITVYgJL" role="2n4XjC">
          <property role="TrG5h" value="id" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="KZZITVYgJM" role="2ns3$z" />
        </node>
        <node concept="2n4Xgh" id="KZZITVYgJN" role="2n4XjC">
          <property role="TrG5h" value="concept" />
          <property role="2n4XjG" value="true" />
          <node concept="1RLJ1R" id="KZZITW1EAm" role="2ns3$z">
            <node concept="2W7w8_" id="KZZITW1EAl" role="1RLJ1M">
              <property role="2W7w9m" value="Number Literal" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="KZZITVYgJQ" role="2n4XjC">
          <property role="TrG5h" value="settings" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4Xgi" id="KZZITVYgJR" role="2ns3$z">
            <node concept="2VAdw7" id="KZZITVYgJS" role="1mdMen" />
            <node concept="2n4Xgh" id="KZZITVYgJT" role="2n4XjC">
              <property role="TrG5h" value="value" />
              <property role="2n4XjG" value="true" />
              <node concept="2n78An" id="KZZITVYgJU" role="2ns3$z" />
            </node>
          </node>
        </node>
        <node concept="2VAdw7" id="KZZITVYgJV" role="1mdMen" />
      </node>
    </node>
    <node concept="2n4X5v" id="KZZITVYgJW" role="2n4X50">
      <property role="TrG5h" value="Value" />
      <node concept="2n4X5p" id="KZZITVYgJX" role="2n4X5q">
        <node concept="2nZjnx" id="KZZITVYgJY" role="2829pF">
          <ref role="2nZjnW" node="KZZITVYgJy" resolve="Attribute Reference" />
        </node>
        <node concept="2nZjnx" id="KZZITW1EAt" role="2829pF">
          <ref role="2nZjnW" node="KZZITVYgK0" resolve="Binary Operation" />
        </node>
        <node concept="2nZjnx" id="KZZITVYgJZ" role="2829pF">
          <ref role="2nZjnW" node="KZZITVYgJJ" resolve="Number Literal" />
        </node>
      </node>
    </node>
  </node>
</model>

