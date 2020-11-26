<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f17dd165-07ce-4f62-b30b-639a9216e55e(toJson)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="8382542b-a045-4f73-951b-02d75ee252bf" name="Json" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tay9" ref="r:4b82c70e-45f8-4502-a857-34e943edc354(Json.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
      </concept>
      <concept id="1228997946467" name="jetbrains.mps.baseLanguage.closures.structure.YieldAllStatement" flags="nn" index="_Z6PX">
        <child id="1228997959377" name="expression" index="_Z9Zf" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785118" name="jetbrains.mps.lang.quotation.structure.ListAntiquotation" flags="ng" index="2c44t8" />
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
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
      <concept id="4056363777117001481" name="jetbrains.mps.lang.quotation.structure.StringToTypedValueMigrationInfo" flags="ng" index="AAgTk">
        <property id="2173356959483005420" name="stringValueMigrated" index="3qcH_f" />
      </concept>
      <concept id="1196866233735" name="jetbrains.mps.lang.quotation.structure.PropertyAntiquotation" flags="ng" index="2EMmih" />
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="8382542b-a045-4f73-951b-02d75ee252bf" name="Json">
      <concept id="4445988724943966485" name="Json.structure.JsonString" flags="ng" index="2W7w8_">
        <property id="4445988724943966566" name="value" index="2W7w9m" />
      </concept>
      <concept id="4445988724943966486" name="Json.structure.JsonNull" flags="ng" index="2W7w8A" />
      <concept id="4445988724943966472" name="Json.structure.JsonObject" flags="ng" index="2W7w8S">
        <child id="4445988724943966923" name="pairs" index="2W7w7V" />
      </concept>
      <concept id="4445988724943966473" name="Json.structure.IJsonValue" flags="ng" index="2W7w8T" />
      <concept id="4445988724943966476" name="Json.structure.JsonArray" flags="ng" index="2W7w8W">
        <child id="4445988724943966589" name="items" index="2W7w9d" />
      </concept>
      <concept id="4445988724943966591" name="Json.structure.JsonPair" flags="ng" index="2W7w9f">
        <child id="4445988724943966594" name="value" index="2W7waM" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="312cEu" id="45zy9qQ_az1">
    <property role="TrG5h" value="JsonUtil" />
    <node concept="2tJIrI" id="45zy9qQ_LpQ" role="jymVt" />
    <node concept="2YIFZL" id="45zy9qQ_azt" role="jymVt">
      <property role="TrG5h" value="asBoolean" />
      <node concept="3Tqbb2" id="45zy9qQ_a$2" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21GywT" resolve="JsonBoolean" />
      </node>
      <node concept="3Tm1VV" id="45zy9qQ_azw" role="1B3o_S" />
      <node concept="3clFbS" id="45zy9qQ_azx" role="3clF47">
        <node concept="3clFbF" id="45zy9qQNm7D" role="3cqZAp">
          <node concept="2pJPEk" id="45zy9qQNm7_" role="3clFbG">
            <node concept="2pJPED" id="45zy9qQNm9y" role="2pJPEn">
              <ref role="2pJxaS" to="tay9:3QNkN21GywT" resolve="JsonBoolean" />
              <node concept="2pJxcG" id="45zy9qQNmby" role="2pJxcM">
                <ref role="2pJxcJ" to="tay9:3QNkN21GywX" resolve="value" />
                <node concept="WxPPo" id="5wO1A4Dvvmi" role="28ntcv">
                  <node concept="37vLTw" id="45zy9qQNme0" role="WxPPp">
                    <ref role="3cqZAo" node="45zy9qQ_a$w" resolve="bool" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQ_a$w" role="3clF46">
        <property role="TrG5h" value="bool" />
        <node concept="10P_77" id="45zy9qQ_a$v" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="45zy9qQ_LjL" role="jymVt" />
    <node concept="2YIFZL" id="7gkZuCwsIdB" role="jymVt">
      <property role="TrG5h" value="asString" />
      <node concept="3Tqbb2" id="7gkZuCwsIgF" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl4l" resolve="JsonString" />
      </node>
      <node concept="3Tm1VV" id="7gkZuCwsIdE" role="1B3o_S" />
      <node concept="3clFbS" id="7gkZuCwsIdF" role="3clF47">
        <node concept="3clFbF" id="7gkZuCwsIhz" role="3cqZAp">
          <node concept="2pJPEk" id="7gkZuCwsIhx" role="3clFbG">
            <node concept="2pJPED" id="7gkZuCwsIjl" role="2pJPEn">
              <ref role="2pJxaS" to="tay9:3QNkN21Fl4l" resolve="JsonString" />
              <node concept="2pJxcG" id="7gkZuCwsIlu" role="2pJxcM">
                <ref role="2pJxcJ" to="tay9:3QNkN21Fl5A" resolve="value" />
                <node concept="WxPPo" id="5wO1A4Dvvmj" role="28ntcv">
                  <node concept="37vLTw" id="7gkZuCwsInV" role="WxPPp">
                    <ref role="3cqZAo" node="7gkZuCwsIfI" resolve="str" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7gkZuCwsIfI" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="17QB3L" id="7gkZuCwsIfH" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7gkZuCwsIer" role="jymVt" />
    <node concept="2YIFZL" id="6RuYvJLUJ_P" role="jymVt">
      <property role="TrG5h" value="asStrings" />
      <node concept="3Tqbb2" id="6RuYvJLUL97" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl4c" resolve="JsonArray" />
      </node>
      <node concept="3Tm1VV" id="6RuYvJLUJ_S" role="1B3o_S" />
      <node concept="3clFbS" id="6RuYvJLUJ_T" role="3clF47">
        <node concept="3clFbF" id="7pDq5JwcJRb" role="3cqZAp">
          <node concept="2c44tf" id="7pDq5JwcJR7" role="3clFbG">
            <node concept="2W7w8W" id="7pDq5JwcJS4" role="2c44tc">
              <node concept="2W7w8T" id="7pDq5JwcJVD" role="2W7w9d">
                <node concept="2c44t8" id="7pDq5JwcJVW" role="lGtFl">
                  <node concept="2OqwBi" id="7pDq5JwcJWj" role="2c44t1">
                    <node concept="2OqwBi" id="7pDq5JwcJWk" role="2Oq$k0">
                      <node concept="37vLTw" id="7pDq5JwcJWl" role="2Oq$k0">
                        <ref role="3cqZAo" node="6RuYvJLUJBT" resolve="strs" />
                      </node>
                      <node concept="3$u5V9" id="7pDq5JwcJWm" role="2OqNvi">
                        <node concept="1bVj0M" id="7pDq5JwcJWn" role="23t8la">
                          <node concept="3clFbS" id="7pDq5JwcJWo" role="1bW5cS">
                            <node concept="3clFbF" id="7pDq5JwcJWp" role="3cqZAp">
                              <node concept="1rXfSq" id="7pDq5JwcJWq" role="3clFbG">
                                <ref role="37wK5l" node="7gkZuCwsIdB" resolve="asString" />
                                <node concept="37vLTw" id="7pDq5JwcJWr" role="37wK5m">
                                  <ref role="3cqZAo" node="7pDq5JwcJWs" resolve="str" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="7pDq5JwcJWs" role="1bW2Oz">
                            <property role="TrG5h" value="str" />
                            <node concept="2jxLKc" id="7pDq5JwcJWt" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="7pDq5JwcJWu" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6RuYvJLUJBT" role="3clF46">
        <property role="TrG5h" value="strs" />
        <node concept="A3Dl8" id="6RuYvJLUJBR" role="1tU5fm">
          <node concept="17QB3L" id="6RuYvJLUJCl" role="A3Ik2" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6RuYvJLUM0N" role="jymVt" />
    <node concept="3Tm1VV" id="45zy9qQ_az2" role="1B3o_S" />
    <node concept="3UR2Jj" id="7pDq5JwdRUO" role="lGtFl">
      <node concept="TZ5HA" id="7pDq5JwdRUP" role="TZ5H$">
        <node concept="1dT_AC" id="7pDq5JwdRUQ" role="1dT_Ay">
          <property role="1dT_AB" value="Utility class with convenience methods that are alternatives to using (light) quotations." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="45zy9qQMfQd">
    <property role="TrG5h" value="MetaModelExporter" />
    <node concept="2tJIrI" id="7gkZuCwvSLw" role="jymVt" />
    <node concept="2YIFZL" id="45zy9qQMgu5" role="jymVt">
      <property role="TrG5h" value="languageAsJson" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="45zy9qQMfVE" role="3clF47">
        <node concept="3clFbF" id="7pDq5JwdSTX" role="3cqZAp">
          <node concept="2c44tf" id="7pDq5JwdSTT" role="3clFbG">
            <node concept="2W7w8S" id="7pDq5JwdT1B" role="2c44tc">
              <node concept="2W7w9f" id="7pDq5JwdT3s" role="2W7w7V">
                <property role="TrG5h" value="_class" />
                <node concept="2W7w8_" id="7pDq5JwdT3T" role="2W7waM">
                  <property role="2W7w9m" value="Structure" />
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JwdT44" role="2W7w7V">
                <property role="TrG5h" value="name" />
                <node concept="2W7w8_" id="7pDq5JwdT65" role="2W7waM">
                  <node concept="2EMmih" id="7pDq5JwdT6g" role="lGtFl">
                    <property role="3qcH_f" value="true" />
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                    <node concept="2OqwBi" id="7pDq5JwdT6u" role="2c44t1">
                      <node concept="37vLTw" id="7pDq5JwdT6v" role="2Oq$k0">
                        <ref role="3cqZAo" node="45zy9qQMgaZ" resolve="language" />
                      </node>
                      <node concept="liA8E" id="7pDq5JwdT6w" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JwdTch" role="2W7w7V">
                <property role="TrG5h" value="concepts" />
                <node concept="2W7w8W" id="7pDq5JwdTeY" role="2W7waM">
                  <node concept="2W7w8S" id="7pDq5JwdTf9" role="2W7w9d">
                    <node concept="2c44t8" id="7pDq5JwdTfb" role="lGtFl">
                      <node concept="2OqwBi" id="7pDq5JwdTfy" role="2c44t1">
                        <node concept="2OqwBi" id="7pDq5JwdTfz" role="2Oq$k0">
                          <node concept="3$u5V9" id="7pDq5JwdTf$" role="2OqNvi">
                            <node concept="1bVj0M" id="7pDq5JwdTf_" role="23t8la">
                              <node concept="3clFbS" id="7pDq5JwdTfA" role="1bW5cS">
                                <node concept="3clFbF" id="7pDq5JwdTfB" role="3cqZAp">
                                  <node concept="1rXfSq" id="7pDq5JwdTfC" role="3clFbG">
                                    <ref role="37wK5l" node="45zy9qQMg$c" resolve="conceptAsJson" />
                                    <node concept="37vLTw" id="7pDq5JwdTfD" role="37wK5m">
                                      <ref role="3cqZAo" node="7pDq5JwdTfE" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="7pDq5JwdTfE" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="7pDq5JwdTfF" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                          <node concept="2YIFZM" id="7pDq5JwdTfG" role="2Oq$k0">
                            <ref role="37wK5l" node="45zy9qQKAsp" resolve="conceptsOf" />
                            <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                            <node concept="37vLTw" id="7pDq5JwdTfH" role="37wK5m">
                              <ref role="3cqZAo" node="45zy9qQMgaZ" resolve="language" />
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="7pDq5JwdTfI" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JwdTlt" role="2W7w7V">
                <property role="TrG5h" value="enumerations" />
                <node concept="2W7w8W" id="7pDq5JwdTvw" role="2W7waM">
                  <node concept="2W7w8S" id="7pDq5JwdTvF" role="2W7w9d">
                    <node concept="2c44t8" id="7pDq5JwdTvH" role="lGtFl">
                      <node concept="2OqwBi" id="7pDq5JwdTw4" role="2c44t1">
                        <node concept="2OqwBi" id="7pDq5JwdTw5" role="2Oq$k0">
                          <node concept="2YIFZM" id="7pDq5JwdTw6" role="2Oq$k0">
                            <ref role="37wK5l" node="6RuYvJLx8UF" resolve="enumerationsOf" />
                            <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                            <node concept="37vLTw" id="7pDq5JwdTw7" role="37wK5m">
                              <ref role="3cqZAo" node="45zy9qQMgaZ" resolve="language" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="7pDq5JwdTw8" role="2OqNvi">
                            <node concept="1bVj0M" id="7pDq5JwdTw9" role="23t8la">
                              <node concept="3clFbS" id="7pDq5JwdTwa" role="1bW5cS">
                                <node concept="3clFbF" id="7pDq5JwdTwb" role="3cqZAp">
                                  <node concept="1rXfSq" id="7pDq5JwdTwc" role="3clFbG">
                                    <ref role="37wK5l" node="6RuYvJLx6C2" resolve="enumerationAsJson" />
                                    <node concept="37vLTw" id="7pDq5JwdTwd" role="37wK5m">
                                      <ref role="3cqZAo" node="7pDq5JwdTwe" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="7pDq5JwdTwe" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="7pDq5JwdTwf" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="7pDq5JwdTwg" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQMgaZ" role="3clF46">
        <property role="TrG5h" value="language" />
        <node concept="3uibUv" id="45zy9qQMgaY" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="3Tqbb2" id="45zy9qQMfWd" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3Tm1VV" id="45zy9qQMfWe" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45zy9qQMiRK" role="jymVt" />
    <node concept="2YIFZL" id="45zy9qQMg$c" role="jymVt">
      <property role="TrG5h" value="conceptAsJson" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="45zy9qQMfWj" role="3clF47">
        <node concept="3clFbF" id="7pDq5JwdUxo" role="3cqZAp">
          <node concept="2c44tf" id="7pDq5JwdUxk" role="3clFbG">
            <node concept="2W7w8S" id="7pDq5JwdUPa" role="2c44tc">
              <node concept="2W7w9f" id="7pDq5JwdUPt" role="2W7w7V">
                <property role="TrG5h" value="_class" />
                <node concept="2W7w8_" id="7pDq5JwdURs" role="2W7waM">
                  <property role="2W7w9m" value="Concept" />
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JwdURB" role="2W7w7V">
                <property role="TrG5h" value="name" />
                <node concept="2W7w8_" id="7pDq5JwenMw" role="2W7waM">
                  <node concept="2EMmih" id="7pDq5JwenMF" role="lGtFl">
                    <property role="3qcH_f" value="true" />
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                    <node concept="2OqwBi" id="7pDq5JwenMT" role="2c44t1">
                      <node concept="37vLTw" id="7pDq5JwenMU" role="2Oq$k0">
                        <ref role="3cqZAo" node="45zy9qQMfWS" resolve="concept" />
                      </node>
                      <node concept="liA8E" id="7pDq5JwenMV" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JwenT5" role="2W7w7V">
                <property role="TrG5h" value="rootable" />
                <node concept="2W7w8T" id="7pDq5JwenT6" role="2W7waM">
                  <node concept="2c44te" id="7pDq5JwenVE" role="lGtFl">
                    <node concept="2YIFZM" id="7pDq5JwenVO" role="2c44t1">
                      <ref role="1Pybhc" node="45zy9qQ_az1" resolve="JsonUtil" />
                      <ref role="37wK5l" node="45zy9qQ_azt" resolve="asBoolean" />
                      <node concept="2YIFZM" id="7pDq5JwenVP" role="37wK5m">
                        <ref role="37wK5l" node="6RuYvJLU7wY" resolve="rootable" />
                        <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                        <node concept="37vLTw" id="7pDq5JwenVQ" role="37wK5m">
                          <ref role="3cqZAo" node="45zy9qQMfWS" resolve="concept" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JwenZ_" role="2W7w7V">
                <property role="TrG5h" value="named" />
                <node concept="2W7w8T" id="7pDq5JwenZA" role="2W7waM">
                  <node concept="2c44te" id="7pDq5Jweo7i" role="lGtFl">
                    <node concept="2YIFZM" id="7pDq5Jweo7s" role="2c44t1">
                      <ref role="37wK5l" node="45zy9qQ_azt" resolve="asBoolean" />
                      <ref role="1Pybhc" node="45zy9qQ_az1" resolve="JsonUtil" />
                      <node concept="2YIFZM" id="7pDq5Jweo7t" role="37wK5m">
                        <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                        <ref role="37wK5l" node="6RuYvJLDLqq" resolve="named" />
                        <node concept="37vLTw" id="7pDq5Jweo7u" role="37wK5m">
                          <ref role="3cqZAo" node="45zy9qQMfWS" resolve="concept" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5Jweobn" role="2W7w7V">
                <property role="TrG5h" value="abstract" />
                <node concept="2W7w8T" id="7pDq5Jweobo" role="2W7waM">
                  <node concept="2c44te" id="7pDq5Jweok3" role="lGtFl">
                    <node concept="2YIFZM" id="7pDq5Jweokd" role="2c44t1">
                      <ref role="1Pybhc" node="45zy9qQ_az1" resolve="JsonUtil" />
                      <ref role="37wK5l" node="45zy9qQ_azt" resolve="asBoolean" />
                      <node concept="2OqwBi" id="7pDq5Jweoke" role="37wK5m">
                        <node concept="37vLTw" id="7pDq5Jweokf" role="2Oq$k0">
                          <ref role="3cqZAo" node="45zy9qQMfWS" resolve="concept" />
                        </node>
                        <node concept="liA8E" id="7pDq5Jweokg" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5Jweoo7" role="2W7w7V">
                <property role="TrG5h" value="superTypes" />
                <node concept="2W7w8T" id="7pDq5Jweoo8" role="2W7waM">
                  <node concept="2c44te" id="7pDq5Jweoxy" role="lGtFl">
                    <node concept="2YIFZM" id="7pDq5JweoxG" role="2c44t1">
                      <ref role="37wK5l" node="6RuYvJLUJ_P" resolve="asStrings" />
                      <ref role="1Pybhc" node="45zy9qQ_az1" resolve="JsonUtil" />
                      <node concept="2YIFZM" id="7pDq5JweoxH" role="37wK5m">
                        <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                        <ref role="37wK5l" node="6RuYvJLPASr" resolve="superTypesOf" />
                        <node concept="37vLTw" id="7pDq5JweoxI" role="37wK5m">
                          <ref role="3cqZAo" node="45zy9qQMfWS" resolve="concept" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JweoAa" role="2W7w7V">
                <property role="TrG5h" value="properties" />
                <node concept="2W7w8W" id="7pDq5JweoLm" role="2W7waM">
                  <node concept="2W7w8S" id="7pDq5JweoLx" role="2W7w9d">
                    <node concept="2c44t8" id="7pDq5JweoLz" role="lGtFl">
                      <node concept="2OqwBi" id="7pDq5JweoLU" role="2c44t1">
                        <node concept="2OqwBi" id="7pDq5JweoLV" role="2Oq$k0">
                          <node concept="3$u5V9" id="7pDq5JweoLW" role="2OqNvi">
                            <node concept="1bVj0M" id="7pDq5JweoLX" role="23t8la">
                              <node concept="3clFbS" id="7pDq5JweoLY" role="1bW5cS">
                                <node concept="3clFbF" id="7pDq5JweoLZ" role="3cqZAp">
                                  <node concept="1rXfSq" id="7pDq5JweoM0" role="3clFbG">
                                    <ref role="37wK5l" node="45zy9qQMgFF" resolve="propertyAsJson" />
                                    <node concept="37vLTw" id="7pDq5JweoM1" role="37wK5m">
                                      <ref role="3cqZAo" node="7pDq5JweoM2" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="7pDq5JweoM2" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="7pDq5JweoM3" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                          <node concept="2YIFZM" id="7pDq5JweoM4" role="2Oq$k0">
                            <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                            <ref role="37wK5l" node="45zy9qQ_V$R" resolve="ownProperties" />
                            <node concept="37vLTw" id="7pDq5JweoM5" role="37wK5m">
                              <ref role="3cqZAo" node="45zy9qQMfWS" resolve="concept" />
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="7pDq5JweoM6" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JweoRD" role="2W7w7V">
                <property role="TrG5h" value="children" />
                <node concept="2W7w8W" id="7pDq5Jwep6J" role="2W7waM">
                  <node concept="2W7w8S" id="7pDq5Jwep6U" role="2W7w9d">
                    <node concept="2c44t8" id="7pDq5Jwep6W" role="lGtFl">
                      <node concept="2OqwBi" id="7pDq5Jwep7j" role="2c44t1">
                        <node concept="2OqwBi" id="7pDq5Jwep7k" role="2Oq$k0">
                          <node concept="3$u5V9" id="7pDq5Jwep7l" role="2OqNvi">
                            <node concept="1bVj0M" id="7pDq5Jwep7m" role="23t8la">
                              <node concept="3clFbS" id="7pDq5Jwep7n" role="1bW5cS">
                                <node concept="3clFbF" id="7pDq5Jwep7o" role="3cqZAp">
                                  <node concept="1rXfSq" id="7pDq5Jwep7p" role="3clFbG">
                                    <ref role="37wK5l" node="3bCBQAzVv8f" resolve="childAsJson" />
                                    <node concept="37vLTw" id="7pDq5Jwep7q" role="37wK5m">
                                      <ref role="3cqZAo" node="7pDq5Jwep7r" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="7pDq5Jwep7r" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="7pDq5Jwep7s" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                          <node concept="2YIFZM" id="7pDq5Jwep7t" role="2Oq$k0">
                            <ref role="37wK5l" node="45zy9qQAai6" resolve="ownContainmentLinks" />
                            <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                            <node concept="37vLTw" id="7pDq5Jwep7u" role="37wK5m">
                              <ref role="3cqZAo" node="45zy9qQMfWS" resolve="concept" />
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="7pDq5Jwep7v" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5Jwepdj" role="2W7w7V">
                <property role="TrG5h" value="references" />
                <node concept="2W7w8W" id="7pDq5Jwepvz" role="2W7waM">
                  <node concept="2W7w8S" id="7pDq5JwepvI" role="2W7w9d">
                    <node concept="2c44t8" id="7pDq5JwepvK" role="lGtFl">
                      <node concept="2OqwBi" id="7pDq5Jwepw7" role="2c44t1">
                        <node concept="2OqwBi" id="7pDq5Jwepw8" role="2Oq$k0">
                          <node concept="2YIFZM" id="7pDq5Jwepw9" role="2Oq$k0">
                            <ref role="37wK5l" node="45zy9qQAhcE" resolve="ownReferenceLinks" />
                            <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                            <node concept="37vLTw" id="7pDq5Jwepwa" role="37wK5m">
                              <ref role="3cqZAo" node="45zy9qQMfWS" resolve="concept" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="7pDq5Jwepwb" role="2OqNvi">
                            <node concept="1bVj0M" id="7pDq5Jwepwc" role="23t8la">
                              <node concept="3clFbS" id="7pDq5Jwepwd" role="1bW5cS">
                                <node concept="3clFbF" id="7pDq5Jwepwe" role="3cqZAp">
                                  <node concept="1rXfSq" id="7pDq5Jwepwf" role="3clFbG">
                                    <ref role="37wK5l" node="3bCBQAzXiR5" resolve="referenceAsJson" />
                                    <node concept="37vLTw" id="7pDq5Jwepwg" role="37wK5m">
                                      <ref role="3cqZAo" node="7pDq5Jwepwh" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="7pDq5Jwepwh" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="7pDq5Jwepwi" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="7pDq5Jwepwj" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQMfWS" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="45zy9qQMfWT" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3Tqbb2" id="45zy9qQMfWR" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3Tm6S6" id="45zy9qQMfWU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45zy9qQMiPF" role="jymVt" />
    <node concept="2YIFZL" id="45zy9qQMgFF" role="jymVt">
      <property role="TrG5h" value="propertyAsJson" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="45zy9qQMfWZ" role="3clF47">
        <node concept="3clFbF" id="7pDq5JweqmN" role="3cqZAp">
          <node concept="2c44tf" id="7pDq5Jweqpz" role="3clFbG">
            <node concept="2W7w8S" id="7pDq5Jweqwo" role="2c44tc">
              <node concept="2W7w9f" id="7pDq5JweqwF" role="2W7w7V">
                <property role="TrG5h" value="_class" />
                <node concept="2W7w8_" id="7pDq5Jweqx8" role="2W7waM">
                  <property role="2W7w9m" value="Property" />
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5Jweqxj" role="2W7w7V">
                <property role="TrG5h" value="name" />
                <node concept="2W7w8_" id="7pDq5Jweqz$" role="2W7waM">
                  <node concept="2EMmih" id="7pDq5JweqzJ" role="lGtFl">
                    <property role="3qcH_f" value="true" />
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                    <node concept="2OqwBi" id="7pDq5JweqzX" role="2c44t1">
                      <node concept="37vLTw" id="7pDq5JweqzY" role="2Oq$k0">
                        <ref role="3cqZAo" node="45zy9qQMfXc" resolve="property" />
                      </node>
                      <node concept="liA8E" id="7pDq5JweqzZ" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JweqDK" role="2W7w7V">
                <property role="TrG5h" value="type" />
                <node concept="2W7w8T" id="7pDq5JweqDL" role="2W7waM">
                  <node concept="2c44te" id="7pDq5JweqGd" role="lGtFl">
                    <node concept="1rXfSq" id="7pDq5JweqGn" role="2c44t1">
                      <ref role="37wK5l" node="3bCBQAzUblT" resolve="typeAsJson" />
                      <node concept="37vLTw" id="7pDq5JweqGo" role="37wK5m">
                        <ref role="3cqZAo" node="45zy9qQMfXc" resolve="property" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQMfXc" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="45zy9qQMfXd" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
      <node concept="3Tqbb2" id="45zy9qQMfXb" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3Tm6S6" id="45zy9qQMfXe" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45zy9qQMfQB" role="jymVt" />
    <node concept="2YIFZL" id="3bCBQAzUblT" role="jymVt">
      <property role="TrG5h" value="typeAsJson" />
      <node concept="3Tqbb2" id="3bCBQAzUbLW" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3Tm6S6" id="3bCBQAzUbOQ" role="1B3o_S" />
      <node concept="3clFbS" id="3bCBQAzUblX" role="3clF47">
        <node concept="3cpWs8" id="3bCBQAzUcgo" role="3cqZAp">
          <node concept="3cpWsn" id="3bCBQAzUcgr" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3uibUv" id="3bCBQAzUcgs" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2YIFZM" id="6RuYvJLwBW6" role="33vP2m">
              <ref role="37wK5l" node="6RuYvJLvZIY" resolve="typeNodeOf" />
              <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
              <node concept="37vLTw" id="6RuYvJLwBXT" role="37wK5m">
                <ref role="3cqZAo" node="3bCBQAzUbLl" resolve="property" />
              </node>
            </node>
          </node>
        </node>
        <node concept="Jncv_" id="3bCBQAzUcky" role="3cqZAp">
          <ref role="JncvD" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
          <node concept="37vLTw" id="3bCBQAzUcm3" role="JncvB">
            <ref role="3cqZAo" node="3bCBQAzUcgr" resolve="type" />
          </node>
          <node concept="3clFbS" id="3bCBQAzUckA" role="Jncv$">
            <node concept="3cpWs6" id="3bCBQAzUcuC" role="3cqZAp">
              <node concept="2c44tf" id="7pDq5Jwerr$" role="3cqZAk">
                <node concept="2W7w8S" id="7pDq5Jwerr_" role="2c44tc">
                  <node concept="2W7w9f" id="7pDq5JwerrA" role="2W7w7V">
                    <property role="TrG5h" value="_class" />
                    <node concept="2W7w8_" id="7pDq5JwerrB" role="2W7waM">
                      <property role="2W7w9m" value="EnumerationReference" />
                    </node>
                  </node>
                  <node concept="2W7w9f" id="7pDq5JwerrC" role="2W7w7V">
                    <property role="TrG5h" value="enumeration" />
                    <node concept="2W7w8_" id="7pDq5JwerrD" role="2W7waM">
                      <node concept="2EMmih" id="7pDq5JwerrE" role="lGtFl">
                        <property role="3qcH_f" value="true" />
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                        <node concept="2OqwBi" id="7pDq5JwerrF" role="2c44t1">
                          <node concept="Jnkvi" id="7pDq5JwerrG" role="2Oq$k0">
                            <ref role="1M0zk5" node="3bCBQAzUckC" resolve="enumType" />
                          </node>
                          <node concept="3TrcHB" id="7pDq5JwerrH" role="2OqNvi">
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
          <node concept="JncvC" id="3bCBQAzUckC" role="JncvA">
            <property role="TrG5h" value="enumType" />
            <node concept="2jxLKc" id="3bCBQAzUckD" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="3bCBQAzUevC" role="3cqZAp">
          <ref role="JncvD" to="tpce:fKQkHSB" resolve="PrimitiveDataTypeDeclaration" />
          <node concept="37vLTw" id="3bCBQAzUeA8" role="JncvB">
            <ref role="3cqZAo" node="3bCBQAzUcgr" resolve="type" />
          </node>
          <node concept="3clFbS" id="3bCBQAzUevG" role="Jncv$">
            <node concept="3cpWs6" id="3bCBQAzUeR9" role="3cqZAp">
              <node concept="2c44tf" id="7pDq5Jwesc1" role="3cqZAk">
                <node concept="2W7w8S" id="7pDq5Jwesc2" role="2c44tc">
                  <node concept="2W7w9f" id="7pDq5Jwesc3" role="2W7w7V">
                    <property role="TrG5h" value="_class" />
                    <node concept="2W7w8_" id="7pDq5Jwesc4" role="2W7waM">
                      <property role="2W7w9m" value="PrimitiveType" />
                    </node>
                  </node>
                  <node concept="2W7w9f" id="7pDq5Jwesc5" role="2W7w7V">
                    <property role="TrG5h" value="primitiveType" />
                    <node concept="2W7w8_" id="7pDq5Jwesc6" role="2W7waM">
                      <node concept="2EMmih" id="7pDq5Jwesc7" role="lGtFl">
                        <property role="3qcH_f" value="true" />
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                        <node concept="2OqwBi" id="7pDq5Jwesc8" role="2c44t1">
                          <node concept="Jnkvi" id="7pDq5Jwesc9" role="2Oq$k0">
                            <ref role="1M0zk5" node="3bCBQAzUevI" resolve="primitiveType" />
                          </node>
                          <node concept="2qgKlT" id="7pDq5Jwesca" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3bCBQAzUevI" role="JncvA">
            <property role="TrG5h" value="primitiveType" />
            <node concept="2jxLKc" id="3bCBQAzUevJ" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs6" id="7pDq5Jwet5i" role="3cqZAp">
          <node concept="2c44tf" id="7pDq5JwesCS" role="3cqZAk">
            <node concept="2W7w8S" id="7pDq5JwesGp" role="2c44tc">
              <node concept="2W7w9f" id="7pDq5JwesGK" role="2W7w7V">
                <property role="TrG5h" value="error" />
                <node concept="2W7w8_" id="7pDq5JwesHh" role="2W7waM">
                  <node concept="2EMmih" id="7pDq5JwesHs" role="lGtFl">
                    <property role="3qcH_f" value="true" />
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                    <node concept="Xl_RD" id="7pDq5JwesHE" role="2c44t1">
                      <property role="Xl_RC" value="!!! no serialisation for type of property" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3bCBQAzUbLl" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="3bCBQAzUbLk" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3bCBQAzUbMA" role="jymVt" />
    <node concept="2tJIrI" id="3bCBQAzWPq_" role="jymVt" />
    <node concept="2YIFZL" id="3bCBQAzVv8f" role="jymVt">
      <property role="TrG5h" value="childAsJson" />
      <node concept="3Tqbb2" id="3bCBQAzVvg$" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3Tm6S6" id="3bCBQAzVvgk" role="1B3o_S" />
      <node concept="3clFbS" id="3bCBQAzVv8j" role="3clF47">
        <node concept="3clFbF" id="7pDq5JwetJo" role="3cqZAp">
          <node concept="2c44tf" id="7pDq5JwetJk" role="3clFbG">
            <node concept="2W7w8S" id="7pDq5JwetRy" role="2c44tc">
              <node concept="2W7w9f" id="7pDq5JwetRP" role="2W7w7V">
                <property role="TrG5h" value="_class" />
                <node concept="2W7w8_" id="7pDq5JwetSi" role="2W7waM">
                  <property role="2W7w9m" value="Child" />
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JwetSt" role="2W7w7V">
                <property role="TrG5h" value="name" />
                <node concept="2W7w8_" id="7pDq5JwetUu" role="2W7waM">
                  <node concept="2EMmih" id="7pDq5JwetUD" role="lGtFl">
                    <property role="3qcH_f" value="true" />
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                    <node concept="2OqwBi" id="7pDq5JwetUR" role="2c44t1">
                      <node concept="37vLTw" id="7pDq5JwetUS" role="2Oq$k0">
                        <ref role="3cqZAo" node="3bCBQAzVvct" resolve="child" />
                      </node>
                      <node concept="liA8E" id="7pDq5JwetUT" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5Jweu1j" role="2W7w7V">
                <property role="TrG5h" value="targetConcept" />
                <node concept="2W7w8_" id="7pDq5Jweu3K" role="2W7waM">
                  <node concept="2EMmih" id="7pDq5Jweu3V" role="lGtFl">
                    <property role="3qcH_f" value="true" />
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                    <node concept="2OqwBi" id="7pDq5Jweu49" role="2c44t1">
                      <node concept="2OqwBi" id="7pDq5Jweu4a" role="2Oq$k0">
                        <node concept="37vLTw" id="7pDq5Jweu4b" role="2Oq$k0">
                          <ref role="3cqZAo" node="3bCBQAzVvct" resolve="child" />
                        </node>
                        <node concept="liA8E" id="7pDq5Jweu4c" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7pDq5Jweu4d" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5Jweubd" role="2W7w7V">
                <property role="TrG5h" value="isMultiple" />
                <node concept="2W7w8T" id="7pDq5Jweube" role="2W7waM">
                  <node concept="2c44te" id="7pDq5Jweuet" role="lGtFl">
                    <node concept="2YIFZM" id="7pDq5JweueB" role="2c44t1">
                      <ref role="37wK5l" node="45zy9qQ_azt" resolve="asBoolean" />
                      <ref role="1Pybhc" node="45zy9qQ_az1" resolve="JsonUtil" />
                      <node concept="2OqwBi" id="7pDq5JweueC" role="37wK5m">
                        <node concept="37vLTw" id="7pDq5JweueD" role="2Oq$k0">
                          <ref role="3cqZAo" node="3bCBQAzVvct" resolve="child" />
                        </node>
                        <node concept="liA8E" id="7pDq5JweueE" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractLink.isMultiple()" resolve="isMultiple" />
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
      <node concept="37vLTG" id="3bCBQAzVvct" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="3bCBQAzVvcs" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="45zy9qQMfQe" role="1B3o_S" />
    <node concept="2tJIrI" id="3bCBQAzVvd5" role="jymVt" />
    <node concept="2tJIrI" id="3bCBQAzXiAv" role="jymVt" />
    <node concept="2YIFZL" id="3bCBQAzXiR5" role="jymVt">
      <property role="TrG5h" value="referenceAsJson" />
      <node concept="3Tqbb2" id="3bCBQAzXiWG" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3Tm6S6" id="3bCBQAzXiR7" role="1B3o_S" />
      <node concept="3clFbS" id="3bCBQAzXiR9" role="3clF47">
        <node concept="3clFbF" id="7pDq5Jweuyl" role="3cqZAp">
          <node concept="2c44tf" id="7pDq5Jweuyh" role="3clFbG">
            <node concept="2W7w8S" id="7pDq5JweuzT" role="2c44tc">
              <node concept="2W7w9f" id="7pDq5Jweu_I" role="2W7w7V">
                <property role="TrG5h" value="_class" />
                <node concept="2W7w8_" id="7pDq5JweuAb" role="2W7waM">
                  <property role="2W7w9m" value="Reference" />
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JweuAm" role="2W7w7V">
                <property role="TrG5h" value="name" />
                <node concept="2W7w8_" id="7pDq5JweuAX" role="2W7waM">
                  <node concept="2EMmih" id="7pDq5JweuB8" role="lGtFl">
                    <property role="3qcH_f" value="true" />
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                    <node concept="2OqwBi" id="7pDq5JweuBm" role="2c44t1">
                      <node concept="37vLTw" id="7pDq5JweuBn" role="2Oq$k0">
                        <ref role="3cqZAo" node="3bCBQAzXiW6" resolve="reference" />
                      </node>
                      <node concept="liA8E" id="7pDq5JweuBo" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5JweuHM" role="2W7w7V">
                <property role="TrG5h" value="targetConcept" />
                <node concept="2W7w8_" id="7pDq5JweuKf" role="2W7waM">
                  <node concept="2EMmih" id="7pDq5JweuKq" role="lGtFl">
                    <property role="3qcH_f" value="true" />
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                    <node concept="2OqwBi" id="7pDq5JweuKC" role="2c44t1">
                      <node concept="2OqwBi" id="7pDq5JweuKD" role="2Oq$k0">
                        <node concept="37vLTw" id="7pDq5JweuKE" role="2Oq$k0">
                          <ref role="3cqZAo" node="3bCBQAzXiW6" resolve="reference" />
                        </node>
                        <node concept="liA8E" id="7pDq5JweuKF" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7pDq5JweuKG" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3bCBQAzXiW6" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="3bCBQAzXiW5" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3bCBQAzXiX9" role="jymVt" />
    <node concept="2tJIrI" id="6RuYvJLx6rN" role="jymVt" />
    <node concept="2YIFZL" id="6RuYvJLx6C2" role="jymVt">
      <property role="TrG5h" value="enumerationAsJson" />
      <node concept="3Tqbb2" id="6RuYvJLx6Qn" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl48" resolve="JsonObject" />
      </node>
      <node concept="3Tm6S6" id="6RuYvJLxWrQ" role="1B3o_S" />
      <node concept="3clFbS" id="6RuYvJLx6C6" role="3clF47">
        <node concept="3clFbF" id="7pDq5Jwev4$" role="3cqZAp">
          <node concept="2c44tf" id="7pDq5Jwev4w" role="3clFbG">
            <node concept="2W7w8S" id="7pDq5Jwev5A" role="2c44tc">
              <node concept="2W7w9f" id="7pDq5Jwev5T" role="2W7w7V">
                <property role="TrG5h" value="_class" />
                <node concept="2W7w8_" id="7pDq5Jwev6A" role="2W7waM">
                  <property role="2W7w9m" value="Enumeration" />
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5Jwev6L" role="2W7w7V">
                <property role="TrG5h" value="name" />
                <node concept="2W7w8_" id="7pDq5Jwev8M" role="2W7waM">
                  <node concept="2EMmih" id="7pDq5Jwev8X" role="lGtFl">
                    <property role="3qcH_f" value="true" />
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                    <node concept="2OqwBi" id="7pDq5Jwev9b" role="2c44t1">
                      <node concept="37vLTw" id="7pDq5Jwev9c" role="2Oq$k0">
                        <ref role="3cqZAo" node="6RuYvJLx6Pr" resolve="enumeration" />
                      </node>
                      <node concept="3TrcHB" id="7pDq5Jwev9d" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2W7w9f" id="7pDq5Jwevdj" role="2W7w7V">
                <property role="TrG5h" value="members" />
                <node concept="2W7w8W" id="7pDq5JwevfM" role="2W7waM">
                  <node concept="2W7w8S" id="7pDq5JwevfX" role="2W7w9d">
                    <node concept="2c44t8" id="7pDq5JwevfZ" role="lGtFl">
                      <node concept="2OqwBi" id="7pDq5Jwevgm" role="2c44t1">
                        <node concept="2OqwBi" id="7pDq5Jwevgn" role="2Oq$k0">
                          <node concept="2OqwBi" id="7pDq5Jwevgo" role="2Oq$k0">
                            <node concept="37vLTw" id="7pDq5Jwevgp" role="2Oq$k0">
                              <ref role="3cqZAo" node="6RuYvJLx6Pr" resolve="enumeration" />
                            </node>
                            <node concept="3Tsc0h" id="7XJS2wdgHWe" role="2OqNvi">
                              <ref role="3TtcxE" to="tpce:2TR3acGo7N1" resolve="members" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="7pDq5Jwevgr" role="2OqNvi">
                            <node concept="1bVj0M" id="7pDq5Jwevgs" role="23t8la">
                              <node concept="3clFbS" id="7pDq5Jwevgt" role="1bW5cS">
                                <node concept="3clFbF" id="7pDq5Jwevgu" role="3cqZAp">
                                  <node concept="1rXfSq" id="7pDq5Jwevgv" role="3clFbG">
                                    <ref role="37wK5l" node="6RuYvJLxWEM" resolve="enumerationMemberAsJson" />
                                    <node concept="37vLTw" id="7pDq5Jwevgw" role="37wK5m">
                                      <ref role="3cqZAo" node="7pDq5Jwevgx" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="7pDq5Jwevgx" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="7pDq5Jwevgy" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="7pDq5Jwevgz" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6RuYvJLx6Pr" role="3clF46">
        <property role="TrG5h" value="enumeration" />
        <node concept="3Tqbb2" id="6RuYvJLx6Pq" role="1tU5fm">
          <ref role="ehGHo" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6RuYvJLx6Je" role="jymVt" />
    <node concept="2YIFZL" id="6RuYvJLxWEM" role="jymVt">
      <property role="TrG5h" value="enumerationMemberAsJson" />
      <node concept="3Tqbb2" id="6RuYvJLxXOg" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl49" resolve="IJsonValue" />
      </node>
      <node concept="3Tm6S6" id="6RuYvJLUDtU" role="1B3o_S" />
      <node concept="3clFbS" id="6RuYvJLxWEQ" role="3clF47">
        <node concept="3clFbF" id="7pDq5JwcMwR" role="3cqZAp">
          <node concept="2c44tf" id="7pDq5JwcMwN" role="3clFbG">
            <node concept="2W7w8_" id="7pDq5JwcMxk" role="2c44tc">
              <property role="2W7w9m" value="foo" />
              <node concept="2EMmih" id="7pDq5JwcM$W" role="lGtFl">
                <property role="3qcH_f" value="true" />
                <property role="2qtEX9" value="value" />
                <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                <node concept="2OqwBi" id="7pDq5JwcM_r" role="2c44t1">
                  <node concept="37vLTw" id="7pDq5JwcM_s" role="2Oq$k0">
                    <ref role="3cqZAo" node="6RuYvJLxWLu" resolve="member" />
                  </node>
                  <node concept="3TrcHB" id="7XJS2wdgZoN" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6RuYvJLxWLu" role="3clF46">
        <property role="TrG5h" value="member" />
        <node concept="3Tqbb2" id="6RuYvJLxWLt" role="1tU5fm">
          <ref role="ehGHo" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6RuYvJLxW_f" role="jymVt" />
    <node concept="3UR2Jj" id="7pDq5Jwevtl" role="lGtFl">
      <node concept="TZ5HA" id="7pDq5Jwevtm" role="TZ5H$">
        <node concept="1dT_AC" id="7pDq5Jwevtn" role="1dT_Ay">
          <property role="1dT_AB" value="Utility class whose languageAsJson(..)-method exports a whole language to JSON." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="45zy9qQzHC9">
    <property role="TrG5h" value="MetaUtil" />
    <node concept="2tJIrI" id="45zy9qQ_5ZE" role="jymVt" />
    <node concept="2YIFZL" id="45zy9qQKAsp" role="jymVt">
      <property role="TrG5h" value="conceptsOf" />
      <node concept="A3Dl8" id="45zy9qQKBA9" role="3clF45">
        <node concept="3uibUv" id="45zy9qQKBCD" role="A3Ik2">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3Tm1VV" id="45zy9qQKAss" role="1B3o_S" />
      <node concept="3clFbS" id="45zy9qQKAst" role="3clF47">
        <node concept="3clFbF" id="45zy9qQKAJR" role="3cqZAp">
          <node concept="2ShNRf" id="45zy9qQKAJT" role="3clFbG">
            <node concept="kMnCb" id="45zy9qQKAJU" role="2ShVmc">
              <node concept="3uibUv" id="45zy9qQKAJV" role="kMuH3">
                <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
              </node>
              <node concept="1bVj0M" id="45zy9qQKAJW" role="kMx8a">
                <node concept="3clFbS" id="45zy9qQKAJX" role="1bW5cS">
                  <node concept="_Z6PX" id="45zy9qQKAJY" role="3cqZAp">
                    <node concept="2OqwBi" id="45zy9qQKAJZ" role="_Z9Zf">
                      <node concept="37vLTw" id="45zy9qQKAK0" role="2Oq$k0">
                        <ref role="3cqZAo" node="45zy9qQKAxu" resolve="language" />
                      </node>
                      <node concept="liA8E" id="45zy9qQKAK1" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SLanguage.getConcepts()" resolve="getConcepts" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQKAxu" role="3clF46">
        <property role="TrG5h" value="language" />
        <node concept="3uibUv" id="45zy9qQKAxt" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="45zy9qQKAy7" role="jymVt" />
    <node concept="2tJIrI" id="3bCBQAzYvCT" role="jymVt" />
    <node concept="2YIFZL" id="45zy9qQ_QJn" role="jymVt">
      <property role="TrG5h" value="isOwn" />
      <node concept="10P_77" id="45zy9qQ_QLV" role="3clF45" />
      <node concept="3Tm1VV" id="45zy9qQ_QJq" role="1B3o_S" />
      <node concept="3clFbS" id="45zy9qQ_QJr" role="3clF47">
        <node concept="3clFbF" id="45zy9qQ_Rxd" role="3cqZAp">
          <node concept="3fqX7Q" id="45zy9qQ_Rxf" role="3clFbG">
            <node concept="2OqwBi" id="45zy9qQ_Rxg" role="3fr31v">
              <node concept="2OqwBi" id="45zy9qQ_Rxh" role="2Oq$k0">
                <node concept="2OqwBi" id="45zy9qQ_Rxi" role="2Oq$k0">
                  <node concept="2OqwBi" id="45zy9qQ_Rxj" role="2Oq$k0">
                    <node concept="37vLTw" id="45zy9qQ_RE6" role="2Oq$k0">
                      <ref role="3cqZAo" node="45zy9qQ_QMc" resolve="feature" />
                    </node>
                    <node concept="liA8E" id="45zy9qQ_Rxl" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SConceptFeature.getOwner()" resolve="getOwner" />
                    </node>
                  </node>
                  <node concept="liA8E" id="45zy9qQ_Rxm" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                  </node>
                </node>
                <node concept="liA8E" id="45zy9qQ_Rxn" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                </node>
              </node>
              <node concept="liA8E" id="45zy9qQ_Rxo" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="Xl_RD" id="45zy9qQ_Rxp" role="37wK5m">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQ_QMc" role="3clF46">
        <property role="TrG5h" value="feature" />
        <node concept="3uibUv" id="45zy9qQ_QMb" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConceptFeature" resolve="SConceptFeature" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="45zy9qQ_RHX" role="jymVt" />
    <node concept="2tJIrI" id="3bCBQAzQBzi" role="jymVt" />
    <node concept="2YIFZL" id="45zy9qQ_V$R" role="jymVt">
      <property role="TrG5h" value="ownProperties" />
      <node concept="A3Dl8" id="45zy9qQA3Jl" role="3clF45">
        <node concept="3uibUv" id="45zy9qQA3Mz" role="A3Ik2">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
      <node concept="3Tm1VV" id="45zy9qQ_V$U" role="1B3o_S" />
      <node concept="3clFbS" id="45zy9qQ_V$V" role="3clF47">
        <node concept="3clFbF" id="45zy9qQ_YXK" role="3cqZAp">
          <node concept="2OqwBi" id="45zy9qQ_YXM" role="3clFbG">
            <node concept="2ShNRf" id="45zy9qQ_YXN" role="2Oq$k0">
              <node concept="kMnCb" id="45zy9qQ_YXO" role="2ShVmc">
                <node concept="3uibUv" id="45zy9qQ_YXP" role="kMuH3">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                </node>
                <node concept="1bVj0M" id="45zy9qQ_YXQ" role="kMx8a">
                  <node concept="3clFbS" id="45zy9qQ_YXR" role="1bW5cS">
                    <node concept="_Z6PX" id="45zy9qQ_YXS" role="3cqZAp">
                      <node concept="2OqwBi" id="45zy9qQ_YXT" role="_Z9Zf">
                        <node concept="37vLTw" id="45zy9qQ_ZKF" role="2Oq$k0">
                          <ref role="3cqZAo" node="45zy9qQ_ZJQ" resolve="concept" />
                        </node>
                        <node concept="liA8E" id="45zy9qQ_YXV" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="45zy9qQ_YXW" role="2OqNvi">
              <node concept="1bVj0M" id="45zy9qQ_YXX" role="23t8la">
                <node concept="3clFbS" id="45zy9qQ_YXY" role="1bW5cS">
                  <node concept="3clFbF" id="45zy9qQ_YXZ" role="3cqZAp">
                    <node concept="1rXfSq" id="45zy9qQA2ax" role="3clFbG">
                      <ref role="37wK5l" node="45zy9qQ_QJn" resolve="isOwn" />
                      <node concept="37vLTw" id="45zy9qQA2V0" role="37wK5m">
                        <ref role="3cqZAo" node="45zy9qQ_YY3" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="45zy9qQ_YY3" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="45zy9qQ_YY4" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQ_ZJQ" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="45zy9qQ_ZJP" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="45zy9qQAi2Z" role="jymVt" />
    <node concept="2YIFZL" id="6RuYvJLvZIY" role="jymVt">
      <property role="TrG5h" value="typeNodeOf" />
      <node concept="3uibUv" id="6RuYvJLw0FT" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="6RuYvJLvZJ1" role="1B3o_S" />
      <node concept="3clFbS" id="6RuYvJLvZJ2" role="3clF47">
        <node concept="3clFbF" id="6RuYvJLvZO3" role="3cqZAp">
          <node concept="2OqwBi" id="6RuYvJLw0mP" role="3clFbG">
            <node concept="2OqwBi" id="6RuYvJLvZWm" role="2Oq$k0">
              <node concept="37vLTw" id="6RuYvJLvZO2" role="2Oq$k0">
                <ref role="3cqZAo" node="6RuYvJLvZN4" resolve="property" />
              </node>
              <node concept="liA8E" id="6RuYvJLw0gm" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SProperty.getDeclarationNode()" resolve="getDeclarationNode" />
              </node>
            </node>
            <node concept="liA8E" id="6RuYvJLw0$g" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(java.lang.String)" resolve="getReferenceTarget" />
              <node concept="Xl_RD" id="6RuYvJLw0_I" role="37wK5m">
                <property role="Xl_RC" value="dataType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6RuYvJLvZN4" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="6RuYvJLvZN3" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6RuYvJLvZ$K" role="jymVt" />
    <node concept="2tJIrI" id="6RuYvJLw0GH" role="jymVt" />
    <node concept="2YIFZL" id="45zy9qQAai6" role="jymVt">
      <property role="TrG5h" value="ownContainmentLinks" />
      <node concept="A3Dl8" id="45zy9qQAai7" role="3clF45">
        <node concept="3uibUv" id="45zy9qQAfAz" role="A3Ik2">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="45zy9qQAai9" role="1B3o_S" />
      <node concept="3clFbS" id="45zy9qQAaia" role="3clF47">
        <node concept="3clFbF" id="45zy9qQAaib" role="3cqZAp">
          <node concept="2OqwBi" id="45zy9qQAaic" role="3clFbG">
            <node concept="2ShNRf" id="45zy9qQAaid" role="2Oq$k0">
              <node concept="kMnCb" id="45zy9qQAaie" role="2ShVmc">
                <node concept="3uibUv" id="45zy9qQAfAW" role="kMuH3">
                  <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                </node>
                <node concept="1bVj0M" id="45zy9qQAaig" role="kMx8a">
                  <node concept="3clFbS" id="45zy9qQAaih" role="1bW5cS">
                    <node concept="_Z6PX" id="45zy9qQAaii" role="3cqZAp">
                      <node concept="2OqwBi" id="45zy9qQAaij" role="_Z9Zf">
                        <node concept="37vLTw" id="45zy9qQAaik" role="2Oq$k0">
                          <ref role="3cqZAo" node="45zy9qQAaiv" resolve="concept" />
                        </node>
                        <node concept="liA8E" id="45zy9qQAail" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="45zy9qQAaim" role="2OqNvi">
              <node concept="1bVj0M" id="45zy9qQAain" role="23t8la">
                <node concept="3clFbS" id="45zy9qQAaio" role="1bW5cS">
                  <node concept="3clFbF" id="45zy9qQAaip" role="3cqZAp">
                    <node concept="1rXfSq" id="45zy9qQAair" role="3clFbG">
                      <ref role="37wK5l" node="45zy9qQ_QJn" resolve="isOwn" />
                      <node concept="37vLTw" id="45zy9qQAais" role="37wK5m">
                        <ref role="3cqZAo" node="45zy9qQAait" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="45zy9qQAait" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="45zy9qQAaiu" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQAaiv" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="45zy9qQAaiw" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="45zy9qQAibq" role="jymVt" />
    <node concept="2tJIrI" id="6RuYvJLvZC9" role="jymVt" />
    <node concept="2YIFZL" id="45zy9qQAhcE" role="jymVt">
      <property role="TrG5h" value="ownReferenceLinks" />
      <node concept="A3Dl8" id="45zy9qQAhcF" role="3clF45">
        <node concept="3uibUv" id="45zy9qQAm40" role="A3Ik2">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="45zy9qQAhcH" role="1B3o_S" />
      <node concept="3clFbS" id="45zy9qQAhcI" role="3clF47">
        <node concept="3clFbF" id="45zy9qQAhcJ" role="3cqZAp">
          <node concept="2OqwBi" id="45zy9qQAhcK" role="3clFbG">
            <node concept="2ShNRf" id="45zy9qQAhcL" role="2Oq$k0">
              <node concept="kMnCb" id="45zy9qQAhcM" role="2ShVmc">
                <node concept="3uibUv" id="45zy9qQAm4p" role="kMuH3">
                  <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                </node>
                <node concept="1bVj0M" id="45zy9qQAhcO" role="kMx8a">
                  <node concept="3clFbS" id="45zy9qQAhcP" role="1bW5cS">
                    <node concept="_Z6PX" id="45zy9qQAhcQ" role="3cqZAp">
                      <node concept="2OqwBi" id="45zy9qQAhcR" role="_Z9Zf">
                        <node concept="37vLTw" id="45zy9qQAhcS" role="2Oq$k0">
                          <ref role="3cqZAo" node="45zy9qQAhd3" resolve="concept" />
                        </node>
                        <node concept="liA8E" id="45zy9qQAhcT" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="45zy9qQAhcU" role="2OqNvi">
              <node concept="1bVj0M" id="45zy9qQAhcV" role="23t8la">
                <node concept="3clFbS" id="45zy9qQAhcW" role="1bW5cS">
                  <node concept="3clFbF" id="45zy9qQAhcX" role="3cqZAp">
                    <node concept="1rXfSq" id="45zy9qQAhcZ" role="3clFbG">
                      <ref role="37wK5l" node="45zy9qQ_QJn" resolve="isOwn" />
                      <node concept="37vLTw" id="45zy9qQAhd0" role="37wK5m">
                        <ref role="3cqZAo" node="45zy9qQAhd1" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="45zy9qQAhd1" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="45zy9qQAhd2" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQAhd3" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="45zy9qQAhd4" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="45zy9qQ_VCJ" role="jymVt" />
    <node concept="2tJIrI" id="6RuYvJLx8No" role="jymVt" />
    <node concept="2YIFZL" id="6RuYvJLx8UF" role="jymVt">
      <property role="TrG5h" value="enumerationsOf" />
      <node concept="3Tm1VV" id="6RuYvJLx8UI" role="1B3o_S" />
      <node concept="3clFbS" id="6RuYvJLx8UJ" role="3clF47">
        <node concept="3cpWs8" id="6RuYvJLx9m9" role="3cqZAp">
          <node concept="3cpWsn" id="6RuYvJLx9ma" role="3cpWs9">
            <property role="TrG5h" value="concepts" />
            <node concept="A3Dl8" id="6RuYvJLx9mb" role="1tU5fm">
              <node concept="3uibUv" id="6RuYvJLx9mc" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
              </node>
            </node>
            <node concept="2YIFZM" id="6RuYvJLx9md" role="33vP2m">
              <ref role="37wK5l" node="45zy9qQKAsp" resolve="conceptsOf" />
              <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
              <node concept="37vLTw" id="6RuYvJLx9me" role="37wK5m">
                <ref role="3cqZAo" node="6RuYvJLx92I" resolve="language" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6RuYvJLxaf4" role="3cqZAp">
          <node concept="2OqwBi" id="6RuYvJLx9mj" role="3clFbG">
            <node concept="2OqwBi" id="6RuYvJLx9mk" role="2Oq$k0">
              <node concept="37vLTw" id="6RuYvJLx9ml" role="2Oq$k0">
                <ref role="3cqZAo" node="6RuYvJLx9ma" resolve="concepts" />
              </node>
              <node concept="3goQfb" id="6RuYvJLx9mm" role="2OqNvi">
                <node concept="1bVj0M" id="6RuYvJLx9mn" role="23t8la">
                  <node concept="3clFbS" id="6RuYvJLx9mo" role="1bW5cS">
                    <node concept="3clFbF" id="6RuYvJLx9mp" role="3cqZAp">
                      <node concept="2OqwBi" id="6RuYvJLx9mq" role="3clFbG">
                        <node concept="2OqwBi" id="6RuYvJLx9mr" role="2Oq$k0">
                          <node concept="2ShNRf" id="6RuYvJLx9ms" role="2Oq$k0">
                            <node concept="kMnCb" id="6RuYvJLx9mt" role="2ShVmc">
                              <node concept="1bVj0M" id="6RuYvJLx9mu" role="kMx8a">
                                <node concept="3clFbS" id="6RuYvJLx9mv" role="1bW5cS">
                                  <node concept="_Z6PX" id="6RuYvJLx9mw" role="3cqZAp">
                                    <node concept="2OqwBi" id="6RuYvJLx9mx" role="_Z9Zf">
                                      <node concept="37vLTw" id="6RuYvJLx9my" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6RuYvJLx9mO" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="6RuYvJLx9mz" role="2OqNvi">
                                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3$u5V9" id="6RuYvJLx9m$" role="2OqNvi">
                            <node concept="1bVj0M" id="6RuYvJLx9m_" role="23t8la">
                              <node concept="3clFbS" id="6RuYvJLx9mA" role="1bW5cS">
                                <node concept="Jncv_" id="6RuYvJLx9mB" role="3cqZAp">
                                  <ref role="JncvD" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
                                  <node concept="2YIFZM" id="6RuYvJLx9mC" role="JncvB">
                                    <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                                    <ref role="37wK5l" node="6RuYvJLvZIY" resolve="typeNodeOf" />
                                    <node concept="37vLTw" id="6RuYvJLx9mD" role="37wK5m">
                                      <ref role="3cqZAo" node="6RuYvJLx9mL" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="6RuYvJLx9mE" role="Jncv$">
                                    <node concept="3cpWs6" id="6RuYvJLx9mF" role="3cqZAp">
                                      <node concept="Jnkvi" id="6RuYvJLx9mG" role="3cqZAk">
                                        <ref role="1M0zk5" node="6RuYvJLx9mH" resolve="enumType" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="6RuYvJLx9mH" role="JncvA">
                                    <property role="TrG5h" value="enumType" />
                                    <node concept="2jxLKc" id="6RuYvJLx9mI" role="1tU5fm" />
                                  </node>
                                </node>
                                <node concept="3clFbF" id="6RuYvJLx9mJ" role="3cqZAp">
                                  <node concept="10Nm6u" id="6RuYvJLx9mK" role="3clFbG" />
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6RuYvJLx9mL" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6RuYvJLx9mM" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1KnU$U" id="6RuYvJLx9mN" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6RuYvJLx9mO" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6RuYvJLx9mP" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1VAtEI" id="6RuYvJLx9mQ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6RuYvJLx92I" role="3clF46">
        <property role="TrG5h" value="language" />
        <node concept="3uibUv" id="6RuYvJLx92H" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="A3Dl8" id="6RuYvJLxb5h" role="3clF45">
        <node concept="3Tqbb2" id="6RuYvJLxb5i" role="A3Ik2">
          <ref role="ehGHo" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="45zy9qQzHCa" role="1B3o_S" />
    <node concept="2tJIrI" id="6RuYvJLx8Y_" role="jymVt" />
    <node concept="2YIFZL" id="6RuYvJLz01M" role="jymVt">
      <property role="TrG5h" value="defaultMemberOf" />
      <node concept="3Tm1VV" id="6RuYvJLz01P" role="1B3o_S" />
      <node concept="3clFbS" id="6RuYvJLz01Q" role="3clF47">
        <node concept="3clFbF" id="6RuYvJLz0$Z" role="3cqZAp">
          <node concept="3K4zz7" id="6RuYvJLz0_1" role="3clFbG">
            <node concept="2OqwBi" id="6RuYvJLz0_2" role="3K4E3e">
              <node concept="2OqwBi" id="7XJS2wdgnG7" role="2Oq$k0">
                <node concept="37vLTw" id="6RuYvJLz3ba" role="2Oq$k0">
                  <ref role="3cqZAo" node="6RuYvJLz0cG" resolve="enumeration" />
                </node>
                <node concept="3Tsc0h" id="7XJS2wdgo0s" role="2OqNvi">
                  <ref role="3TtcxE" to="tpce:2TR3acGo7N1" resolve="members" />
                </node>
              </node>
              <node concept="1uHKPH" id="6RuYvJLz0_6" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="6RuYvJLz0_7" role="3K4GZi">
              <node concept="37vLTw" id="6RuYvJLz3F_" role="2Oq$k0">
                <ref role="3cqZAo" node="6RuYvJLz0cG" resolve="enumeration" />
              </node>
              <node concept="3TrEf2" id="7XJS2wdgpU1" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:VFd4XzZw5G" resolve="defaultMember" />
              </node>
            </node>
            <node concept="3clFbC" id="6RuYvJLz0_a" role="3K4Cdx">
              <node concept="10Nm6u" id="6RuYvJLz0_b" role="3uHU7w" />
              <node concept="2OqwBi" id="6RuYvJLz0_c" role="3uHU7B">
                <node concept="37vLTw" id="6RuYvJLz2E$" role="2Oq$k0">
                  <ref role="3cqZAo" node="6RuYvJLz0cG" resolve="enumeration" />
                </node>
                <node concept="3TrEf2" id="7XJS2wdgpZa" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpce:VFd4XzZw5G" resolve="defaultMember" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6RuYvJLz0cG" role="3clF46">
        <property role="TrG5h" value="enumeration" />
        <node concept="3Tqbb2" id="6RuYvJLz0cF" role="1tU5fm">
          <ref role="ehGHo" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
        </node>
      </node>
      <node concept="3Tqbb2" id="6RuYvJLz2Ce" role="3clF45">
        <ref role="ehGHo" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="6RuYvJLz071" role="jymVt" />
    <node concept="2tJIrI" id="6RuYvJLDLfH" role="jymVt" />
    <node concept="2YIFZL" id="6RuYvJLDLqq" role="jymVt">
      <property role="TrG5h" value="named" />
      <node concept="10P_77" id="6RuYvJLDLw1" role="3clF45" />
      <node concept="3Tm1VV" id="6RuYvJLDLqt" role="1B3o_S" />
      <node concept="3clFbS" id="6RuYvJLDLqu" role="3clF47">
        <node concept="3clFbF" id="6RuYvJLP4KA" role="3cqZAp">
          <node concept="2OqwBi" id="6RuYvJLP4SD" role="3clFbG">
            <node concept="37vLTw" id="6RuYvJLP4K$" role="2Oq$k0">
              <ref role="3cqZAo" node="6RuYvJLDLwx" resolve="concept" />
            </node>
            <node concept="liA8E" id="6RuYvJLP58y" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
              <node concept="35c_gC" id="6RuYvJLP5aa" role="37wK5m">
                <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6RuYvJLDLwx" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="6RuYvJLDLww" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6RuYvJLDLxg" role="jymVt" />
    <node concept="2tJIrI" id="6RuYvJLUaDr" role="jymVt" />
    <node concept="2YIFZL" id="6RuYvJLU7wY" role="jymVt">
      <property role="TrG5h" value="rootable" />
      <node concept="10P_77" id="6RuYvJLU8s5" role="3clF45" />
      <node concept="3Tm1VV" id="6RuYvJLU7x1" role="1B3o_S" />
      <node concept="3clFbS" id="6RuYvJLU7x2" role="3clF47">
        <node concept="3cpWs8" id="6UwFzwhCVnh" role="3cqZAp">
          <node concept="3cpWsn" id="6UwFzwhCVni" role="3cpWs9">
            <property role="TrG5h" value="declarationNode" />
            <node concept="3uibUv" id="6UwFzwhCV6C" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="6UwFzwhCVnj" role="33vP2m">
              <node concept="37vLTw" id="6UwFzwhCVnk" role="2Oq$k0">
                <ref role="3cqZAo" node="6RuYvJLU7JJ" resolve="concept" />
              </node>
              <node concept="liA8E" id="6UwFzwhCVnl" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getDeclarationNode()" resolve="getDeclarationNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6UwFzwhDnPS" role="3cqZAp">
          <node concept="3K4zz7" id="6UwFzwhDocC" role="3clFbG">
            <node concept="3clFbT" id="6UwFzwhDody" role="3K4E3e" />
            <node concept="2YIFZM" id="6UwFzwhDoz4" role="3K4GZi">
              <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
              <node concept="2OqwBi" id="6UwFzwhCVFq" role="37wK5m">
                <node concept="37vLTw" id="6UwFzwhCVFr" role="2Oq$k0">
                  <ref role="3cqZAo" node="6UwFzwhCVni" resolve="declarationNode" />
                </node>
                <node concept="liA8E" id="6UwFzwhCVFs" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getProperty(java.lang.String)" resolve="getProperty" />
                  <node concept="Xl_RD" id="6UwFzwhCVFt" role="37wK5m">
                    <property role="Xl_RC" value="rootable" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="6UwFzwhDo4C" role="3K4Cdx">
              <node concept="10Nm6u" id="6UwFzwhDobZ" role="3uHU7w" />
              <node concept="37vLTw" id="6UwFzwhDnPQ" role="3uHU7B">
                <ref role="3cqZAo" node="6UwFzwhCVni" resolve="declarationNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6RuYvJLU7JJ" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="6RuYvJLU7JI" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6RuYvJLU7Ce" role="jymVt" />
    <node concept="2tJIrI" id="6RuYvJLUaya" role="jymVt" />
    <node concept="2YIFZL" id="6RuYvJLPASr" role="jymVt">
      <property role="TrG5h" value="superTypesOf" />
      <node concept="3Tm1VV" id="6RuYvJLPASu" role="1B3o_S" />
      <node concept="3clFbS" id="6RuYvJLPASv" role="3clF47">
        <node concept="3clFbF" id="6RuYvJLRvEP" role="3cqZAp">
          <node concept="2OqwBi" id="6RuYvJLUHOR" role="3clFbG">
            <node concept="2OqwBi" id="6RuYvJLUHOS" role="2Oq$k0">
              <node concept="2ShNRf" id="6RuYvJLUHOT" role="2Oq$k0">
                <node concept="kMnCb" id="6RuYvJLUHOU" role="2ShVmc">
                  <node concept="1bVj0M" id="6RuYvJLUHOV" role="kMx8a">
                    <node concept="3clFbS" id="6RuYvJLUHOW" role="1bW5cS">
                      <node concept="3cpWs8" id="6UwFzwhDPa3" role="3cqZAp">
                        <node concept="3cpWsn" id="6UwFzwhDPa4" role="3cpWs9">
                          <property role="TrG5h" value="declarationNode" />
                          <node concept="3uibUv" id="6UwFzwhDOYn" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2OqwBi" id="6UwFzwhDPa5" role="33vP2m">
                            <node concept="37vLTw" id="6UwFzwhDPa6" role="2Oq$k0">
                              <ref role="3cqZAo" node="6RuYvJLPB5o" resolve="concept" />
                            </node>
                            <node concept="liA8E" id="6UwFzwhDPa7" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SAbstractConcept.getDeclarationNode()" resolve="getDeclarationNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="6UwFzwhDQJk" role="3cqZAp">
                        <node concept="3clFbS" id="6UwFzwhDQJm" role="3clFbx">
                          <node concept="_Z6PX" id="6RuYvJLUHOX" role="3cqZAp">
                            <node concept="0kSF2" id="6RuYvJLUHOY" role="_Z9Zf">
                              <node concept="3uibUv" id="6RuYvJLUHOZ" role="0kSFW">
                                <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                                <node concept="3uibUv" id="6RuYvJLUHP0" role="11_B2D">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="6RuYvJLUHP1" role="0kSFX">
                                <node concept="37vLTw" id="6UwFzwhDPa9" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6UwFzwhDPa4" resolve="declarationNode" />
                                </node>
                                <node concept="liA8E" id="6RuYvJLUHP5" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getChildren(java.lang.String)" resolve="getChildren" />
                                  <node concept="Xl_RD" id="6RuYvJLUHP6" role="37wK5m">
                                    <property role="Xl_RC" value="implements" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="6UwFzwhDS8T" role="3clFbw">
                          <node concept="10Nm6u" id="6UwFzwhDSFC" role="3uHU7w" />
                          <node concept="37vLTw" id="6UwFzwhDRrS" role="3uHU7B">
                            <ref role="3cqZAo" node="6UwFzwhDPa4" resolve="declarationNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="6RuYvJLUHP7" role="kMuH3">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="6RuYvJLUHP8" role="2OqNvi">
                <node concept="1bVj0M" id="6RuYvJLUHP9" role="23t8la">
                  <node concept="3clFbS" id="6RuYvJLUHPa" role="1bW5cS">
                    <node concept="3clFbF" id="6RuYvJLUHPb" role="3cqZAp">
                      <node concept="2OqwBi" id="6RuYvJLUHPc" role="3clFbG">
                        <node concept="2OqwBi" id="6RuYvJLUHPd" role="2Oq$k0">
                          <node concept="37vLTw" id="6RuYvJLUHPe" role="2Oq$k0">
                            <ref role="3cqZAo" node="6RuYvJLUHPi" resolve="it" />
                          </node>
                          <node concept="liA8E" id="6RuYvJLUHPf" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(java.lang.String)" resolve="getReferenceTarget" />
                            <node concept="Xl_RD" id="6RuYvJLUHPg" role="37wK5m">
                              <property role="Xl_RC" value="intfc" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6RuYvJLUHPh" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6RuYvJLUHPi" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6RuYvJLUHPj" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="6RuYvJLUHPk" role="2OqNvi">
              <node concept="1bVj0M" id="6RuYvJLUHPl" role="23t8la">
                <node concept="3clFbS" id="6RuYvJLUHPm" role="1bW5cS">
                  <node concept="3clFbF" id="6RuYvJLUHPn" role="3cqZAp">
                    <node concept="17QLQc" id="6RuYvJLUHPo" role="3clFbG">
                      <node concept="37vLTw" id="6RuYvJLUHPp" role="3uHU7B">
                        <ref role="3cqZAo" node="6RuYvJLUHPr" resolve="it" />
                      </node>
                      <node concept="Xl_RD" id="6RuYvJLUHPq" role="3uHU7w">
                        <property role="Xl_RC" value="INamedConcept" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6RuYvJLUHPr" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6RuYvJLUHPs" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6RuYvJLPB5o" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="6RuYvJLPB5n" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="A3Dl8" id="6RuYvJLV8lZ" role="3clF45">
        <node concept="17QB3L" id="6RuYvJLV8OJ" role="A3Ik2" />
      </node>
    </node>
    <node concept="2tJIrI" id="6RuYvJLPAYe" role="jymVt" />
    <node concept="3UR2Jj" id="7pDq5JwdPoX" role="lGtFl">
      <node concept="TZ5HA" id="7pDq5JwdPoY" role="TZ5H$">
        <node concept="1dT_AC" id="7pDq5JwdPoZ" role="1dT_Ay">
          <property role="1dT_AB" value="Utility class with convenience methods to interact with an MPS language through the (S)ModelAPI." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="45zy9qQ_2BX">
    <property role="TrG5h" value="ModelExporter" />
    <node concept="2tJIrI" id="7gkZuCwrm35" role="jymVt" />
    <node concept="2YIFZL" id="3bCBQAzStlW" role="jymVt">
      <property role="TrG5h" value="asJson" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="45zy9qQ_2Ct" role="3clF47">
        <node concept="3clFbF" id="45zy9qQF4JC" role="3cqZAp">
          <node concept="3K4zz7" id="45zy9qQF55m" role="3clFbG">
            <node concept="3clFbC" id="45zy9qQF4U4" role="3K4Cdx">
              <node concept="10Nm6u" id="45zy9qQF54$" role="3uHU7w" />
              <node concept="37vLTw" id="45zy9qQF4JA" role="3uHU7B">
                <ref role="3cqZAo" node="45zy9qQ_dO_" resolve="object" />
              </node>
            </node>
            <node concept="2c44tf" id="7pDq5JwcWPv" role="3K4E3e">
              <node concept="2W7w8A" id="7pDq5JwcWPw" role="2c44tc" />
            </node>
            <node concept="2c44tf" id="7pDq5JwcXxI" role="3K4GZi">
              <node concept="2W7w8S" id="7pDq5JwcXxJ" role="2c44tc">
                <node concept="2W7w9f" id="7pDq5JwcXxK" role="2W7w7V">
                  <property role="TrG5h" value="_class" />
                  <node concept="2W7w8_" id="7pDq5JwcXxL" role="2W7waM">
                    <node concept="2EMmih" id="7pDq5JwcXxM" role="lGtFl">
                      <property role="3qcH_f" value="true" />
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                      <node concept="2OqwBi" id="7pDq5JwcXxN" role="2c44t1">
                        <node concept="2OqwBi" id="7pDq5JwcXxO" role="2Oq$k0">
                          <node concept="37vLTw" id="7pDq5JwcXxP" role="2Oq$k0">
                            <ref role="3cqZAo" node="45zy9qQ_dO_" resolve="object" />
                          </node>
                          <node concept="2yIwOk" id="7pDq5JwcXxQ" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="7pDq5JwcXxR" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2W7w9f" id="7pDq5JwcXxS" role="2W7w7V">
                  <node concept="2W7w8T" id="7pDq5JwcXxT" role="2W7waM" />
                  <node concept="2c44t8" id="7pDq5JwcXxU" role="lGtFl">
                    <node concept="1rXfSq" id="7pDq5JwcXxV" role="2c44t1">
                      <ref role="37wK5l" node="3bCBQAzSuds" resolve="variables" />
                      <node concept="37vLTw" id="7pDq5JwcXxW" role="37wK5m">
                        <ref role="3cqZAo" node="45zy9qQ_dO_" resolve="object" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQ_dO_" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="45zy9qQ_esE" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="45zy9qQ_dNw" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl49" resolve="IJsonValue" />
      </node>
      <node concept="3Tm1VV" id="45zy9qQ_2Cs" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45zy9qQ_u5q" role="jymVt" />
    <node concept="2YIFZL" id="3bCBQAzSuds" role="jymVt">
      <property role="TrG5h" value="variables" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="45zy9qQBo06" role="3clF47">
        <node concept="3clFbF" id="45zy9qQBx0j" role="3cqZAp">
          <node concept="2OqwBi" id="45zy9qQBzrA" role="3clFbG">
            <node concept="2OqwBi" id="45zy9qQBx_1" role="2Oq$k0">
              <node concept="2ShNRf" id="45zy9qQBx0f" role="2Oq$k0">
                <node concept="kMnCb" id="45zy9qQBxe$" role="2ShVmc">
                  <node concept="3Tqbb2" id="45zy9qQBxgf" role="kMuH3">
                    <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
                  </node>
                  <node concept="1bVj0M" id="45zy9qQBxlx" role="kMx8a">
                    <node concept="3clFbS" id="45zy9qQBxly" role="1bW5cS">
                      <node concept="2n63Yl" id="45zy9qQBy3W" role="3cqZAp">
                        <node concept="1rXfSq" id="45zy9qQBy5U" role="2n6tg2">
                          <ref role="37wK5l" node="3bCBQAzSuXd" resolve="namePropertyOrNull" />
                          <node concept="37vLTw" id="45zy9qQByb_" role="37wK5m">
                            <ref role="3cqZAo" node="45zy9qQBy8t" resolve="object" />
                          </node>
                        </node>
                      </node>
                      <node concept="_Z6PX" id="45zy9qQB$3F" role="3cqZAp">
                        <node concept="2OqwBi" id="45zy9qQB_$w" role="_Z9Zf">
                          <node concept="2YIFZM" id="45zy9qQB$gt" role="2Oq$k0">
                            <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                            <ref role="37wK5l" node="45zy9qQ_V$R" resolve="ownProperties" />
                            <node concept="2OqwBi" id="45zy9qQB$L9" role="37wK5m">
                              <node concept="37vLTw" id="45zy9qQB$tb" role="2Oq$k0">
                                <ref role="3cqZAo" node="45zy9qQBy8t" resolve="object" />
                              </node>
                              <node concept="2yIwOk" id="45zy9qQB_db" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="45zy9qQBA8_" role="2OqNvi">
                            <node concept="1bVj0M" id="45zy9qQBA8B" role="23t8la">
                              <node concept="3clFbS" id="45zy9qQBA8C" role="1bW5cS">
                                <node concept="3clFbF" id="45zy9qQBAmc" role="3cqZAp">
                                  <node concept="1rXfSq" id="45zy9qQBAmb" role="3clFbG">
                                    <ref role="37wK5l" node="3bCBQAzSvG$" resolve="asVariable" />
                                    <node concept="37vLTw" id="45zy9qQBA$z" role="37wK5m">
                                      <ref role="3cqZAo" node="45zy9qQBA8D" resolve="property" />
                                    </node>
                                    <node concept="2OqwBi" id="45zy9qQBCIF" role="37wK5m">
                                      <node concept="2JrnkZ" id="45zy9qQBCrD" role="2Oq$k0">
                                        <node concept="37vLTw" id="45zy9qQBC1v" role="2JrQYb">
                                          <ref role="3cqZAo" node="45zy9qQBy8t" resolve="object" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="45zy9qQBEbO" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                                        <node concept="37vLTw" id="45zy9qQBEnF" role="37wK5m">
                                          <ref role="3cqZAo" node="45zy9qQBA8D" resolve="property" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="45zy9qQBA8D" role="1bW2Oz">
                                <property role="TrG5h" value="property" />
                                <node concept="2jxLKc" id="45zy9qQBA8E" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="_Z6PX" id="45zy9qQE1ed" role="3cqZAp">
                        <node concept="2OqwBi" id="45zy9qQE43I" role="_Z9Zf">
                          <node concept="2YIFZM" id="45zy9qQE1PP" role="2Oq$k0">
                            <ref role="37wK5l" node="45zy9qQAai6" resolve="ownContainmentLinks" />
                            <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                            <node concept="2OqwBi" id="45zy9qQE2MD" role="37wK5m">
                              <node concept="37vLTw" id="45zy9qQE2gl" role="2Oq$k0">
                                <ref role="3cqZAo" node="45zy9qQBy8t" resolve="object" />
                              </node>
                              <node concept="2yIwOk" id="45zy9qQE3sz" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="45zy9qQE4P2" role="2OqNvi">
                            <node concept="1bVj0M" id="45zy9qQE4P4" role="23t8la">
                              <node concept="3clFbS" id="45zy9qQE4P5" role="1bW5cS">
                                <node concept="3clFbF" id="45zy9qQE64u" role="3cqZAp">
                                  <node concept="1rXfSq" id="45zy9qQE64t" role="3clFbG">
                                    <ref role="37wK5l" node="3bCBQAzSy42" resolve="asVariable" />
                                    <node concept="37vLTw" id="45zy9qQE6Nn" role="37wK5m">
                                      <ref role="3cqZAo" node="45zy9qQE4P6" resolve="link" />
                                    </node>
                                    <node concept="0kSF2" id="45zy9qQJ55I" role="37wK5m">
                                      <node concept="3uibUv" id="45zy9qQJ55L" role="0kSFW">
                                        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                                        <node concept="3uibUv" id="45zy9qQJ639" role="11_B2D">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="45zy9qQEa4P" role="0kSFX">
                                        <node concept="2JrnkZ" id="45zy9qQE9$j" role="2Oq$k0">
                                          <node concept="37vLTw" id="45zy9qQE8UX" role="2JrQYb">
                                            <ref role="3cqZAo" node="45zy9qQBy8t" resolve="object" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="45zy9qQEaLR" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                                          <node concept="37vLTw" id="45zy9qQEb$3" role="37wK5m">
                                            <ref role="3cqZAo" node="45zy9qQE4P6" resolve="link" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="45zy9qQE4P6" role="1bW2Oz">
                                <property role="TrG5h" value="link" />
                                <node concept="2jxLKc" id="45zy9qQE4P7" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="_Z6PX" id="45zy9qQC7Qj" role="3cqZAp">
                        <node concept="2OqwBi" id="45zy9qQCahu" role="_Z9Zf">
                          <node concept="2YIFZM" id="45zy9qQC8v6" role="2Oq$k0">
                            <ref role="37wK5l" node="45zy9qQAhcE" resolve="ownReferenceLinks" />
                            <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                            <node concept="2OqwBi" id="45zy9qQC9eO" role="37wK5m">
                              <node concept="37vLTw" id="45zy9qQC8Nq" role="2Oq$k0">
                                <ref role="3cqZAo" node="45zy9qQBy8t" resolve="object" />
                              </node>
                              <node concept="2yIwOk" id="45zy9qQC9M$" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="45zy9qQCaWn" role="2OqNvi">
                            <node concept="1bVj0M" id="45zy9qQCaWp" role="23t8la">
                              <node concept="3clFbS" id="45zy9qQCaWq" role="1bW5cS">
                                <node concept="3clFbF" id="45zy9qQCbTl" role="3cqZAp">
                                  <node concept="1rXfSq" id="45zy9qQCbTk" role="3clFbG">
                                    <ref role="37wK5l" node="3bCBQAzSzZ_" resolve="asVariable" />
                                    <node concept="37vLTw" id="45zy9qQCcvJ" role="37wK5m">
                                      <ref role="3cqZAo" node="45zy9qQCaWr" resolve="link" />
                                    </node>
                                    <node concept="2OqwBi" id="45zy9qQCfut" role="37wK5m">
                                      <node concept="2JrnkZ" id="45zy9qQCf4f" role="2Oq$k0">
                                        <node concept="37vLTw" id="45zy9qQCexr" role="2JrQYb">
                                          <ref role="3cqZAo" node="45zy9qQBy8t" resolve="object" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="45zy9qQCg5j" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReference" />
                                        <node concept="37vLTw" id="45zy9qQCgDe" role="37wK5m">
                                          <ref role="3cqZAo" node="45zy9qQCaWr" resolve="link" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="45zy9qQCaWr" role="1bW2Oz">
                                <property role="TrG5h" value="link" />
                                <node concept="2jxLKc" id="45zy9qQCaWs" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="45zy9qQByEc" role="2OqNvi">
                <node concept="1bVj0M" id="45zy9qQByEe" role="23t8la">
                  <node concept="3clFbS" id="45zy9qQByEf" role="1bW5cS">
                    <node concept="3clFbF" id="45zy9qQByLx" role="3cqZAp">
                      <node concept="3y3z36" id="45zy9qQBz1h" role="3clFbG">
                        <node concept="10Nm6u" id="45zy9qQBzb9" role="3uHU7w" />
                        <node concept="37vLTw" id="45zy9qQByLw" role="3uHU7B">
                          <ref role="3cqZAo" node="45zy9qQByEg" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="45zy9qQByEg" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="45zy9qQByEh" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="45zy9qQBzSL" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQBy8t" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="45zy9qQBy8s" role="1tU5fm" />
      </node>
      <node concept="2I9FWS" id="45zy9qQK1i6" role="3clF45">
        <ref role="2I9WkF" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
      <node concept="3Tm6S6" id="45zy9qQBo3C" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45zy9qQBo1V" role="jymVt" />
    <node concept="2YIFZL" id="3bCBQAzSuXd" role="jymVt">
      <property role="TrG5h" value="namePropertyOrNull" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="45zy9qQ_n5A" role="3clF47">
        <node concept="3clFbF" id="45zy9qQ_naY" role="3cqZAp">
          <node concept="3K4zz7" id="45zy9qQ_q$G" role="3clFbG">
            <node concept="10Nm6u" id="45zy9qQ_s7s" role="3K4GZi" />
            <node concept="2OqwBi" id="45zy9qQ_p9M" role="3K4Cdx">
              <node concept="37vLTw" id="45zy9qQ_p1A" role="2Oq$k0">
                <ref role="3cqZAo" node="45zy9qQ_n8Z" resolve="object" />
              </node>
              <node concept="1mIQ4w" id="45zy9qQ_ppC" role="2OqNvi">
                <node concept="chp4Y" id="45zy9qQ_pyk" role="cj9EA">
                  <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                </node>
              </node>
            </node>
            <node concept="2c44tf" id="7pDq5JwcZ2N" role="3K4E3e">
              <node concept="2W7w9f" id="7pDq5JwcZ2O" role="2c44tc">
                <property role="TrG5h" value="name" />
                <node concept="2W7w8_" id="7pDq5JwcZ2P" role="2W7waM">
                  <node concept="2EMmih" id="7pDq5JwcZ2Q" role="lGtFl">
                    <property role="3qcH_f" value="true" />
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                    <node concept="2OqwBi" id="7pDq5JwcZ2R" role="2c44t1">
                      <node concept="1PxgMI" id="7pDq5JwcZ2S" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="7pDq5JwcZ2T" role="3oSUPX">
                          <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                        </node>
                        <node concept="37vLTw" id="7pDq5JwcZ2U" role="1m5AlR">
                          <ref role="3cqZAo" node="45zy9qQ_n8Z" resolve="object" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7pDq5JwcZ2V" role="2OqNvi">
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
      <node concept="37vLTG" id="45zy9qQ_n8Z" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="45zy9qQ_n8Y" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="45zy9qQ_n9C" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
      <node concept="3Tm6S6" id="45zy9qQBnSq" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45zy9qQ_ubZ" role="jymVt" />
    <node concept="2YIFZL" id="3bCBQAzSvG$" role="jymVt">
      <property role="TrG5h" value="asVariable" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="45zy9qQ_u2r" role="3clF47">
        <node concept="3clFbF" id="7pDq5JwcUYA" role="3cqZAp">
          <node concept="2c44tf" id="7pDq5JwcUYy" role="3clFbG">
            <node concept="2W7w9f" id="7pDq5JwcV03" role="2c44tc">
              <node concept="2W7w8T" id="7pDq5JwcV04" role="2W7waM">
                <node concept="2c44te" id="7pDq5JwcV1U" role="lGtFl">
                  <node concept="1rXfSq" id="7pDq5JwcV24" role="2c44t1">
                    <ref role="37wK5l" node="3bCBQAzSws5" resolve="asValue" />
                    <node concept="37vLTw" id="7pDq5JwcV25" role="37wK5m">
                      <ref role="3cqZAo" node="45zy9qQ_uNj" resolve="property" />
                    </node>
                    <node concept="37vLTw" id="7pDq5JwcV26" role="37wK5m">
                      <ref role="3cqZAo" node="45zy9qQ_uNZ" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2EMmih" id="7pDq5JwcV9o" role="lGtFl">
                <property role="3qcH_f" value="true" />
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="2OqwBi" id="7pDq5JwcVbY" role="2c44t1">
                  <node concept="37vLTw" id="7pDq5JwcVbZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="45zy9qQ_uNj" resolve="property" />
                  </node>
                  <node concept="liA8E" id="7pDq5JwcVc0" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQ_uNj" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="45zy9qQ_uNi" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQ_uNZ" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="45zy9qQ_vrL" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="45zy9qQ_uM4" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
      <node concept="3Tm6S6" id="45zy9qQBnVz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45zy9qQDXTy" role="jymVt" />
    <node concept="2tJIrI" id="3Az2mAqskcr" role="jymVt" />
    <node concept="2YIFZL" id="3bCBQAzSws5" role="jymVt">
      <property role="TrG5h" value="asValue" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3Az2mAqsjzC" role="3clF47">
        <node concept="3SKdUt" id="3bCBQAzQDZd" role="3cqZAp">
          <node concept="1PaTwC" id="7pDq5JwcrRU" role="1aUNEU">
            <node concept="3oM_SD" id="7pDq5JwcrRV" role="1PaTwD">
              <property role="3oM_SC" value="Het" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrRW" role="1PaTwD">
              <property role="3oM_SC" value="volgende" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrRX" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrRY" role="1PaTwD">
              <property role="3oM_SC" value="een" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrRZ" role="1PaTwD">
              <property role="3oM_SC" value="work-around" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrS0" role="1PaTwD">
              <property role="3oM_SC" value="voor" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrS1" role="1PaTwD">
              <property role="3oM_SC" value="dat" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrS2" role="1PaTwD">
              <property role="3oM_SC" value="SProperty.getType()" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrS3" role="1PaTwD">
              <property role="3oM_SC" value="geen" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrS4" role="1PaTwD">
              <property role="3oM_SC" value="zinnige" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrS5" role="1PaTwD">
              <property role="3oM_SC" value="dingen" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrS6" role="1PaTwD">
              <property role="3oM_SC" value="terug" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrS7" role="1PaTwD">
              <property role="3oM_SC" value="geeft" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrS8" role="1PaTwD">
              <property role="3oM_SC" value="voor" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrS9" role="1PaTwD">
              <property role="3oM_SC" value="enumeratie-waardige" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrSa" role="1PaTwD">
              <property role="3oM_SC" value="properties." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Az2mAqst5z" role="3cqZAp">
          <node concept="3cpWsn" id="3Az2mAqst5A" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3uibUv" id="3Az2mAqst5B" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2YIFZM" id="6RuYvJLw2F8" role="33vP2m">
              <ref role="37wK5l" node="6RuYvJLvZIY" resolve="typeNodeOf" />
              <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
              <node concept="37vLTw" id="6RuYvJLw2HV" role="37wK5m">
                <ref role="3cqZAo" node="3Az2mAqsn8I" resolve="property" />
              </node>
            </node>
          </node>
        </node>
        <node concept="Jncv_" id="3Az2mAqstbg" role="3cqZAp">
          <ref role="JncvD" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
          <node concept="37vLTw" id="3Az2mAqstR9" role="JncvB">
            <ref role="3cqZAo" node="3Az2mAqst5A" resolve="type" />
          </node>
          <node concept="3clFbS" id="3Az2mAqstbk" role="Jncv$">
            <node concept="3cpWs6" id="3Az2mAqsOTv" role="3cqZAp">
              <node concept="2YIFZM" id="3Az2mAquf8J" role="3cqZAk">
                <ref role="37wK5l" node="7gkZuCwsIdB" resolve="asString" />
                <ref role="1Pybhc" node="45zy9qQ_az1" resolve="JsonUtil" />
                <node concept="3K4zz7" id="3Az2mAquf8K" role="37wK5m">
                  <node concept="2OqwBi" id="3Az2mAquf8L" role="3K4E3e">
                    <node concept="2YIFZM" id="6RuYvJLz7U9" role="2Oq$k0">
                      <ref role="37wK5l" node="6RuYvJLz01M" resolve="defaultMemberOf" />
                      <ref role="1Pybhc" node="45zy9qQzHC9" resolve="MetaUtil" />
                      <node concept="Jnkvi" id="6RuYvJLz7Ua" role="37wK5m">
                        <ref role="1M0zk5" node="3Az2mAqstbm" resolve="enumType" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7XJS2wdgLud" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:1eSXJRel0SS" resolve="memberId" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3Az2mAquf8O" role="3K4GZi">
                    <ref role="3cqZAo" node="3Az2mAqsnGH" resolve="value" />
                  </node>
                  <node concept="3clFbC" id="3Az2mAquf8P" role="3K4Cdx">
                    <node concept="10Nm6u" id="3Az2mAquf8Q" role="3uHU7w" />
                    <node concept="37vLTw" id="3Az2mAquf8R" role="3uHU7B">
                      <ref role="3cqZAo" node="3Az2mAqsnGH" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3Az2mAqstbm" role="JncvA">
            <property role="TrG5h" value="enumType" />
            <node concept="2jxLKc" id="3Az2mAqstbn" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="3Az2mAqsFAo" role="3cqZAp">
          <ref role="JncvD" to="tpce:fKQkHSB" resolve="PrimitiveDataTypeDeclaration" />
          <node concept="37vLTw" id="3Az2mAqsGd_" role="JncvB">
            <ref role="3cqZAo" node="3Az2mAqst5A" resolve="type" />
          </node>
          <node concept="3clFbS" id="3Az2mAqsFAs" role="Jncv$">
            <node concept="3clFbJ" id="3Az2mAqsSfx" role="3cqZAp">
              <node concept="3clFbS" id="3Az2mAqsSfz" role="3clFbx">
                <node concept="3cpWs6" id="3Az2mAqsT18" role="3cqZAp">
                  <node concept="2YIFZM" id="3Az2mAqt1mE" role="3cqZAk">
                    <ref role="37wK5l" node="45zy9qQ_azt" resolve="asBoolean" />
                    <ref role="1Pybhc" node="45zy9qQ_az1" resolve="JsonUtil" />
                    <node concept="2YIFZM" id="3Az2mAqsTGj" role="37wK5m">
                      <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                      <node concept="37vLTw" id="3Az2mAqsUql" role="37wK5m">
                        <ref role="3cqZAo" node="3Az2mAqsnGH" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3Az2mAqsSvz" role="3clFbw">
                <node concept="Jnkvi" id="3Az2mAqsSlu" role="2Oq$k0">
                  <ref role="1M0zk5" node="3Az2mAqsFAu" resolve="primitiveType" />
                </node>
                <node concept="2qgKlT" id="3Az2mAqsSVO" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:hKtG1tp" resolve="isBoolean" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3Az2mAqtdkM" role="3cqZAp">
              <node concept="3clFbS" id="3Az2mAqtdkO" role="3clFbx">
                <node concept="3cpWs6" id="3Az2mAqtfHo" role="3cqZAp">
                  <node concept="3K4zz7" id="3Az2mAqtjCn" role="3cqZAk">
                    <node concept="3clFbC" id="3Az2mAqthKw" role="3K4Cdx">
                      <node concept="10Nm6u" id="3Az2mAqtiO3" role="3uHU7w" />
                      <node concept="37vLTw" id="3Az2mAqtgB$" role="3uHU7B">
                        <ref role="3cqZAo" node="3Az2mAqsnGH" resolve="value" />
                      </node>
                    </node>
                    <node concept="2pJPEk" id="7pDq5Jwd0_P" role="3K4GZi">
                      <node concept="2pJPED" id="7pDq5Jwd0MY" role="2pJPEn">
                        <ref role="2pJxaS" to="tay9:3QNkN21Fl4k" resolve="JsonNumber" />
                        <node concept="2pJxcG" id="7pDq5Jwd0Px" role="2pJxcM">
                          <ref role="2pJxcJ" to="tay9:3QNkN21Fl5P" resolve="value" />
                          <node concept="WxPPo" id="5wO1A4Dvvmk" role="28ntcv">
                            <node concept="37vLTw" id="7pDq5Jwd0Vx" role="WxPPp">
                              <ref role="3cqZAo" node="3Az2mAqsnGH" resolve="value" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2c44tf" id="7pDq5Jwd2j0" role="3K4E3e">
                      <node concept="2W7w8A" id="7pDq5Jwd2j1" role="2c44tc" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3Az2mAqteph" role="3clFbw">
                <node concept="Jnkvi" id="3Az2mAqtedg" role="2Oq$k0">
                  <ref role="1M0zk5" node="3Az2mAqsFAu" resolve="primitiveType" />
                </node>
                <node concept="2qgKlT" id="3Az2mAqtfAg" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:hKtFYCF" resolve="isInteger" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3bCBQAzRqMd" role="3cqZAp">
              <node concept="3clFbS" id="3bCBQAzRqMf" role="3clFbx">
                <node concept="3cpWs6" id="3bCBQAzRt$s" role="3cqZAp">
                  <node concept="3K4zz7" id="3bCBQAzRuSj" role="3cqZAk">
                    <node concept="3clFbC" id="3bCBQAzRuSm" role="3K4Cdx">
                      <node concept="10Nm6u" id="3bCBQAzRuSn" role="3uHU7w" />
                      <node concept="37vLTw" id="3bCBQAzRuSo" role="3uHU7B">
                        <ref role="3cqZAo" node="3Az2mAqsnGH" resolve="value" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="3bCBQAzRuSp" role="3K4GZi">
                      <ref role="1Pybhc" node="45zy9qQ_az1" resolve="JsonUtil" />
                      <ref role="37wK5l" node="7gkZuCwsIdB" resolve="asString" />
                      <node concept="37vLTw" id="3bCBQAzRuSq" role="37wK5m">
                        <ref role="3cqZAo" node="3Az2mAqsnGH" resolve="value" />
                      </node>
                    </node>
                    <node concept="2c44tf" id="7pDq5Jwd2SI" role="3K4E3e">
                      <node concept="2W7w8A" id="7pDq5Jwd2SJ" role="2c44tc" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3bCBQAzRs3b" role="3clFbw">
                <node concept="Jnkvi" id="3bCBQAzRrSh" role="2Oq$k0">
                  <ref role="1M0zk5" node="3Az2mAqsFAu" resolve="primitiveType" />
                </node>
                <node concept="2qgKlT" id="3bCBQAzRtuy" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:hKtFRO6" resolve="isString" />
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3Az2mAqsFAu" role="JncvA">
            <property role="TrG5h" value="primitiveType" />
            <node concept="2jxLKc" id="3Az2mAqsFAv" role="1tU5fm" />
          </node>
        </node>
        <node concept="3SKdUt" id="3Az2mAqtpj0" role="3cqZAp">
          <node concept="1PaTwC" id="7pDq5JwcrSb" role="1aUNEU">
            <node concept="3oM_SD" id="7pDq5JwcrSc" role="1PaTwD">
              <property role="3oM_SC" value="fallthrough" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrSd" role="1PaTwD">
              <property role="3oM_SC" value="voor" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrSe" role="1PaTwD">
              <property role="3oM_SC" value="alle" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrSf" role="1PaTwD">
              <property role="3oM_SC" value="andere" />
            </node>
            <node concept="3oM_SD" id="7pDq5JwcrSg" role="1PaTwD">
              <property role="3oM_SC" value="gevallen:" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bCBQAzRzmq" role="3cqZAp">
          <node concept="2YIFZM" id="3bCBQAzR$tm" role="3clFbG">
            <ref role="37wK5l" node="7gkZuCwsIdB" resolve="asString" />
            <ref role="1Pybhc" node="45zy9qQ_az1" resolve="JsonUtil" />
            <node concept="3cpWs3" id="3bCBQAzRFXE" role="37wK5m">
              <node concept="37vLTw" id="3bCBQAzRGpC" role="3uHU7w">
                <ref role="3cqZAo" node="3Az2mAqsnGH" resolve="value" />
              </node>
              <node concept="3cpWs3" id="3bCBQAzREXa" role="3uHU7B">
                <node concept="3cpWs3" id="3bCBQAzRD$H" role="3uHU7B">
                  <node concept="3cpWs3" id="3bCBQAzRCJy" role="3uHU7B">
                    <node concept="3cpWs3" id="3bCBQAzRA1m" role="3uHU7B">
                      <node concept="Xl_RD" id="3bCBQAzR_yN" role="3uHU7B">
                        <property role="Xl_RC" value="!!! no serialisation implemented for: property=" />
                      </node>
                      <node concept="2OqwBi" id="3bCBQAzRC6y" role="3uHU7w">
                        <node concept="2OqwBi" id="3bCBQAzRBwJ" role="2Oq$k0">
                          <node concept="37vLTw" id="3bCBQAzRBiJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Az2mAqsn8I" resolve="property" />
                          </node>
                          <node concept="liA8E" id="3bCBQAzRBRW" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SConceptFeature.getOwner()" resolve="getOwner" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3bCBQAzRCqR" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3bCBQAzRCJY" role="3uHU7w">
                      <property role="Xl_RC" value="#" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3bCBQAzREdh" role="3uHU7w">
                    <node concept="37vLTw" id="3bCBQAzRDYn" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Az2mAqsn8I" resolve="property" />
                    </node>
                    <node concept="liA8E" id="3bCBQAzRED9" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="3bCBQAzREXA" role="3uHU7w">
                  <property role="Xl_RC" value=", value=" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3Az2mAqsn8I" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="3Az2mAqsn8H" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
      <node concept="37vLTG" id="3Az2mAqsnGH" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="3Az2mAqsogi" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="3Az2mAqsVbR" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl49" resolve="IJsonValue" />
      </node>
      <node concept="3Tm6S6" id="3Az2mAqtqY6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3Az2mAqskP6" role="jymVt" />
    <node concept="2tJIrI" id="3Az2mAqtsVp" role="jymVt" />
    <node concept="2YIFZL" id="3bCBQAzSy42" role="jymVt">
      <property role="TrG5h" value="asVariable" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="45zy9qQDX7W" role="3clF47">
        <node concept="3clFbF" id="7pDq5Jwd3yw" role="3cqZAp">
          <node concept="2c44tf" id="7pDq5Jwd3ys" role="3clFbG">
            <node concept="2W7w9f" id="7pDq5Jwd3E6" role="2c44tc">
              <node concept="2W7w8T" id="7pDq5Jwd3E7" role="2W7waM">
                <node concept="2c44te" id="7pDq5Jwd3KI" role="lGtFl">
                  <node concept="1rXfSq" id="7pDq5Jwd3KS" role="2c44t1">
                    <ref role="37wK5l" node="3bCBQAzSyTh" resolve="asValue" />
                    <node concept="37vLTw" id="7pDq5Jwd3KT" role="37wK5m">
                      <ref role="3cqZAo" node="45zy9qQDYAV" resolve="link" />
                    </node>
                    <node concept="37vLTw" id="7pDq5Jwd3KU" role="37wK5m">
                      <ref role="3cqZAo" node="45zy9qQDYD7" resolve="contents" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2EMmih" id="7pDq5Jwd3Er" role="lGtFl">
                <property role="3qcH_f" value="true" />
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="2OqwBi" id="7pDq5Jwd3EU" role="2c44t1">
                  <node concept="37vLTw" id="7pDq5Jwd3EV" role="2Oq$k0">
                    <ref role="3cqZAo" node="45zy9qQDYAV" resolve="link" />
                  </node>
                  <node concept="liA8E" id="7pDq5Jwd3EW" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQDYAV" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="45zy9qQDYAU" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQDYD7" role="3clF46">
        <property role="TrG5h" value="contents" />
        <node concept="3uibUv" id="45zy9qQDYD8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="45zy9qQJx4D" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="45zy9qQDXYz" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
      <node concept="3Tm6S6" id="7gkZuCwp2KH" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45zy9qQDXd4" role="jymVt" />
    <node concept="2YIFZL" id="3bCBQAzSyTh" role="jymVt">
      <property role="TrG5h" value="asValue" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="45zy9qQCvr3" role="3clF47">
        <node concept="3cpWs8" id="45zy9qQCvBV" role="3cqZAp">
          <node concept="3cpWsn" id="45zy9qQCvBY" role="3cpWs9">
            <property role="TrG5h" value="contents" />
            <node concept="A3Dl8" id="45zy9qQCvBZ" role="1tU5fm">
              <node concept="3uibUv" id="45zy9qQIvGH" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="45zy9qQCvC2" role="33vP2m">
              <node concept="kMnCb" id="45zy9qQCvC3" role="2ShVmc">
                <node concept="3uibUv" id="45zy9qQIv8h" role="kMuH3">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="1bVj0M" id="45zy9qQCvC6" role="kMx8a">
                  <node concept="3clFbS" id="45zy9qQCvC7" role="1bW5cS">
                    <node concept="_Z6PX" id="45zy9qQCvC8" role="3cqZAp">
                      <node concept="37vLTw" id="45zy9qQCvC9" role="_Z9Zf">
                        <ref role="3cqZAo" node="45zy9qQCvAQ" resolve="contents_" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="45zy9qQCwx1" role="3cqZAp">
          <node concept="3K4zz7" id="45zy9qQD8ad" role="3clFbG">
            <node concept="1rXfSq" id="45zy9qQD8l3" role="3K4GZi">
              <ref role="37wK5l" node="3bCBQAzStlW" resolve="asJson" />
              <node concept="2OqwBi" id="45zy9qQD8U9" role="37wK5m">
                <node concept="37vLTw" id="45zy9qQD8xh" role="2Oq$k0">
                  <ref role="3cqZAo" node="45zy9qQCvBY" resolve="contents" />
                </node>
                <node concept="1uHKPH" id="45zy9qQD9zo" role="2OqNvi" />
              </node>
            </node>
            <node concept="2OqwBi" id="45zy9qQCwLq" role="3K4Cdx">
              <node concept="37vLTw" id="45zy9qQCwwZ" role="2Oq$k0">
                <ref role="3cqZAo" node="45zy9qQCvAO" resolve="link" />
              </node>
              <node concept="liA8E" id="45zy9qQCxnx" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractLink.isMultiple()" resolve="isMultiple" />
              </node>
            </node>
            <node concept="2c44tf" id="7pDq5Jwd4BR" role="3K4E3e">
              <node concept="2W7w8W" id="7pDq5Jwd4BS" role="2c44tc">
                <node concept="2W7w8S" id="7pDq5Jwd4BT" role="2W7w9d">
                  <node concept="2c44t8" id="7pDq5Jwd4BU" role="lGtFl">
                    <node concept="2OqwBi" id="7pDq5Jwd4BV" role="2c44t1">
                      <node concept="2OqwBi" id="7pDq5Jwd4BW" role="2Oq$k0">
                        <node concept="37vLTw" id="7pDq5Jwd4BX" role="2Oq$k0">
                          <ref role="3cqZAo" node="45zy9qQCvBY" resolve="contents" />
                        </node>
                        <node concept="3$u5V9" id="7pDq5Jwd4BY" role="2OqNvi">
                          <node concept="1bVj0M" id="7pDq5Jwd4BZ" role="23t8la">
                            <node concept="3clFbS" id="7pDq5Jwd4C0" role="1bW5cS">
                              <node concept="3clFbF" id="7pDq5Jwd4C1" role="3cqZAp">
                                <node concept="1PxgMI" id="7pDq5Jwd4C2" role="3clFbG">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="7pDq5Jwd4C3" role="3oSUPX">
                                    <ref role="cht4Q" to="tay9:3QNkN21Fl49" resolve="IJsonValue" />
                                  </node>
                                  <node concept="1rXfSq" id="7pDq5Jwd4C4" role="1m5AlR">
                                    <ref role="37wK5l" node="3bCBQAzStlW" resolve="asJson" />
                                    <node concept="37vLTw" id="7pDq5Jwd4C5" role="37wK5m">
                                      <ref role="3cqZAo" node="7pDq5Jwd4C6" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="7pDq5Jwd4C6" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="7pDq5Jwd4C7" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="7pDq5Jwd4C8" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQCvAO" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="45zy9qQCvAP" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQCvAQ" role="3clF46">
        <property role="TrG5h" value="contents_" />
        <node concept="3uibUv" id="45zy9qQCvAR" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="45zy9qQJy6P" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="45zy9qQCvA3" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl49" resolve="IJsonValue" />
      </node>
      <node concept="3Tm6S6" id="45zy9qQCvr1" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45zy9qQCvwg" role="jymVt" />
    <node concept="2YIFZL" id="3bCBQAzSzZ_" role="jymVt">
      <property role="TrG5h" value="asVariable" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="45zy9qQC3_B" role="3clF47">
        <node concept="3clFbF" id="1PKYdTG2mOl" role="3cqZAp">
          <node concept="3K4zz7" id="1PKYdTG2ntO" role="3clFbG">
            <node concept="3clFbC" id="1PKYdTG2noy" role="3K4Cdx">
              <node concept="10Nm6u" id="1PKYdTG2nsV" role="3uHU7w" />
              <node concept="37vLTw" id="1PKYdTG2mOj" role="3uHU7B">
                <ref role="3cqZAo" node="45zy9qQC4Vw" resolve="reference" />
              </node>
            </node>
            <node concept="2c44tf" id="7pDq5Jwd61a" role="3K4E3e">
              <node concept="2W7w9f" id="7pDq5Jwd61b" role="2c44tc">
                <node concept="2W7w8A" id="7pDq5Jwd61c" role="2W7waM" />
                <node concept="2EMmih" id="7pDq5Jwd61d" role="lGtFl">
                  <property role="3qcH_f" value="true" />
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="2OqwBi" id="7pDq5Jwd61e" role="2c44t1">
                    <node concept="37vLTw" id="7pDq5Jwd61f" role="2Oq$k0">
                      <ref role="3cqZAo" node="45zy9qQC3Hf" resolve="link" />
                    </node>
                    <node concept="liA8E" id="7pDq5Jwd61g" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2c44tf" id="7pDq5Jwd6Nn" role="3K4GZi">
              <node concept="2W7w9f" id="7pDq5Jwd6No" role="2c44tc">
                <node concept="2W7w8_" id="7pDq5Jwd6Np" role="2W7waM">
                  <node concept="2EMmih" id="7pDq5Jwd6Nq" role="lGtFl">
                    <property role="3qcH_f" value="true" />
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="8382542b-a045-4f73-951b-02d75ee252bf/4445988724943966485/4445988724943966566" />
                    <node concept="2OqwBi" id="7pDq5Jwd6Nr" role="2c44t1">
                      <node concept="1PxgMI" id="7pDq5Jwd6Ns" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="7pDq5Jwd6Nt" role="3oSUPX">
                          <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                        </node>
                        <node concept="2OqwBi" id="7pDq5Jwd6Nu" role="1m5AlR">
                          <node concept="liA8E" id="7pDq5Jwd6Nv" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                          </node>
                          <node concept="37vLTw" id="7pDq5Jwd6Nw" role="2Oq$k0">
                            <ref role="3cqZAo" node="45zy9qQC4Vw" resolve="reference" />
                          </node>
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7pDq5Jwd6Nx" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2EMmih" id="7pDq5Jwd6Ny" role="lGtFl">
                  <property role="3qcH_f" value="true" />
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="2OqwBi" id="7pDq5Jwd6Nz" role="2c44t1">
                    <node concept="37vLTw" id="7pDq5Jwd6N$" role="2Oq$k0">
                      <ref role="3cqZAo" node="45zy9qQC3Hf" resolve="link" />
                    </node>
                    <node concept="liA8E" id="7pDq5Jwd6N_" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQC3Hf" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="45zy9qQC3He" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="37vLTG" id="45zy9qQC4Vw" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="45zy9qQC4WL" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
        </node>
      </node>
      <node concept="3Tqbb2" id="45zy9qQC3FZ" role="3clF45">
        <ref role="ehGHo" to="tay9:3QNkN21Fl5Z" resolve="JsonPair" />
      </node>
      <node concept="3Tm6S6" id="45zy9qQC3CH" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45zy9qQC3D1" role="jymVt" />
    <node concept="3Tm1VV" id="45zy9qQ_2BY" role="1B3o_S" />
    <node concept="3UR2Jj" id="7pDq5JwdS6j" role="lGtFl">
      <node concept="TZ5HA" id="7pDq5JwdS6k" role="TZ5H$">
        <node concept="1dT_AC" id="7pDq5JwdS6l" role="1dT_Ay">
          <property role="1dT_AB" value="Utility class whose asJson(..)-method exports any node to JSON." />
        </node>
      </node>
    </node>
  </node>
</model>

