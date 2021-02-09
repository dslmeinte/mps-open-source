<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:941513b4-0122-44f9-80db-a92f73ace1a1(JsonSchema.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="64hz" ref="r:eca5c7f5-86ab-4d3c-9b6b-cf6848ecd9e6(JsonSchema.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tay9" ref="r:4b82c70e-45f8-4502-a857-34e943edc354(Json.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="2S6QgY" id="2hQb6UNrbVg">
    <property role="TrG5h" value="toggleRequiredForRegularProperty" />
    <ref role="2ZfgGC" to="64hz:2hQb6UNpvxZ" resolve="JsonRegularProperty" />
    <node concept="2S6ZIM" id="2hQb6UNrbVh" role="2ZfVej">
      <node concept="3clFbS" id="2hQb6UNrbVi" role="2VODD2">
        <node concept="3clFbF" id="2hQb6UNrjmf" role="3cqZAp">
          <node concept="3cpWs3" id="2hQb6UNrkSP" role="3clFbG">
            <node concept="1eOMI4" id="2hQb6UNrl44" role="3uHU7w">
              <node concept="3K4zz7" id="2hQb6UNrm$w" role="1eOMHV">
                <node concept="Xl_RD" id="2hQb6UNrmK3" role="3K4E3e">
                  <property role="Xl_RC" value="optional (non-required)" />
                </node>
                <node concept="Xl_RD" id="2hQb6UNroRF" role="3K4GZi">
                  <property role="Xl_RC" value="required" />
                </node>
                <node concept="2OqwBi" id="2hQb6UNrlw3" role="3K4Cdx">
                  <node concept="2Sf5sV" id="2hQb6UNrlfi" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2hQb6UNrlVx" role="2OqNvi">
                    <ref role="3TsBF5" to="64hz:2hQb6UNpvy2" resolve="required" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2hQb6UNrjme" role="3uHU7B">
              <property role="Xl_RC" value="Make this property " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2hQb6UNrbVj" role="2ZfgGD">
      <node concept="3clFbS" id="2hQb6UNrbVk" role="2VODD2">
        <node concept="3clFbF" id="2hQb6UNrgYR" role="3cqZAp">
          <node concept="37vLTI" id="2hQb6UNrhNl" role="3clFbG">
            <node concept="3fqX7Q" id="2hQb6UNrhNE" role="37vLTx">
              <node concept="2OqwBi" id="2hQb6UNri3N" role="3fr31v">
                <node concept="2Sf5sV" id="2hQb6UNrhTV" role="2Oq$k0" />
                <node concept="3TrcHB" id="2hQb6UNrimI" role="2OqNvi">
                  <ref role="3TsBF5" to="64hz:2hQb6UNpvy2" resolve="required" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2hQb6UNrh6F" role="37vLTJ">
              <node concept="2Sf5sV" id="2hQb6UNrgYQ" role="2Oq$k0" />
              <node concept="3TrcHB" id="2hQb6UNrhns" role="2OqNvi">
                <ref role="3TsBF5" to="64hz:2hQb6UNpvy2" resolve="required" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6$03NoGm5Xx">
    <property role="TrG5h" value="toggleUniqueItems" />
    <ref role="2ZfgGC" to="64hz:2hQb6UNpvOQ" resolve="JsonArrayDef" />
    <node concept="2S6ZIM" id="6$03NoGm5Xy" role="2ZfVej">
      <node concept="3clFbS" id="6$03NoGm5Xz" role="2VODD2">
        <node concept="3clFbF" id="6$03NoGm6Zt" role="3cqZAp">
          <node concept="3cpWs3" id="6$03NoGmbCH" role="3clFbG">
            <node concept="Xl_RD" id="6$03NoGmbCN" role="3uHU7w">
              <property role="Xl_RC" value="unique" />
            </node>
            <node concept="3cpWs3" id="6$03NoGm8T8" role="3uHU7B">
              <node concept="Xl_RD" id="6$03NoGm6Zs" role="3uHU7B">
                <property role="Xl_RC" value="Make items in this array " />
              </node>
              <node concept="1eOMI4" id="6$03NoGm920" role="3uHU7w">
                <node concept="3K4zz7" id="6$03NoGmaAu" role="1eOMHV">
                  <node concept="Xl_RD" id="6$03NoGmaLL" role="3K4E3e">
                    <property role="Xl_RC" value="non-" />
                  </node>
                  <node concept="Xl_RD" id="6$03NoGmb7S" role="3K4GZi">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="2OqwBi" id="6$03NoGm9rU" role="3K4Cdx">
                    <node concept="2Sf5sV" id="6$03NoGm9aR" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6$03NoGm9S1" role="2OqNvi">
                      <ref role="3TsBF5" to="64hz:2hQb6UNqw6K" resolve="uniqueItems" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6$03NoGm5X$" role="2ZfgGD">
      <node concept="3clFbS" id="6$03NoGm5X_" role="2VODD2">
        <node concept="3clFbF" id="6$03NoGmco9" role="3cqZAp">
          <node concept="37vLTI" id="6$03NoGmdl$" role="3clFbG">
            <node concept="3fqX7Q" id="6$03NoGmdlT" role="37vLTx">
              <node concept="2OqwBi" id="6$03NoGmdB4" role="3fr31v">
                <node concept="2Sf5sV" id="6$03NoGmdsq" role="2Oq$k0" />
                <node concept="3TrcHB" id="6$03NoGmdXf" role="2OqNvi">
                  <ref role="3TsBF5" to="64hz:2hQb6UNqw6K" resolve="uniqueItems" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6$03NoGmcwB" role="37vLTJ">
              <node concept="2Sf5sV" id="6$03NoGmco8" role="2Oq$k0" />
              <node concept="3TrcHB" id="6$03NoGmcOo" role="2OqNvi">
                <ref role="3TsBF5" to="64hz:2hQb6UNqw6K" resolve="uniqueItems" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="KZZITW1pYa">
    <property role="TrG5h" value="TurnIntoConst" />
    <ref role="2ZfgGC" to="64hz:2hQb6UNpvy8" resolve="JsonEnumerationDef" />
    <node concept="2S6ZIM" id="KZZITW1pYb" role="2ZfVej">
      <node concept="3clFbS" id="KZZITW1pYc" role="2VODD2">
        <node concept="3clFbF" id="KZZITW1w3R" role="3cqZAp">
          <node concept="Xl_RD" id="KZZITW1w3Q" role="3clFbG">
            <property role="Xl_RC" value="Turn Single-Valued Enumeration into Const" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="KZZITW1pYd" role="2ZfgGD">
      <node concept="3clFbS" id="KZZITW1pYe" role="2VODD2">
        <node concept="3cpWs8" id="KZZITW1wXs" role="3cqZAp">
          <node concept="3cpWsn" id="KZZITW1wXt" role="3cpWs9">
            <property role="TrG5h" value="jsonConst" />
            <node concept="3Tqbb2" id="KZZITW1wTy" role="1tU5fm">
              <ref role="ehGHo" to="64hz:KZZITVYgUp" resolve="JsonConst" />
            </node>
            <node concept="2OqwBi" id="KZZITW1wXu" role="33vP2m">
              <node concept="2Sf5sV" id="KZZITW1wXv" role="2Oq$k0" />
              <node concept="1P9Npp" id="KZZITW1Brt" role="2OqNvi">
                <node concept="2pJPEk" id="KZZITW1Bv3" role="1P9ThW">
                  <node concept="2pJPED" id="KZZITW1BvW" role="2pJPEn">
                    <ref role="2pJxaS" to="64hz:KZZITVYgUp" resolve="JsonConst" />
                    <node concept="2pIpSj" id="KZZITW1BwM" role="2pJxcM">
                      <ref role="2pIpSl" to="64hz:KZZITVYgUs" resolve="value" />
                      <node concept="36biLy" id="KZZITW1Cfr" role="28nt2d">
                        <node concept="2pJPEk" id="KZZITW1Chb" role="36biLW">
                          <node concept="2pJPED" id="KZZITW1Chc" role="2pJPEn">
                            <ref role="2pJxaS" to="tay9:3QNkN21Fl4l" resolve="JsonString" />
                            <node concept="2pJxcG" id="KZZITW1Chd" role="2pJxcM">
                              <ref role="2pJxcJ" to="tay9:3QNkN21Fl5A" resolve="value" />
                              <node concept="WxPPo" id="KZZITW1Che" role="28ntcv">
                                <node concept="2OqwBi" id="KZZITW1Cng" role="WxPPp">
                                  <node concept="2OqwBi" id="KZZITW1Cnh" role="2Oq$k0">
                                    <node concept="2OqwBi" id="KZZITW1Cni" role="2Oq$k0">
                                      <node concept="2Sf5sV" id="KZZITW1Cnj" role="2Oq$k0" />
                                      <node concept="3Tsc0h" id="KZZITW1Cnk" role="2OqNvi">
                                        <ref role="3TtcxE" to="64hz:2hQb6UNpvye" resolve="values" />
                                      </node>
                                    </node>
                                    <node concept="34jXtK" id="KZZITW1Cnl" role="2OqNvi">
                                      <node concept="3cmrfG" id="KZZITW1Cnm" role="25WWJ7">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="KZZITW1Cnn" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="KZZITW1q35" role="2ZfVeh">
      <node concept="3clFbS" id="KZZITW1q36" role="2VODD2">
        <node concept="3clFbF" id="KZZITW1q74" role="3cqZAp">
          <node concept="3clFbC" id="KZZITW1vA9" role="3clFbG">
            <node concept="3cmrfG" id="KZZITW1w2b" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="KZZITW1srH" role="3uHU7B">
              <node concept="2OqwBi" id="KZZITW1qku" role="2Oq$k0">
                <node concept="2Sf5sV" id="KZZITW1q73" role="2Oq$k0" />
                <node concept="3Tsc0h" id="KZZITW1qxq" role="2OqNvi">
                  <ref role="3TtcxE" to="64hz:2hQb6UNpvye" resolve="values" />
                </node>
              </node>
              <node concept="34oBXx" id="KZZITW1umD" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

