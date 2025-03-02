<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7e184eff-8349-496f-875b-1e3646bb06f3(jetbrains.mps.debug.api.source)">
  <persistence version="9" />
  <languages>
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
  </languages>
  <imports>
    <import index="pry4" ref="r:0a0d7eec-6e5a-412b-8e16-e3ee5ed7fb95(jetbrains.mps.debug.api.programState)" />
    <import index="tprt" ref="r:00000000-0000-4000-0000-011c895904a5(jetbrains.mps.ide.common)" />
    <import index="1l1h" ref="r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel()" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util()" />
    <import index="kv4y" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.generator.traceInfo()" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs()" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project()" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components()" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations()" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model()" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
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
      <concept id="1227022159410" name="jetbrains.mps.baseLanguage.collections.structure.AddFirstElementOperation" flags="nn" index="2Ke4WJ" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1240216724530" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashMapCreator" flags="nn" index="32Fmki" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="44XtxR1fJSQ">
    <property role="TrG5h" value="SourcePosition" />
    <property role="1sVAO0" value="true" />
    <node concept="3Tm1VV" id="44XtxR1fJSR" role="1B3o_S" />
    <node concept="3clFbW" id="44XtxR1fJSS" role="jymVt">
      <node concept="3cqZAl" id="44XtxR1fJST" role="3clF45" />
      <node concept="3Tm1VV" id="44XtxR1fJSU" role="1B3o_S" />
      <node concept="3clFbS" id="44XtxR1fJSV" role="3clF47" />
    </node>
  </node>
  <node concept="312cEu" id="44XtxR1fJSW">
    <property role="TrG5h" value="NodeSourcePosition" />
    <node concept="3Tm1VV" id="44XtxR1fJT0" role="1B3o_S" />
    <node concept="3uibUv" id="44XtxR1fJTb" role="1zkMxy">
      <ref role="3uigEE" node="44XtxR1fJSQ" resolve="SourcePosition" />
    </node>
    <node concept="312cEg" id="44XtxR1fJSX" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="44XtxR1fJSY" role="1B3o_S" />
      <node concept="3uibUv" id="44XtxR1fJSZ" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="3clFbW" id="44XtxR1fJT1" role="jymVt">
      <node concept="3cqZAl" id="44XtxR1fJT2" role="3clF45" />
      <node concept="3Tm1VV" id="44XtxR1fJT3" role="1B3o_S" />
      <node concept="3clFbS" id="44XtxR1fJT4" role="3clF47">
        <node concept="3clFbF" id="44XtxR1fJT5" role="3cqZAp">
          <node concept="37vLTI" id="44XtxR1fJT6" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm8rC" role="37vLTx">
              <ref role="3cqZAo" node="44XtxR1fJT9" resolve="node" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuthI" role="37vLTJ">
              <ref role="3cqZAo" node="44XtxR1fJSX" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="44XtxR1fJT9" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="44XtxR1fJTa" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="44XtxR1fJTc" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="44XtxR1fJTd" role="1B3o_S" />
      <node concept="10Oyi0" id="44XtxR1fJTe" role="3clF45" />
      <node concept="3clFbS" id="44XtxR1fJTf" role="3clF47">
        <node concept="3clFbF" id="44XtxR1fJTg" role="3cqZAp">
          <node concept="2OqwBi" id="44XtxR1fJTh" role="3clFbG">
            <node concept="1eOMI4" id="2q2JH_NuTtJ" role="2Oq$k0">
              <node concept="10QFUN" id="2q2JH_NuTtK" role="1eOMHV">
                <node concept="3uibUv" id="2q2JH_NuTtL" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuu57" role="10QFUP">
                  <ref role="3cqZAo" node="44XtxR1fJSX" resolve="myNode" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="44XtxR1fJTj" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SNodePointer.hashCode():int" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="44XtxR1fJTk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="44XtxR1fJTl" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="44XtxR1fJTm" role="1B3o_S" />
      <node concept="10P_77" id="44XtxR1fJTn" role="3clF45" />
      <node concept="37vLTG" id="44XtxR1fJTo" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="44XtxR1fJTp" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="44XtxR1fJTq" role="3clF47">
        <node concept="3clFbJ" id="44XtxR1fJTr" role="3cqZAp">
          <node concept="22lmx$" id="44XtxR1fJTs" role="3clFbw">
            <node concept="3clFbC" id="44XtxR1fJTt" role="3uHU7B">
              <node concept="10Nm6u" id="44XtxR1fJTu" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxgm7sf" role="3uHU7B">
                <ref role="3cqZAo" node="44XtxR1fJTo" resolve="object" />
              </node>
            </node>
            <node concept="3fqX7Q" id="44XtxR1fJTw" role="3uHU7w">
              <node concept="2ZW3vV" id="44XtxR1fJTx" role="3fr31v">
                <node concept="3uibUv" id="44XtxR1fJTy" role="2ZW6by">
                  <ref role="3uigEE" node="44XtxR1fJSW" resolve="NodeSourcePosition" />
                </node>
                <node concept="37vLTw" id="2BHiRxglCCi" role="2ZW6bz">
                  <ref role="3cqZAo" node="44XtxR1fJTo" resolve="object" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="44XtxR1fJT$" role="3clFbx">
            <node concept="3cpWs6" id="44XtxR1fJT_" role="3cqZAp">
              <node concept="3clFbT" id="44XtxR1fJTA" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="44XtxR1fJTB" role="3cqZAp" />
        <node concept="3cpWs8" id="44XtxR1fJTC" role="3cqZAp">
          <node concept="3cpWsn" id="44XtxR1fJTD" role="3cpWs9">
            <property role="TrG5h" value="nodePosition" />
            <node concept="3uibUv" id="44XtxR1fJTE" role="1tU5fm">
              <ref role="3uigEE" node="44XtxR1fJSW" resolve="NodeSourcePosition" />
            </node>
            <node concept="1eOMI4" id="44XtxR1fJTF" role="33vP2m">
              <node concept="10QFUN" id="44XtxR1fJTG" role="1eOMHV">
                <node concept="3uibUv" id="44XtxR1fJTH" role="10QFUM">
                  <ref role="3uigEE" node="44XtxR1fJSW" resolve="NodeSourcePosition" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm8_M" role="10QFUP">
                  <ref role="3cqZAo" node="44XtxR1fJTo" resolve="object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="44XtxR1fJTJ" role="3cqZAp" />
        <node concept="3cpWs6" id="44XtxR1fJTK" role="3cqZAp">
          <node concept="17R0WA" id="44XtxR1fJTL" role="3cqZAk">
            <node concept="2OqwBi" id="44XtxR1fJTM" role="3uHU7w">
              <node concept="37vLTw" id="3GM_nagTvT4" role="2Oq$k0">
                <ref role="3cqZAo" node="44XtxR1fJTD" resolve="nodePosition" />
              </node>
              <node concept="2OwXpG" id="44XtxR1fJTO" role="2OqNvi">
                <ref role="2Oxat5" node="44XtxR1fJSX" resolve="myNode" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuqPJ" role="3uHU7B">
              <ref role="3cqZAo" node="44XtxR1fJSX" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="44XtxR1fJTQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="67iEga6Iwn7" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="67iEga6Iwn9" role="1B3o_S" />
      <node concept="3clFbS" id="67iEga6Iwna" role="3clF47">
        <node concept="3clFbF" id="67iEga6ICE1" role="3cqZAp">
          <node concept="2OqwBi" id="67iEga6ICEl" role="3clFbG">
            <node concept="liA8E" id="6SyhPqtSbRm" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SNodePointer.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
              <node concept="2YIFZM" id="6SyhPqtSbRn" role="37wK5m">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
                <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
              </node>
            </node>
            <node concept="1eOMI4" id="2q2JH_NuQ_J" role="2Oq$k0">
              <node concept="10QFUN" id="2q2JH_NuQ_K" role="1eOMHV">
                <node concept="3uibUv" id="2q2JH_NuQ_L" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuxSc" role="10QFUP">
                  <ref role="3cqZAo" node="44XtxR1fJSX" resolve="myNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="67iEga6Iwnb" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="44XtxR1fJTR">
    <property role="TrG5h" value="TextSourcePosition" />
    <node concept="3Tm1VV" id="44XtxR1fJTY" role="1B3o_S" />
    <node concept="3uibUv" id="44XtxR1fJU8" role="1zkMxy">
      <ref role="3uigEE" node="44XtxR1fJSQ" resolve="SourcePosition" />
    </node>
    <node concept="312cEg" id="44XtxR1fJTS" role="jymVt">
      <property role="TrG5h" value="myFile" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="44XtxR1fJTT" role="1B3o_S" />
      <node concept="3uibUv" id="44XtxR1fJTU" role="1tU5fm">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
    </node>
    <node concept="312cEg" id="44XtxR1fJTV" role="jymVt">
      <property role="TrG5h" value="myLine" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="44XtxR1fJTW" role="1B3o_S" />
      <node concept="10Oyi0" id="44XtxR1fJTX" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="44XtxR1fJTZ" role="jymVt">
      <node concept="3cqZAl" id="44XtxR1fJU0" role="3clF45" />
      <node concept="3Tm1VV" id="44XtxR1fJU1" role="1B3o_S" />
      <node concept="3clFbS" id="44XtxR1fJU2" role="3clF47">
        <node concept="3clFbF" id="44XtxR1fNEO" role="3cqZAp">
          <node concept="37vLTI" id="44XtxR1fNF8" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghfza" role="37vLTx">
              <ref role="3cqZAo" node="44XtxR1fJU3" resolve="file" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuoZi" role="37vLTJ">
              <ref role="3cqZAo" node="44XtxR1fJTS" resolve="myFile" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="44XtxR1fNFd" role="3cqZAp">
          <node concept="37vLTI" id="44XtxR1fNFf" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgkWoL" role="37vLTx">
              <ref role="3cqZAo" node="44XtxR1fJU6" resolve="line" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuU5j" role="37vLTJ">
              <ref role="3cqZAo" node="44XtxR1fJTV" resolve="myLine" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="44XtxR1fJU3" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="44XtxR1fJU4" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
        <node concept="2AHcQZ" id="44XtxR1fJU5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="44XtxR1fJU6" role="3clF46">
        <property role="TrG5h" value="line" />
        <node concept="10Oyi0" id="44XtxR1fJU7" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="44XtxR1fNFj" role="jymVt">
      <property role="TrG5h" value="getFile" />
      <node concept="3Tm1VV" id="44XtxR1fNFl" role="1B3o_S" />
      <node concept="3clFbS" id="44XtxR1fNFm" role="3clF47">
        <node concept="3clFbF" id="44XtxR1fNFo" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuwCp" role="3clFbG">
            <ref role="3cqZAo" node="44XtxR1fJTS" resolve="myFile" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="44XtxR1fNFn" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
    </node>
    <node concept="3clFb_" id="44XtxR1fNFq" role="jymVt">
      <property role="TrG5h" value="getLineNumber" />
      <node concept="3Tm1VV" id="44XtxR1fNFs" role="1B3o_S" />
      <node concept="3clFbS" id="44XtxR1fNFt" role="3clF47">
        <node concept="3clFbF" id="44XtxR1fNFv" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuFGr" role="3clFbG">
            <ref role="3cqZAo" node="44XtxR1fJTV" resolve="myLine" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="44XtxR1fNFu" role="3clF45" />
    </node>
    <node concept="3clFb_" id="46OXyRCk1qQ" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="46OXyRCk1qR" role="1B3o_S" />
      <node concept="10Oyi0" id="46OXyRCk1qS" role="3clF45" />
      <node concept="3clFbS" id="46OXyRCk1qT" role="3clF47">
        <node concept="3clFbF" id="46OXyRCk1r7" role="3cqZAp">
          <node concept="3cpWs3" id="46OXyRCk1rN" role="3clFbG">
            <node concept="2OqwBi" id="46OXyRCk1rr" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxeunlj" role="2Oq$k0">
                <ref role="3cqZAo" node="44XtxR1fJTS" resolve="myFile" />
              </node>
              <node concept="liA8E" id="46OXyRCk1rw" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
              </node>
            </node>
            <node concept="17qRlL" id="46OXyRCk1s9" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxeuO29" role="3uHU7w">
                <ref role="3cqZAo" node="44XtxR1fJTV" resolve="myLine" />
              </node>
              <node concept="3cmrfG" id="46OXyRCk1rQ" role="3uHU7B">
                <property role="3cmrfH" value="19" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="46OXyRCk1qU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="46OXyRCk1qX" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="46OXyRCk1qY" role="1B3o_S" />
      <node concept="10P_77" id="46OXyRCk1qZ" role="3clF45" />
      <node concept="37vLTG" id="46OXyRCk1r0" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="46OXyRCk1r1" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="46OXyRCk1r2" role="3clF47">
        <node concept="3clFbJ" id="46OXyRCk1s_" role="3cqZAp">
          <node concept="22lmx$" id="46OXyRCk1th" role="3clFbw">
            <node concept="3fqX7Q" id="46OXyRCk1tk" role="3uHU7w">
              <node concept="2ZW3vV" id="46OXyRCk1tn" role="3fr31v">
                <node concept="3uibUv" id="46OXyRCk1tq" role="2ZW6by">
                  <ref role="3uigEE" node="44XtxR1fJTR" resolve="TextSourcePosition" />
                </node>
                <node concept="37vLTw" id="2BHiRxglqRW" role="2ZW6bz">
                  <ref role="3cqZAo" node="46OXyRCk1r0" resolve="object" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="46OXyRCk1sV" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgmcpF" role="3uHU7B">
                <ref role="3cqZAo" node="46OXyRCk1r0" resolve="object" />
              </node>
              <node concept="10Nm6u" id="46OXyRCk1sY" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="46OXyRCk1sB" role="3clFbx">
            <node concept="3cpWs6" id="46OXyRCk1tr" role="3cqZAp">
              <node concept="3clFbT" id="46OXyRCk1tt" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="46OXyRCk1tu" role="3cqZAp" />
        <node concept="3cpWs8" id="46OXyRCk1ty" role="3cqZAp">
          <node concept="3cpWsn" id="46OXyRCk1tz" role="3cpWs9">
            <property role="TrG5h" value="position" />
            <node concept="3uibUv" id="46OXyRCk1t$" role="1tU5fm">
              <ref role="3uigEE" node="44XtxR1fJTR" resolve="TextSourcePosition" />
            </node>
            <node concept="1eOMI4" id="46OXyRCk1tA" role="33vP2m">
              <node concept="10QFUN" id="46OXyRCk1tB" role="1eOMHV">
                <node concept="3uibUv" id="46OXyRCk1tE" role="10QFUM">
                  <ref role="3uigEE" node="44XtxR1fJTR" resolve="TextSourcePosition" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm9mI" role="10QFUP">
                  <ref role="3cqZAo" node="46OXyRCk1r0" resolve="object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="46OXyRCk1tG" role="3cqZAp" />
        <node concept="3cpWs6" id="46OXyRCk1tI" role="3cqZAp">
          <node concept="1Wc70l" id="46OXyRCk1uN" role="3cqZAk">
            <node concept="17R0WA" id="46OXyRCk1v9" role="3uHU7w">
              <node concept="2OqwBi" id="46OXyRCk1vv" role="3uHU7w">
                <node concept="37vLTw" id="3GM_nagTBpF" role="2Oq$k0">
                  <ref role="3cqZAo" node="46OXyRCk1tz" resolve="position" />
                </node>
                <node concept="2OwXpG" id="46OXyRCk1v$" role="2OqNvi">
                  <ref role="2Oxat5" node="44XtxR1fJTV" resolve="myLine" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxeuh_f" role="3uHU7B">
                <ref role="3cqZAo" node="44XtxR1fJTV" resolve="myLine" />
              </node>
            </node>
            <node concept="17R0WA" id="46OXyRCk1u3" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxeuNVf" role="3uHU7B">
                <ref role="3cqZAo" node="44XtxR1fJTS" resolve="myFile" />
              </node>
              <node concept="2OqwBi" id="46OXyRCk1up" role="3uHU7w">
                <node concept="37vLTw" id="3GM_nagTxOq" role="2Oq$k0">
                  <ref role="3cqZAo" node="46OXyRCk1tz" resolve="position" />
                </node>
                <node concept="2OwXpG" id="46OXyRCk1uv" role="2OqNvi">
                  <ref role="2Oxat5" node="44XtxR1fJTS" resolve="myFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="46OXyRCk1r3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="67iEga6IeP0">
    <property role="TrG5h" value="IPositionProvider" />
    <node concept="3Tm1VV" id="67iEga6IeP1" role="1B3o_S" />
    <node concept="16euLQ" id="6$AhvwzesLR" role="16eVyc">
      <property role="TrG5h" value="P" />
      <node concept="3uibUv" id="6$AhvwzesLV" role="3ztrMU">
        <ref role="3uigEE" node="44XtxR1fJSQ" resolve="SourcePosition" />
      </node>
    </node>
    <node concept="3clFb_" id="67iEga6IeP6" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getPosition" />
      <node concept="16syzq" id="6$AhvwzesLW" role="3clF45">
        <ref role="16sUi3" node="6$AhvwzesLR" resolve="P" />
      </node>
      <node concept="3Tm1VV" id="67iEga6IeP8" role="1B3o_S" />
      <node concept="3clFbS" id="67iEga6IeP9" role="3clF47" />
      <node concept="37vLTG" id="67iEga6IePf" role="3clF46">
        <property role="TrG5h" value="location" />
        <node concept="3uibUv" id="67iEga6IePg" role="1tU5fm">
          <ref role="3uigEE" to="pry4:3SnNvqCaJt$" resolve="ILocation" />
        </node>
        <node concept="2AHcQZ" id="67iEga6IePh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="2AHcQZ" id="67iEga6IePi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="67iEga6IfE3" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getPosition" />
      <node concept="37vLTG" id="67iEga6IfE8" role="3clF46">
        <property role="TrG5h" value="unitName" />
        <node concept="17QB3L" id="67iEga6IfEc" role="1tU5fm" />
        <node concept="2AHcQZ" id="67iEga6IfEp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="67iEga6IfEh" role="3clF46">
        <property role="TrG5h" value="fileName" />
        <node concept="17QB3L" id="67iEga6IfEj" role="1tU5fm" />
        <node concept="2AHcQZ" id="67iEga6IfEo" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="67iEga6IfEk" role="3clF46">
        <property role="TrG5h" value="lineNumber" />
        <node concept="10Oyi0" id="67iEga6IfEm" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="67iEga6IfE5" role="1B3o_S" />
      <node concept="3clFbS" id="67iEga6IfE6" role="3clF47" />
      <node concept="16syzq" id="6$AhvwzesLX" role="3clF45">
        <ref role="16sUi3" node="6$AhvwzesLR" resolve="P" />
      </node>
      <node concept="2AHcQZ" id="67iEga6IfEq" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="6$AhvwzesWq" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="accepts" />
      <node concept="37vLTG" id="6$AhvwzesWv" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6$AhvwzesWx" role="1tU5fm">
          <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6$AhvwzesWs" role="1B3o_S" />
      <node concept="3clFbS" id="6$AhvwzesWt" role="3clF47" />
      <node concept="10P_77" id="6$AhvwzesWu" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="67iEga6If$x">
    <property role="TrG5h" value="PositionProvider" />
    <node concept="3Tm1VV" id="67iEga6If$y" role="1B3o_S" />
    <node concept="3uibUv" id="6$AhvwzeLU$" role="EKbjA">
      <ref role="3uigEE" to="1m72:~ProjectComponent" resolve="ProjectComponent" />
    </node>
    <node concept="312cEg" id="6$AhvwzeLV0" role="jymVt">
      <property role="TrG5h" value="myIdeaProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6$AhvwzeLV1" role="1B3o_S" />
      <node concept="3uibUv" id="6$AhvwzeLV3" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="4d72gVMtVs7" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4d72gVMtVs8" role="1B3o_S" />
      <node concept="3uibUv" id="4d72gVMtW2y" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="6$AhvwzeAcg" role="jymVt">
      <property role="TrG5h" value="myKeysToProviders" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6$AhvwzeAch" role="1B3o_S" />
      <node concept="3rvAFt" id="6$AhvwzeAcj" role="1tU5fm">
        <node concept="17QB3L" id="6$AhvwzeAqr" role="3rvQeY" />
        <node concept="_YKpA" id="6$AhvwzeAcn" role="3rvSg0">
          <node concept="3uibUv" id="6$AhvwzeAcp" role="_ZDj9">
            <ref role="3uigEE" node="67iEga6IeP0" resolve="IPositionProvider" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="6$AhvwzeAcr" role="33vP2m">
        <node concept="32Fmki" id="6$AhvwzeAct" role="2ShVmc">
          <node concept="17QB3L" id="6$AhvwzeAqs" role="3rHrn6" />
          <node concept="_YKpA" id="6$AhvwzeAcx" role="3rHtpV">
            <node concept="3uibUv" id="6$AhvwzeAcz" role="_ZDj9">
              <ref role="3uigEE" node="67iEga6IeP0" resolve="IPositionProvider" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="67iEga6If$z" role="jymVt">
      <node concept="3cqZAl" id="67iEga6If$$" role="3clF45" />
      <node concept="3Tm1VV" id="67iEga6If$_" role="1B3o_S" />
      <node concept="3clFbS" id="67iEga6If$A" role="3clF47">
        <node concept="3clFbF" id="6$AhvwzeLV5" role="3cqZAp">
          <node concept="37vLTI" id="6$AhvwzeLV7" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgheX1" role="37vLTx">
              <ref role="3cqZAo" node="6$AhvwzeLUX" resolve="project" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuyRT" role="37vLTJ">
              <ref role="3cqZAo" node="6$AhvwzeLV0" resolve="myIdeaProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4d72gVMtW5i" role="3cqZAp">
          <node concept="37vLTI" id="4d72gVMtWbZ" role="3clFbG">
            <node concept="37vLTw" id="4d72gVMtWgC" role="37vLTx">
              <ref role="3cqZAo" node="4d72gVMtVoS" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="4d72gVMtW5g" role="37vLTJ">
              <ref role="3cqZAo" node="4d72gVMtVs7" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6$AhvwzeLUX" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6$AhvwzeLUY" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="4d72gVMtVoS" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="4d72gVMtVrx" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6$AhvwzeAcD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPosition" />
      <node concept="3uibUv" id="6$AhvwzeAcE" role="3clF45">
        <ref role="3uigEE" node="44XtxR1fJSQ" resolve="SourcePosition" />
      </node>
      <node concept="3Tm1VV" id="6$AhvwzeAcF" role="1B3o_S" />
      <node concept="37vLTG" id="6$AhvwzeAcG" role="3clF46">
        <property role="TrG5h" value="location" />
        <node concept="3uibUv" id="6$AhvwzeAcH" role="1tU5fm">
          <ref role="3uigEE" to="pry4:3SnNvqCaJt$" resolve="ILocation" />
        </node>
        <node concept="2AHcQZ" id="6$AhvwzeAcI" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="6$AhvwzeAd8" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6$AhvwzeAda" role="1tU5fm">
          <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
        </node>
        <node concept="2AHcQZ" id="6$AhvwzeAdb" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6$AhvwzeAcJ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="6$AhvwzeAcK" role="3clF47">
        <node concept="2Gpval" id="6$AhvwzeAdd" role="3cqZAp">
          <node concept="2GrKxI" id="6$AhvwzeAde" role="2Gsz3X">
            <property role="TrG5h" value="key" />
          </node>
          <node concept="2OqwBi" id="6$AhvwzeAdA" role="2GsD0m">
            <node concept="37vLTw" id="2BHiRxeug51" role="2Oq$k0">
              <ref role="3cqZAo" node="6$AhvwzeAcg" resolve="myKeysToProviders" />
            </node>
            <node concept="3lbrtF" id="6$AhvwzeAdG" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="6$AhvwzeAdg" role="2LFqv$">
            <node concept="3cpWs8" id="6$AhvwzeAf2" role="3cqZAp">
              <node concept="3cpWsn" id="6$AhvwzeAf3" role="3cpWs9">
                <property role="TrG5h" value="provider" />
                <node concept="3uibUv" id="6$AhvwzeAf4" role="1tU5fm">
                  <ref role="3uigEE" node="67iEga6IeP0" resolve="IPositionProvider" />
                </node>
                <node concept="2OqwBi" id="6$AhvwzeAf5" role="33vP2m">
                  <node concept="3EllGN" id="6$AhvwzeAf6" role="2Oq$k0">
                    <node concept="2GrUjf" id="6$AhvwzeAf7" role="3ElVtu">
                      <ref role="2Gs0qQ" node="6$AhvwzeAde" resolve="key" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxeuu2v" role="3ElQJh">
                      <ref role="3cqZAo" node="6$AhvwzeAcg" resolve="myKeysToProviders" />
                    </node>
                  </node>
                  <node concept="1z4cxt" id="6$AhvwzeAf9" role="2OqNvi">
                    <node concept="1bVj0M" id="6$AhvwzeAfa" role="23t8la">
                      <node concept="3clFbS" id="6$AhvwzeAfb" role="1bW5cS">
                        <node concept="3clFbF" id="6$AhvwzeAfc" role="3cqZAp">
                          <node concept="2OqwBi" id="6$AhvwzeAfd" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxgm9bt" role="2Oq$k0">
                              <ref role="3cqZAo" node="6$AhvwzeAfh" resolve="it" />
                            </node>
                            <node concept="liA8E" id="6$AhvwzeAff" role="2OqNvi">
                              <ref role="37wK5l" node="6$AhvwzesWq" resolve="accepts" />
                              <node concept="37vLTw" id="2BHiRxgm_6d" role="37wK5m">
                                <ref role="3cqZAo" node="6$AhvwzeAd8" resolve="session" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6$AhvwzeAfh" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6$AhvwzeAfi" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6$AhvwzeAfl" role="3cqZAp">
              <node concept="3clFbS" id="6$AhvwzeAfm" role="3clFbx">
                <node concept="3cpWs8" id="6$AhvwzeAgd" role="3cqZAp">
                  <node concept="3cpWsn" id="6$AhvwzeAge" role="3cpWs9">
                    <property role="TrG5h" value="position" />
                    <node concept="3uibUv" id="6$AhvwzeAgf" role="1tU5fm">
                      <ref role="3uigEE" node="44XtxR1fJSQ" resolve="SourcePosition" />
                    </node>
                    <node concept="2OqwBi" id="6$AhvwzeAgg" role="33vP2m">
                      <node concept="37vLTw" id="3GM_nagTBZT" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$AhvwzeAf3" resolve="provider" />
                      </node>
                      <node concept="liA8E" id="6$AhvwzeAgi" role="2OqNvi">
                        <ref role="37wK5l" node="67iEga6IeP6" resolve="getPosition" />
                        <node concept="37vLTw" id="2BHiRxghiCG" role="37wK5m">
                          <ref role="3cqZAo" node="6$AhvwzeAcG" resolve="location" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6$AhvwzeAgm" role="3cqZAp">
                  <node concept="3clFbS" id="6$AhvwzeAgn" role="3clFbx">
                    <node concept="3cpWs6" id="6$AhvwzeAgL" role="3cqZAp">
                      <node concept="37vLTw" id="3GM_nagTuED" role="3cqZAk">
                        <ref role="3cqZAo" node="6$AhvwzeAge" resolve="position" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="6$AhvwzeAgH" role="3clFbw">
                    <node concept="10Nm6u" id="6$AhvwzeAgK" role="3uHU7w" />
                    <node concept="37vLTw" id="3GM_nagTziS" role="3uHU7B">
                      <ref role="3cqZAo" node="6$AhvwzeAge" resolve="position" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6$AhvwzeAfG" role="3clFbw">
                <node concept="10Nm6u" id="6$AhvwzeAfJ" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTtE0" role="3uHU7B">
                  <ref role="3cqZAo" node="6$AhvwzeAf3" resolve="provider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6$AhvwzeAgR" role="3cqZAp">
          <node concept="10Nm6u" id="6$AhvwzeAgT" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6$AhvwzeAgU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPosition" />
      <node concept="37vLTG" id="6$AhvwzeAgV" role="3clF46">
        <property role="TrG5h" value="unitName" />
        <node concept="17QB3L" id="6$AhvwzeAgW" role="1tU5fm" />
        <node concept="2AHcQZ" id="6$AhvwzeAgX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6$AhvwzeAgY" role="3clF46">
        <property role="TrG5h" value="fileName" />
        <node concept="17QB3L" id="6$AhvwzeAgZ" role="1tU5fm" />
        <node concept="2AHcQZ" id="6$AhvwzeAh0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6$AhvwzeAh1" role="3clF46">
        <property role="TrG5h" value="lineNumber" />
        <node concept="10Oyi0" id="6$AhvwzeAh2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6$AhvwzeAhw" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6$AhvwzeAhy" role="1tU5fm">
          <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
        </node>
        <node concept="2AHcQZ" id="6$AhvwzeAhz" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6$AhvwzeAh3" role="1B3o_S" />
      <node concept="3uibUv" id="6$AhvwzeAh4" role="3clF45">
        <ref role="3uigEE" node="44XtxR1fJSQ" resolve="SourcePosition" />
      </node>
      <node concept="2AHcQZ" id="6$AhvwzeAh5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="6$AhvwzeAh6" role="3clF47">
        <node concept="2Gpval" id="6$AhvwzeAh$" role="3cqZAp">
          <node concept="2GrKxI" id="6$AhvwzeAh_" role="2Gsz3X">
            <property role="TrG5h" value="key" />
          </node>
          <node concept="2OqwBi" id="6$AhvwzeAhA" role="2GsD0m">
            <node concept="37vLTw" id="2BHiRxeuj_P" role="2Oq$k0">
              <ref role="3cqZAo" node="6$AhvwzeAcg" resolve="myKeysToProviders" />
            </node>
            <node concept="3lbrtF" id="6$AhvwzeAhC" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="6$AhvwzeAhD" role="2LFqv$">
            <node concept="3cpWs8" id="6$AhvwzeAhE" role="3cqZAp">
              <node concept="3cpWsn" id="6$AhvwzeAhF" role="3cpWs9">
                <property role="TrG5h" value="provider" />
                <node concept="3uibUv" id="6$AhvwzeAhG" role="1tU5fm">
                  <ref role="3uigEE" node="67iEga6IeP0" resolve="IPositionProvider" />
                </node>
                <node concept="2OqwBi" id="6$AhvwzeAhH" role="33vP2m">
                  <node concept="3EllGN" id="6$AhvwzeAhI" role="2Oq$k0">
                    <node concept="2GrUjf" id="6$AhvwzeAhJ" role="3ElVtu">
                      <ref role="2Gs0qQ" node="6$AhvwzeAh_" resolve="key" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxeuL9J" role="3ElQJh">
                      <ref role="3cqZAo" node="6$AhvwzeAcg" resolve="myKeysToProviders" />
                    </node>
                  </node>
                  <node concept="1z4cxt" id="6$AhvwzeAhL" role="2OqNvi">
                    <node concept="1bVj0M" id="6$AhvwzeAhM" role="23t8la">
                      <node concept="3clFbS" id="6$AhvwzeAhN" role="1bW5cS">
                        <node concept="3clFbF" id="6$AhvwzeAhO" role="3cqZAp">
                          <node concept="2OqwBi" id="6$AhvwzeAhP" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxgmak3" role="2Oq$k0">
                              <ref role="3cqZAo" node="6$AhvwzeAhT" resolve="it" />
                            </node>
                            <node concept="liA8E" id="6$AhvwzeAhR" role="2OqNvi">
                              <ref role="37wK5l" node="6$AhvwzesWq" resolve="accepts" />
                              <node concept="37vLTw" id="2BHiRxghg10" role="37wK5m">
                                <ref role="3cqZAo" node="6$AhvwzeAhw" resolve="session" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6$AhvwzeAhT" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6$AhvwzeAhU" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6$AhvwzeAhV" role="3cqZAp">
              <node concept="3clFbS" id="6$AhvwzeAhW" role="3clFbx">
                <node concept="3cpWs8" id="6$AhvwzeAhX" role="3cqZAp">
                  <node concept="3cpWsn" id="6$AhvwzeAhY" role="3cpWs9">
                    <property role="TrG5h" value="position" />
                    <node concept="3uibUv" id="6$AhvwzeAhZ" role="1tU5fm">
                      <ref role="3uigEE" node="44XtxR1fJSQ" resolve="SourcePosition" />
                    </node>
                    <node concept="2OqwBi" id="6$AhvwzeAi0" role="33vP2m">
                      <node concept="37vLTw" id="3GM_nagTxXk" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$AhvwzeAhF" resolve="provider" />
                      </node>
                      <node concept="liA8E" id="6$AhvwzeAi2" role="2OqNvi">
                        <ref role="37wK5l" node="67iEga6IfE3" resolve="getPosition" />
                        <node concept="37vLTw" id="2BHiRxghfKy" role="37wK5m">
                          <ref role="3cqZAo" node="6$AhvwzeAgV" resolve="unitName" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxgm8Hr" role="37wK5m">
                          <ref role="3cqZAo" node="6$AhvwzeAgY" resolve="fileName" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxgllaI" role="37wK5m">
                          <ref role="3cqZAo" node="6$AhvwzeAh1" resolve="lineNumber" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6$AhvwzeAi4" role="3cqZAp">
                  <node concept="3clFbS" id="6$AhvwzeAi5" role="3clFbx">
                    <node concept="3cpWs6" id="6$AhvwzeAi6" role="3cqZAp">
                      <node concept="37vLTw" id="3GM_nagTxUg" role="3cqZAk">
                        <ref role="3cqZAo" node="6$AhvwzeAhY" resolve="position" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="6$AhvwzeAi8" role="3clFbw">
                    <node concept="10Nm6u" id="6$AhvwzeAi9" role="3uHU7w" />
                    <node concept="37vLTw" id="3GM_nagT$33" role="3uHU7B">
                      <ref role="3cqZAo" node="6$AhvwzeAhY" resolve="position" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6$AhvwzeAib" role="3clFbw">
                <node concept="10Nm6u" id="6$AhvwzeAic" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTr8V" role="3uHU7B">
                  <ref role="3cqZAo" node="6$AhvwzeAhF" resolve="provider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6$AhvwzeAie" role="3cqZAp">
          <node concept="10Nm6u" id="6$AhvwzeAif" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="67iEga6If_0" role="jymVt">
      <property role="TrG5h" value="addProvider" />
      <node concept="3cqZAl" id="67iEga6If_1" role="3clF45" />
      <node concept="3Tm1VV" id="67iEga6If_2" role="1B3o_S" />
      <node concept="3clFbS" id="67iEga6If_3" role="3clF47">
        <node concept="3cpWs8" id="6$AhvwzeAlo" role="3cqZAp">
          <node concept="3cpWsn" id="6$AhvwzeAlp" role="3cpWs9">
            <property role="TrG5h" value="providersForKey" />
            <node concept="_YKpA" id="6$AhvwzeAlq" role="1tU5fm">
              <node concept="3uibUv" id="6$AhvwzeAlr" role="_ZDj9">
                <ref role="3uigEE" node="67iEga6IeP0" resolve="IPositionProvider" />
              </node>
            </node>
            <node concept="3EllGN" id="6$AhvwzeAls" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxghiDt" role="3ElVtu">
                <ref role="3cqZAo" node="6$AhvwzeAks" resolve="key" />
              </node>
              <node concept="37vLTw" id="2BHiRxeukwy" role="3ElQJh">
                <ref role="3cqZAo" node="6$AhvwzeAcg" resolve="myKeysToProviders" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6$AhvwzeAlx" role="3cqZAp">
          <node concept="3clFbS" id="6$AhvwzeAly" role="3clFbx">
            <node concept="3clFbF" id="6$AhvwzeAmt" role="3cqZAp">
              <node concept="37vLTI" id="6$AhvwzeAmV" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTxOa" role="37vLTJ">
                  <ref role="3cqZAo" node="6$AhvwzeAlp" resolve="providersForKey" />
                </node>
                <node concept="2ShNRf" id="6$AhvwzeAmp" role="37vLTx">
                  <node concept="Tc6Ow" id="6$AhvwzeAmq" role="2ShVmc">
                    <node concept="3uibUv" id="6$AhvwzeAmr" role="HW$YZ">
                      <ref role="3uigEE" node="67iEga6IeP0" resolve="IPositionProvider" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6$AhvwzeAlE" role="3cqZAp">
              <node concept="37vLTI" id="6$AhvwzeAmm" role="3clFbG">
                <node concept="3EllGN" id="6$AhvwzeAm0" role="37vLTJ">
                  <node concept="37vLTw" id="2BHiRxgmaI2" role="3ElVtu">
                    <ref role="3cqZAo" node="6$AhvwzeAks" resolve="key" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuoUg" role="3ElQJh">
                    <ref role="3cqZAo" node="6$AhvwzeAcg" resolve="myKeysToProviders" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTB__" role="37vLTx">
                  <ref role="3cqZAo" node="6$AhvwzeAlp" resolve="providersForKey" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6$AhvwzeAlA" role="3clFbw">
            <node concept="10Nm6u" id="6$AhvwzeAlD" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTAzD" role="3uHU7B">
              <ref role="3cqZAo" node="6$AhvwzeAlp" resolve="providersForKey" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6$AhvwzeAn1" role="3cqZAp">
          <node concept="2OqwBi" id="6$AhvwzeAnl" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTz7h" role="2Oq$k0">
              <ref role="3cqZAo" node="6$AhvwzeAlp" resolve="providersForKey" />
            </node>
            <node concept="2Ke4WJ" id="6$AhvwzeAnr" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxgmagO" role="25WWJ7">
                <ref role="3cqZAo" node="67iEga6If_4" resolve="provider" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="67iEga6If_4" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="67iEga6If_5" role="1tU5fm">
          <ref role="3uigEE" node="67iEga6IeP0" resolve="IPositionProvider" />
        </node>
        <node concept="2AHcQZ" id="67iEga6If_6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6$AhvwzeAks" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="6$AhvwzeAqt" role="1tU5fm" />
        <node concept="2AHcQZ" id="6$AhvwzeAky" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="67iEga6If_$" role="jymVt">
      <property role="TrG5h" value="removeProvider" />
      <node concept="3Tm1VV" id="67iEga6If_A" role="1B3o_S" />
      <node concept="3clFbS" id="67iEga6If_B" role="3clF47">
        <node concept="2Gpval" id="6$AhvwzeApn" role="3cqZAp">
          <node concept="2GrKxI" id="6$AhvwzeApo" role="2Gsz3X">
            <property role="TrG5h" value="providerList" />
          </node>
          <node concept="3clFbS" id="6$AhvwzeApq" role="2LFqv$">
            <node concept="3clFbJ" id="6$AhvwzeApS" role="3cqZAp">
              <node concept="3clFbS" id="6$AhvwzeApU" role="3clFbx">
                <node concept="3cpWs6" id="6$AhvwzeAqi" role="3cqZAp">
                  <node concept="3clFbT" id="6$AhvwzeAqk" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6$AhvwzeAqe" role="3clFbw">
                <node concept="10Nm6u" id="6$AhvwzeAqh" role="3uHU7w" />
                <node concept="2OqwBi" id="6$AhvwzeApJ" role="3uHU7B">
                  <node concept="3dhRuq" id="4RAjgnMGp99" role="2OqNvi">
                    <node concept="37vLTw" id="2BHiRxglYES" role="25WWJ7">
                      <ref role="3cqZAo" node="67iEga6If_H" resolve="provider" />
                    </node>
                  </node>
                  <node concept="2GrUjf" id="6$AhvwzeAps" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6$AhvwzeApo" resolve="providerList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6$AhvwzeAot" role="2GsD0m">
            <node concept="T8wYR" id="4RAjgnMGoQj" role="2OqNvi" />
            <node concept="37vLTw" id="2BHiRxeuVtw" role="2Oq$k0">
              <ref role="3cqZAo" node="6$AhvwzeAcg" resolve="myKeysToProviders" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6$AhvwzeAqm" role="3cqZAp">
          <node concept="3clFbT" id="6$AhvwzeAqo" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="67iEga6If_H" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="67iEga6If_I" role="1tU5fm">
          <ref role="3uigEE" node="67iEga6IeP0" resolve="IPositionProvider" />
        </node>
        <node concept="2AHcQZ" id="67iEga6If_J" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="10P_77" id="6$AhvwzeAnx" role="3clF45" />
    </node>
    <node concept="3clFb_" id="6$AhvwzeLU_" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="projectOpened" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6$AhvwzeLUA" role="1B3o_S" />
      <node concept="3cqZAl" id="6$AhvwzeLUB" role="3clF45" />
      <node concept="3clFbS" id="6$AhvwzeLUC" role="3clF47" />
      <node concept="2AHcQZ" id="3tYsUK_RX_q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6$AhvwzeLUD" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="projectClosed" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6$AhvwzeLUE" role="1B3o_S" />
      <node concept="3cqZAl" id="6$AhvwzeLUF" role="3clF45" />
      <node concept="3clFbS" id="6$AhvwzeLUG" role="3clF47" />
      <node concept="2AHcQZ" id="3tYsUK_RX_p" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6$AhvwzeLUH" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initComponent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6$AhvwzeLUI" role="1B3o_S" />
      <node concept="3cqZAl" id="6$AhvwzeLUJ" role="3clF45" />
      <node concept="3clFbS" id="6$AhvwzeLUK" role="3clF47">
        <node concept="3clFbF" id="6$AhvwzeLUj" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyIjI" role="3clFbG">
            <ref role="37wK5l" node="67iEga6If_0" resolve="addProvider" />
            <node concept="2ShNRf" id="6$AhvwzeLU8" role="37wK5m">
              <node concept="1pGfFk" id="6$AhvwzeLUc" role="2ShVmc">
                <ref role="37wK5l" node="67iEga6IfD4" resolve="NodePositionProvider" />
                <node concept="37vLTw" id="4d72gVMtWjw" role="37wK5m">
                  <ref role="3cqZAo" node="4d72gVMtVs7" resolve="myProject" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6$AhvwzeJ6m" role="37wK5m">
              <node concept="3VsKOn" id="6$AhvwzeJ63" role="2Oq$k0">
                <ref role="3VsUkX" node="44XtxR1fJSW" resolve="NodeSourcePosition" />
              </node>
              <node concept="liA8E" id="6$AhvwzeLTM" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getName():java.lang.String" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6$AhvwzeLUn" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyZab" role="3clFbG">
            <ref role="37wK5l" node="67iEga6If_0" resolve="addProvider" />
            <node concept="2ShNRf" id="6$AhvwzeLUp" role="37wK5m">
              <node concept="1pGfFk" id="6$AhvwzeLUq" role="2ShVmc">
                <ref role="37wK5l" node="67iEga6IfGV" resolve="TextPositionProvider" />
                <node concept="37vLTw" id="2BHiRxeuylx" role="37wK5m">
                  <ref role="3cqZAo" node="6$AhvwzeLV0" resolve="myIdeaProject" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6$AhvwzeLUr" role="37wK5m">
              <node concept="3VsKOn" id="6$AhvwzeLUy" role="2Oq$k0">
                <ref role="3VsUkX" node="44XtxR1fJTR" resolve="TextSourcePosition" />
              </node>
              <node concept="liA8E" id="6$AhvwzeLUt" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getName():java.lang.String" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RX_o" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6$AhvwzeLUL" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="disposeComponent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6$AhvwzeLUM" role="1B3o_S" />
      <node concept="3cqZAl" id="6$AhvwzeLUN" role="3clF45" />
      <node concept="3clFbS" id="6$AhvwzeLUO" role="3clF47">
        <node concept="3clFbF" id="6$AhvwzeLVe" role="3cqZAp">
          <node concept="2OqwBi" id="6$AhvwzeLV$" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuuZO" role="2Oq$k0">
              <ref role="3cqZAo" node="6$AhvwzeAcg" resolve="myKeysToProviders" />
            </node>
            <node concept="1yHZxX" id="6$AhvwzeLVE" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RX_n" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6$AhvwzeLUP" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getComponentName" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6$AhvwzeLUQ" role="1B3o_S" />
      <node concept="17QB3L" id="6$AhvwzeLVb" role="3clF45" />
      <node concept="2AHcQZ" id="6$AhvwzeLUS" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
      </node>
      <node concept="2AHcQZ" id="6$AhvwzeLUT" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="6$AhvwzeLUU" role="3clF47">
        <node concept="3clFbF" id="6$AhvwzeLUV" role="3cqZAp">
          <node concept="Xl_RD" id="6$AhvwzeLVc" role="3clFbG">
            <property role="Xl_RC" value="Position Provider" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RX_r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2YIFZL" id="6$AhvwzeMeA" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3Tm1VV" id="6$AhvwzeMeC" role="1B3o_S" />
      <node concept="3clFbS" id="6$AhvwzeMeD" role="3clF47">
        <node concept="3clFbF" id="6$AhvwzeMeH" role="3cqZAp">
          <node concept="2OqwBi" id="6$AhvwzeMf1" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghfC0" role="2Oq$k0">
              <ref role="3cqZAo" node="6$AhvwzeMeF" resolve="project" />
            </node>
            <node concept="liA8E" id="6$AhvwzeMf7" role="2OqNvi">
              <ref role="37wK5l" to="1m72:~ComponentManager.getComponent(java.lang.Class):java.lang.Object" resolve="getComponent" />
              <node concept="3VsKOn" id="6$AhvwzeMfb" role="37wK5m">
                <ref role="3VsUkX" node="67iEga6If$x" resolve="PositionProvider" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6$AhvwzeMeE" role="3clF45">
        <ref role="3uigEE" node="67iEga6If$x" resolve="PositionProvider" />
      </node>
      <node concept="37vLTG" id="6$AhvwzeMeF" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6$AhvwzeMeG" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="67iEga6IfD2">
    <property role="TrG5h" value="NodePositionProvider" />
    <node concept="3Tm1VV" id="67iEga6IfD3" role="1B3o_S" />
    <node concept="3uibUv" id="67iEga6IfD8" role="EKbjA">
      <ref role="3uigEE" node="67iEga6IeP0" resolve="IPositionProvider" />
      <node concept="3uibUv" id="6$AhvwzesM8" role="11_B2D">
        <ref role="3uigEE" node="44XtxR1fJSW" resolve="NodeSourcePosition" />
      </node>
    </node>
    <node concept="312cEg" id="4d72gVMt$CV" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4d72gVMt$CW" role="1B3o_S" />
      <node concept="3uibUv" id="4d72gVMt$CY" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="4d72gVMt_8N" role="jymVt" />
    <node concept="3clFbW" id="67iEga6IfD4" role="jymVt">
      <node concept="3cqZAl" id="67iEga6IfD5" role="3clF45" />
      <node concept="3Tm1VV" id="67iEga6IfD6" role="1B3o_S" />
      <node concept="3clFbS" id="67iEga6IfD7" role="3clF47">
        <node concept="3clFbF" id="4d72gVMt$CZ" role="3cqZAp">
          <node concept="37vLTI" id="4d72gVMt$D1" role="3clFbG">
            <node concept="37vLTw" id="4d72gVMt_SM" role="37vLTJ">
              <ref role="3cqZAo" node="4d72gVMt$CV" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="4d72gVMt$D9" role="37vLTx">
              <ref role="3cqZAo" node="4d72gVMt$g7" resolve="mpsProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4d72gVMt$g7" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="4d72gVMt$g6" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="67iEga6IfDb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPosition" />
      <node concept="3uibUv" id="6$AhvwzesM9" role="3clF45">
        <ref role="3uigEE" node="44XtxR1fJSW" resolve="NodeSourcePosition" />
      </node>
      <node concept="3Tm1VV" id="67iEga6IfDd" role="1B3o_S" />
      <node concept="37vLTG" id="67iEga6IfDe" role="3clF46">
        <property role="TrG5h" value="location" />
        <node concept="3uibUv" id="67iEga6IfDf" role="1tU5fm">
          <ref role="3uigEE" to="pry4:3SnNvqCaJt$" resolve="ILocation" />
        </node>
        <node concept="2AHcQZ" id="67iEga6IfDg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="2AHcQZ" id="67iEga6IfDh" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="67iEga6IfDi" role="3clF47">
        <node concept="3clFbJ" id="67iEga6IfDn" role="3cqZAp">
          <node concept="22lmx$" id="67iEga6IfDo" role="3clFbw">
            <node concept="2ZW3vV" id="67iEga6IfDp" role="3uHU7w">
              <node concept="3uibUv" id="67iEga6IfDq" role="2ZW6by">
                <ref role="3uigEE" to="pry4:3SnNvqCaJh3" resolve="NullLocation" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmafb" role="2ZW6bz">
                <ref role="3cqZAo" node="67iEga6IfDe" resolve="location" />
              </node>
            </node>
            <node concept="3clFbC" id="67iEga6IfDs" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgm6eb" role="3uHU7B">
                <ref role="3cqZAo" node="67iEga6IfDe" resolve="location" />
              </node>
              <node concept="10Nm6u" id="67iEga6IfDu" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="67iEga6IfDv" role="3clFbx">
            <node concept="3cpWs6" id="67iEga6IfDw" role="3cqZAp">
              <node concept="10Nm6u" id="67iEga6IfDx" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="67iEga6IfDy" role="3cqZAp">
          <node concept="3cpWsn" id="67iEga6IfDz" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="67iEga6IfD$" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="1rXfSq" id="4hiugqyz8zX" role="33vP2m">
              <ref role="37wK5l" node="44XtxR1fN9s" resolve="getSNodePointer" />
              <node concept="37vLTw" id="2BHiRxgkWGS" role="37wK5m">
                <ref role="3cqZAo" node="67iEga6IfDe" resolve="location" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="67iEga6IfDB" role="3cqZAp">
          <node concept="3clFbS" id="67iEga6IfDC" role="3clFbx">
            <node concept="3cpWs6" id="67iEga6IfDD" role="3cqZAp">
              <node concept="2ShNRf" id="67iEga6IfDE" role="3cqZAk">
                <node concept="1pGfFk" id="67iEga6IfDF" role="2ShVmc">
                  <ref role="37wK5l" node="44XtxR1fJT1" resolve="NodeSourcePosition" />
                  <node concept="37vLTw" id="3GM_nagTwLs" role="37wK5m">
                    <ref role="3cqZAo" node="67iEga6IfDz" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="67iEga6IfDH" role="3clFbw">
            <node concept="10Nm6u" id="67iEga6IfDI" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTylq" role="3uHU7B">
              <ref role="3cqZAo" node="67iEga6IfDz" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="67iEga6IfDL" role="3cqZAp">
          <node concept="10Nm6u" id="67iEga6IfDN" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SdIV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="67iEga6IfFJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPosition" />
      <node concept="37vLTG" id="67iEga6IfFK" role="3clF46">
        <property role="TrG5h" value="unitName" />
        <node concept="17QB3L" id="67iEga6IfFL" role="1tU5fm" />
        <node concept="2AHcQZ" id="67iEga6IfFM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="67iEga6IfFN" role="3clF46">
        <property role="TrG5h" value="fileName" />
        <node concept="17QB3L" id="67iEga6IfFO" role="1tU5fm" />
        <node concept="2AHcQZ" id="67iEga6IfFP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="67iEga6IfFQ" role="3clF46">
        <property role="TrG5h" value="lineNumber" />
        <node concept="10Oyi0" id="67iEga6IfFR" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="67iEga6IfFS" role="1B3o_S" />
      <node concept="3uibUv" id="6$AhvwzesMb" role="3clF45">
        <ref role="3uigEE" node="44XtxR1fJSW" resolve="NodeSourcePosition" />
      </node>
      <node concept="2AHcQZ" id="67iEga6IfFU" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="67iEga6IfFV" role="3clF47">
        <node concept="3cpWs8" id="67iEga6IfG0" role="3cqZAp">
          <node concept="3cpWsn" id="67iEga6IfG1" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="67iEga6IfG2" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="1rXfSq" id="4hiugqyyO_0" role="33vP2m">
              <ref role="37wK5l" node="44XtxR1fN9U" resolve="getSNodePointer" />
              <node concept="37vLTw" id="2BHiRxgmaSf" role="37wK5m">
                <ref role="3cqZAo" node="67iEga6IfFK" resolve="unitName" />
              </node>
              <node concept="37vLTw" id="2BHiRxghiYE" role="37wK5m">
                <ref role="3cqZAo" node="67iEga6IfFN" resolve="fileName" />
              </node>
              <node concept="37vLTw" id="2BHiRxglt8o" role="37wK5m">
                <ref role="3cqZAo" node="67iEga6IfFQ" resolve="lineNumber" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="67iEga6IfG7" role="3cqZAp">
          <node concept="3clFbS" id="67iEga6IfG8" role="3clFbx">
            <node concept="3cpWs6" id="67iEga6IfG9" role="3cqZAp">
              <node concept="2ShNRf" id="67iEga6IfGa" role="3cqZAk">
                <node concept="1pGfFk" id="67iEga6IfGb" role="2ShVmc">
                  <ref role="37wK5l" node="44XtxR1fJT1" resolve="NodeSourcePosition" />
                  <node concept="37vLTw" id="3GM_nagT_$y" role="37wK5m">
                    <ref role="3cqZAo" node="67iEga6IfG1" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="67iEga6IfGd" role="3clFbw">
            <node concept="10Nm6u" id="67iEga6IfGe" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagT$x3" role="3uHU7B">
              <ref role="3cqZAo" node="67iEga6IfG1" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="67iEga6IfGh" role="3cqZAp">
          <node concept="10Nm6u" id="67iEga6IfGj" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SdIU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="44XtxR1fN9s" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSNodePointer" />
      <node concept="3uibUv" id="FWER_aWNkX" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="37vLTG" id="44XtxR1fN9t" role="3clF46">
        <property role="TrG5h" value="location" />
        <node concept="3uibUv" id="44XtxR1fN9u" role="1tU5fm">
          <ref role="3uigEE" to="pry4:3SnNvqCaJt$" resolve="ILocation" />
        </node>
        <node concept="2AHcQZ" id="44XtxR1fN9v" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="44XtxR1fN9w" role="1B3o_S" />
      <node concept="3clFbS" id="44XtxR1fN9y" role="3clF47">
        <node concept="3clFbJ" id="44XtxR1fN9z" role="3cqZAp">
          <node concept="3clFbS" id="44XtxR1fN9$" role="3clFbx">
            <node concept="3cpWs6" id="44XtxR1fN9_" role="3cqZAp">
              <node concept="10Nm6u" id="44XtxR1fN9A" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="44XtxR1fN9B" role="3clFbw">
            <node concept="2ZW3vV" id="44XtxR1fN9C" role="3uHU7w">
              <node concept="3uibUv" id="44XtxR1fN9D" role="2ZW6by">
                <ref role="3uigEE" to="pry4:3SnNvqCaJh3" resolve="NullLocation" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmzsO" role="2ZW6bz">
                <ref role="3cqZAo" node="44XtxR1fN9t" resolve="location" />
              </node>
            </node>
            <node concept="3clFbC" id="44XtxR1fN9F" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxglPj3" role="3uHU7B">
                <ref role="3cqZAo" node="44XtxR1fN9t" resolve="location" />
              </node>
              <node concept="10Nm6u" id="44XtxR1fN9H" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="44XtxR1fN9I" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyza2c" role="3clFbG">
            <ref role="37wK5l" node="44XtxR1fN9U" resolve="getSNodePointer" />
            <node concept="2OqwBi" id="44XtxR1fN9K" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgm8xP" role="2Oq$k0">
                <ref role="3cqZAo" node="44XtxR1fN9t" resolve="location" />
              </node>
              <node concept="liA8E" id="44XtxR1fN9M" role="2OqNvi">
                <ref role="37wK5l" to="pry4:3SnNvqCaJtE" resolve="getUnitName" />
              </node>
            </node>
            <node concept="2OqwBi" id="44XtxR1fN9N" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgmvIz" role="2Oq$k0">
                <ref role="3cqZAo" node="44XtxR1fN9t" resolve="location" />
              </node>
              <node concept="liA8E" id="44XtxR1fN9P" role="2OqNvi">
                <ref role="37wK5l" to="pry4:3SnNvqCaJtA" resolve="getFileName" />
              </node>
            </node>
            <node concept="2OqwBi" id="44XtxR1fN9Q" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgheir" role="2Oq$k0">
                <ref role="3cqZAo" node="44XtxR1fN9t" resolve="location" />
              </node>
              <node concept="liA8E" id="44XtxR1fN9S" role="2OqNvi">
                <ref role="37wK5l" to="pry4:3SnNvqCaJtM" resolve="getLineNumber" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="44XtxR1fN9T" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="44XtxR1fN9U" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSNodePointer" />
      <node concept="3uibUv" id="FWER_aWNk4" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="37vLTG" id="44XtxR1fN9V" role="3clF46">
        <property role="TrG5h" value="unitName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="44XtxR1fN9W" role="1tU5fm" />
        <node concept="2AHcQZ" id="44XtxR1fN9X" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="37vLTG" id="44XtxR1fN9Y" role="3clF46">
        <property role="TrG5h" value="fileName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="44XtxR1fN9Z" role="1tU5fm" />
        <node concept="2AHcQZ" id="44XtxR1fNa0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="37vLTG" id="44XtxR1fNa1" role="3clF46">
        <property role="TrG5h" value="position" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="44XtxR1fNa2" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="44XtxR1fNa3" role="1B3o_S" />
      <node concept="3clFbS" id="44XtxR1fNa5" role="3clF47">
        <node concept="3clFbF" id="44XtxR1fNa6" role="3cqZAp">
          <node concept="2OqwBi" id="44XtxR1fNa7" role="3clFbG">
            <node concept="2ShNRf" id="4d72gVMtBkf" role="2Oq$k0">
              <node concept="1pGfFk" id="4d72gVMtRqB" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                <node concept="2OqwBi" id="4d72gVMtAvW" role="37wK5m">
                  <node concept="37vLTw" id="4d72gVMtAlF" role="2Oq$k0">
                    <ref role="3cqZAo" node="4d72gVMt$CV" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="4d72gVMtAYc" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="44XtxR1fNa9" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable):java.lang.Object" resolve="runReadAction" />
              <node concept="2ShNRf" id="44XtxR1fNaa" role="37wK5m">
                <node concept="YeOm9" id="44XtxR1fNab" role="2ShVmc">
                  <node concept="1Y3b0j" id="44XtxR1fNac" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="44XtxR1fNad" role="1B3o_S" />
                    <node concept="3uibUv" id="44XtxR1fNa$" role="2Ghqu4">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                    <node concept="3clFb_" id="44XtxR1fNae" role="jymVt">
                      <property role="IEkAT" value="false" />
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="compute" />
                      <property role="DiZV1" value="false" />
                      <node concept="3uibUv" id="FWER_aWLdn" role="3clF45">
                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      </node>
                      <node concept="3Tm1VV" id="44XtxR1fNaf" role="1B3o_S" />
                      <node concept="3clFbS" id="44XtxR1fNah" role="3clF47">
                        <node concept="3cpWs8" id="44XtxR1fNai" role="3cqZAp">
                          <node concept="3cpWsn" id="44XtxR1fNaj" role="3cpWs9">
                            <property role="TrG5h" value="node" />
                            <node concept="3Tqbb2" id="44XtxR1fNak" role="1tU5fm" />
                            <node concept="1rXfSq" id="4hiugqyz3Jr" role="33vP2m">
                              <ref role="37wK5l" node="44XtxR1fNbK" resolve="getNode" />
                              <node concept="37vLTw" id="2BHiRxghfO2" role="37wK5m">
                                <ref role="3cqZAo" node="44XtxR1fN9V" resolve="unitName" />
                              </node>
                              <node concept="37vLTw" id="2BHiRxgmFqd" role="37wK5m">
                                <ref role="3cqZAo" node="44XtxR1fN9Y" resolve="fileName" />
                              </node>
                              <node concept="37vLTw" id="2BHiRxglKXk" role="37wK5m">
                                <ref role="3cqZAo" node="44XtxR1fNa1" resolve="position" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="44XtxR1fNap" role="3cqZAp">
                          <node concept="3clFbS" id="44XtxR1fNaq" role="3clFbx">
                            <node concept="3cpWs6" id="44XtxR1fNar" role="3cqZAp">
                              <node concept="10Nm6u" id="44XtxR1fNas" role="3cqZAk" />
                            </node>
                          </node>
                          <node concept="3clFbC" id="44XtxR1fNat" role="3clFbw">
                            <node concept="10Nm6u" id="44XtxR1fNau" role="3uHU7w" />
                            <node concept="37vLTw" id="3GM_nagTxEV" role="3uHU7B">
                              <ref role="3cqZAo" node="44XtxR1fNaj" resolve="node" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="44XtxR1fNaw" role="3cqZAp">
                          <node concept="2ShNRf" id="44XtxR1fNax" role="3cqZAk">
                            <node concept="1pGfFk" id="44XtxR1fNay" role="2ShVmc">
                              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="SNodePointer" />
                              <node concept="37vLTw" id="3GM_nagTzxZ" role="37wK5m">
                                <ref role="3cqZAo" node="44XtxR1fNaj" resolve="node" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_S2P6" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="44XtxR1fNa_" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="44XtxR1fNbi" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getNode" />
      <node concept="37vLTG" id="44XtxR1fNbj" role="3clF46">
        <property role="TrG5h" value="location" />
        <node concept="3uibUv" id="44XtxR1fNbk" role="1tU5fm">
          <ref role="3uigEE" to="pry4:3SnNvqCaJt$" resolve="ILocation" />
        </node>
        <node concept="2AHcQZ" id="44XtxR1fNbl" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="44XtxR1fNbm" role="1B3o_S" />
      <node concept="3Tqbb2" id="44XtxR1fNbn" role="3clF45" />
      <node concept="3clFbS" id="44XtxR1fNbo" role="3clF47">
        <node concept="3clFbJ" id="44XtxR1fNbp" role="3cqZAp">
          <node concept="3clFbS" id="44XtxR1fNbq" role="3clFbx">
            <node concept="3cpWs6" id="44XtxR1fNbr" role="3cqZAp">
              <node concept="10Nm6u" id="44XtxR1fNbs" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="44XtxR1fNbt" role="3clFbw">
            <node concept="2ZW3vV" id="44XtxR1fNbu" role="3uHU7w">
              <node concept="3uibUv" id="44XtxR1fNbv" role="2ZW6by">
                <ref role="3uigEE" to="pry4:3SnNvqCaJh3" resolve="NullLocation" />
              </node>
              <node concept="37vLTw" id="2BHiRxglwb8" role="2ZW6bz">
                <ref role="3cqZAo" node="44XtxR1fNbj" resolve="location" />
              </node>
            </node>
            <node concept="3clFbC" id="44XtxR1fNbx" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxghggD" role="3uHU7B">
                <ref role="3cqZAo" node="44XtxR1fNbj" resolve="location" />
              </node>
              <node concept="10Nm6u" id="44XtxR1fNbz" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="44XtxR1fNb$" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz8g3" role="3clFbG">
            <ref role="37wK5l" node="44XtxR1fNbK" resolve="getNode" />
            <node concept="2OqwBi" id="44XtxR1fNbA" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgl3li" role="2Oq$k0">
                <ref role="3cqZAo" node="44XtxR1fNbj" resolve="location" />
              </node>
              <node concept="liA8E" id="44XtxR1fNbC" role="2OqNvi">
                <ref role="37wK5l" to="pry4:3SnNvqCaJtE" resolve="getUnitName" />
              </node>
            </node>
            <node concept="2OqwBi" id="44XtxR1fNbD" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgm8LR" role="2Oq$k0">
                <ref role="3cqZAo" node="44XtxR1fNbj" resolve="location" />
              </node>
              <node concept="liA8E" id="44XtxR1fNbF" role="2OqNvi">
                <ref role="37wK5l" to="pry4:3SnNvqCaJtA" resolve="getFileName" />
              </node>
            </node>
            <node concept="2OqwBi" id="44XtxR1fNbG" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxglFOE" role="2Oq$k0">
                <ref role="3cqZAo" node="44XtxR1fNbj" resolve="location" />
              </node>
              <node concept="liA8E" id="44XtxR1fNbI" role="2OqNvi">
                <ref role="37wK5l" to="pry4:3SnNvqCaJtM" resolve="getLineNumber" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="44XtxR1fNbJ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="44XtxR1fNbK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getNode" />
      <node concept="37vLTG" id="44XtxR1fNbL" role="3clF46">
        <property role="TrG5h" value="unitName" />
        <node concept="17QB3L" id="44XtxR1fNbM" role="1tU5fm" />
        <node concept="2AHcQZ" id="44XtxR1fNbN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="37vLTG" id="44XtxR1fNbO" role="3clF46">
        <property role="TrG5h" value="fileName" />
        <node concept="17QB3L" id="44XtxR1fNbP" role="1tU5fm" />
        <node concept="2AHcQZ" id="44XtxR1fNbQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="37vLTG" id="44XtxR1fNbR" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="10Oyi0" id="44XtxR1fNbS" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="44XtxR1fNbT" role="1B3o_S" />
      <node concept="3Tqbb2" id="44XtxR1fNbU" role="3clF45" />
      <node concept="3clFbS" id="44XtxR1fNbV" role="3clF47">
        <node concept="3SKdUt" id="4d72gVMtRDw" role="3cqZAp">
          <node concept="3SKdUq" id="4d72gVMtRDC" role="3SKWNk">
            <property role="3SKdUp" value="FIXME pass proper repository into TraceInfo to perform lookup with respect to context" />
          </node>
        </node>
        <node concept="3clFbF" id="44XtxR1fNbW" role="3cqZAp">
          <node concept="2YIFZM" id="44XtxR1fNbX" role="3clFbG">
            <ref role="1Pybhc" to="kv4y:~TraceInfoUtil" resolve="TraceInfoUtil" />
            <ref role="37wK5l" to="kv4y:~TraceInfoUtil.getNode(java.lang.String,java.lang.String,int):org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
            <node concept="37vLTw" id="2BHiRxghf8k" role="37wK5m">
              <ref role="3cqZAo" node="44XtxR1fNbL" resolve="unitName" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmaOO" role="37wK5m">
              <ref role="3cqZAo" node="44XtxR1fNbO" resolve="fileName" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmLq4" role="37wK5m">
              <ref role="3cqZAo" node="44XtxR1fNbR" resolve="position" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="44XtxR1fNc1" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="6$AhvwzeA7z" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="accepts" />
      <node concept="37vLTG" id="6$AhvwzeA7$" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6$AhvwzeA7_" role="1tU5fm">
          <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6$AhvwzeA7A" role="1B3o_S" />
      <node concept="10P_77" id="6$AhvwzeA7B" role="3clF45" />
      <node concept="3clFbS" id="6$AhvwzeA7C" role="3clF47">
        <node concept="3clFbF" id="6$AhvwzeA7G" role="3cqZAp">
          <node concept="3clFbT" id="6$AhvwzeA7H" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SdIT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="67iEga6IfGT">
    <property role="TrG5h" value="TextPositionProvider" />
    <node concept="3Tm1VV" id="67iEga6IfGU" role="1B3o_S" />
    <node concept="3uibUv" id="67iEga6IfGZ" role="EKbjA">
      <ref role="3uigEE" node="67iEga6IeP0" resolve="IPositionProvider" />
      <node concept="3uibUv" id="6$AhvwzesLZ" role="11_B2D">
        <ref role="3uigEE" node="44XtxR1fJTR" resolve="TextSourcePosition" />
      </node>
    </node>
    <node concept="312cEg" id="67iEga6IfID" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3Tm6S6" id="67iEga6IfIE" role="1B3o_S" />
      <node concept="3uibUv" id="67iEga6IfIG" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="3clFbW" id="67iEga6IfGV" role="jymVt">
      <node concept="3cqZAl" id="67iEga6IfGW" role="3clF45" />
      <node concept="3Tm1VV" id="67iEga6IfGX" role="1B3o_S" />
      <node concept="3clFbS" id="67iEga6IfGY" role="3clF47">
        <node concept="3clFbF" id="67iEga6IfIH" role="3cqZAp">
          <node concept="37vLTI" id="67iEga6IfJ1" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm9oX" role="37vLTx">
              <ref role="3cqZAo" node="67iEga6IfIB" resolve="project" />
            </node>
            <node concept="37vLTw" id="2BHiRxeupMq" role="37vLTJ">
              <ref role="3cqZAo" node="67iEga6IfID" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="67iEga6IfIB" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="67iEga6IfIC" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="67iEga6IfH0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPosition" />
      <node concept="3uibUv" id="6$AhvwzesM0" role="3clF45">
        <ref role="3uigEE" node="44XtxR1fJTR" resolve="TextSourcePosition" />
      </node>
      <node concept="3Tm1VV" id="67iEga6IfH2" role="1B3o_S" />
      <node concept="37vLTG" id="67iEga6IfH3" role="3clF46">
        <property role="TrG5h" value="location" />
        <node concept="3uibUv" id="67iEga6IfH4" role="1tU5fm">
          <ref role="3uigEE" to="pry4:3SnNvqCaJt$" resolve="ILocation" />
        </node>
        <node concept="2AHcQZ" id="67iEga6IfH5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="2AHcQZ" id="67iEga6IfH6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="67iEga6IfH7" role="3clF47">
        <node concept="3clFbJ" id="67iEga6IfHp" role="3cqZAp">
          <node concept="22lmx$" id="67iEga6IfHq" role="3clFbw">
            <node concept="2ZW3vV" id="67iEga6IfHr" role="3uHU7w">
              <node concept="3uibUv" id="67iEga6IfHs" role="2ZW6by">
                <ref role="3uigEE" to="pry4:3SnNvqCaJh3" resolve="NullLocation" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm6lY" role="2ZW6bz">
                <ref role="3cqZAo" node="67iEga6IfH3" resolve="location" />
              </node>
            </node>
            <node concept="3clFbC" id="67iEga6IfHu" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgm6mA" role="3uHU7B">
                <ref role="3cqZAo" node="67iEga6IfH3" resolve="location" />
              </node>
              <node concept="10Nm6u" id="67iEga6IfHw" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="67iEga6IfHx" role="3clFbx">
            <node concept="3cpWs6" id="67iEga6IfHy" role="3cqZAp">
              <node concept="10Nm6u" id="67iEga6IfHz" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="67iEga6IfHM" role="3cqZAp">
          <node concept="3cpWsn" id="67iEga6IfHN" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="67iEga6IfHO" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="1rXfSq" id="4hiugqyz9U3" role="33vP2m">
              <ref role="37wK5l" node="44XtxR1fNaA" resolve="getFile" />
              <node concept="37vLTw" id="2BHiRxgm7jM" role="37wK5m">
                <ref role="3cqZAo" node="67iEga6IfH3" resolve="location" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="67iEga6IfHR" role="3cqZAp">
          <node concept="3clFbS" id="67iEga6IfHS" role="3clFbx">
            <node concept="3cpWs6" id="67iEga6IfHT" role="3cqZAp">
              <node concept="2ShNRf" id="67iEga6IfHU" role="3cqZAk">
                <node concept="1pGfFk" id="67iEga6IfHV" role="2ShVmc">
                  <ref role="37wK5l" node="44XtxR1fJTZ" resolve="TextSourcePosition" />
                  <node concept="37vLTw" id="3GM_nagTtxt" role="37wK5m">
                    <ref role="3cqZAo" node="67iEga6IfHN" resolve="file" />
                  </node>
                  <node concept="2OqwBi" id="67iEga6IfHX" role="37wK5m">
                    <node concept="37vLTw" id="2BHiRxgmtxe" role="2Oq$k0">
                      <ref role="3cqZAo" node="67iEga6IfH3" resolve="location" />
                    </node>
                    <node concept="liA8E" id="67iEga6IfHZ" role="2OqNvi">
                      <ref role="37wK5l" to="pry4:3SnNvqCaJtM" resolve="getLineNumber" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="67iEga6IfI0" role="3clFbw">
            <node concept="10Nm6u" id="67iEga6IfI1" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTBgg" role="3uHU7B">
              <ref role="3cqZAo" node="67iEga6IfHN" resolve="file" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="67iEga6IfI3" role="3cqZAp">
          <node concept="10Nm6u" id="67iEga6IfI4" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UnXB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="67iEga6IfHa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPosition" />
      <node concept="37vLTG" id="67iEga6IfHb" role="3clF46">
        <property role="TrG5h" value="unitName" />
        <node concept="17QB3L" id="67iEga6IfHc" role="1tU5fm" />
        <node concept="2AHcQZ" id="67iEga6IfHd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="67iEga6IfHe" role="3clF46">
        <property role="TrG5h" value="fileName" />
        <node concept="17QB3L" id="67iEga6IfHf" role="1tU5fm" />
        <node concept="2AHcQZ" id="67iEga6IfHg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="67iEga6IfHh" role="3clF46">
        <property role="TrG5h" value="lineNumber" />
        <node concept="10Oyi0" id="67iEga6IfHi" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="67iEga6IfHj" role="1B3o_S" />
      <node concept="3uibUv" id="6$AhvwzesM2" role="3clF45">
        <ref role="3uigEE" node="44XtxR1fJTR" resolve="TextSourcePosition" />
      </node>
      <node concept="2AHcQZ" id="67iEga6IfHl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="67iEga6IfHm" role="3clF47">
        <node concept="3cpWs8" id="67iEga6IfIl" role="3cqZAp">
          <node concept="3cpWsn" id="67iEga6IfIm" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="67iEga6IfIn" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="1rXfSq" id="4hiugqyzePa" role="33vP2m">
              <ref role="37wK5l" node="44XtxR1fNb2" resolve="getFile" />
              <node concept="37vLTw" id="2BHiRxglQyu" role="37wK5m">
                <ref role="3cqZAo" node="67iEga6IfHb" resolve="unitName" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmcrb" role="37wK5m">
                <ref role="3cqZAo" node="67iEga6IfHe" resolve="fileName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="67iEga6IfIr" role="3cqZAp">
          <node concept="3clFbS" id="67iEga6IfIs" role="3clFbx">
            <node concept="3cpWs6" id="67iEga6IfIt" role="3cqZAp">
              <node concept="2ShNRf" id="67iEga6IfIu" role="3cqZAk">
                <node concept="1pGfFk" id="67iEga6IfIv" role="2ShVmc">
                  <ref role="37wK5l" node="44XtxR1fJTZ" resolve="TextSourcePosition" />
                  <node concept="37vLTw" id="3GM_nagTzvg" role="37wK5m">
                    <ref role="3cqZAo" node="67iEga6IfIm" resolve="file" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgmami" role="37wK5m">
                    <ref role="3cqZAo" node="67iEga6IfHh" resolve="lineNumber" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="67iEga6IfIy" role="3clFbw">
            <node concept="10Nm6u" id="67iEga6IfIz" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagT_Oj" role="3uHU7B">
              <ref role="3cqZAo" node="67iEga6IfIm" resolve="file" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="67iEga6IfI_" role="3cqZAp">
          <node concept="10Nm6u" id="67iEga6IfIA" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UnXD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="44XtxR1fNaA" role="jymVt">
      <property role="TrG5h" value="getFile" />
      <node concept="3Tm1VV" id="44XtxR1fNaB" role="1B3o_S" />
      <node concept="3clFbS" id="44XtxR1fNaC" role="3clF47">
        <node concept="3clFbJ" id="44XtxR1fNaD" role="3cqZAp">
          <node concept="3clFbS" id="44XtxR1fNaE" role="3clFbx">
            <node concept="3cpWs6" id="44XtxR1fNaF" role="3cqZAp">
              <node concept="10Nm6u" id="44XtxR1fNaG" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="44XtxR1fNaH" role="3clFbw">
            <node concept="2ZW3vV" id="44XtxR1fNaI" role="3uHU7w">
              <node concept="3uibUv" id="44XtxR1fNaJ" role="2ZW6by">
                <ref role="3uigEE" to="pry4:3SnNvqCaJh3" resolve="NullLocation" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmaoz" role="2ZW6bz">
                <ref role="3cqZAo" node="44XtxR1fNaX" resolve="location" />
              </node>
            </node>
            <node concept="3clFbC" id="44XtxR1fNaL" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgmdZU" role="3uHU7B">
                <ref role="3cqZAo" node="44XtxR1fNaX" resolve="location" />
              </node>
              <node concept="10Nm6u" id="44XtxR1fNaN" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="44XtxR1fNaO" role="3cqZAp">
          <node concept="2YIFZM" id="44XtxR1fNaP" role="3clFbG">
            <ref role="1Pybhc" to="tprt:3EnpNH2_Hx5" resolve="FileOpenUtil" />
            <ref role="37wK5l" to="tprt:3EnpNH2_Hxb" resolve="findFile" />
            <node concept="37vLTw" id="2BHiRxeu_FX" role="37wK5m">
              <ref role="3cqZAo" node="67iEga6IfID" resolve="myProject" />
            </node>
            <node concept="2OqwBi" id="44XtxR1fNaR" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxglp33" role="2Oq$k0">
                <ref role="3cqZAo" node="44XtxR1fNaX" resolve="location" />
              </node>
              <node concept="liA8E" id="44XtxR1fNaT" role="2OqNvi">
                <ref role="37wK5l" to="pry4:3SnNvqCaJtE" resolve="getUnitName" />
              </node>
            </node>
            <node concept="2OqwBi" id="44XtxR1fNaU" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgheIJ" role="2Oq$k0">
                <ref role="3cqZAo" node="44XtxR1fNaX" resolve="location" />
              </node>
              <node concept="liA8E" id="44XtxR1fNaW" role="2OqNvi">
                <ref role="37wK5l" to="pry4:3SnNvqCaJtA" resolve="getFileName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="44XtxR1fNaX" role="3clF46">
        <property role="TrG5h" value="location" />
        <node concept="3uibUv" id="44XtxR1fNaY" role="1tU5fm">
          <ref role="3uigEE" to="pry4:3SnNvqCaJt$" resolve="ILocation" />
        </node>
        <node concept="2AHcQZ" id="44XtxR1fNaZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3uibUv" id="44XtxR1fNb0" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
      <node concept="2AHcQZ" id="44XtxR1fNb1" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="44XtxR1fNb2" role="jymVt">
      <property role="TrG5h" value="getFile" />
      <node concept="3Tm1VV" id="44XtxR1fNb3" role="1B3o_S" />
      <node concept="3clFbS" id="44XtxR1fNb4" role="3clF47">
        <node concept="3clFbF" id="44XtxR1fNb5" role="3cqZAp">
          <node concept="2YIFZM" id="44XtxR1fNb6" role="3clFbG">
            <ref role="37wK5l" to="tprt:3EnpNH2_Hxb" resolve="findFile" />
            <ref role="1Pybhc" to="tprt:3EnpNH2_Hx5" resolve="FileOpenUtil" />
            <node concept="37vLTw" id="2BHiRxeuvJ9" role="37wK5m">
              <ref role="3cqZAo" node="67iEga6IfID" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmI95" role="37wK5m">
              <ref role="3cqZAo" node="44XtxR1fNbc" resolve="unitName" />
            </node>
            <node concept="37vLTw" id="2BHiRxgheTj" role="37wK5m">
              <ref role="3cqZAo" node="44XtxR1fNbf" resolve="fileName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="44XtxR1fNba" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
      <node concept="2AHcQZ" id="44XtxR1fNbb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="44XtxR1fNbc" role="3clF46">
        <property role="TrG5h" value="unitName" />
        <node concept="17QB3L" id="44XtxR1fNbd" role="1tU5fm" />
        <node concept="2AHcQZ" id="44XtxR1fNbe" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="37vLTG" id="44XtxR1fNbf" role="3clF46">
        <property role="TrG5h" value="fileName" />
        <node concept="17QB3L" id="44XtxR1fNbg" role="1tU5fm" />
        <node concept="2AHcQZ" id="44XtxR1fNbh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6$AhvwzeA7n" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="accepts" />
      <node concept="37vLTG" id="6$AhvwzeA7o" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6$AhvwzeA7p" role="1tU5fm">
          <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6$AhvwzeA7q" role="1B3o_S" />
      <node concept="10P_77" id="6$AhvwzeA7r" role="3clF45" />
      <node concept="3clFbS" id="6$AhvwzeA7s" role="3clF47">
        <node concept="3clFbF" id="6$AhvwzeA7v" role="3cqZAp">
          <node concept="3clFbT" id="6$AhvwzeA7w" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UnXC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

