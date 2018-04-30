<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:172a0a3c-cf76-42d5-acfe-b067dc3a6499(Examples.examples)">
  <persistence version="9" />
  <languages>
    <use id="332c9129-fd88-4f4c-a448-1f9b461e11cb" name="JsonSchema" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="332c9129-fd88-4f4c-a448-1f9b461e11cb" name="JsonSchema">
      <concept id="2627336286585814284" name="JsonSchema.structure.JsonStringFormat" flags="ng" index="2n1H5y" />
      <concept id="2627336286585814288" name="JsonSchema.structure.JsonStringPattern" flags="ng" index="2n1H5Y">
        <property id="2627336286585814293" name="pattern" index="2n1H5V" />
      </concept>
      <concept id="2627336286585054570" name="JsonSchema.structure.JsonSchemaDef" flags="ng" index="2n4O$4">
        <property id="2627336286585092167" name="description" index="2n4XgD" />
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
      <concept id="2627336286585093431" name="JsonSchema.structure.JsonSumType" flags="ng" index="2n4X5p">
        <child id="2627336286585093437" name="types" index="2n4X5j" />
      </concept>
      <concept id="2627336286585093425" name="JsonSchema.structure.JsonDefinitionDef" flags="ng" index="2n4X5v">
        <child id="2627336286585093428" name="definition" index="2n4X5q" />
      </concept>
      <concept id="2627336286585092223" name="JsonSchema.structure.JsonPropertyDef" flags="ng" index="2n4Xgh">
        <property id="2627336286585092226" name="required" index="2n4XjG" />
        <property id="7566064099329218709" name="description" index="15mDuz" />
        <child id="2627336286585094777" name="type" index="2n42Sn" />
      </concept>
      <concept id="2627336286585092220" name="JsonSchema.structure.JsonObjectDef" flags="ng" index="2n4Xgi">
        <property id="7566064099329107203" name="title" index="15meCP" />
        <child id="2627336286585092230" name="properties" index="2n4XjC" />
        <child id="7566064099328305546" name="patternProperties" index="15jaqW" />
      </concept>
      <concept id="2627336286585092235" name="JsonSchema.structure.JsonEnumerationValue" flags="ng" index="2n4Xj_" />
      <concept id="2627336286585092232" name="JsonSchema.structure.JsonEnumerationDef" flags="ng" index="2n4XjA">
        <child id="2627336286585092238" name="values" index="2n4Xjw" />
      </concept>
      <concept id="2627336286585684080" name="JsonSchema.structure.JsonStringFormats" flags="ng" index="2n6iKu">
        <child id="2627336286585814282" name="formats" index="2n1H5$" />
      </concept>
      <concept id="2627336286585684081" name="JsonSchema.structure.JsonIntegerType" flags="ng" index="2n6iKv">
        <property id="2627336286585684084" name="maximum" index="2n6iKq" />
        <property id="2627336286585684082" name="minimum" index="2n6iKs" />
      </concept>
      <concept id="2627336286585398777" name="JsonSchema.structure.JsonStringType" flags="ng" index="2n78An">
        <property id="2627336286585594716" name="pattern" index="2n6SWM" />
        <child id="2627336286585814289" name="restriction" index="2n1H5Z" />
      </concept>
      <concept id="2627336286585398785" name="JsonSchema.structure.JsonBooleanType" flags="ng" index="2n78DJ" />
      <concept id="2627336286587525519" name="JsonSchema.structure.JsonReferableRef" flags="ng" index="2nZjnx">
        <reference id="2627336286587525522" name="ref" index="2nZjnW" />
      </concept>
      <concept id="7566064099328305484" name="JsonSchema.structure.JsonPatternProperties" flags="ng" index="15japU">
        <property id="7566064099328305485" name="pattern" index="15japV" />
        <child id="7566064099328305487" name="type" index="15japT" />
      </concept>
      <concept id="7566064099329163288" name="JsonSchema.structure.JsonNumberType" flags="ng" index="15msWI">
        <property id="7566064099329388899" name="exclusiveMinimum" index="15njTl" />
      </concept>
      <concept id="7566064099329444898" name="JsonSchema.structure.JsonExternalRef" flags="ng" index="15nwck">
        <property id="7566064099329444901" name="refUri" index="15nwcj" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2n4O$4" id="2hQb6UNpvOE">
    <property role="TrG5h" value="entry" />
    <property role="2n4ZbQ" value="http://some.site.somewhere/entry-schema#" />
    <property role="2n4XgD" value="schema for an fstab entry" />
    <node concept="2n4Xgi" id="2hQb6UNpvOF" role="2n4XjE">
      <node concept="2n4Xgh" id="2hQb6UNpvOG" role="2n4XjC">
        <property role="TrG5h" value="storage" />
        <property role="2n4XjG" value="true" />
        <node concept="2n4X5p" id="6$03NoGkfyq" role="2n42Sn">
          <node concept="2nZjnx" id="6$03NoGkfys" role="2n4X5j">
            <ref role="2nZjnW" node="2hQb6UNpwuo" resolve="diskDevice" />
          </node>
          <node concept="2nZjnx" id="6$03NoGkfyz" role="2n4X5j">
            <ref role="2nZjnW" node="2hQb6UNpwus" resolve="diskUUID" />
          </node>
          <node concept="2nZjnx" id="6$03NoGkfyF" role="2n4X5j">
            <ref role="2nZjnW" node="2hQb6UNpwuy" resolve="nfs" />
          </node>
          <node concept="2nZjnx" id="6$03NoGkfyP" role="2n4X5j">
            <ref role="2nZjnW" node="2hQb6UNpwuE" resolve="tmpfs" />
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="2hQb6UNqiRY" role="2n4XjC">
        <property role="TrG5h" value="fstype" />
        <node concept="2n4XjA" id="2hQb6UNqjzA" role="2n42Sn">
          <node concept="2n4Xj_" id="2hQb6UNqjzD" role="2n4Xjw">
            <property role="TrG5h" value="ext3" />
          </node>
          <node concept="2n4Xj_" id="2hQb6UNqjzF" role="2n4Xjw">
            <property role="TrG5h" value="ext4" />
          </node>
          <node concept="2n4Xj_" id="2hQb6UNqjzI" role="2n4Xjw">
            <property role="TrG5h" value="btrfs" />
          </node>
        </node>
      </node>
      <node concept="2n4Xgh" id="2hQb6UNqE11" role="2n4XjC">
        <property role="TrG5h" value="options" />
        <node concept="2n4X5o" id="2hQb6UNqEnO" role="2n42Sn">
          <property role="2n72R2" value="1" />
          <property role="2n72Ru" value="true" />
          <node concept="2n78An" id="2hQb6UNqMyA" role="2n72R0" />
        </node>
      </node>
      <node concept="2n4Xgh" id="2hQb6UNqUnt" role="2n4XjC">
        <property role="TrG5h" value="readOnly" />
        <node concept="2n78DJ" id="2hQb6UNqUnJ" role="2n42Sn" />
      </node>
    </node>
    <node concept="2n4X5v" id="2hQb6UNpwuo" role="2n4X50">
      <property role="TrG5h" value="diskDevice" />
      <node concept="2n4Xgi" id="2hQb6UNpwup" role="2n4X5q">
        <node concept="2n4Xgh" id="2hQb6UNqUnM" role="2n4XjC">
          <property role="TrG5h" value="type" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4XjA" id="2hQb6UNqUnQ" role="2n42Sn">
            <node concept="2n4Xj_" id="2hQb6UNqUnT" role="2n4Xjw">
              <property role="TrG5h" value="disk" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="2hQb6UNqUnV" role="2n4XjC">
          <property role="TrG5h" value="device" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2hQb6UNrbVd" role="2n42Sn">
            <node concept="2n1H5Y" id="2hQb6UNsQms" role="2n1H5Z">
              <property role="2n1H5V" value="^/dev/[^/]+(/[^/]+)*$" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="2hQb6UNpwus" role="2n4X50">
      <property role="TrG5h" value="diskUUID" />
      <node concept="2n4Xgi" id="2hQb6UNpwut" role="2n4X5q">
        <node concept="2n4Xgh" id="2hQb6UNrJBb" role="2n4XjC">
          <property role="TrG5h" value="type" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4XjA" id="2hQb6UNrJBf" role="2n42Sn">
            <node concept="2n4Xj_" id="2hQb6UNrJBi" role="2n4Xjw">
              <property role="TrG5h" value="disk" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="2hQb6UNrJBo" role="2n4XjC">
          <property role="TrG5h" value="label" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2hQb6UNrJBv" role="2n42Sn">
            <property role="2n6SWM" value="^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$" />
            <node concept="2n1H5Y" id="2hQb6UNsQmu" role="2n1H5Z">
              <property role="2n1H5V" value="^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="2hQb6UNpwuy" role="2n4X50">
      <property role="TrG5h" value="nfs" />
      <node concept="2n4Xgi" id="2hQb6UNpwuz" role="2n4X5q">
        <node concept="2n4Xgh" id="2hQb6UNrJBy" role="2n4XjC">
          <property role="TrG5h" value="type" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4XjA" id="2hQb6UNrK1l" role="2n42Sn">
            <node concept="2n4Xj_" id="2hQb6UNrK1o" role="2n4Xjw">
              <property role="TrG5h" value="nfs" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="2hQb6UNrK1q" role="2n4XjC">
          <property role="TrG5h" value="remotePath" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2hQb6UNrK1x" role="2n42Sn">
            <property role="2n6SWM" value="^(/[^/]+)+$" />
            <node concept="2n1H5Y" id="2hQb6UNsQmw" role="2n1H5Z">
              <property role="2n1H5V" value="^(/[^/]+)+$" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="2hQb6UNrK1$" role="2n4XjC">
          <property role="TrG5h" value="server" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="2hQb6UNrK1H" role="2n42Sn">
            <node concept="2n6iKu" id="2hQb6UNsQmy" role="2n1H5Z">
              <node concept="2n1H5y" id="2hQb6UNsQmz" role="2n1H5$">
                <property role="TrG5h" value="hostname" />
              </node>
              <node concept="2n1H5y" id="2hQb6UNsQmA" role="2n1H5$">
                <property role="TrG5h" value="ipv4" />
              </node>
              <node concept="2n1H5y" id="2hQb6UNsQmD" role="2n1H5$">
                <property role="TrG5h" value="ipv6" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2n4X5v" id="2hQb6UNpwuE" role="2n4X50">
      <property role="TrG5h" value="tmpfs" />
      <node concept="2n4Xgi" id="2hQb6UNpwuF" role="2n4X5q">
        <node concept="2n4Xgh" id="2hQb6UNsQmP" role="2n4XjC">
          <property role="TrG5h" value="type" />
          <property role="2n4XjG" value="true" />
          <node concept="2n4XjA" id="2hQb6UNsQmT" role="2n42Sn">
            <node concept="2n4Xj_" id="2hQb6UNsQmV" role="2n4Xjw">
              <property role="TrG5h" value="tmpfs" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="2hQb6UNsQnE" role="2n4XjC">
          <property role="TrG5h" value="sizeInMB" />
          <property role="2n4XjG" value="true" />
          <node concept="2n6iKv" id="2hQb6UNsQTQ" role="2n42Sn">
            <property role="2n6iKq" value="512" />
            <property role="2n6iKs" value="16" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2n4O$4" id="2hQb6UNz6C3">
    <property role="TrG5h" value="mainEntry" />
    <node concept="2n4Xgi" id="2hQb6UNz6C4" role="2n4XjE">
      <node concept="2n4Xgh" id="2hQb6UNz6C5" role="2n4XjC">
        <property role="TrG5h" value="/" />
        <property role="2n4XjG" value="true" />
        <node concept="2nZjnx" id="2hQb6UNziLJ" role="2n42Sn">
          <ref role="2nZjnW" node="2hQb6UNpvOE" resolve="entry" />
        </node>
      </node>
      <node concept="15japU" id="6$03NoGjFXt" role="15jaqW">
        <property role="15japV" value="^(/[^/]+)+$" />
        <node concept="2nZjnx" id="6$03NoGk3D5" role="15japT">
          <ref role="2nZjnW" node="2hQb6UNpvOE" resolve="entry" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2n4O$4" id="6$03NoGlHrB">
    <property role="TrG5h" value="productSet" />
    <property role="15lxNE" value="Product set" />
    <node concept="2n4X5o" id="6$03NoGlUcX" role="2n4XjE">
      <property role="2n72Ru" value="false" />
      <node concept="2n4Xgi" id="6$03NoGlUmC" role="2n72R0">
        <property role="15meCP" value="Product" />
        <node concept="2n4Xgh" id="6$03NoGms0k" role="2n4XjC">
          <property role="TrG5h" value="id" />
          <property role="2n4XjG" value="true" />
          <property role="15mDuz" value="The unique identifier for a product" />
          <node concept="15msWI" id="6$03NoGn6p3" role="2n42Sn" />
        </node>
        <node concept="2n4Xgh" id="6$03NoGnj5f" role="2n4XjC">
          <property role="TrG5h" value="name" />
          <property role="2n4XjG" value="true" />
          <node concept="2n78An" id="6$03NoGnj5l" role="2n42Sn" />
        </node>
        <node concept="2n4Xgh" id="6$03NoGnj5o" role="2n4XjC">
          <property role="TrG5h" value="price" />
          <property role="2n4XjG" value="true" />
          <node concept="15msWI" id="6$03NoGnj5w" role="2n42Sn">
            <property role="15njTl" value="0" />
          </node>
        </node>
        <node concept="2n4Xgh" id="6$03NoGnwJm" role="2n4XjC">
          <property role="TrG5h" value="tags" />
          <node concept="2n4X5o" id="6$03NoGnwJw" role="2n42Sn">
            <property role="2n72R2" value="1" />
            <property role="2n72Ru" value="true" />
            <node concept="2n78An" id="6$03NoGnwJ_" role="2n72R0" />
          </node>
        </node>
        <node concept="2n4Xgh" id="6$03NoGnwJC" role="2n4XjC">
          <property role="TrG5h" value="dimensions" />
          <node concept="2n4Xgi" id="6$03NoGnwJP" role="2n42Sn">
            <node concept="2n4Xgh" id="6$03NoGnwJS" role="2n4XjC">
              <property role="TrG5h" value="length" />
              <property role="2n4XjG" value="true" />
              <node concept="15msWI" id="6$03NoGnwJW" role="2n42Sn" />
            </node>
            <node concept="2n4Xgh" id="6$03NoGnwJZ" role="2n4XjC">
              <property role="TrG5h" value="width" />
              <property role="2n4XjG" value="true" />
              <node concept="15msWI" id="6$03NoGnwK0" role="2n42Sn" />
            </node>
            <node concept="2n4Xgh" id="6$03NoGnwK5" role="2n4XjC">
              <property role="TrG5h" value="height" />
              <property role="2n4XjG" value="true" />
              <node concept="15msWI" id="6$03NoGnwK6" role="2n42Sn" />
            </node>
          </node>
        </node>
        <node concept="2n4Xgh" id="6$03NoGnwKd" role="2n4XjC">
          <property role="TrG5h" value="warehouseLocation" />
          <property role="15mDuz" value="Coordinates of the warehouse with the product" />
          <node concept="15nwck" id="6$03NoGnJAI" role="2n42Sn">
            <property role="15nwcj" value="http://json-schema.org/geo" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

