<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:841ee125-522b-4f66-84bc-3f7ad7066d8a(Json.Json)">
  <persistence version="9" />
  <languages>
    <use id="8382542b-a045-4f73-951b-02d75ee252bf" name="Json" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="8382542b-a045-4f73-951b-02d75ee252bf" name="Json">
      <concept id="4445988724943966484" name="Json.structure.JsonInteger" flags="ng" index="2W7w8$">
        <property id="4445988724943966581" name="value" index="2W7w95" />
      </concept>
      <concept id="4445988724943966485" name="Json.structure.JsonString" flags="ng" index="2W7w8_">
        <property id="4445988724943966566" name="value" index="2W7w9m" />
      </concept>
      <concept id="4445988724943966486" name="Json.structure.JsonNull" flags="ng" index="2W7w8A" />
      <concept id="4445988724943966472" name="Json.structure.JsonObject" flags="ng" index="2W7w8S">
        <child id="4445988724943966923" name="pairs" index="2W7w7V" />
      </concept>
      <concept id="4445988724943966476" name="Json.structure.JsonArray" flags="ng" index="2W7w8W">
        <child id="4445988724943966589" name="items" index="2W7w9d" />
      </concept>
      <concept id="4445988724943966479" name="Json.structure.JsonFile" flags="ng" index="2W7w8Z">
        <child id="4445988724943966480" name="contents" index="2W7w8w" />
      </concept>
      <concept id="4445988724943966591" name="Json.structure.JsonPair" flags="ng" index="2W7w9f">
        <child id="4445988724943966594" name="value" index="2W7waM" />
      </concept>
    </language>
  </registry>
  <node concept="2W7w8Z" id="3QNkN21FoU1">
    <property role="TrG5h" value="example" />
    <node concept="2W7w8S" id="3QNkN21FoU3" role="2W7w8w">
      <node concept="2W7w9f" id="3QNkN21FrYP" role="2W7w7V">
        <property role="TrG5h" value="anArray" />
        <node concept="2W7w8W" id="3QNkN21Fv4W" role="2W7waM">
          <node concept="2W7w8W" id="3QNkN21Fya8" role="2W7w9d">
            <node concept="2W7w8S" id="3QNkN21Fyaa" role="2W7w9d">
              <node concept="2W7w9f" id="3QNkN21FyuL" role="2W7w7V">
                <property role="TrG5h" value="null" />
                <node concept="2W7w8A" id="3QNkN21FyuP" role="2W7waM" />
              </node>
              <node concept="2W7w9f" id="3QNkN21FLN9" role="2W7w7V">
                <property role="TrG5h" value="anInt" />
                <node concept="2W7w8$" id="2oHwIWH4TdN" role="2W7waM">
                  <property role="2W7w95" value="37" />
                </node>
              </node>
              <node concept="2W7w9f" id="3QNkN21FS6n" role="2W7w7V">
                <property role="TrG5h" value="aString" />
                <node concept="2W7w8_" id="3QNkN21FS6v" role="2W7waM">
                  <property role="2W7w9m" value="bar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2W7w8$" id="2oHwIWH4Te8" role="2W7w9d">
            <property role="2W7w95" value="42" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

