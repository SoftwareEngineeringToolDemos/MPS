<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e99786b4-cb81-48f5-ad96-d9e0d7c7aa3c(jetbrains.mps.samples.attribute.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="1" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpf8" ref="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="6054523464626862044" name="jetbrains.mps.lang.structure.structure.AttributeInfo_IsMultiple" flags="ng" index="tn0Fv">
        <property id="6054523464626875854" name="value" index="tnX3d" />
      </concept>
      <concept id="6054523464627964745" name="jetbrains.mps.lang.structure.structure.AttributeInfo_AttributedConcept" flags="ng" index="trNpa">
        <reference id="6054523464627965081" name="concept" index="trN6q" />
      </concept>
      <concept id="2992811758677295509" name="jetbrains.mps.lang.structure.structure.AttributeInfo" flags="ng" index="M6xJ_">
        <child id="7588428831947959310" name="attributed" index="EQaZv" />
        <child id="7588428831955550186" name="multiple" index="HhnKV" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="1587916991969465369" name="conceptId" index="1pbfSe" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
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
  </registry>
  <node concept="1TIwiD" id="6fYGsMY855h">
    <property role="TrG5h" value="CommentAttribute" />
    <property role="3GE5qa" value="pure-textgen" />
    <property role="1pbfSe" value="572457757" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyi" id="6fYGsMY855o" role="1TKVEl">
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="M6xJ_" id="6fYGsMY855i" role="lGtFl">
      <node concept="tn0Fv" id="6fYGsMY855k" role="HhnKV">
        <property role="tnX3d" value="true" />
      </node>
      <node concept="trNpa" id="6fYGsMY8nxe" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="3fG6dkheFNp">
    <property role="TrG5h" value="HandlerAsRoot" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="pure-textgen" />
    <property role="1pbfSe" value="1160172974" />
    <ref role="1TJDcQ" to="tpee:fz12cDA" resolve="ClassConcept" />
  </node>
  <node concept="1TIwiD" id="3fG6dkheOJs">
    <property role="TrG5h" value="HandlerAsChild" />
    <property role="3GE5qa" value="pure-textgen" />
    <property role="1pbfSe" value="1160209585" />
    <ref role="1TJDcQ" to="tpee:fz12cDA" resolve="ClassConcept" />
  </node>
  <node concept="1TIwiD" id="70B0YGk0hRj">
    <property role="TrG5h" value="CommentAttribute2" />
    <property role="3GE5qa" value="generator-processed" />
    <property role="1pbfSe" value="2077744706" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyi" id="70B0YGk0iGO" role="1TKVEl">
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="M6xJ_" id="70B0YGk0hRk" role="lGtFl" />
    <node concept="PrWs8" id="70B0YGk0hRm" role="PzmwI">
      <ref role="PrY4T" to="tpf8:6pv6r6HKtLr" resolve="PersistGeneration" />
    </node>
  </node>
  <node concept="1TIwiD" id="70B0YGk0vln">
    <property role="TrG5h" value="SubConceptToTransform" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="generator-processed" />
    <property role="1pbfSe" value="2077689534" />
    <ref role="1TJDcQ" to="tpee:fz12cDA" resolve="ClassConcept" />
    <node concept="1TJgyj" id="70B0YGk0BJ7" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="nested" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="70B0YGk0BJ6" resolve="SubConceptToTransformNested" />
    </node>
  </node>
  <node concept="1TIwiD" id="70B0YGk0BJ6">
    <property role="TrG5h" value="SubConceptToTransformNested" />
    <property role="3GE5qa" value="generator-processed" />
    <property role="1pbfSe" value="2077655119" />
    <ref role="1TJDcQ" to="tpee:fz12cDC" resolve="FieldDeclaration" />
  </node>
</model>

