<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c546ab52-186f-4563-a0f9-eb59ddf54026(XSD.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="d8f591ec-4d86-4af2-9f92-a9e93c803ffa" name="jetbrains.mps.lang.scopes" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="irkh" ref="r:5453e083-42db-4474-9ebc-c4b11ee10157(XSD.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
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
      <concept id="1228997946467" name="jetbrains.mps.baseLanguage.closures.structure.YieldAllStatement" flags="nn" index="_Z6PX">
        <child id="1228997959377" name="expression" index="_Z9Zf" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="d8f591ec-4d86-4af2-9f92-a9e93c803ffa" name="jetbrains.mps.lang.scopes">
      <concept id="8077936094962911282" name="jetbrains.mps.lang.scopes.structure.ParentScope" flags="nn" index="iy90A" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1966870290083281362" name="jetbrains.mps.lang.smodel.structure.EnumMember_NameOperation" flags="ng" index="24Tkf9" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="1522217801069396578" name="jetbrains.mps.baseLanguage.collections.structure.FoldLeftOperation" flags="nn" index="1MD8d$">
        <child id="1522217801069421796" name="seed" index="1MDeny" />
      </concept>
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="13h7C7" id="6P6yfMflkSB">
    <property role="3GE5qa" value="other" />
    <ref role="13h7C2" to="irkh:5Ll95tHQEF5" resolve="XsdTypeLiteral" />
    <node concept="13i0hz" id="nxI_60hym0" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="generatesTypeReference" />
      <node concept="3Tm1VV" id="nxI_60hym1" role="1B3o_S" />
      <node concept="10P_77" id="nxI_60hyAe" role="3clF45" />
      <node concept="3clFbS" id="nxI_60hym3" role="3clF47">
        <node concept="Jncv_" id="nxI_60hzgT" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHOMk_" resolve="XsdDataType" />
          <node concept="13iPFW" id="nxI_60hzhm" role="JncvB" />
          <node concept="3clFbS" id="nxI_60hzgV" role="Jncv$">
            <node concept="3cpWs6" id="nxI_60hzkR" role="3cqZAp">
              <node concept="3clFbT" id="nxI_60hzla" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="nxI_60hzgW" role="JncvA">
            <property role="TrG5h" value="dataType" />
            <node concept="2jxLKc" id="nxI_60hzgX" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="nxI_60hznN" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHOMks" resolve="XsdTypeDeclarationRef" />
          <node concept="13iPFW" id="nxI_60hzpy" role="JncvB" />
          <node concept="3clFbS" id="nxI_60hznR" role="Jncv$">
            <node concept="3cpWs6" id="nxI_60hzuz" role="3cqZAp">
              <node concept="3clFbT" id="nxI_60hzuC" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="nxI_60hznT" role="JncvA">
            <property role="TrG5h" value="typeRef" />
            <node concept="2jxLKc" id="nxI_60hznU" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="nxI_60hzwE" role="3cqZAp">
          <ref role="JncvD" to="irkh:GIhN6Iasm" resolve="XsdSimpleType" />
          <node concept="13iPFW" id="nxI_60hzyI" role="JncvB" />
          <node concept="3clFbS" id="nxI_60hzwI" role="Jncv$">
            <node concept="3cpWs6" id="nxI_60hzAP" role="3cqZAp">
              <node concept="3clFbT" id="nxI_60hzBc" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="nxI_60hzwK" role="JncvA">
            <property role="TrG5h" value="simpleType" />
            <node concept="2jxLKc" id="nxI_60hzwL" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="5_bgKla3mwL" role="3cqZAp">
          <ref role="JncvD" to="irkh:GIhN6I5RP" resolve="XsdComplexType" />
          <node concept="13iPFW" id="5_bgKla3mwM" role="JncvB" />
          <node concept="3clFbS" id="5_bgKla3mwN" role="Jncv$">
            <node concept="3cpWs6" id="5_bgKla3mwO" role="3cqZAp">
              <node concept="3clFbT" id="5_bgKla3mwP" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="5_bgKla3mwQ" role="JncvA">
            <property role="TrG5h" value="complexType" />
            <node concept="2jxLKc" id="5_bgKla3mwR" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="5_bgKla3ml8" role="3cqZAp" />
        <node concept="YS8fn" id="nxI_60h_7x" role="3cqZAp">
          <node concept="2ShNRf" id="nxI_60h$LE" role="YScLw">
            <node concept="1pGfFk" id="nxI_60h$LF" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
              <node concept="3cpWs3" id="nxI_60h$LG" role="37wK5m">
                <node concept="2OqwBi" id="nxI_60h$LH" role="3uHU7w">
                  <node concept="2OqwBi" id="nxI_60h$LI" role="2Oq$k0">
                    <node concept="13iPFW" id="nxI_60h$LJ" role="2Oq$k0" />
                    <node concept="2yIwOk" id="nxI_60h$LK" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="nxI_60h$LL" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="nxI_60h$LM" role="3uHU7B">
                  <property role="Xl_RC" value="#generatesTypeReference() not defined for sub type of XsdTypeLiteral: " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6P6yfMflkSC" role="13h7CW">
      <node concept="3clFbS" id="6P6yfMflkSD" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6P6yfMflkSM" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="asTypeReference" />
      <node concept="3Tm1VV" id="6P6yfMflkSN" role="1B3o_S" />
      <node concept="17QB3L" id="6P6yfMflkTa" role="3clF45" />
      <node concept="3clFbS" id="6P6yfMflkSP" role="3clF47">
        <node concept="3clFbJ" id="nxI_60hBsD" role="3cqZAp">
          <node concept="3clFbS" id="nxI_60hBsF" role="3clFbx">
            <node concept="YS8fn" id="nxI_60hCf7" role="3cqZAp">
              <node concept="2ShNRf" id="nxI_60hCfd" role="YScLw">
                <node concept="1pGfFk" id="nxI_60hCmx" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="nxI_60hDbG" role="37wK5m">
                    <node concept="2OqwBi" id="nxI_60hE44" role="3uHU7w">
                      <node concept="2OqwBi" id="nxI_60hDok" role="2Oq$k0">
                        <node concept="13iPFW" id="nxI_60hDbN" role="2Oq$k0" />
                        <node concept="2yIwOk" id="nxI_60hDGA" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="nxI_60hF2h" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="nxI_60hCpW" role="3uHU7B">
                      <property role="Xl_RC" value="#asTypeReference() should not be called when #generatesTypeReference() is false for sub type of XsdTypeLiteral: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="nxI_60hBDu" role="3clFbw">
            <node concept="2OqwBi" id="nxI_60hBSf" role="3fr31v">
              <node concept="13iPFW" id="nxI_60hBDy" role="2Oq$k0" />
              <node concept="2qgKlT" id="nxI_60hCb6" role="2OqNvi">
                <ref role="37wK5l" node="nxI_60hym0" resolve="generatesTypeReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="Jncv_" id="5Ll95tHQK7_" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHOMk_" resolve="XsdDataType" />
          <node concept="13iPFW" id="6P6yfMfllx5" role="JncvB" />
          <node concept="3clFbS" id="5Ll95tHQK7B" role="Jncv$">
            <node concept="3cpWs6" id="5Ll95tHQLtZ" role="3cqZAp">
              <node concept="3cpWs3" id="5Ll95tHQMEi" role="3cqZAk">
                <node concept="2OqwBi" id="5xFSyvKSMDk" role="3uHU7w">
                  <node concept="24Tkf9" id="5xFSyvKSMDm" role="2OqNvi" />
                  <node concept="2OqwBi" id="5Ll95tHRb28" role="2Oq$k0">
                    <node concept="Jnkvi" id="5Ll95tHQMP5" role="2Oq$k0">
                      <ref role="1M0zk5" node="5Ll95tHQK7C" resolve="dataType" />
                    </node>
                    <node concept="3TrcHB" id="5Ll95tHRcdM" role="2OqNvi">
                      <ref role="3TsBF5" to="irkh:5xFSyvKSMD0" resolve="dataType" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="5Ll95tHQLNj" role="3uHU7B">
                  <property role="Xl_RC" value="xs:" />
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="5Ll95tHQK7C" role="JncvA">
            <property role="TrG5h" value="dataType" />
            <node concept="2jxLKc" id="5Ll95tHQK7D" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="5Ll95tHQOx2" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHOMks" resolve="XsdTypeDeclarationRef" />
          <node concept="13iPFW" id="6P6yfMfllGN" role="JncvB" />
          <node concept="3clFbS" id="5Ll95tHQOx6" role="Jncv$">
            <node concept="3cpWs8" id="2VDbS_nMZlg" role="3cqZAp">
              <node concept="3cpWsn" id="2VDbS_nMZlh" role="3cpWs9">
                <property role="TrG5h" value="typeDeclaration" />
                <node concept="3Tqbb2" id="2VDbS_nMZl5" role="1tU5fm">
                  <ref role="ehGHo" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
                </node>
                <node concept="2OqwBi" id="2VDbS_nMZli" role="33vP2m">
                  <node concept="Jnkvi" id="2VDbS_nMZlj" role="2Oq$k0">
                    <ref role="1M0zk5" node="5Ll95tHQOx8" resolve="typeDeclarationRef" />
                  </node>
                  <node concept="3TrEf2" id="2VDbS_nMZlk" role="2OqNvi">
                    <ref role="3Tt5mk" to="irkh:5Ll95tHOVYh" resolve="typeDeclaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2VDbS_nN5vX" role="3cqZAp">
              <node concept="3cpWsn" id="2VDbS_nN5vY" role="3cpWs9">
                <property role="TrG5h" value="thisSchemaBody" />
                <node concept="3Tqbb2" id="2VDbS_nN5vT" role="1tU5fm">
                  <ref role="ehGHo" to="irkh:nxI_60uCZI" resolve="XsdSchemaBody" />
                </node>
                <node concept="2OqwBi" id="2VDbS_nN5vZ" role="33vP2m">
                  <node concept="13iPFW" id="2VDbS_nN5w0" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="2VDbS_nN5w1" role="2OqNvi">
                    <node concept="1xMEDy" id="2VDbS_nN5w2" role="1xVPHs">
                      <node concept="chp4Y" id="2VDbS_nPrq3" role="ri$Ld">
                        <ref role="cht4Q" to="irkh:nxI_60uCZI" resolve="XsdSchemaBody" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2VDbS_nN7jF" role="3cqZAp">
              <node concept="3cpWsn" id="2VDbS_nN7jG" role="3cpWs9">
                <property role="TrG5h" value="targetSchemaBody" />
                <node concept="3Tqbb2" id="2VDbS_nN7j4" role="1tU5fm">
                  <ref role="ehGHo" to="irkh:nxI_60uCZI" resolve="XsdSchemaBody" />
                </node>
                <node concept="2OqwBi" id="2VDbS_nN7jH" role="33vP2m">
                  <node concept="37vLTw" id="2VDbS_nN7jI" role="2Oq$k0">
                    <ref role="3cqZAo" node="2VDbS_nMZlh" resolve="typeDeclaration" />
                  </node>
                  <node concept="2Xjw5R" id="2VDbS_nN7jJ" role="2OqNvi">
                    <node concept="1xMEDy" id="2VDbS_nN7jK" role="1xVPHs">
                      <node concept="chp4Y" id="2VDbS_nPrRi" role="ri$Ld">
                        <ref role="cht4Q" to="irkh:nxI_60uCZI" resolve="XsdSchemaBody" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2VDbS_nN1YH" role="3cqZAp">
              <node concept="3cpWsn" id="2VDbS_nN1YK" role="3cpWs9">
                <property role="TrG5h" value="prefix" />
                <node concept="17QB3L" id="2VDbS_nN1YF" role="1tU5fm" />
                <node concept="3K4zz7" id="2VDbS_nN2Qn" role="33vP2m">
                  <node concept="Xl_RD" id="2VDbS_nN2RI" role="3K4E3e">
                    <property role="Xl_RC" value="tns" />
                  </node>
                  <node concept="2OqwBi" id="2VDbS_nNog8" role="3K4GZi">
                    <node concept="2OqwBi" id="2VDbS_nNdBb" role="2Oq$k0">
                      <node concept="2OqwBi" id="2VDbS_nNnbh" role="2Oq$k0">
                        <node concept="37vLTw" id="2VDbS_nN821" role="2Oq$k0">
                          <ref role="3cqZAo" node="2VDbS_nN5vY" resolve="thisSchemaBody" />
                        </node>
                        <node concept="3Tsc0h" id="2VDbS_nNnCl" role="2OqNvi">
                          <ref role="3TtcxE" to="irkh:nxI_60uCZJ" resolve="imports" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="2VDbS_nNgVu" role="2OqNvi">
                        <node concept="1bVj0M" id="2VDbS_nNgVw" role="23t8la">
                          <node concept="3clFbS" id="2VDbS_nNgVx" role="1bW5cS">
                            <node concept="3clFbF" id="2VDbS_nNhmi" role="3cqZAp">
                              <node concept="17R0WA" id="2VDbS_nPIiR" role="3clFbG">
                                <node concept="37vLTw" id="2VDbS_nPIIR" role="3uHU7w">
                                  <ref role="3cqZAo" node="2VDbS_nN7jG" resolve="targetSchemaBody" />
                                </node>
                                <node concept="2OqwBi" id="2VDbS_nPsDn" role="3uHU7B">
                                  <node concept="2OqwBi" id="2VDbS_nNhR1" role="2Oq$k0">
                                    <node concept="37vLTw" id="2VDbS_nNhmh" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2VDbS_nNgVy" resolve="it" />
                                    </node>
                                    <node concept="3TrEf2" id="2VDbS_nNizO" role="2OqNvi">
                                      <ref role="3Tt5mk" to="irkh:nxI_60tnHb" resolve="schema" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="2VDbS_nPts8" role="2OqNvi">
                                    <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="2VDbS_nNgVy" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="2VDbS_nNgVz" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="2VDbS_nNoKP" role="2OqNvi">
                      <ref role="3TsBF5" to="irkh:2VDbS_nLTaf" resolve="prefix" />
                    </node>
                  </node>
                  <node concept="17R0WA" id="2VDbS_nN810" role="3K4Cdx">
                    <node concept="37vLTw" id="2VDbS_nN81A" role="3uHU7w">
                      <ref role="3cqZAo" node="2VDbS_nN7jG" resolve="targetSchemaBody" />
                    </node>
                    <node concept="37vLTw" id="2VDbS_nN7S5" role="3uHU7B">
                      <ref role="3cqZAo" node="2VDbS_nN5vY" resolve="thisSchemaBody" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5Ll95tHQQes" role="3cqZAp">
              <node concept="3cpWs3" id="5Ll95tHQRFt" role="3cqZAk">
                <node concept="2OqwBi" id="5Ll95tHQTgt" role="3uHU7w">
                  <node concept="37vLTw" id="2VDbS_nMZll" role="2Oq$k0">
                    <ref role="3cqZAo" node="2VDbS_nMZlh" resolve="typeDeclaration" />
                  </node>
                  <node concept="3TrcHB" id="5Ll95tHQTN9" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="3cpWs3" id="2VDbS_nNqlg" role="3uHU7B">
                  <node concept="Xl_RD" id="2VDbS_nNqKJ" role="3uHU7w">
                    <property role="Xl_RC" value=":" />
                  </node>
                  <node concept="37vLTw" id="2VDbS_nNpoh" role="3uHU7B">
                    <ref role="3cqZAo" node="2VDbS_nN1YK" resolve="prefix" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="5Ll95tHQOx8" role="JncvA">
            <property role="TrG5h" value="typeDeclarationRef" />
            <node concept="2jxLKc" id="5Ll95tHQOx9" role="1tU5fm" />
          </node>
        </node>
        <node concept="YS8fn" id="5Ll95tHQUqr" role="3cqZAp">
          <node concept="2ShNRf" id="5Ll95tHQUIr" role="YScLw">
            <node concept="1pGfFk" id="5Ll95tHQXdI" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
              <node concept="3cpWs3" id="5Ll95tHR22P" role="37wK5m">
                <node concept="2OqwBi" id="5Ll95tHR4Vf" role="3uHU7w">
                  <node concept="2OqwBi" id="5Ll95tHR3WV" role="2Oq$k0">
                    <node concept="13iPFW" id="6P6yfMfllT$" role="2Oq$k0" />
                    <node concept="2yIwOk" id="5Ll95tHR4wC" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="5Ll95tHR5yg" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5Ll95tHQXRn" role="3uHU7B">
                  <property role="Xl_RC" value="#asXsdType() not defined for sub type of XsdTypeLiteral: " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5nPH9FxCZ2O" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="instanceSerialisationIsAString" />
      <node concept="3Tm1VV" id="5nPH9FxCZ2P" role="1B3o_S" />
      <node concept="10P_77" id="5nPH9FxCZhR" role="3clF45" />
      <node concept="3clFbS" id="5nPH9FxCZ2R" role="3clF47">
        <node concept="Jncv_" id="5nPH9FxCZii" role="3cqZAp">
          <ref role="JncvD" to="irkh:GIhN6I5RP" resolve="XsdComplexType" />
          <node concept="13iPFW" id="5nPH9FxCZiJ" role="JncvB" />
          <node concept="3clFbS" id="5nPH9FxCZik" role="Jncv$">
            <node concept="3cpWs6" id="5nPH9FxCZlV" role="3cqZAp">
              <node concept="3clFbT" id="5nPH9FxCZm0" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="5nPH9FxCZil" role="JncvA">
            <property role="TrG5h" value="complexType" />
            <node concept="2jxLKc" id="5nPH9FxCZim" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs6" id="5nPH9FxCZn$" role="3cqZAp">
          <node concept="3clFbT" id="5nPH9FxCZoT" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3epa_KBVZyU">
    <property role="3GE5qa" value="topLevel" />
    <ref role="13h7C2" to="irkh:3epa_KBVSBS" resolve="XsdTypeDefinition" />
    <node concept="13i0hz" id="nxI_60ilSc" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="isInDeclaration" />
      <node concept="3Tm1VV" id="nxI_60ilSd" role="1B3o_S" />
      <node concept="10P_77" id="nxI_60ilUp" role="3clF45" />
      <node concept="3clFbS" id="nxI_60ilSf" role="3clF47">
        <node concept="3clFbF" id="nxI_60ilV5" role="3cqZAp">
          <node concept="2OqwBi" id="nxI_60imBd" role="3clFbG">
            <node concept="2OqwBi" id="nxI_60im3$" role="2Oq$k0">
              <node concept="13iPFW" id="nxI_60ilV4" role="2Oq$k0" />
              <node concept="1mfA1w" id="nxI_60imm3" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="nxI_60imRu" role="2OqNvi">
              <node concept="chp4Y" id="nxI_60imX0" role="cj9EA">
                <ref role="cht4Q" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3epa_KBVZyV" role="13h7CW">
      <node concept="3clFbS" id="3epa_KBVZyW" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3epa_KBVZz5" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="name" />
      <node concept="3Tm1VV" id="3epa_KBVZz6" role="1B3o_S" />
      <node concept="17QB3L" id="3epa_KBVZzl" role="3clF45" />
      <node concept="3clFbS" id="3epa_KBVZz8" role="3clF47">
        <node concept="3clFbF" id="3epa_KBVZzL" role="3cqZAp">
          <node concept="2OqwBi" id="3epa_KBW0yF" role="3clFbG">
            <node concept="1PxgMI" id="3epa_KBW0m1" role="2Oq$k0">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="3epa_KBW0mS" role="3oSUPX">
                <ref role="cht4Q" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="3epa_KBVZGg" role="1m5AlR">
                <node concept="13iPFW" id="3epa_KBVZzK" role="2Oq$k0" />
                <node concept="1mfA1w" id="3epa_KBVZYJ" role="2OqNvi" />
              </node>
            </node>
            <node concept="3TrcHB" id="3epa_KBW0LR" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2VDbS_nYzMj">
    <property role="3GE5qa" value="topLevel" />
    <ref role="13h7C2" to="irkh:nxI_60uCZI" resolve="XsdSchemaBody" />
    <node concept="13i0hz" id="2VDbS_nY$KB" role="13h7CS">
      <property role="TrG5h" value="typeDeclarations" />
      <node concept="3Tm1VV" id="2VDbS_nY$KC" role="1B3o_S" />
      <node concept="A3Dl8" id="2VDbS_nY$Ld" role="3clF45">
        <node concept="3Tqbb2" id="2VDbS_nY$Lq" role="A3Ik2">
          <ref role="ehGHo" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="2VDbS_nY$KE" role="3clF47">
        <node concept="3clFbF" id="2VDbS_nY$Mu" role="3cqZAp">
          <node concept="2OqwBi" id="2VDbS_nYBp_" role="3clFbG">
            <node concept="2OqwBi" id="2VDbS_nY$W1" role="2Oq$k0">
              <node concept="13iPFW" id="2VDbS_nY$Mt" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2VDbS_nY_ig" role="2OqNvi">
                <ref role="3TtcxE" to="irkh:nxI_60uCZK" resolve="declarations" />
              </node>
            </node>
            <node concept="v3k3i" id="2VDbS_nYD4Z" role="2OqNvi">
              <node concept="chp4Y" id="2VDbS_nZv$6" role="v3oSu">
                <ref role="cht4Q" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2VDbS_nYDbt" role="13h7CS">
      <property role="TrG5h" value="typeDeclarationsIncludingFromImports" />
      <node concept="3Tm1VV" id="2VDbS_nYDbu" role="1B3o_S" />
      <node concept="A3Dl8" id="2VDbS_nYDfy" role="3clF45">
        <node concept="3Tqbb2" id="2VDbS_nYDfJ" role="A3Ik2">
          <ref role="ehGHo" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="2VDbS_nYDbw" role="3clF47">
        <node concept="3clFbF" id="2VDbS_nYDg$" role="3cqZAp">
          <node concept="2OqwBi" id="2VDbS_nZQJX" role="3clFbG">
            <node concept="2ShNRf" id="2VDbS_nYDgy" role="2Oq$k0">
              <node concept="kMnCb" id="2VDbS_nYDo9" role="2ShVmc">
                <node concept="1bVj0M" id="2VDbS_nYDov" role="kMx8a">
                  <node concept="3clFbS" id="2VDbS_nYDow" role="1bW5cS">
                    <node concept="_Z6PX" id="2VDbS_nYDwn" role="3cqZAp">
                      <node concept="2OqwBi" id="2VDbS_nYE5u" role="_Z9Zf">
                        <node concept="13iPFW" id="2VDbS_nYD$f" role="2Oq$k0" />
                        <node concept="2qgKlT" id="2VDbS_nYEvv" role="2OqNvi">
                          <ref role="37wK5l" node="2VDbS_nY$KB" resolve="typeDeclarations" />
                        </node>
                      </node>
                    </node>
                    <node concept="_Z6PX" id="2VDbS_nZ01r" role="3cqZAp">
                      <node concept="2OqwBi" id="2VDbS_nZ45Y" role="_Z9Zf">
                        <node concept="2OqwBi" id="2VDbS_nZ0MV" role="2Oq$k0">
                          <node concept="13iPFW" id="2VDbS_nZ0he" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="2VDbS_nZ1op" role="2OqNvi">
                            <ref role="3TtcxE" to="irkh:nxI_60uCZJ" resolve="imports" />
                          </node>
                        </node>
                        <node concept="3goQfb" id="2VDbS_nZ7BM" role="2OqNvi">
                          <node concept="1bVj0M" id="2VDbS_nZ7BO" role="23t8la">
                            <node concept="3clFbS" id="2VDbS_nZ7BP" role="1bW5cS">
                              <node concept="3clFbF" id="2VDbS_nZ80m" role="3cqZAp">
                                <node concept="2OqwBi" id="2VDbS_nYNnF" role="3clFbG">
                                  <node concept="2OqwBi" id="2VDbS_nYMbj" role="2Oq$k0">
                                    <node concept="2OqwBi" id="2VDbS_nYLaB" role="2Oq$k0">
                                      <node concept="37vLTw" id="2VDbS_nYKVe" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2VDbS_nZ7BQ" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="2VDbS_nYLF0" role="2OqNvi">
                                        <ref role="3Tt5mk" to="irkh:nxI_60tnHb" resolve="schema" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="2VDbS_nYMMN" role="2OqNvi">
                                      <ref role="3Tt5mk" to="irkh:nxI_60uCZN" resolve="body" />
                                    </node>
                                  </node>
                                  <node concept="2qgKlT" id="zT7KcIB0tf" role="2OqNvi">
                                    <ref role="37wK5l" node="2VDbS_nY$KB" resolve="typeDeclarations" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="2VDbS_nZ7BQ" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="2VDbS_nZ7BR" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="2VDbS_nYUzy" role="kMuH3">
                  <ref role="ehGHo" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
                </node>
              </node>
            </node>
            <node concept="1VAtEI" id="2VDbS_nZRm9" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="zT7KcIBrST" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="zT7KcIBrSU" role="1B3o_S" />
      <node concept="3clFbS" id="zT7KcIBrSV" role="3clF47">
        <node concept="3clFbF" id="zT7KcIDafg" role="3cqZAp">
          <node concept="3K4zz7" id="zT7KcIDbd6" role="3clFbG">
            <node concept="2OqwBi" id="zT7KcIDbrz" role="3K4E3e">
              <node concept="13iPFW" id="zT7KcIDbjM" role="2Oq$k0" />
              <node concept="2qgKlT" id="zT7KcIDbNR" role="2OqNvi">
                <ref role="37wK5l" node="zT7KcID934" resolve="scopeForTypeDeclarations" />
              </node>
            </node>
            <node concept="iy90A" id="zT7KcIDbS2" role="3K4GZi" />
            <node concept="2OqwBi" id="zT7KcIDanY" role="3K4Cdx">
              <node concept="37vLTw" id="zT7KcIDafe" role="2Oq$k0">
                <ref role="3cqZAo" node="zT7KcIBrTd" resolve="kind" />
              </node>
              <node concept="3O6GUB" id="zT7KcIDaNK" role="2OqNvi">
                <node concept="chp4Y" id="zT7KcIDaT$" role="3QVz_e">
                  <ref role="cht4Q" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="zT7KcIBrTd" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="zT7KcIBrTe" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="zT7KcIBrTf" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="zT7KcIBrTg" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="zT7KcIBrTh" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="zT7KcID934" role="13h7CS">
      <property role="TrG5h" value="scopeForTypeDeclarations" />
      <node concept="3Tm1VV" id="zT7KcID935" role="1B3o_S" />
      <node concept="3uibUv" id="zT7KcID9u2" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="zT7KcID937" role="3clF47">
        <node concept="3clFbF" id="zT7KcID9vv" role="3cqZAp">
          <node concept="2YIFZM" id="zT7KcID9vx" role="3clFbG">
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <node concept="2OqwBi" id="zT7KcID9vy" role="37wK5m">
              <node concept="13iPFW" id="zT7KcID9vz" role="2Oq$k0" />
              <node concept="2qgKlT" id="zT7KcID9v$" role="2OqNvi">
                <ref role="37wK5l" node="2VDbS_nYDbt" resolve="typeDeclarationsIncludingFromImports" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2VDbS_nYzMk" role="13h7CW">
      <node concept="3clFbS" id="2VDbS_nYzMl" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="zT7KcJfKTS">
    <property role="TrG5h" value="MinimumSerialisationLengthComputer" />
    <node concept="2tJIrI" id="zT7KcJgij4" role="jymVt" />
    <node concept="2YIFZL" id="zT7KcJfKUk" role="jymVt">
      <property role="TrG5h" value="minimumSerialisationLength" />
      <node concept="10Oyi0" id="zT7KcJfKUG" role="3clF45" />
      <node concept="3Tm1VV" id="zT7KcJfKUn" role="1B3o_S" />
      <node concept="3clFbS" id="zT7KcJfKUo" role="3clF47">
        <node concept="Jncv_" id="zT7KcJfPIT" role="3cqZAp">
          <ref role="JncvD" to="irkh:6P6yfMfjRvf" resolve="XsdAttribute" />
          <node concept="37vLTw" id="zT7KcJfPRB" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJfPIX" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJfQlG" role="3cqZAp">
              <node concept="3cpWs3" id="zT7KcJfX8j" role="3cqZAk">
                <node concept="3cpWs3" id="zT7KcJfTZM" role="3uHU7B">
                  <node concept="2OqwBi" id="zT7KcJfRQY" role="3uHU7B">
                    <node concept="2OqwBi" id="zT7KcJfQJe" role="2Oq$k0">
                      <node concept="Jnkvi" id="zT7KcJfQu1" role="2Oq$k0">
                        <ref role="1M0zk5" node="zT7KcJfPIZ" resolve="attribute" />
                      </node>
                      <node concept="3TrcHB" id="zT7KcJfRdl" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="zT7KcJfSHc" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="zT7KcJfU02" role="3uHU7w">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
                <node concept="1rXfSq" id="zT7KcJg2Fe" role="3uHU7w">
                  <ref role="37wK5l" node="zT7KcJfKUk" resolve="minimumSerialisationLength" />
                  <node concept="2OqwBi" id="zT7KcJg0b9" role="37wK5m">
                    <node concept="Jnkvi" id="zT7KcJfZBb" role="2Oq$k0">
                      <ref role="1M0zk5" node="zT7KcJfPIZ" resolve="attribute" />
                    </node>
                    <node concept="3TrEf2" id="zT7KcJg0J5" role="2OqNvi">
                      <ref role="3Tt5mk" to="irkh:5nPH9FxCX7C" resolve="typeLiteral" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJfPIZ" role="JncvA">
            <property role="TrG5h" value="attribute" />
            <node concept="2jxLKc" id="zT7KcJfPJ0" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJhKYS" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHOMkd" resolve="XsdChoice" />
          <node concept="37vLTw" id="zT7KcJhLDz" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJhKYW" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJhNxl" role="3cqZAp">
              <node concept="17qRlL" id="zT7KcJi7fp" role="3cqZAk">
                <node concept="1rXfSq" id="zT7KcJi7YB" role="3uHU7w">
                  <ref role="37wK5l" node="zT7KcJhWcY" resolve="minimumSerialisationLengthMultiplierForCardinality" />
                  <node concept="2OqwBi" id="5xFSyvKSMDn" role="37wK5m">
                    <node concept="24Tkf9" id="5xFSyvKSMDp" role="2OqNvi" />
                    <node concept="2OqwBi" id="zT7KcJi9$j" role="2Oq$k0">
                      <node concept="Jnkvi" id="zT7KcJi8Hd" role="2Oq$k0">
                        <ref role="1M0zk5" node="zT7KcJhKYY" resolve="choice" />
                      </node>
                      <node concept="3TrcHB" id="zT7KcJiaBI" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:5xFSyvKSMCY" resolve="cardinality" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="zT7KcJhQGF" role="3uHU7B">
                  <ref role="37wK5l" node="zT7KcJhOTI" resolve="min" />
                  <node concept="2OqwBi" id="zT7KcJhZql" role="37wK5m">
                    <node concept="2OqwBi" id="zT7KcJhS8r" role="2Oq$k0">
                      <node concept="Jnkvi" id="zT7KcJhRmg" role="2Oq$k0">
                        <ref role="1M0zk5" node="zT7KcJhKYY" resolve="choice" />
                      </node>
                      <node concept="3Tsc0h" id="zT7KcJhSVM" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:5Ll95tHON8K" resolve="elements" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="zT7KcJi4rv" role="2OqNvi">
                      <node concept="1bVj0M" id="zT7KcJi4rx" role="23t8la">
                        <node concept="3clFbS" id="zT7KcJi4ry" role="1bW5cS">
                          <node concept="3clFbF" id="zT7KcJi5aO" role="3cqZAp">
                            <node concept="1rXfSq" id="zT7KcJi5aN" role="3clFbG">
                              <ref role="37wK5l" node="zT7KcJfKUk" resolve="minimumSerialisationLength" />
                              <node concept="37vLTw" id="zT7KcJi5Sh" role="37wK5m">
                                <ref role="3cqZAo" node="zT7KcJi4rz" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="zT7KcJi4rz" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="zT7KcJi4r$" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJhKYY" role="JncvA">
            <property role="TrG5h" value="choice" />
            <node concept="2jxLKc" id="zT7KcJhKYZ" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJhdH4" role="3cqZAp">
          <ref role="JncvD" to="irkh:GIhN6I5RP" resolve="XsdComplexType" />
          <node concept="37vLTw" id="zT7KcJhejY" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJhdH8" role="Jncv$">
            <node concept="3cpWs8" id="zT7KcJrbEt" role="3cqZAp">
              <node concept="3cpWsn" id="zT7KcJrbEu" role="3cpWs9">
                <property role="TrG5h" value="minContentsLength" />
                <node concept="10Oyi0" id="zT7KcJrbEh" role="1tU5fm" />
                <node concept="3K4zz7" id="zT7KcJrV8f" role="33vP2m">
                  <node concept="3cmrfG" id="zT7KcJrWue" role="3K4E3e">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3clFbC" id="zT7KcJrT0d" role="3K4Cdx">
                    <node concept="10Nm6u" id="zT7KcJrUsy" role="3uHU7w" />
                    <node concept="2OqwBi" id="zT7KcJrPHQ" role="3uHU7B">
                      <node concept="2OqwBi" id="zT7KcJrMm4" role="2Oq$k0">
                        <node concept="Jnkvi" id="zT7KcJrL$0" role="2Oq$k0">
                          <ref role="1M0zk5" node="zT7KcJhdHa" resolve="complexType" />
                        </node>
                        <node concept="3TrEf2" id="zT7KcJrO44" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:3epa_KBLTcx" resolve="body" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="zT7KcJrRol" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:3epa_KBLTbK" resolve="contents" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="zT7KcJrbEv" role="3K4GZi">
                    <ref role="37wK5l" node="zT7KcJfKUk" resolve="minimumSerialisationLength" />
                    <node concept="2OqwBi" id="zT7KcJrbEw" role="37wK5m">
                      <node concept="2OqwBi" id="zT7KcJrbEx" role="2Oq$k0">
                        <node concept="Jnkvi" id="zT7KcJrbEy" role="2Oq$k0">
                          <ref role="1M0zk5" node="zT7KcJhdHa" resolve="complexType" />
                        </node>
                        <node concept="3TrEf2" id="zT7KcJrbEz" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:3epa_KBLTcx" resolve="body" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="zT7KcJrbE$" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:3epa_KBLTbK" resolve="contents" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="zT7KcJsH0L" role="3cqZAp">
              <node concept="3cpWsn" id="zT7KcJsH0M" role="3cpWs9">
                <property role="TrG5h" value="attributesLength" />
                <node concept="10Oyi0" id="zT7KcJsGZX" role="1tU5fm" />
                <node concept="1rXfSq" id="zT7KcJsH0N" role="33vP2m">
                  <ref role="37wK5l" node="zT7KcJgiCb" resolve="sum" />
                  <node concept="2OqwBi" id="zT7KcJsH0O" role="37wK5m">
                    <node concept="2OqwBi" id="zT7KcJsH0P" role="2Oq$k0">
                      <node concept="2OqwBi" id="zT7KcJsH0Q" role="2Oq$k0">
                        <node concept="Jnkvi" id="zT7KcJsH0R" role="2Oq$k0">
                          <ref role="1M0zk5" node="zT7KcJhdHa" resolve="complexType" />
                        </node>
                        <node concept="3TrEf2" id="zT7KcJsH0S" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:3epa_KBLTcx" resolve="body" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="zT7KcJsH0T" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:3epa_KBLTbJ" resolve="attributes" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="zT7KcJsH0U" role="2OqNvi">
                      <node concept="1bVj0M" id="zT7KcJsH0V" role="23t8la">
                        <node concept="3clFbS" id="zT7KcJsH0W" role="1bW5cS">
                          <node concept="3clFbF" id="zT7KcJsH0X" role="3cqZAp">
                            <node concept="3cpWs3" id="zT7KcJsH0Y" role="3clFbG">
                              <node concept="3cmrfG" id="zT7KcJsH0Z" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="1rXfSq" id="zT7KcJsH10" role="3uHU7B">
                                <ref role="37wK5l" node="zT7KcJfKUk" resolve="minimumSerialisationLength" />
                                <node concept="37vLTw" id="zT7KcJsH11" role="37wK5m">
                                  <ref role="3cqZAo" node="zT7KcJsH12" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="zT7KcJsH12" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="zT7KcJsH13" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="zT7KcJsU8J" role="3cqZAp">
              <node concept="3cpWs3" id="zT7KcJsYMS" role="3cqZAk">
                <node concept="37vLTw" id="zT7KcJsWNQ" role="3uHU7B">
                  <ref role="3cqZAo" node="zT7KcJrbEu" resolve="minContentsLength" />
                </node>
                <node concept="37vLTw" id="zT7KcJt08J" role="3uHU7w">
                  <ref role="3cqZAo" node="zT7KcJsH0M" resolve="attributesLength" />
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJhdHa" role="JncvA">
            <property role="TrG5h" value="complexType" />
            <node concept="2jxLKc" id="zT7KcJhdHb" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJj9yX" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHOMk_" resolve="XsdDataType" />
          <node concept="37vLTw" id="zT7KcJjapk" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJj9z1" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJje61" role="3cqZAp">
              <node concept="1rXfSq" id="zT7KcJjeU5" role="3cqZAk">
                <ref role="37wK5l" node="zT7KcJgT0o" resolve="minimumSerialisationLengthOfDataType" />
                <node concept="2OqwBi" id="5xFSyvKSMDq" role="37wK5m">
                  <node concept="24Tkf9" id="5xFSyvKSMDs" role="2OqNvi" />
                  <node concept="2OqwBi" id="zT7KcJjgpH" role="2Oq$k0">
                    <node concept="Jnkvi" id="zT7KcJjfHY" role="2Oq$k0">
                      <ref role="1M0zk5" node="zT7KcJj9z3" resolve="dataType" />
                    </node>
                    <node concept="3TrcHB" id="zT7KcJjhy$" role="2OqNvi">
                      <ref role="3TsBF5" to="irkh:5xFSyvKSMD0" resolve="dataType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJj9z3" role="JncvA">
            <property role="TrG5h" value="dataType" />
            <node concept="2jxLKc" id="zT7KcJj9z4" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJgrZ5" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHOMkj" resolve="XsdElement" />
          <node concept="37vLTw" id="zT7KcJgsv0" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJgrZ9" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJwqoF" role="3cqZAp">
              <node concept="3cpWs3" id="zT7KcJwT35" role="3cqZAk">
                <node concept="1rXfSq" id="zT7KcJx1KS" role="3uHU7w">
                  <ref role="37wK5l" node="zT7KcJfKUk" resolve="minimumSerialisationLength" />
                  <node concept="2OqwBi" id="zT7KcJx3BG" role="37wK5m">
                    <node concept="Jnkvi" id="zT7KcJx2Q4" role="2Oq$k0">
                      <ref role="1M0zk5" node="zT7KcJgrZb" resolve="element" />
                    </node>
                    <node concept="3TrEf2" id="zT7KcJx4Eh" role="2OqNvi">
                      <ref role="3Tt5mk" to="irkh:5Ll95tHON8O" resolve="typeLiteral" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="zT7KcJwuaS" role="3uHU7B">
                  <node concept="3cmrfG" id="zT7KcJwstY" role="3uHU7B">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="17qRlL" id="zT7KcJwE37" role="3uHU7w">
                    <node concept="1eOMI4" id="zT7KcJwvdX" role="3uHU7B">
                      <node concept="3cpWs3" id="zT7KcJwwV4" role="1eOMHV">
                        <node concept="2OqwBi" id="zT7KcJw_nZ" role="3uHU7w">
                          <node concept="2OqwBi" id="zT7KcJwyN4" role="2Oq$k0">
                            <node concept="Jnkvi" id="zT7KcJwxYY" role="2Oq$k0">
                              <ref role="1M0zk5" node="zT7KcJgrZb" resolve="element" />
                            </node>
                            <node concept="3TrcHB" id="zT7KcJw$eT" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="liA8E" id="zT7KcJwB6V" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                          </node>
                        </node>
                        <node concept="3cmrfG" id="zT7KcJwvdZ" role="3uHU7B">
                          <property role="3cmrfH" value="2" />
                        </node>
                      </node>
                    </node>
                    <node concept="1eOMI4" id="zT7KcJwH_w" role="3uHU7w">
                      <node concept="3K4zz7" id="zT7KcJwOzz" role="1eOMHV">
                        <node concept="3cmrfG" id="zT7KcJwPBP" role="3K4E3e">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="3cmrfG" id="zT7KcJwQFJ" role="3K4GZi">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="1rXfSq" id="zT7KcJwJHC" role="3K4Cdx">
                          <ref role="37wK5l" node="zT7KcJwfgj" resolve="mustHaveContents" />
                          <node concept="2OqwBi" id="zT7KcJwLFK" role="37wK5m">
                            <node concept="Jnkvi" id="zT7KcJwKPy" role="2Oq$k0">
                              <ref role="1M0zk5" node="zT7KcJgrZb" resolve="element" />
                            </node>
                            <node concept="3TrEf2" id="zT7KcJwNbV" role="2OqNvi">
                              <ref role="3Tt5mk" to="irkh:5Ll95tHON8O" resolve="typeLiteral" />
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
          <node concept="JncvC" id="zT7KcJgrZb" role="JncvA">
            <property role="TrG5h" value="element" />
            <node concept="2jxLKc" id="zT7KcJgrZc" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJktbM" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHN4hJ" resolve="XsdEnumeration" />
          <node concept="37vLTw" id="zT7KcJku4K" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJktbQ" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJkwzs" role="3cqZAp">
              <node concept="1rXfSq" id="zT7KcJkxpe" role="3cqZAk">
                <ref role="37wK5l" node="zT7KcJhOTI" resolve="min" />
                <node concept="2OqwBi" id="zT7KcJkBk2" role="37wK5m">
                  <node concept="2OqwBi" id="zT7KcJkzAi" role="2Oq$k0">
                    <node concept="Jnkvi" id="zT7KcJkyTq" role="2Oq$k0">
                      <ref role="1M0zk5" node="zT7KcJktbS" resolve="enumeration" />
                    </node>
                    <node concept="3Tsc0h" id="zT7KcJk_3H" role="2OqNvi">
                      <ref role="3TtcxE" to="irkh:5Ll95tHN4ie" resolve="values" />
                    </node>
                  </node>
                  <node concept="3$u5V9" id="zT7KcJkFZY" role="2OqNvi">
                    <node concept="1bVj0M" id="zT7KcJkG00" role="23t8la">
                      <node concept="3clFbS" id="zT7KcJkG01" role="1bW5cS">
                        <node concept="3clFbF" id="zT7KcJkGVr" role="3cqZAp">
                          <node concept="2OqwBi" id="zT7KcJkKdw" role="3clFbG">
                            <node concept="2OqwBi" id="zT7KcJkHD9" role="2Oq$k0">
                              <node concept="37vLTw" id="zT7KcJkGVq" role="2Oq$k0">
                                <ref role="3cqZAo" node="zT7KcJkG02" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="zT7KcJkIHS" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="liA8E" id="zT7KcJkLOS" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="zT7KcJkG02" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="zT7KcJkG03" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJktbS" role="JncvA">
            <property role="TrG5h" value="enumeration" />
            <node concept="2jxLKc" id="zT7KcJktbT" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJjZgk" role="3cqZAp">
          <ref role="JncvD" to="irkh:nxI_60h6UA" resolve="XsdLength" />
          <node concept="37vLTw" id="zT7KcJk094" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJjZgo" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJk3WE" role="3cqZAp">
              <node concept="3cmrfG" id="zT7KcJk4MZ" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJjZgq" role="JncvA">
            <property role="TrG5h" value="length" />
            <node concept="2jxLKc" id="zT7KcJjZgr" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJmqVf" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHJICY" resolve="XsdPattern" />
          <node concept="37vLTw" id="zT7KcJmrXv" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJmqVj" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJmvuf" role="3cqZAp">
              <node concept="3cmrfG" id="zT7KcJvEwv" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3SKdUt" id="zT7KcJmBZd" role="3cqZAp">
              <node concept="1PaTwC" id="5xFSyvKSMBT" role="1aUNEU">
                <node concept="3oM_SD" id="5xFSyvKSMBU" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="5xFSyvKSMBV" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="5xFSyvKSMBW" role="1PaTwD">
                  <property role="3oM_SC" value="very" />
                </node>
                <node concept="3oM_SD" id="5xFSyvKSMBX" role="1PaTwD">
                  <property role="3oM_SC" value="poor" />
                </node>
                <node concept="3oM_SD" id="5xFSyvKSMBY" role="1PaTwD">
                  <property role="3oM_SC" value="approximation!" />
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJmqVl" role="JncvA">
            <property role="TrG5h" value="pattern" />
            <node concept="2jxLKc" id="zT7KcJmqVm" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJibUF" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHOMkg" resolve="XsdSequence" />
          <node concept="37vLTw" id="zT7KcJicFI" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJibUJ" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJigeV" role="3cqZAp">
              <node concept="1rXfSq" id="zT7KcJigXg" role="3cqZAk">
                <ref role="37wK5l" node="zT7KcJgiCb" resolve="sum" />
                <node concept="2OqwBi" id="zT7KcJimES" role="37wK5m">
                  <node concept="2OqwBi" id="zT7KcJiiSA" role="2Oq$k0">
                    <node concept="Jnkvi" id="zT7KcJiieU" role="2Oq$k0">
                      <ref role="1M0zk5" node="zT7KcJibUL" resolve="sequence" />
                    </node>
                    <node concept="3Tsc0h" id="zT7KcJijZf" role="2OqNvi">
                      <ref role="3TtcxE" to="irkh:5Ll95tHON8M" resolve="elements" />
                    </node>
                  </node>
                  <node concept="3$u5V9" id="zT7KcJirLv" role="2OqNvi">
                    <node concept="1bVj0M" id="zT7KcJirLx" role="23t8la">
                      <node concept="3clFbS" id="zT7KcJirLy" role="1bW5cS">
                        <node concept="3clFbF" id="zT7KcJisAh" role="3cqZAp">
                          <node concept="1rXfSq" id="zT7KcJisAg" role="3clFbG">
                            <ref role="37wK5l" node="zT7KcJfKUk" resolve="minimumSerialisationLength" />
                            <node concept="37vLTw" id="zT7KcJitpa" role="37wK5m">
                              <ref role="3cqZAo" node="zT7KcJirLz" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="zT7KcJirLz" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="zT7KcJirL$" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJibUL" role="JncvA">
            <property role="TrG5h" value="sequence" />
            <node concept="2jxLKc" id="zT7KcJibUM" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJgGEz" role="3cqZAp">
          <ref role="JncvD" to="irkh:GIhN6Iasm" resolve="XsdSimpleType" />
          <node concept="37vLTw" id="zT7KcJgHdH" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJgGEB" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJgJ3c" role="3cqZAp">
              <node concept="3K4zz7" id="zT7KcJgNlA" role="3cqZAk">
                <node concept="1rXfSq" id="zT7KcJh0IZ" role="3K4GZi">
                  <ref role="37wK5l" node="zT7KcJhOTI" resolve="min" />
                  <node concept="2OqwBi" id="5xFSyvKQNFw" role="37wK5m">
                    <node concept="2OqwBi" id="zT7KcJh1sV" role="2Oq$k0">
                      <node concept="Jnkvi" id="zT7KcJh1jW" role="2Oq$k0">
                        <ref role="1M0zk5" node="zT7KcJgGED" resolve="simpleType" />
                      </node>
                      <node concept="3Tsc0h" id="5xFSyvKQGkN" role="2OqNvi">
                        <ref role="3TtcxE" to="irkh:5Ll95tHJID$" resolve="restriction" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="5xFSyvKQPVs" role="2OqNvi">
                      <node concept="1bVj0M" id="5xFSyvKQPVu" role="23t8la">
                        <node concept="3clFbS" id="5xFSyvKQPVv" role="1bW5cS">
                          <node concept="3clFbF" id="5xFSyvKQQsH" role="3cqZAp">
                            <node concept="1rXfSq" id="5xFSyvKQQsG" role="3clFbG">
                              <ref role="37wK5l" node="zT7KcJfKUk" resolve="minimumSerialisationLength" />
                              <node concept="37vLTw" id="5xFSyvKQRGD" role="37wK5m">
                                <ref role="3cqZAo" node="5xFSyvKQPVw" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="5xFSyvKQPVw" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5xFSyvKQPVx" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5xFSyvKQFkP" role="3K4Cdx">
                  <node concept="2OqwBi" id="zT7KcJgKgS" role="2Oq$k0">
                    <node concept="Jnkvi" id="zT7KcJgJ_m" role="2Oq$k0">
                      <ref role="1M0zk5" node="zT7KcJgGED" resolve="simpleType" />
                    </node>
                    <node concept="3Tsc0h" id="5xFSyvKQGjL" role="2OqNvi">
                      <ref role="3TtcxE" to="irkh:5Ll95tHJID$" resolve="restriction" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="5xFSyvKQIQh" role="2OqNvi" />
                </node>
                <node concept="1rXfSq" id="zT7KcJgRIX" role="3K4E3e">
                  <ref role="37wK5l" node="zT7KcJgT0o" resolve="minimumSerialisationLengthOfDataType" />
                  <node concept="2OqwBi" id="5xFSyvKSMDt" role="37wK5m">
                    <node concept="24Tkf9" id="5xFSyvKSMDv" role="2OqNvi" />
                    <node concept="2OqwBi" id="zT7KcJh2YO" role="2Oq$k0">
                      <node concept="Jnkvi" id="zT7KcJh2YP" role="2Oq$k0">
                        <ref role="1M0zk5" node="zT7KcJgGED" resolve="simpleType" />
                      </node>
                      <node concept="3TrcHB" id="zT7KcJh2YQ" role="2OqNvi">
                        <ref role="3TsBF5" to="irkh:5xFSyvKSMCW" resolve="base" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJgGED" role="JncvA">
            <property role="TrG5h" value="simpleType" />
            <node concept="2jxLKc" id="zT7KcJgGEE" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJlQjs" role="3cqZAp">
          <ref role="JncvD" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
          <node concept="37vLTw" id="zT7KcJlRjJ" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJlQjw" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJlV31" role="3cqZAp">
              <node concept="1rXfSq" id="zT7KcJlW1C" role="3cqZAk">
                <ref role="37wK5l" node="zT7KcJfKUk" resolve="minimumSerialisationLength" />
                <node concept="2OqwBi" id="zT7KcJlXGD" role="37wK5m">
                  <node concept="Jnkvi" id="zT7KcJlWYH" role="2Oq$k0">
                    <ref role="1M0zk5" node="zT7KcJlQjy" resolve="typeDeclaration" />
                  </node>
                  <node concept="3TrEf2" id="zT7KcJlYPq" role="2OqNvi">
                    <ref role="3Tt5mk" to="irkh:3epa_KBVLVr" resolve="definition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJlQjy" role="JncvA">
            <property role="TrG5h" value="typeDeclaration" />
            <node concept="2jxLKc" id="zT7KcJlQjz" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJh7Ja" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHOMks" resolve="XsdTypeDeclarationRef" />
          <node concept="37vLTw" id="zT7KcJh8lQ" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJh7Je" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJhaBl" role="3cqZAp">
              <node concept="1rXfSq" id="zT7KcJvMkY" role="3cqZAk">
                <ref role="37wK5l" node="zT7KcJfKUk" resolve="minimumSerialisationLength" />
                <node concept="2OqwBi" id="zT7KcJvIbt" role="37wK5m">
                  <node concept="Jnkvi" id="zT7KcJvHsf" role="2Oq$k0">
                    <ref role="1M0zk5" node="zT7KcJh7Jg" resolve="typeDeclarationRef" />
                  </node>
                  <node concept="3TrEf2" id="zT7KcJvJkZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="irkh:5Ll95tHOVYh" resolve="typeDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJh7Jg" role="JncvA">
            <property role="TrG5h" value="typeDeclarationRef" />
            <node concept="2jxLKc" id="zT7KcJh7Jh" role="1tU5fm" />
          </node>
        </node>
        <node concept="YS8fn" id="zT7KcJfKZN" role="3cqZAp">
          <node concept="2ShNRf" id="zT7KcJfL0y" role="YScLw">
            <node concept="1pGfFk" id="zT7KcJfL8o" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="zT7KcJfN$_" role="37wK5m">
                <node concept="2OqwBi" id="zT7KcJfOvm" role="3uHU7w">
                  <node concept="2OqwBi" id="zT7KcJfNPI" role="2Oq$k0">
                    <node concept="37vLTw" id="zT7KcJfNCf" role="2Oq$k0">
                      <ref role="3cqZAo" node="zT7KcJfKWh" resolve="node" />
                    </node>
                    <node concept="2yIwOk" id="zT7KcJfO8l" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="zT7KcJfOUR" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="zT7KcJfMNz" role="3uHU7B">
                  <property role="Xl_RC" value="no computation of minimum serialisation length implemented for type " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="zT7KcJfKWh" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="zT7KcJfKWg" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="zT7KcJgim$" role="jymVt" />
    <node concept="2YIFZL" id="zT7KcJgT0o" role="jymVt">
      <property role="TrG5h" value="minimumSerialisationLengthOfDataType" />
      <node concept="10Oyi0" id="zT7KcJgT5A" role="3clF45" />
      <node concept="3Tm6S6" id="zT7KcJqebP" role="1B3o_S" />
      <node concept="3clFbS" id="zT7KcJgT0s" role="3clF47">
        <node concept="3clFbJ" id="zT7KcJh3Lj" role="3cqZAp">
          <node concept="3clFbS" id="zT7KcJh3Ll" role="3clFbx">
            <node concept="3cpWs6" id="zT7KcJh4e3" role="3cqZAp">
              <node concept="3cmrfG" id="zT7KcJh4eP" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="zT7KcJh4bp" role="3clFbw">
            <node concept="Xl_RD" id="zT7KcJh4cw" role="3uHU7w">
              <property role="Xl_RC" value="string" />
            </node>
            <node concept="37vLTw" id="zT7KcJh3PB" role="3uHU7B">
              <ref role="3cqZAo" node="zT7KcJgT$x" resolve="dataType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="zT7KcJgYV8" role="3cqZAp">
          <node concept="3clFbS" id="zT7KcJgYVa" role="3clFbx">
            <node concept="3cpWs6" id="zT7KcJgZmB" role="3cqZAp">
              <node concept="3cmrfG" id="zT7KcJgZmC" role="3cqZAk">
                <property role="3cmrfH" value="4" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="zT7KcJgZjS" role="3clFbw">
            <node concept="Xl_RD" id="zT7KcJgZlw" role="3uHU7w">
              <property role="Xl_RC" value="boolean" />
            </node>
            <node concept="37vLTw" id="zT7KcJgYX_" role="3uHU7B">
              <ref role="3cqZAo" node="zT7KcJgT$x" resolve="dataType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="zT7KcJgZKz" role="3cqZAp">
          <node concept="3clFbS" id="zT7KcJgZK_" role="3clFbx">
            <node concept="3cpWs6" id="zT7KcJh4sY" role="3cqZAp">
              <node concept="3cmrfG" id="zT7KcJh4wN" role="3cqZAk">
                <property role="3cmrfH" value="10" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="zT7KcJh07Y" role="3clFbw">
            <node concept="Xl_RD" id="zT7KcJh4s7" role="3uHU7w">
              <property role="Xl_RC" value="date" />
            </node>
            <node concept="37vLTw" id="zT7KcJgZMk" role="3uHU7B">
              <ref role="3cqZAo" node="zT7KcJgT$x" resolve="dataType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="zT7KcJh4BZ" role="3cqZAp">
          <node concept="3clFbS" id="zT7KcJh4C1" role="3clFbx">
            <node concept="3cpWs6" id="zT7KcJh54Y" role="3cqZAp">
              <node concept="3cmrfG" id="zT7KcJh5jb" role="3cqZAk">
                <property role="3cmrfH" value="26" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="zT7KcJh52v" role="3clFbw">
            <node concept="Xl_RD" id="zT7KcJh53E" role="3uHU7w">
              <property role="Xl_RC" value="dateTime" />
            </node>
            <node concept="37vLTw" id="zT7KcJh4GD" role="3uHU7B">
              <ref role="3cqZAo" node="zT7KcJgT$x" resolve="dataType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="zT7KcJh6ee" role="3cqZAp">
          <node concept="3clFbS" id="zT7KcJh6eg" role="3clFbx">
            <node concept="3cpWs6" id="zT7KcJh6QJ" role="3cqZAp">
              <node concept="3cmrfG" id="zT7KcJh6UZ" role="3cqZAk">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="zT7KcJh6De" role="3clFbw">
            <node concept="Xl_RD" id="zT7KcJh6Et" role="3uHU7w">
              <property role="Xl_RC" value="float" />
            </node>
            <node concept="37vLTw" id="zT7KcJh6jk" role="3uHU7B">
              <ref role="3cqZAo" node="zT7KcJgT$x" resolve="dataType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="zT7KcJh5qG" role="3cqZAp">
          <node concept="3clFbS" id="zT7KcJh5qI" role="3clFbx">
            <node concept="3cpWs6" id="zT7KcJh62h" role="3cqZAp">
              <node concept="3cmrfG" id="zT7KcJh66o" role="3cqZAk">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="zT7KcJh5Ps" role="3clFbw">
            <node concept="Xl_RD" id="zT7KcJh60T" role="3uHU7w">
              <property role="Xl_RC" value="integer" />
            </node>
            <node concept="37vLTw" id="zT7KcJh5v$" role="3uHU7B">
              <ref role="3cqZAo" node="zT7KcJgT$x" resolve="dataType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5_bgKla6saV" role="3cqZAp">
          <node concept="3clFbS" id="5_bgKla6saW" role="3clFbx">
            <node concept="3cpWs6" id="5_bgKla6saX" role="3cqZAp">
              <node concept="3cmrfG" id="5_bgKla6saY" role="3cqZAk">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="5_bgKla6saZ" role="3clFbw">
            <node concept="Xl_RD" id="5_bgKla6sb0" role="3uHU7w">
              <property role="Xl_RC" value="long" />
            </node>
            <node concept="37vLTw" id="5_bgKla6sb1" role="3uHU7B">
              <ref role="3cqZAo" node="zT7KcJgT$x" resolve="dataType" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="zT7KcJgZof" role="3cqZAp">
          <node concept="2ShNRf" id="zT7KcJgZog" role="YScLw">
            <node concept="1pGfFk" id="zT7KcJgZoh" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="zT7KcJgZoi" role="37wK5m">
                <node concept="37vLTw" id="zT7KcJgZok" role="3uHU7w">
                  <ref role="3cqZAo" node="zT7KcJgT$x" resolve="dataType" />
                </node>
                <node concept="Xl_RD" id="zT7KcJgZom" role="3uHU7B">
                  <property role="Xl_RC" value="no computation of minimum serialisation length implemented for data type " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="zT7KcJgT$x" role="3clF46">
        <property role="TrG5h" value="dataType" />
        <node concept="17QB3L" id="zT7KcJgYIg" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="zT7KcJgT35" role="jymVt" />
    <node concept="2YIFZL" id="zT7KcJhWcY" role="jymVt">
      <property role="TrG5h" value="minimumSerialisationLengthMultiplierForCardinality" />
      <node concept="10Oyi0" id="zT7KcJhWi9" role="3clF45" />
      <node concept="3Tm6S6" id="zT7KcJqcQB" role="1B3o_S" />
      <node concept="3clFbS" id="zT7KcJhWd2" role="3clF47">
        <node concept="3clFbF" id="zT7KcJhWvn" role="3cqZAp">
          <node concept="3K4zz7" id="zT7KcJhXtc" role="3clFbG">
            <node concept="3cmrfG" id="zT7KcJhXut" role="3K4E3e">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3cmrfG" id="zT7KcJhXv_" role="3K4GZi">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="17R0WA" id="zT7KcJhWXa" role="3K4Cdx">
              <node concept="Xl_RD" id="zT7KcJhX4Z" role="3uHU7w">
                <property role="Xl_RC" value="required" />
              </node>
              <node concept="37vLTw" id="zT7KcJhWvm" role="3uHU7B">
                <ref role="3cqZAo" node="zT7KcJhWo2" resolve="cardinality" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="zT7KcJhWo2" role="3clF46">
        <property role="TrG5h" value="cardinality" />
        <node concept="17QB3L" id="zT7KcJhWo1" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="zT7KcJhWoY" role="jymVt" />
    <node concept="2YIFZL" id="zT7KcJgiCb" role="jymVt">
      <property role="TrG5h" value="sum" />
      <node concept="10Oyi0" id="zT7KcJgiJz" role="3clF45" />
      <node concept="3Tm6S6" id="zT7KcJqfxh" role="1B3o_S" />
      <node concept="3clFbS" id="zT7KcJgiCf" role="3clF47">
        <node concept="3clFbF" id="zT7KcJgiL$" role="3cqZAp">
          <node concept="2OqwBi" id="zT7KcJgj1B" role="3clFbG">
            <node concept="37vLTw" id="zT7KcJgiLz" role="2Oq$k0">
              <ref role="3cqZAo" node="zT7KcJgiK4" resolve="ints" />
            </node>
            <node concept="1MD8d$" id="zT7KcJgjtA" role="2OqNvi">
              <node concept="1bVj0M" id="zT7KcJgjtC" role="23t8la">
                <node concept="3clFbS" id="zT7KcJgjtD" role="1bW5cS">
                  <node concept="3clFbF" id="zT7KcJgjRB" role="3cqZAp">
                    <node concept="3cpWs3" id="zT7KcJgkzH" role="3clFbG">
                      <node concept="37vLTw" id="zT7KcJgk$d" role="3uHU7w">
                        <ref role="3cqZAo" node="zT7KcJgjtG" resolve="it" />
                      </node>
                      <node concept="37vLTw" id="zT7KcJgjRA" role="3uHU7B">
                        <ref role="3cqZAo" node="zT7KcJgjtE" resolve="s" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="zT7KcJgjtE" role="1bW2Oz">
                  <property role="TrG5h" value="s" />
                  <node concept="10Oyi0" id="zT7KcJgjFz" role="1tU5fm" />
                </node>
                <node concept="Rh6nW" id="zT7KcJgjtG" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="zT7KcJgjtH" role="1tU5fm" />
                </node>
              </node>
              <node concept="3cmrfG" id="zT7KcJgjvW" role="1MDeny">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="zT7KcJgiK4" role="3clF46">
        <property role="TrG5h" value="ints" />
        <node concept="A3Dl8" id="zT7KcJgiK2" role="1tU5fm">
          <node concept="10Oyi0" id="zT7KcJgiKw" role="A3Ik2" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="zT7KcJfKTT" role="1B3o_S" />
    <node concept="2tJIrI" id="zT7KcJgiFX" role="jymVt" />
    <node concept="2YIFZL" id="zT7KcJhOTI" role="jymVt">
      <property role="TrG5h" value="min" />
      <node concept="10Oyi0" id="zT7KcJhP5U" role="3clF45" />
      <node concept="3Tm1VV" id="zT7KcJzoig" role="1B3o_S" />
      <node concept="3clFbS" id="zT7KcJhOTM" role="3clF47">
        <node concept="3clFbF" id="zT7KcJF47M" role="3cqZAp">
          <node concept="2OqwBi" id="zT7KcJF4jN" role="3clFbG">
            <node concept="37vLTw" id="zT7KcJF47K" role="2Oq$k0">
              <ref role="3cqZAo" node="zT7KcJhP6_" resolve="ints" />
            </node>
            <node concept="1MD8d$" id="zT7KcJF4JZ" role="2OqNvi">
              <node concept="1bVj0M" id="zT7KcJF4K1" role="23t8la">
                <node concept="3clFbS" id="zT7KcJF4K2" role="1bW5cS">
                  <node concept="3clFbF" id="zT7KcJF5ax" role="3cqZAp">
                    <node concept="2YIFZM" id="zT7KcJF5cd" role="3clFbG">
                      <ref role="37wK5l" to="wyt6:~Math.min(int,int)" resolve="min" />
                      <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                      <node concept="37vLTw" id="zT7KcJF5fs" role="37wK5m">
                        <ref role="3cqZAo" node="zT7KcJF4K3" resolve="s" />
                      </node>
                      <node concept="37vLTw" id="zT7KcJF7kd" role="37wK5m">
                        <ref role="3cqZAo" node="zT7KcJF4K5" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="zT7KcJF4K3" role="1bW2Oz">
                  <property role="TrG5h" value="s" />
                  <node concept="10Oyi0" id="zT7KcJF4XX" role="1tU5fm" />
                </node>
                <node concept="Rh6nW" id="zT7KcJF4K5" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="zT7KcJF4K6" role="1tU5fm" />
                </node>
              </node>
              <node concept="3cmrfG" id="zT7KcJF4Mn" role="1MDeny">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="zT7KcJhP6_" role="3clF46">
        <property role="TrG5h" value="ints" />
        <node concept="A3Dl8" id="zT7KcJhP6z" role="1tU5fm">
          <node concept="10Oyi0" id="zT7KcJhP76" role="A3Ik2" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="zT7KcJ_KwP" role="jymVt" />
    <node concept="2YIFZL" id="zT7KcJ_KUe" role="jymVt">
      <property role="TrG5h" value="max" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="zT7KcJ_KUh" role="3clF47">
        <node concept="3clFbF" id="zT7KcJF7p9" role="3cqZAp">
          <node concept="2OqwBi" id="zT7KcJF7_a" role="3clFbG">
            <node concept="37vLTw" id="zT7KcJF7p7" role="2Oq$k0">
              <ref role="3cqZAo" node="zT7KcJ_L2J" resolve="ints" />
            </node>
            <node concept="1MD8d$" id="zT7KcJF81e" role="2OqNvi">
              <node concept="1bVj0M" id="zT7KcJF81g" role="23t8la">
                <node concept="3clFbS" id="zT7KcJF81h" role="1bW5cS">
                  <node concept="3clFbF" id="zT7KcJF8sE" role="3cqZAp">
                    <node concept="2YIFZM" id="zT7KcJF8um" role="3clFbG">
                      <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                      <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                      <node concept="37vLTw" id="zT7KcJF8x_" role="37wK5m">
                        <ref role="3cqZAo" node="zT7KcJF81i" resolve="s" />
                      </node>
                      <node concept="37vLTw" id="zT7KcJFaAm" role="37wK5m">
                        <ref role="3cqZAo" node="zT7KcJF81k" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="zT7KcJF81i" role="1bW2Oz">
                  <property role="TrG5h" value="s" />
                  <node concept="10Oyi0" id="zT7KcJF8g6" role="1tU5fm" />
                </node>
                <node concept="Rh6nW" id="zT7KcJF81k" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="zT7KcJF81l" role="1tU5fm" />
                </node>
              </node>
              <node concept="3cmrfG" id="zT7KcJF84w" role="1MDeny">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="zT7KcJ_KLm" role="1B3o_S" />
      <node concept="10Oyi0" id="zT7KcJ_KTV" role="3clF45" />
      <node concept="37vLTG" id="zT7KcJ_L2J" role="3clF46">
        <property role="TrG5h" value="ints" />
        <node concept="A3Dl8" id="zT7KcJ_L2H" role="1tU5fm">
          <node concept="10Oyi0" id="zT7KcJ_L3m" role="A3Ik2" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="zT7KcJhOZU" role="jymVt" />
    <node concept="2YIFZL" id="zT7KcJwfgj" role="jymVt">
      <property role="TrG5h" value="mustHaveContents" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="zT7KcJwfgm" role="3clF47">
        <node concept="Jncv_" id="zT7KcJwlWM" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHOMk_" resolve="XsdDataType" />
          <node concept="37vLTw" id="zT7KcJwmg_" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJwfnN" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJwlWQ" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJwnHG" role="3cqZAp">
              <node concept="3clFbT" id="zT7KcJwo13" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJwlWS" role="JncvA">
            <property role="TrG5h" value="dataType" />
            <node concept="2jxLKc" id="zT7KcJwlWT" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJwfrK" role="3cqZAp">
          <ref role="JncvD" to="irkh:GIhN6I5RP" resolve="XsdComplexType" />
          <node concept="37vLTw" id="zT7KcJwfsV" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJwfnN" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJwfrM" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJwghr" role="3cqZAp">
              <node concept="3K4zz7" id="zT7KcJyQMu" role="3cqZAk">
                <node concept="3clFbT" id="zT7KcJyRR1" role="3K4E3e">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="3clFbC" id="zT7KcJyPHe" role="3K4Cdx">
                  <node concept="10Nm6u" id="zT7KcJyPIb" role="3uHU7w" />
                  <node concept="2OqwBi" id="zT7KcJyMXP" role="3uHU7B">
                    <node concept="2OqwBi" id="zT7KcJyKwk" role="2Oq$k0">
                      <node concept="Jnkvi" id="zT7KcJyJHt" role="2Oq$k0">
                        <ref role="1M0zk5" node="zT7KcJwfrN" resolve="complexType" />
                      </node>
                      <node concept="3TrEf2" id="zT7KcJyM0_" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:3epa_KBLTcx" resolve="body" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="zT7KcJyOmP" role="2OqNvi">
                      <ref role="3Tt5mk" to="irkh:3epa_KBLTbK" resolve="contents" />
                    </node>
                  </node>
                </node>
                <node concept="3eOSWO" id="zT7KcJwlko" role="3K4GZi">
                  <node concept="3cmrfG" id="zT7KcJwll9" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1rXfSq" id="zT7KcJwhMt" role="3uHU7B">
                    <ref role="37wK5l" node="zT7KcJfKUk" resolve="minimumSerialisationLength" />
                    <node concept="2OqwBi" id="zT7KcJwjHu" role="37wK5m">
                      <node concept="2OqwBi" id="zT7KcJwitt" role="2Oq$k0">
                        <node concept="Jnkvi" id="zT7KcJwi51" role="2Oq$k0">
                          <ref role="1M0zk5" node="zT7KcJwfrN" resolve="complexType" />
                        </node>
                        <node concept="3TrEf2" id="zT7KcJwj7n" role="2OqNvi">
                          <ref role="3Tt5mk" to="irkh:3epa_KBLTcx" resolve="body" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="zT7KcJwklO" role="2OqNvi">
                        <ref role="3Tt5mk" to="irkh:3epa_KBLTbK" resolve="contents" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJwfrN" role="JncvA">
            <property role="TrG5h" value="complexType" />
            <node concept="2jxLKc" id="zT7KcJwfrO" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJyc9Z" role="3cqZAp">
          <ref role="JncvD" to="irkh:GIhN6Iasm" resolve="XsdSimpleType" />
          <node concept="37vLTw" id="zT7KcJydfS" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJwfnN" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJyca3" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJygto" role="3cqZAp">
              <node concept="3clFbT" id="zT7KcJyhxS" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJyca5" role="JncvA">
            <property role="TrG5h" value="simpleType" />
            <node concept="2jxLKc" id="zT7KcJyca6" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="zT7KcJxy_q" role="3cqZAp">
          <ref role="JncvD" to="irkh:5Ll95tHOMks" resolve="XsdTypeDeclarationRef" />
          <node concept="37vLTw" id="zT7KcJxzDU" role="JncvB">
            <ref role="3cqZAo" node="zT7KcJwfnN" resolve="node" />
          </node>
          <node concept="3clFbS" id="zT7KcJxy_u" role="Jncv$">
            <node concept="3cpWs6" id="zT7KcJxBQV" role="3cqZAp">
              <node concept="1rXfSq" id="zT7KcJxCVD" role="3cqZAk">
                <ref role="37wK5l" node="zT7KcJwfgj" resolve="mustHaveContents" />
                <node concept="2OqwBi" id="zT7KcJxHxv" role="37wK5m">
                  <node concept="2OqwBi" id="zT7KcJxELf" role="2Oq$k0">
                    <node concept="Jnkvi" id="zT7KcJxE0f" role="2Oq$k0">
                      <ref role="1M0zk5" node="zT7KcJxy_w" resolve="typeDeclarationRef" />
                    </node>
                    <node concept="3TrEf2" id="zT7KcJxGaQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="irkh:5Ll95tHOVYh" resolve="typeDeclaration" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="zT7KcJxJ1l" role="2OqNvi">
                    <ref role="3Tt5mk" to="irkh:3epa_KBVLVr" resolve="definition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="zT7KcJxy_w" role="JncvA">
            <property role="TrG5h" value="typeDeclarationRef" />
            <node concept="2jxLKc" id="zT7KcJxy_x" role="1tU5fm" />
          </node>
        </node>
        <node concept="YS8fn" id="zT7KcJwftw" role="3cqZAp">
          <node concept="2ShNRf" id="zT7KcJwftx" role="YScLw">
            <node concept="1pGfFk" id="zT7KcJwfty" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="zT7KcJwftz" role="37wK5m">
                <node concept="2OqwBi" id="zT7KcJwft$" role="3uHU7w">
                  <node concept="2OqwBi" id="zT7KcJwft_" role="2Oq$k0">
                    <node concept="37vLTw" id="zT7KcJwftA" role="2Oq$k0">
                      <ref role="3cqZAo" node="zT7KcJwfnN" resolve="node" />
                    </node>
                    <node concept="2yIwOk" id="zT7KcJwftB" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="zT7KcJwftC" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="zT7KcJwftD" role="3uHU7B">
                  <property role="Xl_RC" value="no computation of #mustHaveContents implemented for type " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="zT7KcJwf8t" role="1B3o_S" />
      <node concept="10P_77" id="zT7KcJwfg1" role="3clF45" />
      <node concept="37vLTG" id="zT7KcJwfnN" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="zT7KcJwfnM" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5_bgKl9U9vu">
    <property role="3GE5qa" value="topLevel" />
    <ref role="13h7C2" to="irkh:3epa_KBVLVo" resolve="XsdTypeDeclaration" />
    <node concept="13hLZK" id="5_bgKl9U9vv" role="13h7CW">
      <node concept="3clFbS" id="5_bgKl9U9vw" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="zT7KcIDxOb">
    <property role="TrG5h" value="TopologicalSorter" />
    <node concept="2tJIrI" id="zT7KcIDyfR" role="jymVt" />
    <node concept="2YIFZL" id="zT7KcIDxP5" role="jymVt">
      <property role="TrG5h" value="hasCycles" />
      <node concept="10P_77" id="zT7KcIDxPt" role="3clF45" />
      <node concept="3Tm1VV" id="zT7KcIDxP8" role="1B3o_S" />
      <node concept="3clFbS" id="zT7KcIDxP9" role="3clF47">
        <node concept="3clFbF" id="zT7KcIDyoS" role="3cqZAp">
          <node concept="1rXfSq" id="zT7KcIDyoR" role="3clFbG">
            <ref role="37wK5l" node="zT7KcIDyhy" resolve="sortInDependencyOrder" />
            <node concept="37vLTw" id="zT7KcIDyrm" role="37wK5m">
              <ref role="3cqZAo" node="zT7KcIDxQl" resolve="node" />
            </node>
            <node concept="2ShNRf" id="zT7KcIET6N" role="37wK5m">
              <node concept="Tc6Ow" id="5k7kLRJ95U7" role="2ShVmc">
                <node concept="3Tqbb2" id="5k7kLRJ95U9" role="HW$YZ" />
              </node>
            </node>
            <node concept="37vLTw" id="zT7KcID$yO" role="37wK5m">
              <ref role="3cqZAo" node="zT7KcIDydu" resolve="dependenciesFunction" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="zT7KcIDxQl" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="zT7KcIDxQk" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="zT7KcIDydu" role="3clF46">
        <property role="TrG5h" value="dependenciesFunction" />
        <node concept="1ajhzC" id="zT7KcIDydZ" role="1tU5fm">
          <node concept="A3Dl8" id="zT7KcIDyej" role="1ajl9A">
            <node concept="3Tqbb2" id="zT7KcIDyeH" role="A3Ik2" />
          </node>
          <node concept="3Tqbb2" id="zT7KcIDG8_" role="1ajw0F" />
        </node>
      </node>
      <node concept="P$JXv" id="5k7kLRJlX19" role="lGtFl">
        <node concept="x79VA" id="5k7kLRJlX4U" role="3nqlJM">
          <property role="x79VB" value="whether the given node has a cycle among its dependencies." />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="zT7KcIDyga" role="jymVt" />
    <node concept="2YIFZL" id="zT7KcIDyhy" role="jymVt">
      <property role="TrG5h" value="sortInDependencyOrder" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="zT7KcIDyh_" role="3clF47">
        <node concept="3clFbJ" id="zT7KcID_6S" role="3cqZAp">
          <node concept="2OqwBi" id="zT7KcID_Wj" role="3clFbw">
            <node concept="37vLTw" id="zT7KcID_fi" role="2Oq$k0">
              <ref role="3cqZAo" node="zT7KcIDyi_" resolve="visited" />
            </node>
            <node concept="3JPx81" id="zT7KcIDB7q" role="2OqNvi">
              <node concept="37vLTw" id="zT7KcIDBck" role="25WWJ7">
                <ref role="3cqZAo" node="zT7KcIDyi6" resolve="current" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="zT7KcID_6U" role="3clFbx">
            <node concept="3cpWs6" id="zT7KcIDBfQ" role="3cqZAp">
              <node concept="3clFbT" id="zT7KcIDBjN" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5k7kLRJ8YMX" role="3cqZAp">
          <node concept="2OqwBi" id="5k7kLRJ9029" role="3clFbG">
            <node concept="37vLTw" id="5k7kLRJ8YMV" role="2Oq$k0">
              <ref role="3cqZAo" node="zT7KcIDyi_" resolve="visited" />
            </node>
            <node concept="TSZUe" id="5k7kLRJ92Hm" role="2OqNvi">
              <node concept="37vLTw" id="5k7kLRJ92P4" role="25WWJ7">
                <ref role="3cqZAo" node="zT7KcIDyi6" resolve="current" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="zT7KcIDBvj" role="3cqZAp">
          <node concept="2GrKxI" id="zT7KcIDBvl" role="2Gsz3X">
            <property role="TrG5h" value="ancestor" />
          </node>
          <node concept="2OqwBi" id="7WlijDorhkC" role="2GsD0m">
            <node concept="37vLTw" id="7WlijDorhkD" role="2Oq$k0">
              <ref role="3cqZAo" node="zT7KcIDykH" resolve="dependenciesFunction" />
            </node>
            <node concept="1Bd96e" id="7WlijDorhkE" role="2OqNvi">
              <node concept="37vLTw" id="7WlijDorhkF" role="1BdPVh">
                <ref role="3cqZAo" node="zT7KcIDyi6" resolve="current" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="zT7KcIDBvp" role="2LFqv$">
            <node concept="3clFbJ" id="zT7KcIDC3c" role="3cqZAp">
              <node concept="1rXfSq" id="zT7KcIDC6G" role="3clFbw">
                <ref role="37wK5l" node="zT7KcIDyhy" resolve="sortInDependencyOrder" />
                <node concept="2GrUjf" id="zT7KcIDCaU" role="37wK5m">
                  <ref role="2Gs0qQ" node="zT7KcIDBvl" resolve="ancestor" />
                </node>
                <node concept="37vLTw" id="zT7KcIDCic" role="37wK5m">
                  <ref role="3cqZAo" node="zT7KcIDyi_" resolve="visited" />
                </node>
                <node concept="37vLTw" id="zT7KcIDCs8" role="37wK5m">
                  <ref role="3cqZAo" node="zT7KcIDykH" resolve="dependenciesFunction" />
                </node>
              </node>
              <node concept="3clFbS" id="zT7KcIDC3e" role="3clFbx">
                <node concept="3cpWs6" id="zT7KcIDCy0" role="3cqZAp">
                  <node concept="3clFbT" id="zT7KcIDCDC" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="zT7KcIDBSJ" role="3cqZAp">
          <node concept="3clFbT" id="zT7KcIDBZe" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="zT7KcIDygN" role="1B3o_S" />
      <node concept="10P_77" id="zT7KcIDyhp" role="3clF45" />
      <node concept="37vLTG" id="zT7KcIDyi6" role="3clF46">
        <property role="TrG5h" value="current" />
        <node concept="3Tqbb2" id="zT7KcIDyi5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="zT7KcIDyi_" role="3clF46">
        <property role="TrG5h" value="visited" />
        <node concept="_YKpA" id="5k7kLRJ8V3N" role="1tU5fm">
          <node concept="3Tqbb2" id="5k7kLRJ8VuS" role="_ZDj9" />
        </node>
      </node>
      <node concept="37vLTG" id="zT7KcIDykH" role="3clF46">
        <property role="TrG5h" value="dependenciesFunction" />
        <node concept="1ajhzC" id="zT7KcIDykI" role="1tU5fm">
          <node concept="A3Dl8" id="zT7KcIDykJ" role="1ajl9A">
            <node concept="3Tqbb2" id="zT7KcIDykK" role="A3Ik2" />
          </node>
          <node concept="3Tqbb2" id="zT7KcIDBKk" role="1ajw0F" />
        </node>
      </node>
      <node concept="P$JXv" id="5k7kLRJlXvU" role="lGtFl">
        <node concept="x79VA" id="5k7kLRJlXT8" role="3nqlJM">
          <property role="x79VB" value="whether the given node has a cycle among its dependencies. If not, it stores a list of ancestors in the visited argument." />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5RK56OEBkCb" role="jymVt" />
    <node concept="3Tm1VV" id="zT7KcIDxOc" role="1B3o_S" />
    <node concept="3UR2Jj" id="5k7kLRJlWUw" role="lGtFl">
      <node concept="TZ5HA" id="5k7kLRJlWUx" role="TZ5H$">
        <node concept="1dT_AC" id="5k7kLRJlWUy" role="1dT_Ay">
          <property role="1dT_AB" value="Class with functions to perform topological sorting, mainly for cycle detection." />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="DmPLYxqx$P">
    <property role="3GE5qa" value="facets" />
    <ref role="13h7C2" to="irkh:6GtTJsVQjWB" resolve="XsdRangeEnd" />
    <node concept="13hLZK" id="DmPLYxqx$Q" role="13h7CW">
      <node concept="3clFbS" id="DmPLYxqx$R" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="DmPLYxqx_0" role="13h7CS">
      <property role="TrG5h" value="tagName" />
      <node concept="3Tm1VV" id="DmPLYxqx_1" role="1B3o_S" />
      <node concept="17QB3L" id="DmPLYxqx_k" role="3clF45" />
      <node concept="3clFbS" id="DmPLYxqx_3" role="3clF47">
        <node concept="3clFbF" id="DmPLYxqx_M" role="3cqZAp">
          <node concept="3cpWs3" id="DmPLYxq_cL" role="3clFbG">
            <node concept="Xl_RD" id="DmPLYxq_cO" role="3uHU7w">
              <property role="Xl_RC" value="clusive" />
            </node>
            <node concept="3cpWs3" id="DmPLYxqzet" role="3uHU7B">
              <node concept="1eOMI4" id="DmPLYxqx_K" role="3uHU7B">
                <node concept="3K4zz7" id="DmPLYxqyIu" role="1eOMHV">
                  <node concept="Xl_RD" id="DmPLYxqyLd" role="3K4E3e">
                    <property role="Xl_RC" value="max" />
                  </node>
                  <node concept="Xl_RD" id="DmPLYxqyNS" role="3K4GZi">
                    <property role="Xl_RC" value="min" />
                  </node>
                  <node concept="2OqwBi" id="DmPLYxqxJG" role="3K4Cdx">
                    <node concept="13iPFW" id="DmPLYxqxA8" role="2Oq$k0" />
                    <node concept="3TrcHB" id="DmPLYxqyfC" role="2OqNvi">
                      <ref role="3TsBF5" to="irkh:DmPLYxqw4O" resolve="max" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="DmPLYxqzhD" role="3uHU7w">
                <node concept="3K4zz7" id="DmPLYxq$AF" role="1eOMHV">
                  <node concept="Xl_RD" id="DmPLYxq$DS" role="3K4E3e">
                    <property role="Xl_RC" value="Ex" />
                  </node>
                  <node concept="Xl_RD" id="DmPLYxq$H1" role="3K4GZi">
                    <property role="Xl_RC" value="In" />
                  </node>
                  <node concept="2OqwBi" id="DmPLYxqzwN" role="3K4Cdx">
                    <node concept="13iPFW" id="DmPLYxqzkn" role="2Oq$k0" />
                    <node concept="3TrcHB" id="DmPLYxq$3b" role="2OqNvi">
                      <ref role="3TsBF5" to="irkh:6GtTJsVQjWE" resolve="exclusive" />
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
</model>

