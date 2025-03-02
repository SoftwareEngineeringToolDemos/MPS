<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590389(jetbrains.mps.lang.test.generator.baseLanguage.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="0" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="0" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp5g" ref="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tp6m" ref="r:00000000-0000-4000-0000-011c895903a2(jetbrains.mps.lang.test.runtime)" />
    <import index="tp48" ref="r:00000000-0000-4000-0000-011c89590374(jetbrains.mps.baseLanguage.classifiers.generator.baseLanguage.template.main@generator)" />
    <import index="tp4h" ref="r:00000000-0000-4000-0000-011c8959036d(jetbrains.mps.baseLanguage.classifiers.behavior)" />
    <import index="tpe5" ref="r:00000000-0000-4000-0000-011c895902d1(jetbrains.mps.baseLanguage.unitTest.behavior)" />
    <import index="tp5o" ref="r:00000000-0000-4000-0000-011c89590380(jetbrains.mps.lang.test.behavior)" />
    <import index="tp4f" ref="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" />
    <import index="tp3m" ref="r:00000000-0000-4000-0000-011c8959034e(jetbrains.mps.lang.intentions.behavior)" />
    <import index="tp4s" ref="r:00000000-0000-4000-0000-011c89590360(jetbrains.mps.lang.plugin.behavior)" />
    <import index="tp4k" ref="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" />
    <import index="3fh5" ref="r:3d2b27a7-4374-41aa-af31-19e1e430d9f5(jetbrains.mps.lang.test.generator.baseLanguage.template.util)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="rjhg" ref="83f155ff-422c-4b5a-a2f2-b459302dd215/java:org.junit(jetbrains.mps.baseLanguage.unitTest.libs/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="fyhk" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps(Testbench/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="y5e1" ref="r:4464540a-9650-433f-b716-ed95bbac5a69(jetbrains.mps.lang.test.matcher)" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622753914" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_operationContext" flags="nn" index="1Q79dO" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1219952072943" name="jetbrains.mps.lang.generator.structure.DropRootRule" flags="lg" index="aNPBN">
        <reference id="1219952338328" name="applicableConcept" index="aOQi4" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <property id="1184950341882" name="topPriorityGroup" index="3$yP7D" />
        <child id="1219952894531" name="dropRootRule" index="aQYdv" />
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="5133195082121471908" name="jetbrains.mps.lang.generator.structure.LabelMacro" flags="ln" index="2ZBi8u" />
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1218047638031" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName" flags="nn" index="2piZGk">
        <child id="1218047638032" name="baseName" index="2piZGb" />
        <child id="1218049772449" name="contextNode" index="2pr8EU" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1172028177041" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNull" flags="nn" index="3ykFI1">
        <child id="1172028236559" name="expression" index="3ykU8v" />
      </concept>
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ng" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1173990517731" name="jetbrains.mps.baseLanguageInternal.structure.InternalStaticMethodCall" flags="nn" index="1niqFM">
        <property id="1173992444083" name="methodName" index="1npL6y" />
        <property id="1173992483054" name="fqClassName" index="1npUBZ" />
        <child id="319021450862604085" name="actualArgument" index="2U24H$" />
        <child id="1175794062018" name="returnType" index="32Mpfj" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
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
      <concept id="1172424058054" name="jetbrains.mps.lang.smodel.structure.ConceptRefExpression" flags="nn" index="3TUQnm">
        <reference id="1172424100906" name="conceptDeclaration" index="3TV0OU" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226566855640" name="jetbrains.mps.baseLanguage.collections.structure.AddSetElementOperation" flags="nn" index="2l5eF5">
        <child id="1226567214363" name="argument" index="2l6Ag6" />
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
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
    </language>
  </registry>
  <node concept="bUwia" id="hB9c5No">
    <property role="TrG5h" value="main" />
    <property role="3$yP7D" value="true" />
    <node concept="2rT7sh" id="3CVcUJxNYRd" role="2rTMjI">
      <property role="TrG5h" value="pressMouseX" />
      <ref role="2rTdP9" to="tp5g:bG3Ez5d8XT" resolve="PressMouseStatement" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
    <node concept="2rT7sh" id="6A9ZMbYfW2l" role="2rTMjI">
      <property role="TrG5h" value="pressMouseY" />
      <ref role="2rTdP9" to="tp5g:bG3Ez5d8XT" resolve="PressMouseStatement" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
    <node concept="2rT7sh" id="3CVcUJxObfY" role="2rTMjI">
      <property role="TrG5h" value="eventTargetComponent" />
      <ref role="2rTdP9" to="tp5g:bG3Ez5d8XT" resolve="PressMouseStatement" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
    <node concept="aNPBN" id="4qWC2JVsDdo" role="aQYdv">
      <ref role="aOQi4" to="tp5g:4qWC2JVrBca" resolve="TestInfo" />
    </node>
    <node concept="3lhOvk" id="hHqx_0T" role="3lj3bC">
      <ref role="30HIoZ" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
      <ref role="3lhOvi" node="hHqy8Mw" resolve="TestCaseName" />
      <node concept="30G5F_" id="hR$uYWc" role="30HLyM">
        <node concept="3clFbS" id="hR$uYWd" role="2VODD2">
          <node concept="3clFbF" id="hR$v63d" role="3cqZAp">
            <node concept="2OqwBi" id="hSUBBC$" role="3clFbG">
              <node concept="2OqwBi" id="hR$v6tB" role="2Oq$k0">
                <node concept="30H73N" id="hR$v63e" role="2Oq$k0" />
                <node concept="1mfA1w" id="hR$v8bN" role="2OqNvi" />
              </node>
              <node concept="3w_OXm" id="hSUBCko" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="hSMmWJN" role="3lj3bC">
      <ref role="30HIoZ" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
      <ref role="3lhOvi" node="hSLWj1d" resolve="EditorTestCaseName" />
    </node>
    <node concept="3aamgX" id="hByHdxr" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hBxON8j" resolve="TestNodeReference" />
      <node concept="j$656" id="hByInEb" role="1lVwrX">
        <ref role="v9R2y" node="hByHiPj" resolve="reduce_TestNodeReference" />
      </node>
    </node>
    <node concept="3aamgX" id="hCJJrmC" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hCJA54K" resolve="AssertMatch" />
      <node concept="j$656" id="hGdxmvK" role="1lVwrX">
        <ref role="v9R2y" node="hGdx6Cj" resolve="reduce_AssertMatch" />
      </node>
    </node>
    <node concept="3aamgX" id="3HtznTW2Nhp" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hFCa1uS" resolve="CheckNodeForErrors" />
      <node concept="gft3U" id="3HtznTW2Nhr" role="1lVwrX">
        <node concept="3clFbF" id="3HtznTW2VNI" role="gfFT$">
          <node concept="1niqFM" id="3HtznTW2VNK" role="3clFbG">
            <property role="1npUBZ" value="jetbrains.mps.lang.test.runtime.NodeCheckerUtil" />
            <property role="1npL6y" value="checkNodeForErrorMessages" />
            <node concept="10Nm6u" id="3HtznTW2VNL" role="2U24H$">
              <node concept="29HgVG" id="3HtznTW2VNM" role="lGtFl">
                <node concept="3NFfHV" id="3HtznTW2VNN" role="3NFExx">
                  <node concept="3clFbS" id="3HtznTW2VNO" role="2VODD2">
                    <node concept="3clFbF" id="3HtznTW2VNP" role="3cqZAp">
                      <node concept="2OqwBi" id="3HtznTW2VNQ" role="3clFbG">
                        <node concept="30H73N" id="3HtznTW2VNR" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3HtznTW2VNS" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp5g:hFqv8by" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbT" id="3fsa_am1TSR" role="2U24H$">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="3clFbT" id="3fsa_am1Vjv" role="2U24H$">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="3cqZAl" id="3HtznTW2VNT" role="32Mpfj" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="3HtznTW2NhG" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hHOf0Uc" resolve="CheckNodeDataflow" />
      <node concept="gft3U" id="3HtznTW2NhH" role="1lVwrX">
        <node concept="3clFbF" id="3HtznTW2VNU" role="gfFT$">
          <node concept="1niqFM" id="3HtznTW2VNW" role="3clFbG">
            <property role="1npL6y" value="checkDataFlow" />
            <property role="1npUBZ" value="jetbrains.mps.lang.test.runtime.NodeDataFlowCheckerUtil" />
            <node concept="10Nm6u" id="3HtznTW2VNX" role="2U24H$">
              <node concept="29HgVG" id="3HtznTW2VNY" role="lGtFl">
                <node concept="3NFfHV" id="3HtznTW2VNZ" role="3NFExx">
                  <node concept="3clFbS" id="3HtznTW2VO0" role="2VODD2">
                    <node concept="3clFbF" id="3HtznTW2VO1" role="3cqZAp">
                      <node concept="2OqwBi" id="3HtznTW2VO2" role="3clFbG">
                        <node concept="30H73N" id="3HtznTW2VO3" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3HtznTW2VO4" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp5g:hFqv8by" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cqZAl" id="3HtznTW2VO5" role="32Mpfj" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="hHDBKEW" role="3acgRq">
      <ref role="30HIoZ" to="tp4f:hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
      <node concept="30G5F_" id="hHDBKEY" role="30HLyM">
        <node concept="3clFbS" id="hHDBKEZ" role="2VODD2">
          <node concept="3clFbF" id="hHDBKF0" role="3cqZAp">
            <node concept="2OqwBi" id="hHDBKF1" role="3clFbG">
              <node concept="2OqwBi" id="hHDBKF2" role="2Oq$k0">
                <node concept="30H73N" id="hHDBKF3" role="2Oq$k0" />
                <node concept="2qgKlT" id="hHDBKF4" role="2OqNvi">
                  <ref role="37wK5l" to="tp4h:hEwIBCW" resolve="getContainer" />
                </node>
              </node>
              <node concept="1mIQ4w" id="hHDBKF5" role="2OqNvi">
                <node concept="chp4Y" id="hHDBKF6" role="cj9EA">
                  <ref role="cht4Q" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="j$656" id="hPop1Y_" role="1lVwrX">
        <ref role="v9R2y" to="tp48:hz1B4cf" resolve="reduce_DefaultClassifierMethodDeclaration" />
      </node>
    </node>
    <node concept="3aamgX" id="hHD$WJF" role="3acgRq">
      <ref role="30HIoZ" to="tp4f:hyWthE1" resolve="ThisClassifierExpression" />
      <node concept="30G5F_" id="hHD_GBg" role="30HLyM">
        <node concept="3clFbS" id="hHD_GBh" role="2VODD2">
          <node concept="3clFbF" id="hHD_HmW" role="3cqZAp">
            <node concept="2OqwBi" id="hHD_Mb1" role="3clFbG">
              <node concept="2OqwBi" id="hHD_HBf" role="2Oq$k0">
                <node concept="30H73N" id="hHD_HmX" role="2Oq$k0" />
                <node concept="2qgKlT" id="hHD_LEe" role="2OqNvi">
                  <ref role="37wK5l" to="tp4h:hEwJeDN" resolve="getClassifier" />
                </node>
              </node>
              <node concept="1mIQ4w" id="hHD_NdI" role="2OqNvi">
                <node concept="chp4Y" id="hHD_PEd" role="cj9EA">
                  <ref role="cht4Q" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="hHDAwjq" role="1lVwrX">
        <node concept="Xjq3P" id="hPnHLIM" role="gfFT$" />
      </node>
    </node>
    <node concept="3aamgX" id="hHDDKRC" role="3acgRq">
      <ref role="30HIoZ" to="tp4f:hyXshSD" resolve="DefaultClassifierMethodCallOperation" />
      <node concept="gft3U" id="hPnv3sa" role="1lVwrX">
        <node concept="liA8E" id="hPnv3sb" role="gfFT$">
          <node concept="Xl_RD" id="hPnv3sc" role="37wK5m">
            <property role="Xl_RC" value="param" />
            <node concept="2b32R4" id="hPnv3sd" role="lGtFl">
              <node concept="3JmXsc" id="hPnv3se" role="2P8S$">
                <node concept="3clFbS" id="hPnv3sf" role="2VODD2">
                  <node concept="3clFbF" id="hPnv3sg" role="3cqZAp">
                    <node concept="2OqwBi" id="hPnv3sh" role="3clFbG">
                      <node concept="30H73N" id="hPnv3si" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="hPnv3sj" role="2OqNvi">
                        <ref role="3TtcxE" to="tp4f:hyXxRup" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="hPnv3sk" role="lGtFl">
            <property role="2qtEX8" value="baseMethodDeclaration" />
            <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
            <node concept="3$xsQk" id="hPnv3sl" role="3$ytzL">
              <node concept="3clFbS" id="hPnv3sm" role="2VODD2">
                <node concept="3clFbF" id="hPnv3sn" role="3cqZAp">
                  <node concept="2OqwBi" id="hPnv3so" role="3clFbG">
                    <node concept="2OqwBi" id="hPnv3sp" role="2Oq$k0">
                      <node concept="30H73N" id="hPnv3sq" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hPnF4JG" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp4f:hyXtfQh" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="hPnF5AD" role="2OqNvi">
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
    <node concept="3aamgX" id="hPjyYB_" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hPjxXux" resolve="ProjectExpression" />
      <node concept="j$656" id="hPjzR9j" role="1lVwrX">
        <ref role="v9R2y" node="hPjzEtZ" resolve="reduce_Project" />
      </node>
    </node>
    <node concept="3aamgX" id="hPjGMlc" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hPjGwIs" resolve="ModelExpression" />
      <node concept="j$656" id="hPjGOFo" role="1lVwrX">
        <ref role="v9R2y" node="hPjGGCw" resolve="reduce_Model" />
      </node>
    </node>
    <node concept="3aamgX" id="hPLR8QF" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hPLZb6h" resolve="SimpleNodeTest" />
      <node concept="j$656" id="hPLR_QQ" role="1lVwrX">
        <ref role="v9R2y" node="hPLRi3V" resolve="reduce_SimpleNodeTest" />
      </node>
    </node>
    <node concept="3aamgX" id="hPMjGwD" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hPMiqvr" resolve="EditorExpression" />
      <node concept="j$656" id="hPMs0dy" role="1lVwrX">
        <ref role="v9R2y" node="hPMrA67" resolve="reduce_EditorExpresstion" />
      </node>
    </node>
    <node concept="3aamgX" id="hPMNTQu" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hPMFPyi" resolve="InvokeIntentionStatement" />
      <node concept="j$656" id="hPMO2bU" role="1lVwrX">
        <ref role="v9R2y" node="hPMLN58" resolve="reduce_InvokeIntentionStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="hQJxbEX" role="3acgRq">
      <ref role="30HIoZ" to="tpee:hqOqwz4" resolve="DotExpression" />
      <node concept="30G5F_" id="hQJxbF7" role="30HLyM">
        <node concept="3clFbS" id="hQJxbF8" role="2VODD2">
          <node concept="3clFbF" id="hQJxbF9" role="3cqZAp">
            <node concept="2OqwBi" id="hQJxbFa" role="3clFbG">
              <node concept="2OqwBi" id="hQJxbFb" role="2Oq$k0">
                <node concept="3TrEf2" id="hQJxbFd" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOqNr4" />
                </node>
                <node concept="30H73N" id="hQJxbFc" role="2Oq$k0" />
              </node>
              <node concept="1mIQ4w" id="hQJxbFe" role="2OqNvi">
                <node concept="chp4Y" id="hQJxbFf" role="cj9EA">
                  <ref role="cht4Q" to="tp5g:hQJ5G8s" resolve="EditorOperation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="hQJxbEY" role="1lVwrX">
        <node concept="2VYdi" id="hQJxbEZ" role="gfFT$">
          <node concept="29HgVG" id="hQJxbF0" role="lGtFl">
            <node concept="3NFfHV" id="hQJxbF1" role="3NFExx">
              <node concept="3clFbS" id="hQJxbF2" role="2VODD2">
                <node concept="3clFbF" id="hQJxbF3" role="3cqZAp">
                  <node concept="2OqwBi" id="hQJxbF4" role="3clFbG">
                    <node concept="3TrEf2" id="hQJCpea" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:hqOqNr4" />
                    </node>
                    <node concept="30H73N" id="hQJxbF5" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="hQTX83$" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hQTK7X3" resolve="TypeKeyStatement" />
      <node concept="1Koe21" id="1BrKW0dgaqO" role="1lVwrX">
        <node concept="312cEu" id="1BrKW0dgaqU" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="1BrKW0dgaHj" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="foo" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="3clFbS" id="1BrKW0dgaHm" role="3clF47">
              <node concept="3clFbF" id="1BrKW0dgaHS" role="3cqZAp">
                <node concept="2OqwBi" id="1BrKW0dgaJE" role="3clFbG">
                  <node concept="Xjq3P" id="1BrKW0dgaHR" role="2Oq$k0" />
                  <node concept="liA8E" id="1BrKW0dgaTc" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:1BrKW0d98Nv" resolve="typeString" />
                    <node concept="Xl_RD" id="1BrKW0dg$iy" role="37wK5m">
                      <property role="Xl_RC" value="keys" />
                      <node concept="17Uvod" id="1BrKW0dg$iz" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="1BrKW0dg$i$" role="3zH0cK">
                          <node concept="3clFbS" id="1BrKW0dg$i_" role="2VODD2">
                            <node concept="3clFbF" id="1BrKW0dg$iA" role="3cqZAp">
                              <node concept="2OqwBi" id="1BrKW0dg$iB" role="3clFbG">
                                <node concept="3TrcHB" id="1BrKW0dg$iC" role="2OqNvi">
                                  <ref role="3TsBF5" to="tp5g:hQTTdxU" resolve="keys" />
                                </node>
                                <node concept="30H73N" id="1BrKW0dg$iD" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="1BrKW0dgBWV" role="lGtFl" />
              </node>
            </node>
            <node concept="3cqZAl" id="1BrKW0dgaHd" role="3clF45" />
            <node concept="3uibUv" id="5s44y2Lq0H4" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
            </node>
            <node concept="3uibUv" id="5s44y2Lq341" role="Sfmx6">
              <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
            </node>
          </node>
          <node concept="3Tm1VV" id="1BrKW0dgaqV" role="1B3o_S" />
          <node concept="3uibUv" id="1BrKW0dgaH5" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1BrKW0dgCf8" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hSyd1fI" resolve="PressKeyStatement" />
      <node concept="1Koe21" id="1BrKW0dgFpR" role="1lVwrX">
        <node concept="312cEu" id="1BrKW0dgFpS" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="1BrKW0dgFpT" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="foo" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="3clFbS" id="1BrKW0dgFpU" role="3clF47">
              <node concept="3clFbF" id="1BrKW0dgFpV" role="3cqZAp">
                <node concept="2OqwBi" id="1BrKW0dgFpW" role="3clFbG">
                  <node concept="Xjq3P" id="1BrKW0dgFpX" role="2Oq$k0" />
                  <node concept="liA8E" id="1BrKW0dgFQt" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:1BrKW0daATU" resolve="pressKeys" />
                    <node concept="2ShNRf" id="1BrKW0dgFWD" role="37wK5m">
                      <node concept="Tc6Ow" id="1BrKW0dgFWE" role="2ShVmc">
                        <node concept="3cmrfG" id="1BrKW0dgFWF" role="HW$Y0">
                          <property role="3cmrfH" value="0" />
                          <node concept="2b32R4" id="1BrKW0dgFWG" role="lGtFl">
                            <node concept="3JmXsc" id="1BrKW0dgFWH" role="2P8S$">
                              <node concept="3clFbS" id="1BrKW0dgFWI" role="2VODD2">
                                <node concept="3clFbF" id="1BrKW0dgFWJ" role="3cqZAp">
                                  <node concept="2OqwBi" id="1BrKW0dgFWK" role="3clFbG">
                                    <node concept="30H73N" id="1BrKW0dgFWL" role="2Oq$k0" />
                                    <node concept="3Tsc0h" id="1BrKW0dgFWM" role="2OqNvi">
                                      <ref role="3TtcxE" to="tp5g:hSyd6OA" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="17QB3L" id="1BrKW0dgFWN" role="HW$YZ" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="1BrKW0dgFq7" role="lGtFl" />
              </node>
            </node>
            <node concept="3cqZAl" id="1BrKW0dgFq8" role="3clF45" />
            <node concept="3uibUv" id="5s44y2LpVN3" role="Sfmx6">
              <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
            </node>
            <node concept="3uibUv" id="5s44y2LpWnv" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
            </node>
          </node>
          <node concept="3Tm1VV" id="1BrKW0dgFq9" role="1B3o_S" />
          <node concept="3uibUv" id="1BrKW0dgFqa" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1BrKW0dgZEP" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:bG3Ez5d8XT" resolve="PressMouseStatement" />
      <node concept="1Koe21" id="1BrKW0dh2cx" role="1lVwrX">
        <node concept="312cEu" id="1BrKW0dh2cy" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="1BrKW0dh2cz" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="foo" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="3clFbS" id="1BrKW0dh2c$" role="3clF47">
              <node concept="9aQIb" id="5WamHf6h68f" role="3cqZAp">
                <node concept="3clFbS" id="5WamHf6h68h" role="9aQI4">
                  <node concept="3cpWs8" id="1BrKW0dh2PT" role="3cqZAp">
                    <node concept="3cpWsn" id="1BrKW0dh2PU" role="3cpWs9">
                      <property role="TrG5h" value="x" />
                      <node concept="10Oyi0" id="1BrKW0dh2PV" role="1tU5fm" />
                      <node concept="3cmrfG" id="1BrKW0dh2PW" role="33vP2m">
                        <property role="3cmrfH" value="10" />
                        <node concept="17Uvod" id="1BrKW0dh2PX" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <node concept="3zFVjK" id="1BrKW0dh2PY" role="3zH0cK">
                            <node concept="3clFbS" id="1BrKW0dh2PZ" role="2VODD2">
                              <node concept="3clFbF" id="1BrKW0dh2Q0" role="3cqZAp">
                                <node concept="2OqwBi" id="1BrKW0dh2Q1" role="3clFbG">
                                  <node concept="30H73N" id="1BrKW0dh2Q2" role="2Oq$k0" />
                                  <node concept="3TrcHB" id="1BrKW0dh2Q3" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:bG3Ez5fDVB" resolve="x" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2ZBi8u" id="1BrKW0dh2Q4" role="lGtFl">
                        <ref role="2rW$FS" node="3CVcUJxNYRd" resolve="pressMouseX" />
                      </node>
                      <node concept="17Uvod" id="1BrKW0dh2Q5" role="lGtFl">
                        <property role="2qtEX9" value="name" />
                        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                        <node concept="3zFVjK" id="1BrKW0dh2Q6" role="3zH0cK">
                          <node concept="3clFbS" id="1BrKW0dh2Q7" role="2VODD2">
                            <node concept="3clFbF" id="1BrKW0dh2Q8" role="3cqZAp">
                              <node concept="2OqwBi" id="1BrKW0dh2Q9" role="3clFbG">
                                <node concept="1iwH7S" id="1BrKW0dh2Qa" role="2Oq$k0" />
                                <node concept="2piZGk" id="1BrKW0dh2Qb" role="2OqNvi">
                                  <node concept="Xl_RD" id="1BrKW0dh2Qc" role="2piZGb">
                                    <property role="Xl_RC" value="x" />
                                  </node>
                                  <node concept="30H73N" id="1BrKW0dh2Qd" role="2pr8EU" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1BrKW0dh2Qe" role="3cqZAp">
                    <node concept="3cpWsn" id="1BrKW0dh2Qf" role="3cpWs9">
                      <property role="TrG5h" value="y" />
                      <node concept="10Oyi0" id="1BrKW0dh2Qg" role="1tU5fm" />
                      <node concept="3cmrfG" id="1BrKW0dh2Qh" role="33vP2m">
                        <property role="3cmrfH" value="10" />
                        <node concept="17Uvod" id="1BrKW0dh2Qi" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <node concept="3zFVjK" id="1BrKW0dh2Qj" role="3zH0cK">
                            <node concept="3clFbS" id="1BrKW0dh2Qk" role="2VODD2">
                              <node concept="3clFbF" id="1BrKW0dh2Ql" role="3cqZAp">
                                <node concept="2OqwBi" id="1BrKW0dh2Qm" role="3clFbG">
                                  <node concept="30H73N" id="1BrKW0dh2Qn" role="2Oq$k0" />
                                  <node concept="3TrcHB" id="1BrKW0dh2Qo" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:bG3Ez5fDVC" resolve="y" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2ZBi8u" id="1BrKW0dh2Qp" role="lGtFl">
                        <ref role="2rW$FS" node="6A9ZMbYfW2l" resolve="pressMouseY" />
                      </node>
                      <node concept="17Uvod" id="1BrKW0dh2Qq" role="lGtFl">
                        <property role="2qtEX9" value="name" />
                        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                        <node concept="3zFVjK" id="1BrKW0dh2Qr" role="3zH0cK">
                          <node concept="3clFbS" id="1BrKW0dh2Qs" role="2VODD2">
                            <node concept="3clFbF" id="1BrKW0dh2Qt" role="3cqZAp">
                              <node concept="2OqwBi" id="1BrKW0dh2Qu" role="3clFbG">
                                <node concept="1iwH7S" id="1BrKW0dh2Qv" role="2Oq$k0" />
                                <node concept="2piZGk" id="1BrKW0dh2Qw" role="2OqNvi">
                                  <node concept="Xl_RD" id="1BrKW0dh2Qx" role="2piZGb">
                                    <property role="Xl_RC" value="y" />
                                  </node>
                                  <node concept="30H73N" id="1BrKW0dh2Qy" role="2pr8EU" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1BrKW0dh2Qz" role="3cqZAp">
                    <node concept="3cpWsn" id="1BrKW0dh2Q$" role="3cpWs9">
                      <property role="TrG5h" value="eventTargetComponent" />
                      <node concept="3uibUv" id="1BrKW0dh2Q_" role="1tU5fm">
                        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                      </node>
                      <node concept="17Uvod" id="1BrKW0dh2QE" role="lGtFl">
                        <property role="2qtEX9" value="name" />
                        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                        <node concept="3zFVjK" id="1BrKW0dh2QF" role="3zH0cK">
                          <node concept="3clFbS" id="1BrKW0dh2QG" role="2VODD2">
                            <node concept="3clFbF" id="1BrKW0dh2QH" role="3cqZAp">
                              <node concept="2OqwBi" id="1BrKW0dh2QI" role="3clFbG">
                                <node concept="1iwH7S" id="1BrKW0dh2QJ" role="2Oq$k0" />
                                <node concept="2piZGk" id="1BrKW0dh2QK" role="2OqNvi">
                                  <node concept="Xl_RD" id="1BrKW0dh2QL" role="2piZGb">
                                    <property role="Xl_RC" value="eventTargetComponent" />
                                  </node>
                                  <node concept="30H73N" id="1BrKW0dh2QM" role="2pr8EU" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2ZBi8u" id="1BrKW0dh2QN" role="lGtFl">
                        <ref role="2rW$FS" node="3CVcUJxObfY" resolve="eventTargetComponent" />
                      </node>
                      <node concept="2OqwBi" id="1BrKW0dhdX9" role="33vP2m">
                        <node concept="Xjq3P" id="1BrKW0dhdLN" role="2Oq$k0" />
                        <node concept="liA8E" id="1BrKW0dhexa" role="2OqNvi">
                          <ref role="37wK5l" to="tp6m:1BrKW0dbhMX" resolve="processMouseEvent" />
                          <node concept="37vLTw" id="1BrKW0dheOj" role="37wK5m">
                            <ref role="3cqZAo" node="1BrKW0dh2PU" resolve="x" />
                          </node>
                          <node concept="37vLTw" id="1BrKW0dhf1i" role="37wK5m">
                            <ref role="3cqZAo" node="1BrKW0dh2Qf" resolve="y" />
                          </node>
                          <node concept="10M0yZ" id="1BrKW0dhflO" role="37wK5m">
                            <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_PRESSED" resolve="MOUSE_PRESSED" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1BrKW0dh2QO" role="3cqZAp">
                    <node concept="2b32R4" id="1BrKW0dh2QP" role="lGtFl">
                      <node concept="3JmXsc" id="1BrKW0dh2QQ" role="2P8S$">
                        <node concept="3clFbS" id="1BrKW0dh2QR" role="2VODD2">
                          <node concept="3clFbF" id="1BrKW0dh2QS" role="3cqZAp">
                            <node concept="2OqwBi" id="1BrKW0dh2QT" role="3clFbG">
                              <node concept="2OqwBi" id="1BrKW0dh2QU" role="2Oq$k0">
                                <node concept="3TrEf2" id="1BrKW0dh2QV" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp5g:fK9aQHS" />
                                </node>
                                <node concept="30H73N" id="1BrKW0dh2QW" role="2Oq$k0" />
                              </node>
                              <node concept="3Tsc0h" id="1BrKW0dh2QX" role="2OqNvi">
                                <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5s44y2LphhA" role="3cqZAp">
                    <node concept="2OqwBi" id="5s44y2LpieI" role="3clFbG">
                      <node concept="Xjq3P" id="5s44y2Lphh$" role="2Oq$k0" />
                      <node concept="liA8E" id="5s44y2LpjGP" role="2OqNvi">
                        <ref role="37wK5l" to="tp6m:5s44y2Lp5xA" resolve="processSecondaryMouseEvent" />
                        <node concept="37vLTw" id="5s44y2LpjN2" role="37wK5m">
                          <ref role="3cqZAo" node="1BrKW0dh2Q$" resolve="eventTargetComponent" />
                        </node>
                        <node concept="37vLTw" id="5s44y2LpjP1" role="37wK5m">
                          <ref role="3cqZAo" node="1BrKW0dh2PU" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="5s44y2Lpk26" role="37wK5m">
                          <ref role="3cqZAo" node="1BrKW0dh2Qf" resolve="y" />
                        </node>
                        <node concept="10M0yZ" id="5s44y2Lpkem" role="37wK5m">
                          <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                          <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_RELEASED" resolve="MOUSE_RELEASED" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1BrKW0dh2R4" role="3cqZAp">
                    <node concept="1W57fq" id="1BrKW0dh2Ra" role="lGtFl">
                      <node concept="3IZrLx" id="1BrKW0dh2Rb" role="3IZSJc">
                        <node concept="3clFbS" id="1BrKW0dh2Rc" role="2VODD2">
                          <node concept="3clFbF" id="1BrKW0dh2Rd" role="3cqZAp">
                            <node concept="2OqwBi" id="1BrKW0dh2Re" role="3clFbG">
                              <node concept="2OqwBi" id="1BrKW0dh2Rf" role="2Oq$k0">
                                <node concept="2OqwBi" id="1BrKW0dh2Rg" role="2Oq$k0">
                                  <node concept="30H73N" id="1BrKW0dh2Rh" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="1BrKW0dh2Ri" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp5g:fK9aQHS" />
                                  </node>
                                </node>
                                <node concept="3Tsc0h" id="1BrKW0dh2Rj" role="2OqNvi">
                                  <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                </node>
                              </node>
                              <node concept="1v1jN8" id="1BrKW0dh2Rk" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5s44y2Lpo0U" role="3clFbG">
                      <node concept="Xjq3P" id="5s44y2Lpo0V" role="2Oq$k0" />
                      <node concept="liA8E" id="5s44y2Lpo0W" role="2OqNvi">
                        <ref role="37wK5l" to="tp6m:5s44y2Lp5xA" resolve="processSecondaryMouseEvent" />
                        <node concept="37vLTw" id="5s44y2Lpo0X" role="37wK5m">
                          <ref role="3cqZAo" node="1BrKW0dh2Q$" resolve="eventTargetComponent" />
                        </node>
                        <node concept="37vLTw" id="5s44y2Lpo0Y" role="37wK5m">
                          <ref role="3cqZAo" node="1BrKW0dh2PU" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="5s44y2Lpo0Z" role="37wK5m">
                          <ref role="3cqZAo" node="1BrKW0dh2Qf" resolve="y" />
                        </node>
                        <node concept="10M0yZ" id="5s44y2Lpo10" role="37wK5m">
                          <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                          <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_CLICKED" resolve="MOUSE_CLICKED" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="5WamHf6haS_" role="lGtFl" />
              </node>
            </node>
            <node concept="3cqZAl" id="1BrKW0dh2cP" role="3clF45" />
            <node concept="3uibUv" id="5s44y2LpsRM" role="Sfmx6">
              <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
            </node>
            <node concept="3uibUv" id="5s44y2LpxxX" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
            </node>
          </node>
          <node concept="3Tm1VV" id="1BrKW0dh2cQ" role="1B3o_S" />
          <node concept="3uibUv" id="1BrKW0dh2cR" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5s44y2Lq3FF" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:bG3Ez5na2z" resolve="DragMouseStatement" />
      <node concept="1Koe21" id="5s44y2Lq6b3" role="1lVwrX">
        <node concept="312cEu" id="5s44y2Lq6b4" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="5s44y2Lq6b5" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="foo" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="3cqZAl" id="5s44y2Lq6cD" role="3clF45" />
            <node concept="3uibUv" id="5s44y2Lq6cE" role="Sfmx6">
              <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
            </node>
            <node concept="3uibUv" id="5s44y2Lq6cF" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
            </node>
            <node concept="3clFbS" id="5s44y2Lq8ZF" role="3clF47">
              <node concept="3cpWs8" id="5s44y2Lq95e" role="3cqZAp">
                <node concept="3cpWsn" id="5s44y2Lq95f" role="3cpWs9">
                  <property role="TrG5h" value="x" />
                  <node concept="10Oyi0" id="5s44y2Lq95g" role="1tU5fm" />
                  <node concept="3cmrfG" id="5s44y2Lq95h" role="33vP2m">
                    <property role="3cmrfH" value="10" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5s44y2Lq95i" role="3cqZAp">
                <node concept="3cpWsn" id="5s44y2Lq95j" role="3cpWs9">
                  <property role="TrG5h" value="y" />
                  <node concept="10Oyi0" id="5s44y2Lq95k" role="1tU5fm" />
                  <node concept="3cmrfG" id="5s44y2Lq95l" role="33vP2m">
                    <property role="3cmrfH" value="10" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5s44y2Lq95m" role="3cqZAp">
                <node concept="3cpWsn" id="5s44y2Lq95n" role="3cpWs9">
                  <property role="TrG5h" value="eventTargetComponent" />
                  <node concept="3uibUv" id="5s44y2Lq95o" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                  </node>
                  <node concept="10Nm6u" id="5s44y2Lq95p" role="33vP2m" />
                </node>
              </node>
              <node concept="3clFbF" id="5s44y2LqdIl" role="3cqZAp">
                <node concept="2OqwBi" id="5s44y2Lqerg" role="3clFbG">
                  <node concept="Xjq3P" id="5s44y2LqdHt" role="2Oq$k0" />
                  <node concept="liA8E" id="5s44y2LqeJi" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:5s44y2Lp5xA" resolve="processSecondaryMouseEvent" />
                    <node concept="37vLTw" id="5s44y2LqeS9" role="37wK5m">
                      <ref role="3cqZAo" node="5s44y2Lq95n" resolve="eventTargetComponent" />
                      <node concept="1ZhdrF" id="5s44y2LqeSa" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="5s44y2LqeSb" role="3$ytzL">
                          <node concept="3clFbS" id="5s44y2LqeSc" role="2VODD2">
                            <node concept="3clFbF" id="5s44y2LqeSd" role="3cqZAp">
                              <node concept="2OqwBi" id="5s44y2LqeSe" role="3clFbG">
                                <node concept="1iwH7S" id="5s44y2LqeSf" role="2Oq$k0" />
                                <node concept="1iwH70" id="5s44y2LqeSg" role="2OqNvi">
                                  <ref role="1iwH77" node="3CVcUJxObfY" resolve="eventTargetComponent" />
                                  <node concept="2OqwBi" id="5s44y2LqeSh" role="1iwH7V">
                                    <node concept="30H73N" id="5s44y2LqeSi" role="2Oq$k0" />
                                    <node concept="2qgKlT" id="5s44y2LqeSj" role="2OqNvi">
                                      <ref role="37wK5l" to="tp5o:3CVcUJxN49_" resolve="getPressMouseStatement" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTI" id="5s44y2Lqfj_" role="37wK5m">
                      <node concept="3cmrfG" id="5s44y2LqfjA" role="37vLTx">
                        <property role="3cmrfH" value="15" />
                        <node concept="17Uvod" id="5s44y2LqfjB" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <node concept="3zFVjK" id="5s44y2LqfjC" role="3zH0cK">
                            <node concept="3clFbS" id="5s44y2LqfjD" role="2VODD2">
                              <node concept="3clFbF" id="5s44y2LqfjE" role="3cqZAp">
                                <node concept="2OqwBi" id="5s44y2LqfjF" role="3clFbG">
                                  <node concept="30H73N" id="5s44y2LqfjG" role="2Oq$k0" />
                                  <node concept="3TrcHB" id="5s44y2LqfjH" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:bG3Ez5na7K" resolve="x" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="5s44y2LqfjI" role="37vLTJ">
                        <ref role="3cqZAo" node="5s44y2Lq95f" resolve="x" />
                        <node concept="1ZhdrF" id="5s44y2LqfjJ" role="lGtFl">
                          <property role="2qtEX8" value="variableDeclaration" />
                          <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                          <node concept="3$xsQk" id="5s44y2LqfjK" role="3$ytzL">
                            <node concept="3clFbS" id="5s44y2LqfjL" role="2VODD2">
                              <node concept="3clFbF" id="5s44y2LqfjM" role="3cqZAp">
                                <node concept="2OqwBi" id="5s44y2LqfjN" role="3clFbG">
                                  <node concept="1iwH7S" id="5s44y2LqfjO" role="2Oq$k0" />
                                  <node concept="1iwH70" id="5s44y2LqfjP" role="2OqNvi">
                                    <ref role="1iwH77" node="3CVcUJxNYRd" resolve="pressMouseX" />
                                    <node concept="2OqwBi" id="5s44y2LqfjQ" role="1iwH7V">
                                      <node concept="30H73N" id="5s44y2LqfjR" role="2Oq$k0" />
                                      <node concept="2qgKlT" id="5s44y2LqfjS" role="2OqNvi">
                                        <ref role="37wK5l" to="tp5o:3CVcUJxN49_" resolve="getPressMouseStatement" />
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
                    <node concept="37vLTI" id="5s44y2Lqhey" role="37wK5m">
                      <node concept="3cmrfG" id="5s44y2Lqhez" role="37vLTx">
                        <property role="3cmrfH" value="15" />
                        <node concept="17Uvod" id="5s44y2Lqhe$" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <node concept="3zFVjK" id="5s44y2Lqhe_" role="3zH0cK">
                            <node concept="3clFbS" id="5s44y2LqheA" role="2VODD2">
                              <node concept="3clFbF" id="5s44y2LqheB" role="3cqZAp">
                                <node concept="2OqwBi" id="5s44y2LqheC" role="3clFbG">
                                  <node concept="30H73N" id="5s44y2LqheD" role="2Oq$k0" />
                                  <node concept="3TrcHB" id="5s44y2LqheE" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:bG3Ez5na7L" resolve="y" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="5s44y2LqheF" role="37vLTJ">
                        <ref role="3cqZAo" node="5s44y2Lq95j" resolve="y" />
                        <node concept="1ZhdrF" id="5s44y2LqheG" role="lGtFl">
                          <property role="2qtEX8" value="variableDeclaration" />
                          <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                          <node concept="3$xsQk" id="5s44y2LqheH" role="3$ytzL">
                            <node concept="3clFbS" id="5s44y2LqheI" role="2VODD2">
                              <node concept="3clFbF" id="5s44y2LqheJ" role="3cqZAp">
                                <node concept="2OqwBi" id="5s44y2LqheK" role="3clFbG">
                                  <node concept="1iwH7S" id="5s44y2LqheL" role="2Oq$k0" />
                                  <node concept="1iwH70" id="5s44y2LqheM" role="2OqNvi">
                                    <ref role="1iwH77" node="6A9ZMbYfW2l" resolve="pressMouseY" />
                                    <node concept="2OqwBi" id="5s44y2LqheN" role="1iwH7V">
                                      <node concept="30H73N" id="5s44y2LqheO" role="2Oq$k0" />
                                      <node concept="2qgKlT" id="5s44y2LqheP" role="2OqNvi">
                                        <ref role="37wK5l" to="tp5o:3CVcUJxN49_" resolve="getPressMouseStatement" />
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
                    <node concept="10M0yZ" id="5s44y2Lqjg3" role="37wK5m">
                      <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_DRAGGED" resolve="MOUSE_DRAGGED" />
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="5WamHf6i78U" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="5s44y2Lq6cG" role="1B3o_S" />
          <node concept="3uibUv" id="5s44y2Lq6cH" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="hTDoYUt" role="3acgRq">
      <ref role="30HIoZ" to="tp4k:h$pLAnk" resolve="KeyMapKeystroke" />
      <node concept="gft3U" id="hTDp4ET" role="1lVwrX">
        <node concept="Xl_RD" id="hTDp74Z" role="gfFT$">
          <property role="Xl_RC" value="str" />
          <node concept="17Uvod" id="hTDp8Qx" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
            <node concept="3zFVjK" id="hTDp8Qy" role="3zH0cK">
              <node concept="3clFbS" id="hTDp8Qz" role="2VODD2">
                <node concept="3clFbF" id="hTDpbE1" role="3cqZAp">
                  <node concept="2OqwBi" id="hTDpbZ2" role="3clFbG">
                    <node concept="30H73N" id="hTDC7Dj" role="2Oq$k0" />
                    <node concept="2qgKlT" id="hTDC5w$" role="2OqNvi">
                      <ref role="37wK5l" to="tp4s:hEwIlzu" resolve="getKeyStroke" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="X8Ly3tyUaU" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:65clA3cMU1F" resolve="InvokeActionStatement" />
      <node concept="1Koe21" id="1BrKW0dgRs9" role="1lVwrX">
        <node concept="312cEu" id="1BrKW0dgRsa" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="1BrKW0dgRsb" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="foo" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="3clFbS" id="1BrKW0dgRsc" role="3clF47">
              <node concept="3clFbF" id="1BrKW0dgRsd" role="3cqZAp">
                <node concept="2OqwBi" id="1BrKW0dgRse" role="3clFbG">
                  <node concept="Xjq3P" id="1BrKW0dgRsf" role="2Oq$k0" />
                  <node concept="liA8E" id="1BrKW0dgRsg" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:1BrKW0db0tk" resolve="invokeAction" />
                    <node concept="10Nm6u" id="1BrKW0dgS3h" role="37wK5m">
                      <node concept="29HgVG" id="1BrKW0dgS3i" role="lGtFl">
                        <node concept="3NFfHV" id="1BrKW0dgS3j" role="3NFExx">
                          <node concept="3clFbS" id="1BrKW0dgS3k" role="2VODD2">
                            <node concept="3clFbF" id="1BrKW0dgS3l" role="3cqZAp">
                              <node concept="2OqwBi" id="1BrKW0dgS3m" role="3clFbG">
                                <node concept="30H73N" id="1BrKW0dgS3n" role="2Oq$k0" />
                                <node concept="3TrEf2" id="1BrKW0dgS3o" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp5g:X8Ly3tyr4R" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="1BrKW0dgRsp" role="lGtFl" />
              </node>
            </node>
            <node concept="3cqZAl" id="1BrKW0dgRsq" role="3clF45" />
            <node concept="3uibUv" id="5s44y2Lqowb" role="Sfmx6">
              <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
            </node>
            <node concept="3uibUv" id="5s44y2LqoGt" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
            </node>
          </node>
          <node concept="3Tm1VV" id="1BrKW0dgRsr" role="1B3o_S" />
          <node concept="3uibUv" id="1BrKW0dgRss" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4rqOdQ4h3nn" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:X8Ly3typJO" resolve="ActionReference" />
      <node concept="gft3U" id="4rqOdQ4h3ns" role="1lVwrX">
        <node concept="Xl_RD" id="4rqOdQ4h3nu" role="gfFT$">
          <property role="Xl_RC" value="value" />
          <node concept="17Uvod" id="4rqOdQ4h3nw" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
            <node concept="3zFVjK" id="4rqOdQ4h3nx" role="3zH0cK">
              <node concept="3clFbS" id="4rqOdQ4h3ny" role="2VODD2">
                <node concept="3clFbF" id="4rqOdQ4h3nz" role="3cqZAp">
                  <node concept="2OqwBi" id="4rqOdQ4h3n_" role="3clFbG">
                    <node concept="30H73N" id="4rqOdQ4h3n$" role="2Oq$k0" />
                    <node concept="2qgKlT" id="4rqOdQ4h3nD" role="2OqNvi">
                      <ref role="37wK5l" to="tp5o:X8Ly3typOa" resolve="getActionId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="50vRVameRNo" role="3acgRq">
      <property role="3GE5qa" value="editor" />
      <ref role="30HIoZ" to="tp5g:50vRVameF3Z" resolve="EditorComponentExpression" />
      <node concept="j$656" id="50vRVameRNp" role="1lVwrX">
        <ref role="v9R2y" node="50vRVameRNm" resolve="reduce_EditorComponent" />
      </node>
    </node>
    <node concept="3aamgX" id="57tnvWi0wkl" role="3acgRq">
      <property role="3GE5qa" value="editor" />
      <ref role="30HIoZ" to="tp5g:50vRVamdIih" resolve="SwitchToInspector" />
      <node concept="j$656" id="57tnvWi0wkm" role="1lVwrX">
        <ref role="v9R2y" node="57tnvWi0wkj" resolve="reduce_SwitchToInspector" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hByHiPj">
    <property role="TrG5h" value="reduce_TestNodeReference" />
    <ref role="3gUMe" to="tp5g:hBxON8j" resolve="TestNodeReference" />
    <node concept="312cEu" id="hPMpOg6" role="13RCb5">
      <property role="TrG5h" value="Class" />
      <node concept="3Tm1VV" id="hPMpOg7" role="1B3o_S" />
      <node concept="3uibUv" id="hPMpSAg" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
      <node concept="3clFbW" id="hPMpOg8" role="jymVt">
        <node concept="3cqZAl" id="hPMpOg9" role="3clF45" />
        <node concept="3Tm1VV" id="hPMpOga" role="1B3o_S" />
        <node concept="3clFbS" id="hPMpOgb" role="3clF47">
          <node concept="3cpWs8" id="hPMpUbP" role="3cqZAp">
            <node concept="3cpWsn" id="hPMpUbQ" role="3cpWs9">
              <property role="TrG5h" value="n" />
              <node concept="3Tqbb2" id="hPMpUbR" role="1tU5fm" />
              <node concept="1PxgMI" id="hPMqAsg" role="33vP2m">
                <ref role="1PxNhF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                <node concept="2OqwBi" id="hPMpVVu" role="1PxMeX">
                  <node concept="liA8E" id="hPMpVVv" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
                    <node concept="Xl_RD" id="hPMpWDU" role="37wK5m">
                      <property role="Xl_RC" value="" />
                      <node concept="17Uvod" id="hPMpXvq" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="hPMpXvr" role="3zH0cK">
                          <node concept="3clFbS" id="hPMpXvs" role="2VODD2">
                            <node concept="3clFbF" id="hPMq0an" role="3cqZAp">
                              <node concept="2OqwBi" id="1R1KclLA1d1" role="3clFbG">
                                <node concept="2OqwBi" id="1R1KclLA1d2" role="2Oq$k0">
                                  <node concept="2JrnkZ" id="1R1KclLA1d3" role="2Oq$k0">
                                    <node concept="2OqwBi" id="1R1KclLA1d4" role="2JrQYb">
                                      <node concept="2OqwBi" id="1R1KclLA1d5" role="2Oq$k0">
                                        <node concept="30H73N" id="1R1KclLA1d6" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="1R1KclLA1d7" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tp5g:hBxOPr6" />
                                        </node>
                                      </node>
                                      <node concept="1mfA1w" id="1R1KclLA1d8" role="2OqNvi" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1R1KclLA1d9" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="1R1KclLA1da" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xjq3P" id="hPMpVVw" role="2Oq$k0" />
                </node>
                <node concept="raruj" id="hPMqIQr" role="lGtFl" />
                <node concept="1ZhdrF" id="hPMqIQs" role="lGtFl">
                  <property role="2qtEX8" value="concept" />
                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1140137987495/1140138128738" />
                  <node concept="3$xsQk" id="hPMqIQt" role="3$ytzL">
                    <node concept="3clFbS" id="hPMqIQu" role="2VODD2">
                      <node concept="3clFbF" id="hPMqL29" role="3cqZAp">
                        <node concept="2OqwBi" id="hPMqMKa" role="3clFbG">
                          <node concept="2OqwBi" id="hPMqLOL" role="2Oq$k0">
                            <node concept="2OqwBi" id="hPMqLhj" role="2Oq$k0">
                              <node concept="30H73N" id="hPMqL2a" role="2Oq$k0" />
                              <node concept="3TrEf2" id="hPMqLBO" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp5g:hBxOPr6" />
                              </node>
                            </node>
                            <node concept="1mfA1w" id="hPMqMw2" role="2OqNvi" />
                          </node>
                          <node concept="3NT_Vc" id="hPMqN1y" role="2OqNvi" />
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
  <node concept="13MO4I" id="hGdx6Cj">
    <property role="TrG5h" value="reduce_AssertMatch" />
    <ref role="3gUMe" to="tp5g:hCJA54K" resolve="AssertMatch" />
    <node concept="3clFbS" id="3KvkLt3DkZn" role="13RCb5">
      <node concept="9aQIb" id="3KvkLt3DkZp" role="3cqZAp">
        <node concept="3clFbS" id="3KvkLt3DkZq" role="9aQI4">
          <node concept="3cpWs8" id="3KvkLt3BeA_" role="3cqZAp">
            <node concept="3cpWsn" id="3KvkLt3BeAA" role="3cpWs9">
              <property role="TrG5h" value="nodesBefore" />
              <node concept="3uibUv" id="3KvkLt3BeAz" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="3KvkLt3Bgyc" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
              <node concept="2ShNRf" id="2LEXDCdQB9g" role="33vP2m">
                <node concept="Tc6Ow" id="2LEXDCdQB9h" role="2ShVmc">
                  <node concept="3uibUv" id="2LEXDCdQB9i" role="HW$YZ">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="10Nm6u" id="2LEXDCdQB9j" role="HW$Y0">
                    <node concept="2b32R4" id="2LEXDCdQB9l" role="lGtFl">
                      <node concept="3JmXsc" id="2LEXDCdQB9m" role="2P8S$">
                        <node concept="3clFbS" id="2LEXDCdQB9n" role="2VODD2">
                          <node concept="3clFbF" id="2LEXDCdQB9o" role="3cqZAp">
                            <node concept="2OqwBi" id="2LEXDCdQB9p" role="3clFbG">
                              <node concept="3Tsc0h" id="2LEXDCdQB9q" role="2OqNvi">
                                <ref role="3TtcxE" to="tp5g:hCJA96l" />
                              </node>
                              <node concept="30H73N" id="2LEXDCdQB9r" role="2Oq$k0" />
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
          <node concept="3cpWs8" id="3KvkLt3B_CA" role="3cqZAp">
            <node concept="3cpWsn" id="3KvkLt3B_CB" role="3cpWs9">
              <property role="TrG5h" value="nodesAfter" />
              <node concept="3uibUv" id="3KvkLt3B_C$" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="3KvkLt3BBlL" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
              <node concept="2ShNRf" id="2LEXDCdQB9s" role="33vP2m">
                <node concept="Tc6Ow" id="2LEXDCdQB9t" role="2ShVmc">
                  <node concept="3uibUv" id="2LEXDCdQB9u" role="HW$YZ">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="10Nm6u" id="2LEXDCdQB9v" role="HW$Y0">
                    <node concept="2b32R4" id="2LEXDCdQB9x" role="lGtFl">
                      <node concept="3JmXsc" id="2LEXDCdQB9y" role="2P8S$">
                        <node concept="3clFbS" id="2LEXDCdQB9z" role="2VODD2">
                          <node concept="3clFbF" id="2LEXDCdQB9$" role="3cqZAp">
                            <node concept="2OqwBi" id="2LEXDCdQB9_" role="3clFbG">
                              <node concept="3Tsc0h" id="2LEXDCdQB9A" role="2OqNvi">
                                <ref role="3TtcxE" to="tp5g:hCJAdgf" />
                              </node>
                              <node concept="30H73N" id="2LEXDCdQB9B" role="2Oq$k0" />
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
          <node concept="3ykFI1" id="2LEXDCdQA6c" role="3cqZAp">
            <node concept="2YIFZM" id="2LEXDCdQB9f" role="3ykU8v">
              <ref role="1Pybhc" to="y5e1:7MIYyntE09$" resolve="NodesMatcher" />
              <ref role="37wK5l" to="y5e1:7MIYyntE0av" resolve="matchNodes" />
              <node concept="37vLTw" id="3KvkLt3BTku" role="37wK5m">
                <ref role="3cqZAo" node="3KvkLt3BeAA" resolve="nodesBefore" />
              </node>
              <node concept="37vLTw" id="3KvkLt3BWqj" role="37wK5m">
                <ref role="3cqZAo" node="3KvkLt3B_CB" resolve="nodesAfter" />
              </node>
            </node>
            <node concept="3_1$Yv" id="2LEXDCdQCtr" role="3_9lra">
              <node concept="3cpWs3" id="2LEXDCdQJ47" role="3_1BAH">
                <node concept="Xl_RD" id="2LEXDCdQJlK" role="3uHU7w">
                  <property role="Xl_RC" value="' do not match!" />
                </node>
                <node concept="3cpWs3" id="2LEXDCdQHOj" role="3uHU7B">
                  <node concept="3cpWs3" id="2LEXDCdQFjN" role="3uHU7B">
                    <node concept="3cpWs3" id="2LEXDCdQEqA" role="3uHU7B">
                      <node concept="Xl_RD" id="2LEXDCdQDWo" role="3uHU7B">
                        <property role="Xl_RC" value="nodes '" />
                      </node>
                      <node concept="37vLTw" id="3KvkLt3C0iQ" role="3uHU7w">
                        <ref role="3cqZAo" node="3KvkLt3BeAA" resolve="nodesBefore" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2LEXDCdQFjX" role="3uHU7w">
                      <property role="Xl_RC" value="' and '" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3KvkLt3C3gl" role="3uHU7w">
                    <ref role="3cqZAo" node="3KvkLt3B_CB" resolve="nodesAfter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="3KvkLt3Dmkg" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="hHqy8Mw">
    <property role="TrG5h" value="TestCaseName" />
    <node concept="3Tm1VV" id="hHqy8Mx" role="1B3o_S" />
    <node concept="n94m4" id="hHqy8MQ" role="lGtFl">
      <ref role="n9lRv" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
    </node>
    <node concept="3uibUv" id="e$hNri9klx" role="1zkMxy">
      <ref role="3uigEE" to="tp6m:e$hNri8RAJ" resolve="BaseTransformationTest" />
    </node>
    <node concept="17Uvod" id="hHq$Ev2" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="hHq$Ev3" role="3zH0cK">
        <node concept="3clFbS" id="hHq$Ev4" role="2VODD2">
          <node concept="3clFbF" id="hHq$I51" role="3cqZAp">
            <node concept="2OqwBi" id="hSMc1SW" role="3clFbG">
              <node concept="30H73N" id="hHq$I52" role="2Oq$k0" />
              <node concept="2qgKlT" id="hSQPFVO" role="2OqNvi">
                <ref role="37wK5l" to="tpe5:hSQIE8p" resolve="getSimpleClassName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2AHcQZ" id="6xD3woJoRXW" role="2AJF6D">
      <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
    </node>
    <node concept="3clFb_" id="hHqygjQ" role="jymVt">
      <property role="TrG5h" value="testMethod" />
      <node concept="3cqZAl" id="hHqygjR" role="3clF45" />
      <node concept="3Tm1VV" id="hHqygjS" role="1B3o_S" />
      <node concept="1WS0z7" id="hHqAXPf" role="lGtFl">
        <node concept="3JmXsc" id="hHqAXPg" role="3Jn$fo">
          <node concept="3clFbS" id="hHqAXPh" role="2VODD2">
            <node concept="3cpWs6" id="hHqDkqC" role="3cqZAp">
              <node concept="2OqwBi" id="hSUyPE7" role="3cqZAk">
                <node concept="30H73N" id="hSUyPgT" role="2Oq$k0" />
                <node concept="2qgKlT" id="hSUyRco" role="2OqNvi">
                  <ref role="37wK5l" to="tpe5:hGB2z8L" resolve="getTestSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="hHqB0C0" role="2AJF6D">
        <ref role="2AI5Lk" to="rjhg:~Test" resolve="Test" />
      </node>
      <node concept="17Uvod" id="hHqDnzU" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="hHqDnzV" role="3zH0cK">
          <node concept="3clFbS" id="hHqDnzW" role="2VODD2">
            <node concept="3clFbF" id="hHO8Ru$" role="3cqZAp">
              <node concept="2OqwBi" id="hHO8RMo" role="3clFbG">
                <node concept="30H73N" id="hHO8Ru_" role="2Oq$k0" />
                <node concept="2qgKlT" id="hHO8T79" role="2OqNvi">
                  <ref role="37wK5l" to="tpe5:hGBohAB" resolve="getTestName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="hHDKHLk" role="3clF47">
        <node concept="3clFbF" id="3SXwVgLRhvR" role="3cqZAp">
          <node concept="2OqwBi" id="3SXwVgLRhw9" role="3clFbG">
            <node concept="liA8E" id="3SXwVgLRhwa" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:1_xw4QB0RG_" resolve="initTest" />
              <node concept="Xl_RD" id="3SXwVgLRhwb" role="37wK5m">
                <property role="Xl_RC" value="project path" />
                <node concept="17Uvod" id="3SXwVgLRhwc" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="3SXwVgLRhwd" role="3zH0cK">
                    <node concept="3clFbS" id="3SXwVgLRhwe" role="2VODD2">
                      <node concept="3clFbF" id="3SXwVgLRhwf" role="3cqZAp">
                        <node concept="2YIFZM" id="3SXwVgLRhwg" role="3clFbG">
                          <ref role="37wK5l" to="3fh5:L0xQjiTXbx" resolve="getProjectPath" />
                          <ref role="1Pybhc" to="3fh5:L0xQjiTXbn" resolve="TestsUtil" />
                          <node concept="2OqwBi" id="3SXwVgLRhwh" role="37wK5m">
                            <node concept="30H73N" id="3SXwVgLRhwi" role="2Oq$k0" />
                            <node concept="I4A8Y" id="3SXwVgLRhwj" role="2OqNvi" />
                          </node>
                          <node concept="1Q79dO" id="3SXwVgLRhwk" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3SXwVgLRhwl" role="37wK5m">
                <property role="Xl_RC" value="model.fq.name" />
                <node concept="17Uvod" id="3SXwVgLRhwm" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="3SXwVgLRhwn" role="3zH0cK">
                    <node concept="3clFbS" id="3SXwVgLRhwo" role="2VODD2">
                      <node concept="3clFbF" id="3SXwVgLRhwp" role="3cqZAp">
                        <node concept="2OqwBi" id="3SXwVgLRhwq" role="3clFbG">
                          <node concept="2OqwBi" id="2n9zn0CqNiK" role="2Oq$k0">
                            <node concept="liA8E" id="2n9zn0CqNiL" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                            </node>
                            <node concept="2JrnkZ" id="2n9zn0CqNiM" role="2Oq$k0">
                              <node concept="2OqwBi" id="2n9zn0CqNiN" role="2JrQYb">
                                <node concept="1iwH7S" id="2n9zn0CqNiO" role="2Oq$k0" />
                                <node concept="1st3f0" id="2n9zn0CqNiP" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3SXwVgLRhwx" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbT" id="ThWTaQhHI8" role="37wK5m">
                <property role="3clFbU" value="false" />
                <node concept="17Uvod" id="ThWTaQhHIs" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                  <node concept="3zFVjK" id="ThWTaQhHIt" role="3zH0cK">
                    <node concept="3clFbS" id="ThWTaQhHIu" role="2VODD2">
                      <node concept="3clFbF" id="ThWTaQhHIM" role="3cqZAp">
                        <node concept="2OqwBi" id="L_Hr3kEwYN" role="3clFbG">
                          <node concept="2qgKlT" id="L_Hr3kEwYO" role="2OqNvi">
                            <ref role="37wK5l" to="tp5o:ThWTaQhG7P" resolve="reOpenProject" />
                            <node concept="2OqwBi" id="L_Hr3kEwYS" role="37wK5m">
                              <node concept="30H73N" id="L_Hr3kEwYT" role="2Oq$k0" />
                              <node concept="I4A8Y" id="L_Hr3kEwYU" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3TUQnm" id="L_Hr3kEwYW" role="2Oq$k0">
                            <ref role="3TV0OU" to="tp5g:4qWC2JVrBca" resolve="TestInfo" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xjq3P" id="3SXwVgLRhwy" role="2Oq$k0" />
          </node>
        </node>
        <node concept="3clFbF" id="hLFnOQD" role="3cqZAp">
          <node concept="2OqwBi" id="hLFnOQE" role="3clFbG">
            <node concept="liA8E" id="hLFnOQF" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:e$hNri8RCI" resolve="runTest" />
              <node concept="Xl_RD" id="hLFoiSp" role="37wK5m">
                <property role="Xl_RC" value="TestCaseName$TestBody" />
                <node concept="17Uvod" id="hOw3VBo" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="hOw3VBp" role="3zH0cK">
                    <node concept="3clFbS" id="hOw3VBq" role="2VODD2">
                      <node concept="3clFbF" id="L0xQjiUFPw" role="3cqZAp">
                        <node concept="2YIFZM" id="L0xQjiUFPy" role="3clFbG">
                          <ref role="37wK5l" to="3fh5:L0xQjiUFHd" resolve="getTestBodyClassName" />
                          <ref role="1Pybhc" to="3fh5:L0xQjiTXbn" resolve="TestsUtil" />
                          <node concept="2OqwBi" id="4DN08aZ$6S0" role="37wK5m">
                            <node concept="30H73N" id="L0xQjiUFPz" role="2Oq$k0" />
                            <node concept="2qgKlT" id="4DN08aZ$6S9" role="2OqNvi">
                              <ref role="37wK5l" to="tpe5:hGBgWVd" resolve="getTestCase" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="hLFnRn6" role="37wK5m">
                <property role="Xl_RC" value="testMethod" />
                <node concept="17Uvod" id="hLFrl1z" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="hLFrl1$" role="3zH0cK">
                    <node concept="3clFbS" id="hLFrl1_" role="2VODD2">
                      <node concept="3clFbF" id="hLFroUE" role="3cqZAp">
                        <node concept="2OqwBi" id="hLFrpk5" role="3clFbG">
                          <node concept="30H73N" id="hLFroUF" role="2Oq$k0" />
                          <node concept="2qgKlT" id="hLFrqFy" role="2OqNvi">
                            <ref role="37wK5l" to="tpe5:hGBohAB" resolve="getTestName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbT" id="hRN3N$6" role="37wK5m">
                <property role="3clFbU" value="true" />
                <node concept="17Uvod" id="5vTxdEzxwbp" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                  <node concept="3zFVjK" id="5vTxdEzxweJ" role="3zH0cK">
                    <node concept="3clFbS" id="5vTxdEzxweK" role="2VODD2">
                      <node concept="3clFbF" id="5vTxdEzxx41" role="3cqZAp">
                        <node concept="2OqwBi" id="5vTxdEzxI5R" role="3clFbG">
                          <node concept="1PxgMI" id="5vTxdEzxHym" role="2Oq$k0">
                            <ref role="1PxNhF" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
                            <node concept="2OqwBi" id="5vTxdEzxx91" role="1PxMeX">
                              <node concept="30H73N" id="5vTxdEzxx40" role="2Oq$k0" />
                              <node concept="2qgKlT" id="5vTxdEzxGeX" role="2OqNvi">
                                <ref role="37wK5l" to="tpe5:hGBgWVd" resolve="getTestCase" />
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="5vTxdEzxIZp" role="2OqNvi">
                            <ref role="37wK5l" to="tp5o:5vTxdEzuQjU" resolve="needsWriteAction" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xjq3P" id="hLFnOQG" role="2Oq$k0" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="hPoWEEp" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
    <node concept="312cEu" id="hLF7lUD" role="jymVt">
      <property role="TrG5h" value="TestBody" />
      <node concept="3Tm1VV" id="hLF7lUE" role="1B3o_S" />
      <node concept="3uibUv" id="hLFfMVw" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
      <node concept="17Uvod" id="hOw4bZX" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="hOw4bZY" role="3zH0cK">
          <node concept="3clFbS" id="hOw4bZZ" role="2VODD2">
            <node concept="3clFbF" id="hOw4e$m" role="3cqZAp">
              <node concept="2OqwBi" id="L_Hr3kEuoG" role="3clFbG">
                <node concept="2qgKlT" id="L_Hr3kEuoH" role="2OqNvi">
                  <ref role="37wK5l" to="tp5o:hOw0ICJ" resolve="getTestBodyName" />
                </node>
                <node concept="3TUQnm" id="L_Hr3kEuoJ" role="2Oq$k0">
                  <ref role="3TV0OU" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6xD3woJoRYa" role="2AJF6D">
        <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
      </node>
      <node concept="3clFb_" id="hPLPvfz" role="jymVt">
        <property role="TrG5h" value="testMethod" />
        <node concept="3cqZAl" id="hPLPvf$" role="3clF45" />
        <node concept="3Tm1VV" id="hPLPvf_" role="1B3o_S" />
        <node concept="3clFbS" id="hPLPvfA" role="3clF47" />
        <node concept="2b32R4" id="hPLPN6H" role="lGtFl">
          <node concept="3JmXsc" id="hPLPN6I" role="2P8S$">
            <node concept="3clFbS" id="hPLPN6J" role="2VODD2">
              <node concept="3cpWs6" id="hPLPYQG" role="3cqZAp">
                <node concept="2OqwBi" id="hPLPZCz" role="3cqZAk">
                  <node concept="30H73N" id="hPLPZpS" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hPLPZUE" role="2OqNvi">
                    <ref role="3TtcxE" to="tp5g:hHSL9AP" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="hLF7ERe" role="jymVt">
        <property role="TrG5h" value="test_Operation" />
        <node concept="3cqZAl" id="hLF7ERf" role="3clF45" />
        <node concept="3Tm1VV" id="hLF7ERg" role="1B3o_S" />
        <node concept="3clFbS" id="hLF7ERh" role="3clF47">
          <node concept="3cpWs8" id="hLF7ESh" role="3cqZAp">
            <node concept="3cpWsn" id="hLF7ESi" role="3cpWs9">
              <property role="TrG5h" value="operation" />
              <node concept="3Tqbb2" id="hLF7ESj" role="1tU5fm">
                <ref role="ehGHo" to="tp5g:hG7unSw" resolve="NodeCheckOperation" />
              </node>
              <node concept="1PxgMI" id="i2npJ_Q" role="33vP2m">
                <ref role="1PxNhF" to="tp5g:hG7unSw" resolve="NodeCheckOperation" />
                <node concept="2OqwBi" id="hQFbu1e" role="1PxMeX">
                  <node concept="Xjq3P" id="hQFbu1p" role="2Oq$k0" />
                  <node concept="liA8E" id="hQFbu1f" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:hLFg$wA" resolve="getRealNodeById" />
                    <node concept="Xl_RD" id="hQFbu1g" role="37wK5m">
                      <property role="Xl_RC" value="nodeId" />
                      <node concept="17Uvod" id="hQFbu1h" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="hQFbu1i" role="3zH0cK">
                          <node concept="3clFbS" id="hQFbu1j" role="2VODD2">
                            <node concept="3clFbF" id="hQFbu1k" role="3cqZAp">
                              <node concept="2OqwBi" id="1R1KclLA1bB" role="3clFbG">
                                <node concept="2OqwBi" id="1R1KclLA1bC" role="2Oq$k0">
                                  <node concept="liA8E" id="24cAaiVCalv" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="1R1KclLA1bD" role="2Oq$k0">
                                    <node concept="30H73N" id="1R1KclLA1bE" role="2JrQYb" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="1R1KclLA1bG" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
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
          <node concept="3clFbF" id="hPnBSkk" role="3cqZAp">
            <node concept="2OqwBi" id="hPnBSkl" role="3clFbG">
              <node concept="37vLTw" id="3GM_nagTxh_" role="2Oq$k0">
                <ref role="3cqZAo" node="hLF7ESi" resolve="operation" />
              </node>
              <node concept="2qgKlT" id="hPnBSkn" role="2OqNvi">
                <ref role="37wK5l" to="tp5o:dCRb6FLnvk" resolve="perform" />
                <node concept="2OqwBi" id="hPnBSko" role="37wK5m">
                  <node concept="liA8E" id="hPnBSkp" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:hLFg$wA" resolve="getRealNodeById" />
                    <node concept="Xl_RD" id="hPnBSkq" role="37wK5m">
                      <property role="Xl_RC" value="nodeId" />
                      <node concept="17Uvod" id="hPnBSkr" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="hPnBSks" role="3zH0cK">
                          <node concept="3clFbS" id="hPnBSkt" role="2VODD2">
                            <node concept="3clFbF" id="hPnBSku" role="3cqZAp">
                              <node concept="2OqwBi" id="1R1KclLA1gu" role="3clFbG">
                                <node concept="2OqwBi" id="1R1KclLA1gv" role="2Oq$k0">
                                  <node concept="liA8E" id="24cAaiVCamJ" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="1R1KclLA1gw" role="2Oq$k0">
                                    <node concept="2OqwBi" id="1R1KclLA1gx" role="2JrQYb">
                                      <node concept="2OqwBi" id="1R1KclLA1gy" role="2Oq$k0">
                                        <node concept="30H73N" id="1R1KclLA1gz" role="2Oq$k0" />
                                        <node concept="1mfA1w" id="1R1KclLA1g$" role="2OqNvi" />
                                      </node>
                                      <node concept="1mfA1w" id="1R1KclLA1g_" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="1R1KclLA1gB" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xjq3P" id="hPnBVws" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1WS0z7" id="hLF7ET5" role="lGtFl">
          <node concept="3JmXsc" id="hLF7ET6" role="3Jn$fo">
            <node concept="3clFbS" id="hLF7ET7" role="2VODD2">
              <node concept="3clFbF" id="hLF7ET8" role="3cqZAp">
                <node concept="2OqwBi" id="hLF7ET9" role="3clFbG">
                  <node concept="30H73N" id="hLF7ETa" role="2Oq$k0" />
                  <node concept="2Rf3mk" id="hLF7ETb" role="2OqNvi">
                    <node concept="1xMEDy" id="hLF7ETc" role="1xVPHs">
                      <node concept="chp4Y" id="hLF7ETd" role="ri$Ld">
                        <ref role="cht4Q" to="tp5g:hG7unSw" resolve="NodeCheckOperation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="hLF7ETf" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
        <node concept="17Uvod" id="hLF7ETg" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="hLF7ETh" role="3zH0cK">
            <node concept="3clFbS" id="hLF7ETi" role="2VODD2">
              <node concept="3clFbF" id="hLF7ETj" role="3cqZAp">
                <node concept="2OqwBi" id="hLF7ETk" role="3clFbG">
                  <node concept="30H73N" id="hLF7ETl" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLF7ETm" role="2OqNvi">
                    <ref role="37wK5l" to="tpe5:hGBohAB" resolve="getTestName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="hLF7Igh" role="jymVt">
        <property role="TrG5h" value="method" />
        <node concept="3cqZAl" id="hLF7Igi" role="3clF45">
          <node concept="29HgVG" id="hLF7Igj" role="lGtFl">
            <node concept="3NFfHV" id="hLF7Igk" role="3NFExx">
              <node concept="3clFbS" id="hLF7Igl" role="2VODD2">
                <node concept="3clFbF" id="hLF7Igm" role="3cqZAp">
                  <node concept="2OqwBi" id="hLF7Ign" role="3clFbG">
                    <node concept="30H73N" id="hLF7Igo" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hLF7Igp" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fzclF7X" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="hLF7Igq" role="1B3o_S" />
        <node concept="3clFbS" id="hLF7Igr" role="3clF47">
          <node concept="3cpWs8" id="hLF7Igs" role="3cqZAp">
            <node concept="3cpWsn" id="hLF7Igt" role="3cpWs9">
              <property role="TrG5h" value="varName" />
              <node concept="3Tqbb2" id="hLF7Igu" role="1tU5fm">
                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                <node concept="1ZhdrF" id="hLF7Igv" role="lGtFl">
                  <property role="2qtEX8" value="concept" />
                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                  <node concept="3$xsQk" id="hLF7Igw" role="3$ytzL">
                    <node concept="3clFbS" id="hLF7Igx" role="2VODD2">
                      <node concept="3cpWs6" id="hLF7Igy" role="3cqZAp">
                        <node concept="2OqwBi" id="hLF7Igz" role="3cqZAk">
                          <node concept="2OqwBi" id="hLF7Ig$" role="2Oq$k0">
                            <node concept="30H73N" id="hLF7Ig_" role="2Oq$k0" />
                            <node concept="1mfA1w" id="hLF7IgA" role="2OqNvi" />
                          </node>
                          <node concept="3NT_Vc" id="hLF7IgB" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17Uvod" id="hLF7IgC" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="hLF7IgD" role="3zH0cK">
                  <node concept="3clFbS" id="hLF7IgE" role="2VODD2">
                    <node concept="3clFbF" id="hLF7IgF" role="3cqZAp">
                      <node concept="3cpWs3" id="hLF7IgG" role="3clFbG">
                        <node concept="2OqwBi" id="1R1KclLA1ew" role="3uHU7w">
                          <node concept="2OqwBi" id="1R1KclLA1ex" role="2Oq$k0">
                            <node concept="liA8E" id="24cAaiVCak7" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                            </node>
                            <node concept="2JrnkZ" id="1R1KclLA1ey" role="2Oq$k0">
                              <node concept="30H73N" id="1R1KclLA1ez" role="2JrQYb" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1R1KclLA1e_" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="hLF7IgL" role="3uHU7B">
                          <property role="Xl_RC" value="var" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="hLF7IgM" role="33vP2m">
                <node concept="liA8E" id="hLF7IgN" role="2OqNvi">
                  <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
                  <node concept="Xl_RD" id="hLF7IgO" role="37wK5m">
                    <property role="Xl_RC" value="nodeId" />
                    <node concept="17Uvod" id="hLF7IgP" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="hLF7IgQ" role="3zH0cK">
                        <node concept="3clFbS" id="hLF7IgR" role="2VODD2">
                          <node concept="3clFbF" id="hLF7IgS" role="3cqZAp">
                            <node concept="2OqwBi" id="1R1KclLA1gO" role="3clFbG">
                              <node concept="2OqwBi" id="1R1KclLA1gP" role="2Oq$k0">
                                <node concept="liA8E" id="24cAaiVCamN" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                                </node>
                                <node concept="2JrnkZ" id="1R1KclLA1gQ" role="2Oq$k0">
                                  <node concept="2OqwBi" id="1R1KclLA1gR" role="2JrQYb">
                                    <node concept="30H73N" id="1R1KclLA1gS" role="2Oq$k0" />
                                    <node concept="1mfA1w" id="1R1KclLA1gT" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="1R1KclLA1gV" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xjq3P" id="hLF7IgZ" role="2Oq$k0" />
              </node>
            </node>
            <node concept="1WS0z7" id="hLF7Ih0" role="lGtFl">
              <node concept="3JmXsc" id="hLF7Ih1" role="3Jn$fo">
                <node concept="3clFbS" id="hLF7Ih2" role="2VODD2">
                  <node concept="3cpWs8" id="hLF7Ih3" role="3cqZAp">
                    <node concept="3cpWsn" id="hLF7Ih4" role="3cpWs9">
                      <property role="TrG5h" value="set" />
                      <node concept="2hMVRd" id="i0q_mIF" role="1tU5fm">
                        <node concept="3Tqbb2" id="i0q_mIG" role="2hN53Y">
                          <ref role="ehGHo" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="hLF7Ih7" role="33vP2m">
                        <node concept="32HrFt" id="i34eQpw" role="2ShVmc">
                          <node concept="3Tqbb2" id="i34eQWL" role="HW$YZ">
                            <ref role="ehGHo" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="hLF7Iha" role="3cqZAp">
                    <node concept="2GrKxI" id="hLF7Ihb" role="2Gsz3X">
                      <property role="TrG5h" value="ref" />
                    </node>
                    <node concept="3clFbS" id="hLF7Ihc" role="2LFqv$">
                      <node concept="3clFbF" id="hLF7Ihd" role="3cqZAp">
                        <node concept="2OqwBi" id="hLF7Ihe" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTstq" role="2Oq$k0">
                            <ref role="3cqZAo" node="hLF7Ih4" resolve="set" />
                          </node>
                          <node concept="2l5eF5" id="i0q_p8b" role="2OqNvi">
                            <node concept="2OqwBi" id="i0q_p8c" role="2l6Ag6">
                              <node concept="2GrUjf" id="i0q_p8d" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="hLF7Ihb" resolve="ref" />
                              </node>
                              <node concept="3TrEf2" id="i0q_p8e" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp5g:hBxOPr6" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="hLF7Ihk" role="2GsD0m">
                      <node concept="2OqwBi" id="hLF7Ihl" role="2Oq$k0">
                        <node concept="30H73N" id="hLF7Ihm" role="2Oq$k0" />
                        <node concept="3TrEf2" id="hOYfUHi" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fzclF7Z" />
                        </node>
                      </node>
                      <node concept="2Rf3mk" id="hLF7Iho" role="2OqNvi">
                        <node concept="1xMEDy" id="hLF7Ihp" role="1xVPHs">
                          <node concept="chp4Y" id="hLF7Ihq" role="ri$Ld">
                            <ref role="cht4Q" to="tp5g:hBxON8j" resolve="TestNodeReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="hLF7Ihr" role="3cqZAp">
                    <node concept="2ShNRf" id="hLF7Ihs" role="3cqZAk">
                      <node concept="Tc6Ow" id="i1ACR7m" role="2ShVmc">
                        <node concept="3Tqbb2" id="hLF7Ihu" role="HW$YZ">
                          <ref role="ehGHo" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTBYB" role="I$8f6">
                          <ref role="3cqZAo" node="hLF7Ih4" resolve="set" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="hLF7Ihw" role="3cqZAp">
            <node concept="10Nm6u" id="hLF7Ihx" role="3clFbG" />
            <node concept="2b32R4" id="hLF7Ihy" role="lGtFl">
              <node concept="3JmXsc" id="hLF7Ihz" role="2P8S$">
                <node concept="3clFbS" id="hLF7Ih$" role="2VODD2">
                  <node concept="3clFbF" id="hLF7Ih_" role="3cqZAp">
                    <node concept="2OqwBi" id="hLF7IhA" role="3clFbG">
                      <node concept="2OqwBi" id="hLF7IhB" role="2Oq$k0">
                        <node concept="30H73N" id="hLF7IhC" role="2Oq$k0" />
                        <node concept="3TrEf2" id="hOYfWS0" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fzclF7Z" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="hLF7IhE" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1WS0z7" id="hLF7IhF" role="lGtFl">
          <node concept="3JmXsc" id="hLF7IhG" role="3Jn$fo">
            <node concept="3clFbS" id="hLF7IhH" role="2VODD2">
              <node concept="3clFbF" id="hLF7IhI" role="3cqZAp">
                <node concept="2OqwBi" id="hLF7IhJ" role="3clFbG">
                  <node concept="30H73N" id="hLF7IhK" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hLF7IhL" role="2OqNvi">
                    <ref role="3TtcxE" to="tp5g:hHqtyUn" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="hLF7IhM" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="hLF7IhN" role="3zH0cK">
            <node concept="3clFbS" id="hLF7IhO" role="2VODD2">
              <node concept="3clFbF" id="hLF7IhP" role="3cqZAp">
                <node concept="2OqwBi" id="hLF7IhQ" role="3clFbG">
                  <node concept="30H73N" id="hLF7IhR" role="2Oq$k0" />
                  <node concept="3TrcHB" id="hLF7IhS" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="hLF7IhT" role="3clF46">
          <property role="TrG5h" value="a" />
          <node concept="10Oyi0" id="hLF7IhU" role="1tU5fm" />
          <node concept="2b32R4" id="hLF7IhV" role="lGtFl">
            <node concept="3JmXsc" id="hLF7IhW" role="2P8S$">
              <node concept="3clFbS" id="hLF7IhX" role="2VODD2">
                <node concept="3clFbF" id="hLF7IhY" role="3cqZAp">
                  <node concept="2OqwBi" id="hLF7IhZ" role="3clFbG">
                    <node concept="30H73N" id="hLF7Ii0" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="hLF7Ii1" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:fzclF7Y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="1waHpnAxMdL" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
          <node concept="2b32R4" id="1waHpnAxMeh" role="lGtFl">
            <node concept="3JmXsc" id="1waHpnAxMei" role="2P8S$">
              <node concept="3clFbS" id="1waHpnAxMej" role="2VODD2">
                <node concept="3clFbF" id="1waHpnAxMez" role="3cqZAp">
                  <node concept="2OqwBi" id="1waHpnAxMeD" role="3clFbG">
                    <node concept="30H73N" id="1waHpnAxMe$" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="1waHpnAxMf1" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:gWSfm_9" />
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
  <node concept="13MO4I" id="hPjzEtZ">
    <property role="TrG5h" value="reduce_Project" />
    <ref role="3gUMe" to="tp5g:hPjxXux" resolve="ProjectExpression" />
    <node concept="312cEu" id="hPjzIbl" role="13RCb5">
      <property role="TrG5h" value="Clazz" />
      <node concept="3Tm1VV" id="hPjzIbm" role="1B3o_S" />
      <node concept="3uibUv" id="hPjzJUw" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
      <node concept="3clFbW" id="hPjzIbn" role="jymVt">
        <node concept="3cqZAl" id="hPjzIbo" role="3clF45" />
        <node concept="3Tm1VV" id="hPjzIbp" role="1B3o_S" />
        <node concept="3clFbS" id="hPjzIbq" role="3clF47">
          <node concept="3clFbF" id="hPjzMWB" role="3cqZAp">
            <node concept="2OqwBi" id="hPjzNeX" role="3clFbG">
              <node concept="Xjq3P" id="hPjzMWC" role="2Oq$k0" />
              <node concept="2OwXpG" id="hPjzNJu" role="2OqNvi">
                <ref role="2Oxat5" to="tp6m:hPjx680" resolve="myProject" />
              </node>
              <node concept="raruj" id="hPjzP3J" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hPjGGCw">
    <property role="TrG5h" value="reduce_Model" />
    <ref role="3gUMe" to="tp5g:hPjGwIs" resolve="ModelExpression" />
    <node concept="312cEu" id="hPjGGCx" role="13RCb5">
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="hPjGGCy" role="1B3o_S" />
      <node concept="3uibUv" id="hPjGGCG" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
      <node concept="3clFbW" id="hPjGGCz" role="jymVt">
        <node concept="3cqZAl" id="hPjGGC$" role="3clF45" />
        <node concept="3Tm1VV" id="hPjGGC_" role="1B3o_S" />
        <node concept="3clFbS" id="hPjGGCA" role="3clF47">
          <node concept="3clFbF" id="hPjGGCB" role="3cqZAp">
            <node concept="2OqwBi" id="hPjGGCC" role="3clFbG">
              <node concept="Xjq3P" id="hPjGGCD" role="2Oq$k0" />
              <node concept="2OwXpG" id="hPjGKp9" role="2OqNvi">
                <ref role="2Oxat5" to="tp6m:hLFg6DL" resolve="myModel" />
              </node>
              <node concept="raruj" id="hPjGGCF" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hPLRi3V">
    <property role="TrG5h" value="reduce_SimpleNodeTest" />
    <ref role="3gUMe" to="tp5g:hHlHkQ8" resolve="NodesTestMethod" />
    <node concept="312cEu" id="hPLRnEC" role="13RCb5">
      <property role="TrG5h" value="Clazz" />
      <node concept="3Tm1VV" id="hPLRnED" role="1B3o_S" />
      <node concept="3uibUv" id="hPLRWTh" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
      <node concept="3clFb_" id="hPLRpOc" role="jymVt">
        <property role="TrG5h" value="method" />
        <node concept="3cqZAl" id="hPLRpOd" role="3clF45" />
        <node concept="3Tm1VV" id="hPLRpOe" role="1B3o_S" />
        <node concept="3clFbS" id="hPLRpOf" role="3clF47">
          <node concept="3clFbF" id="hPLRIvr" role="3cqZAp">
            <node concept="2OqwBi" id="hPLRIvs" role="3clFbG">
              <node concept="Xjq3P" id="hPLRIvt" role="2Oq$k0" />
              <node concept="liA8E" id="hPLRIvu" role="2OqNvi">
                <ref role="37wK5l" to="tp6m:hLFg0c8" resolve="addNodeById" />
                <node concept="Xl_RD" id="hPLRIvv" role="37wK5m">
                  <property role="Xl_RC" value="nodeId" />
                  <node concept="17Uvod" id="hPLRIvw" role="lGtFl">
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <node concept="3zFVjK" id="hPLRIvx" role="3zH0cK">
                      <node concept="3clFbS" id="hPLRIvy" role="2VODD2">
                        <node concept="3clFbF" id="hPLRIvz" role="3cqZAp">
                          <node concept="2OqwBi" id="1R1KclLA1dD" role="3clFbG">
                            <node concept="2OqwBi" id="1R1KclLA1dE" role="2Oq$k0">
                              <node concept="liA8E" id="24cAaiVCalZ" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                              </node>
                              <node concept="2JrnkZ" id="1R1KclLA1dF" role="2Oq$k0">
                                <node concept="30H73N" id="1R1KclLA1dG" role="2JrQYb" />
                              </node>
                            </node>
                            <node concept="liA8E" id="1R1KclLA1dI" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="hPLRIvC" role="lGtFl">
              <node concept="3JmXsc" id="hPLRIvD" role="3Jn$fo">
                <node concept="3clFbS" id="hPLRIvE" role="2VODD2">
                  <node concept="3cpWs8" id="hPLRIvF" role="3cqZAp">
                    <node concept="3cpWsn" id="hPLRIvG" role="3cpWs9">
                      <property role="TrG5h" value="nodes" />
                      <node concept="2I9FWS" id="hPLRIvH" role="1tU5fm">
                        <ref role="2I9WkF" to="tp5g:hHqefK1" resolve="TestNode" />
                      </node>
                      <node concept="2ShNRf" id="hPLRIvI" role="33vP2m">
                        <node concept="2T8Vx0" id="hPLRIvJ" role="2ShVmc">
                          <node concept="2I9FWS" id="hPLRIvK" role="2T96Bj">
                            <ref role="2I9WkF" to="tp5g:hHqefK1" resolve="TestNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="hPLRIvL" role="3cqZAp">
                    <node concept="2GrKxI" id="hPLRIvM" role="2Gsz3X">
                      <property role="TrG5h" value="nodeTocheck" />
                    </node>
                    <node concept="3clFbS" id="hPLRIvN" role="2LFqv$">
                      <node concept="3clFbF" id="hPLRIvO" role="3cqZAp">
                        <node concept="2OqwBi" id="hPLRIvP" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTwrQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="hPLRIvG" resolve="nodes" />
                          </node>
                          <node concept="TSZUe" id="hPLRIvR" role="2OqNvi">
                            <node concept="1PxgMI" id="i2npI4X" role="25WWJ7">
                              <ref role="1PxNhF" to="tp5g:hHqefK1" resolve="TestNode" />
                              <node concept="2GrUjf" id="hPLRIvU" role="1PxMeX">
                                <ref role="2Gs0qQ" node="hPLRIvM" resolve="nodeTocheck" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="hPLRIvW" role="2GsD0m">
                      <node concept="2OqwBi" id="hPLRIvX" role="2Oq$k0">
                        <node concept="30H73N" id="hPLRIvY" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="hPLRIvZ" role="2OqNvi">
                          <node concept="1xMEDy" id="hPLRIw0" role="1xVPHs">
                            <node concept="chp4Y" id="hPLRIw1" role="ri$Ld">
                              <ref role="cht4Q" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="hPLRIw2" role="2OqNvi">
                        <ref role="3TtcxE" to="tp5g:hHSKRN6" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="hPLRIw3" role="3cqZAp">
                    <node concept="37vLTw" id="3GM_nagTrSR" role="3clFbG">
                      <ref role="3cqZAo" node="hPLRIvG" resolve="nodes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="hPLShOk" role="3cqZAp">
            <node concept="2b32R4" id="hPLShOl" role="lGtFl">
              <node concept="3JmXsc" id="hPLShOm" role="2P8S$">
                <node concept="3clFbS" id="hPLShOn" role="2VODD2">
                  <node concept="3clFbF" id="hPLShOo" role="3cqZAp">
                    <node concept="2OqwBi" id="hPLShOp" role="3clFbG">
                      <node concept="2OqwBi" id="hPLShOq" role="2Oq$k0">
                        <node concept="30H73N" id="hPLShOr" role="2Oq$k0" />
                        <node concept="3TrEf2" id="hPLShOs" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fzclF7Z" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="hPLShOt" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="hPLRxbY" role="lGtFl" />
        <node concept="17Uvod" id="hPLRLP1" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="hPLRLP2" role="3zH0cK">
            <node concept="3clFbS" id="hPLRLP3" role="2VODD2">
              <node concept="3clFbF" id="hPLRNxQ" role="3cqZAp">
                <node concept="2OqwBi" id="hPLRNU3" role="3clFbG">
                  <node concept="30H73N" id="hPLRNxR" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hPLRP70" role="2OqNvi">
                    <ref role="37wK5l" to="tpe5:hGBohAB" resolve="getTestName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="hPLScZs" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
        <node concept="2AHcQZ" id="7THlWl_mWxc" role="2AJF6D">
          <node concept="2b32R4" id="7THlWl_mWxe" role="lGtFl">
            <node concept="3JmXsc" id="7THlWl_mWxf" role="2P8S$">
              <node concept="3clFbS" id="7THlWl_mWxg" role="2VODD2">
                <node concept="3clFbF" id="7THlWl_mXLj" role="3cqZAp">
                  <node concept="2OqwBi" id="7THlWl_mXLl" role="3clFbG">
                    <node concept="30H73N" id="7THlWl_mXLk" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7THlWl_mYjP" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:hiAJF2X" />
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
  <node concept="13MO4I" id="hPMrA67">
    <property role="TrG5h" value="reduce_EditorExpresstion" />
    <node concept="312cEu" id="5s44y2KUzao" role="13RCb5">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="A" />
      <property role="1sVAO0" value="true" />
      <node concept="3clFb_" id="5s44y2KUzap" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="foo" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3clFbS" id="5s44y2KUzaq" role="3clF47">
          <node concept="3cpWs8" id="5s44y2Lqy6G" role="3cqZAp">
            <node concept="3cpWsn" id="5s44y2Lqy6H" role="3cpWs9">
              <property role="TrG5h" value="editor" />
              <node concept="3uibUv" id="5s44y2Lqy6I" role="1tU5fm">
                <ref role="3uigEE" to="cj4x:~Editor" resolve="Editor" />
              </node>
              <node concept="2OqwBi" id="5s44y2LqycO" role="33vP2m">
                <node concept="Xjq3P" id="5s44y2Lqy8L" role="2Oq$k0" />
                <node concept="2OwXpG" id="5s44y2Lqymv" role="2OqNvi">
                  <ref role="2Oxat5" to="tp6m:hSPZI8_" resolve="myEditor" />
                </node>
                <node concept="raruj" id="5s44y2LqynO" role="lGtFl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="5s44y2KUzaw" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="5s44y2KUzax" role="1B3o_S" />
      <node concept="3uibUv" id="5s44y2KUzay" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hPMLN58">
    <property role="TrG5h" value="reduce_InvokeIntentionStatement" />
    <ref role="3gUMe" to="tp5g:hPMFPyi" resolve="InvokeIntentionStatement" />
    <node concept="312cEu" id="hPMM3NF" role="13RCb5">
      <property role="TrG5h" value="A" />
      <property role="1sVAO0" value="true" />
      <node concept="3Tm1VV" id="hPMM3NG" role="1B3o_S" />
      <node concept="3uibUv" id="hTDNcuO" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
      <node concept="3clFbW" id="hPMM3NH" role="jymVt">
        <node concept="3cqZAl" id="hPMM3NI" role="3clF45" />
        <node concept="3Tm1VV" id="hPMM3NJ" role="1B3o_S" />
        <node concept="3clFbS" id="hPMM3NK" role="3clF47">
          <node concept="3clFbF" id="31vHIpQVHYy" role="3cqZAp">
            <node concept="1rXfSq" id="31vHIpQVHYx" role="3clFbG">
              <ref role="37wK5l" to="tp6m:31vHIpQV3lp" resolve="invokeIntention" />
              <node concept="Xl_RD" id="31vHIpQVJr_" role="37wK5m">
                <node concept="17Uvod" id="31vHIpQVJrA" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="31vHIpQVJrB" role="3zH0cK">
                    <node concept="3clFbS" id="31vHIpQVJrC" role="2VODD2">
                      <node concept="3clFbF" id="31vHIpQVJrD" role="3cqZAp">
                        <node concept="3cpWs3" id="31vHIpQVJrE" role="3clFbG">
                          <node concept="3cpWs3" id="31vHIpQVJrF" role="3uHU7B">
                            <node concept="2YIFZM" id="31vHIpQVJrG" role="3uHU7B">
                              <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                              <ref role="37wK5l" to="unno:7WvVJ3rORmu" resolve="getModelLongName" />
                              <node concept="2JrnkZ" id="31vHIpQVJrH" role="37wK5m">
                                <node concept="2OqwBi" id="31vHIpQVJrI" role="2JrQYb">
                                  <node concept="2OqwBi" id="31vHIpQVJrJ" role="2Oq$k0">
                                    <node concept="30H73N" id="31vHIpQVJrK" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="31vHIpQVJrL" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp5g:hPMFYKr" />
                                    </node>
                                  </node>
                                  <node concept="I4A8Y" id="31vHIpQVJrM" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="31vHIpQVJrN" role="3uHU7w">
                              <property role="Xl_RC" value="." />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="31vHIpQVJrO" role="3uHU7w">
                            <node concept="2OqwBi" id="31vHIpQVJrP" role="2Oq$k0">
                              <node concept="30H73N" id="31vHIpQVJrQ" role="2Oq$k0" />
                              <node concept="3TrEf2" id="31vHIpQVJrR" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp5g:hPMFYKr" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="31vHIpQVJrS" role="2OqNvi">
                              <ref role="37wK5l" to="tp3m:5rGvd38DcHL" resolve="getGeneratedName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="31vHIpQVJrV" role="37wK5m">
                <node concept="liA8E" id="31vHIpQVLxP" role="2OqNvi">
                  <ref role="37wK5l" to="tp6m:hQJuSEb" resolve="getNode" />
                </node>
                <node concept="37vLTw" id="31vHIpQVKyy" role="2Oq$k0">
                  <ref role="3cqZAo" to="tp6m:hSQ1pHb" resolve="myStart" />
                </node>
              </node>
            </node>
            <node concept="raruj" id="31vHIpQVINF" role="lGtFl" />
          </node>
        </node>
        <node concept="3uibUv" id="hTDNjfJ" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="hSLWj1d">
    <property role="TrG5h" value="EditorTestCaseName" />
    <node concept="3Tm1VV" id="hSLWj1e" role="1B3o_S" />
    <node concept="n94m4" id="hSLWj1j" role="lGtFl">
      <ref role="n9lRv" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
    </node>
    <node concept="17Uvod" id="hSLWR6b" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="hSLWR6c" role="3zH0cK">
        <node concept="3clFbS" id="hSLWR6d" role="2VODD2">
          <node concept="3clFbF" id="hSLWYap" role="3cqZAp">
            <node concept="2OqwBi" id="hSLWYLJ" role="3clFbG">
              <node concept="30H73N" id="hSLWYaq" role="2Oq$k0" />
              <node concept="2qgKlT" id="hSQJ1QE" role="2OqNvi">
                <ref role="37wK5l" to="tpe5:hSQIE8p" resolve="getSimpleClassName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="e$hNri9klf" role="1zkMxy">
      <ref role="3uigEE" to="tp6m:e$hNri8RAJ" resolve="BaseTransformationTest" />
    </node>
    <node concept="2AHcQZ" id="6xD3woJoR6A" role="2AJF6D">
      <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
    </node>
    <node concept="3clFbW" id="4UfpQlLFUwP" role="jymVt">
      <node concept="3cqZAl" id="4UfpQlLFUwQ" role="3clF45" />
      <node concept="3Tm1VV" id="4UfpQlLFUwR" role="1B3o_S" />
      <node concept="3clFbS" id="4UfpQlLFUwS" role="3clF47" />
    </node>
    <node concept="3clFb_" id="hSLXXzS" role="jymVt">
      <property role="TrG5h" value="testMethod" />
      <node concept="3cqZAl" id="hSLXXzT" role="3clF45" />
      <node concept="3Tm1VV" id="hSLXXzU" role="1B3o_S" />
      <node concept="2AHcQZ" id="hSLXX$q" role="2AJF6D">
        <ref role="2AI5Lk" to="rjhg:~Test" resolve="Test" />
      </node>
      <node concept="17Uvod" id="hSLXX$r" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="hSLXX$s" role="3zH0cK">
          <node concept="3clFbS" id="hSLXX$t" role="2VODD2">
            <node concept="3clFbF" id="hSMgKNO" role="3cqZAp">
              <node concept="2OqwBi" id="hSMgLDN" role="3clFbG">
                <node concept="30H73N" id="hSMgKNP" role="2Oq$k0" />
                <node concept="2qgKlT" id="hSMhd1D" role="2OqNvi">
                  <ref role="37wK5l" to="tpe5:hGBohAB" resolve="getTestName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="hSLXX$y" role="3clF47">
        <node concept="3clFbF" id="hSLXX$z" role="3cqZAp">
          <node concept="2OqwBi" id="hSLXX$$" role="3clFbG">
            <node concept="liA8E" id="hSLXX$_" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:e$hNri8RB$" resolve="initTest" />
              <node concept="Xl_RD" id="hSLXX$A" role="37wK5m">
                <property role="Xl_RC" value="project path" />
                <node concept="17Uvod" id="hSLXX$B" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="hSLXX$C" role="3zH0cK">
                    <node concept="3clFbS" id="hSLXX$D" role="2VODD2">
                      <node concept="3clFbF" id="L0xQjiUhY$" role="3cqZAp">
                        <node concept="2YIFZM" id="L0xQjiUhY_" role="3clFbG">
                          <ref role="1Pybhc" to="3fh5:L0xQjiTXbn" resolve="TestsUtil" />
                          <ref role="37wK5l" to="3fh5:L0xQjiTXbx" resolve="getProjectPath" />
                          <node concept="2OqwBi" id="L0xQjiUhYA" role="37wK5m">
                            <node concept="30H73N" id="L0xQjiUhYB" role="2Oq$k0" />
                            <node concept="I4A8Y" id="L0xQjiUhYC" role="2OqNvi" />
                          </node>
                          <node concept="1Q79dO" id="L0xQjiUhYD" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="hSLXX_j" role="37wK5m">
                <property role="Xl_RC" value="model.fq.name" />
                <node concept="17Uvod" id="hSLXX_k" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="hSLXX_l" role="3zH0cK">
                    <node concept="3clFbS" id="hSLXX_m" role="2VODD2">
                      <node concept="3clFbF" id="hSLXX_n" role="3cqZAp">
                        <node concept="2OqwBi" id="hSLXX_o" role="3clFbG">
                          <node concept="2OqwBi" id="2n9zn0CqN3t" role="2Oq$k0">
                            <node concept="liA8E" id="2n9zn0CqN3u" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                            </node>
                            <node concept="2JrnkZ" id="2n9zn0CqN3v" role="2Oq$k0">
                              <node concept="2OqwBi" id="2n9zn0CqN3w" role="2JrQYb">
                                <node concept="1iwH7S" id="2n9zn0CqN3x" role="2Oq$k0" />
                                <node concept="1st3f0" id="2n9zn0CqN3y" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="hSLXX_v" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xjq3P" id="hSLXX_w" role="2Oq$k0" />
          </node>
        </node>
        <node concept="3clFbF" id="hSLXX_x" role="3cqZAp">
          <node concept="2OqwBi" id="hSLXX_y" role="3clFbG">
            <node concept="liA8E" id="hSLXX_z" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:e$hNri8RCI" resolve="runTest" />
              <node concept="Xl_RD" id="hSLXX__" role="37wK5m">
                <property role="Xl_RC" value="Class$TestBody" />
                <node concept="17Uvod" id="hSLXX_A" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="hSLXX_B" role="3zH0cK">
                    <node concept="3clFbS" id="hSLXX_C" role="2VODD2">
                      <node concept="3clFbF" id="L0xQjiUFPs" role="3cqZAp">
                        <node concept="2YIFZM" id="L0xQjiUFPu" role="3clFbG">
                          <ref role="37wK5l" to="3fh5:L0xQjiUFHd" resolve="getTestBodyClassName" />
                          <ref role="1Pybhc" to="3fh5:L0xQjiTXbn" resolve="TestsUtil" />
                          <node concept="30H73N" id="L0xQjiUFPv" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="hSLXX_M" role="37wK5m">
                <property role="Xl_RC" value="testMethod" />
              </node>
              <node concept="3clFbT" id="hSMJOQz" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
            <node concept="Xjq3P" id="hSLXXA4" role="2Oq$k0" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="hSLXXA5" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
    <node concept="312cEu" id="hSMJi6o" role="jymVt">
      <property role="TrG5h" value="TestBody" />
      <node concept="3Tm1VV" id="hSMJi9v" role="1B3o_S" />
      <node concept="3uibUv" id="hSQ04MV" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
      <node concept="17Uvod" id="hSMJi9x" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="hSMJi9y" role="3zH0cK">
          <node concept="3clFbS" id="hSMJi9z" role="2VODD2">
            <node concept="3clFbF" id="hSMJi9$" role="3cqZAp">
              <node concept="2OqwBi" id="L_Hr3kEulo" role="3clFbG">
                <node concept="2qgKlT" id="L_Hr3kEulp" role="2OqNvi">
                  <ref role="37wK5l" to="tp5o:hOw0ICJ" resolve="getTestBodyName" />
                </node>
                <node concept="3TUQnm" id="L_Hr3kEulr" role="2Oq$k0">
                  <ref role="3TV0OU" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6xD3woJoRrp" role="2AJF6D">
        <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
      </node>
      <node concept="3clFbW" id="4UfpQlLFUwY" role="jymVt">
        <node concept="3cqZAl" id="4UfpQlLFUwZ" role="3clF45" />
        <node concept="3Tm1VV" id="4UfpQlLFUx0" role="1B3o_S" />
        <node concept="3clFbS" id="4UfpQlLFUx1" role="3clF47" />
      </node>
      <node concept="3clFb_" id="hSMJi6p" role="jymVt">
        <property role="TrG5h" value="testMethodImpl" />
        <node concept="3cqZAl" id="hSMJi6q" role="3clF45" />
        <node concept="3Tm1VV" id="hSMK3_t" role="1B3o_S" />
        <node concept="3clFbS" id="hSQ8ykv" role="3clF47">
          <node concept="3clFbF" id="5s44y2KSvXw" role="3cqZAp">
            <node concept="1rXfSq" id="5s44y2KSvXv" role="3clFbG">
              <ref role="37wK5l" to="tp6m:hSPZQwW" resolve="initEditor" />
              <node concept="Xl_RD" id="5s44y2KSw$p" role="37wK5m">
                <property role="Xl_RC" value="before" />
                <node concept="17Uvod" id="5s44y2KSw$q" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="5s44y2KSw$r" role="3zH0cK">
                    <node concept="3clFbS" id="5s44y2KSw$s" role="2VODD2">
                      <node concept="3clFbF" id="5s44y2KSw$t" role="3cqZAp">
                        <node concept="2OqwBi" id="5s44y2KSw$u" role="3clFbG">
                          <node concept="2OqwBi" id="5s44y2KSw$v" role="2Oq$k0">
                            <node concept="liA8E" id="5s44y2KSw$w" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                            </node>
                            <node concept="2JrnkZ" id="5s44y2KSw$x" role="2Oq$k0">
                              <node concept="2OqwBi" id="5s44y2KSw$y" role="2JrQYb">
                                <node concept="30H73N" id="5s44y2KSw$z" role="2Oq$k0" />
                                <node concept="3TrEf2" id="5s44y2KSw$$" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp5g:hSLiRz$" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="5s44y2KSw$_" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="5s44y2KSxbf" role="37wK5m">
                <property role="Xl_RC" value="after" />
                <node concept="17Uvod" id="5s44y2KSxbg" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="5s44y2KSxbh" role="3zH0cK">
                    <node concept="3clFbS" id="5s44y2KSxbi" role="2VODD2">
                      <node concept="3clFbJ" id="5s44y2KSxbj" role="3cqZAp">
                        <node concept="3clFbS" id="5s44y2KSxbk" role="3clFbx">
                          <node concept="3cpWs6" id="5s44y2KSxbl" role="3cqZAp">
                            <node concept="2OqwBi" id="5s44y2KSxbm" role="3cqZAk">
                              <node concept="2OqwBi" id="5s44y2KSxbn" role="2Oq$k0">
                                <node concept="liA8E" id="5s44y2KSxbo" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                                </node>
                                <node concept="2JrnkZ" id="5s44y2KSxbp" role="2Oq$k0">
                                  <node concept="2OqwBi" id="5s44y2KSxbq" role="2JrQYb">
                                    <node concept="30H73N" id="5s44y2KSxbr" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="5s44y2KSxbs" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp5g:hSLiZfj" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="5s44y2KSxbt" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="5s44y2KSxbu" role="3clFbw">
                          <node concept="10Nm6u" id="5s44y2KSxbv" role="3uHU7w" />
                          <node concept="2OqwBi" id="5s44y2KSxbw" role="3uHU7B">
                            <node concept="30H73N" id="5s44y2KSxbx" role="2Oq$k0" />
                            <node concept="3TrEf2" id="5s44y2KSxby" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:hSLiZfj" />
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="5s44y2KSxbz" role="9aQIa">
                          <node concept="3clFbS" id="5s44y2KSxb$" role="9aQI4">
                            <node concept="3cpWs6" id="5s44y2KSxb_" role="3cqZAp">
                              <node concept="Xl_RD" id="5s44y2KSxbA" role="3cqZAk">
                                <property role="Xl_RC" value="" />
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
          <node concept="3clFbH" id="6BJVJLXoX$8" role="3cqZAp">
            <node concept="2b32R4" id="6BJVJLXoX$9" role="lGtFl">
              <node concept="3JmXsc" id="6BJVJLXoX$a" role="2P8S$">
                <node concept="3clFbS" id="6BJVJLXoX$b" role="2VODD2">
                  <node concept="3clFbF" id="6BJVJLXoX$c" role="3cqZAp">
                    <node concept="2OqwBi" id="6BJVJLXoX$d" role="3clFbG">
                      <node concept="2OqwBi" id="6BJVJLXoX$e" role="2Oq$k0">
                        <node concept="30H73N" id="6BJVJLXoX$f" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6BJVJLXoX$g" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp5g:hSLjaOj" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="6BJVJLXoX$h" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="hSQbneM" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
        <node concept="2AHcQZ" id="4cFHg$8ntbL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hTDGwQJ">
    <property role="TrG5h" value="reduce_BeforeCell" />
    <node concept="312cEu" id="hTDG_x_" role="13RCb5">
      <property role="TrG5h" value="Clazz" />
      <node concept="3Tm1VV" id="hTDG_xA" role="1B3o_S" />
      <node concept="3uibUv" id="hTDGM9a" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
      <node concept="3clFbW" id="hTDG_xB" role="jymVt">
        <node concept="3cqZAl" id="hTDG_xC" role="3clF45" />
        <node concept="3Tm1VV" id="hTDG_xD" role="1B3o_S" />
        <node concept="3clFbS" id="hTDG_xE" role="3clF47">
          <node concept="3clFbF" id="hTDH3tX" role="3cqZAp">
            <node concept="2OqwBi" id="hTDH3tY" role="3clFbG">
              <node concept="2OwXpG" id="hTDH3tZ" role="2OqNvi">
                <ref role="2Oxat5" to="tp6m:hSQ1pHb" resolve="myStart" />
              </node>
              <node concept="Xjq3P" id="hTDH3u0" role="2Oq$k0" />
              <node concept="raruj" id="hTDH8eG" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="50vRVameRNm">
    <property role="TrG5h" value="reduce_EditorComponent" />
    <ref role="3gUMe" to="tp5g:50vRVameF3Z" resolve="EditorComponentExpression" />
    <node concept="312cEu" id="5s44y2KUdmt" role="13RCb5">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="A" />
      <property role="1sVAO0" value="true" />
      <node concept="3clFb_" id="5s44y2KUdnf" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="foo" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3clFbS" id="5s44y2KUdni" role="3clF47">
          <node concept="3clFbF" id="50vRVameSYo" role="3cqZAp">
            <node concept="2OqwBi" id="5s44y2KUdpU" role="3clFbG">
              <node concept="Xjq3P" id="5s44y2KUdoY" role="2Oq$k0" />
              <node concept="liA8E" id="5s44y2KUsDe" role="2OqNvi">
                <ref role="37wK5l" to="tp6m:1BrKW0d9mQ7" resolve="getEditorComponent" />
              </node>
              <node concept="raruj" id="5s44y2KUsMb" role="lGtFl" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="5s44y2KUdn9" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="5s44y2KUdmu" role="1B3o_S" />
      <node concept="3uibUv" id="5s44y2KUezZ" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="57tnvWi0wkj">
    <property role="TrG5h" value="reduce_SwitchToInspector" />
    <ref role="3gUMe" to="tp5g:50vRVamdIih" resolve="SwitchToInspector" />
    <node concept="3clFbS" id="57tnvWi0xLz" role="13RCb5">
      <node concept="3cpWs8" id="57tnvWi0xL$" role="3cqZAp">
        <node concept="3cpWsn" id="57tnvWi0xL_" role="3cpWs9">
          <property role="TrG5h" value="editor" />
          <node concept="3uibUv" id="3Y1sPZ9Y4hF" role="1tU5fm">
            <ref role="3uigEE" to="cj4x:~Editor" resolve="Editor" />
          </node>
          <node concept="10Nm6u" id="57tnvWi0yjg" role="33vP2m" />
        </node>
      </node>
      <node concept="3cpWs8" id="57tnvWi0xMb" role="3cqZAp">
        <node concept="3cpWsn" id="57tnvWi0xMc" role="3cpWs9">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="57tnvWi0xMd" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
          <node concept="10Nm6u" id="57tnvWi0yjj" role="33vP2m" />
        </node>
      </node>
      <node concept="3clFbF" id="57tnvWi0yjo" role="3cqZAp">
        <node concept="37vLTI" id="57tnvWi0yjq" role="3clFbG">
          <node concept="2OqwBi" id="57tnvWi0yjI" role="37vLTx">
            <node concept="1eOMI4" id="57tnvWi0yj$" role="2Oq$k0">
              <node concept="10QFUN" id="57tnvWi0yj_" role="1eOMHV">
                <node concept="2OqwBi" id="57tnvWi0yjA" role="10QFUP">
                  <node concept="37vLTw" id="3GM_nagTu9D" role="2Oq$k0">
                    <ref role="3cqZAo" node="57tnvWi0xL_" resolve="editor" />
                  </node>
                  <node concept="liA8E" id="57tnvWi0yjC" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~Editor.getCurrentEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getCurrentEditorComponent" />
                  </node>
                </node>
                <node concept="3uibUv" id="57tnvWi0yjE" role="10QFUM">
                  <ref role="3uigEE" to="exr9:~NodeEditorComponent" resolve="NodeEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="57tnvWi0_71" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~NodeEditorComponent.getInspector():jetbrains.mps.nodeEditor.EditorComponent" resolve="getInspector" />
            </node>
          </node>
          <node concept="37vLTw" id="3GM_nagTxpp" role="37vLTJ">
            <ref role="3cqZAo" node="57tnvWi0xMc" resolve="editorComponent" />
          </node>
        </node>
        <node concept="raruj" id="57tnvWi0_72" role="lGtFl" />
      </node>
    </node>
  </node>
</model>

