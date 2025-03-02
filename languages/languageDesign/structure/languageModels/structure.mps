<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="1" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="6054523464626862044" name="jetbrains.mps.lang.structure.structure.AttributeInfo_IsMultiple" flags="ng" index="tn0Fv">
        <property id="6054523464626875854" name="value" index="tnX3d" />
      </concept>
      <concept id="6054523464627964745" name="jetbrains.mps.lang.structure.structure.AttributeInfo_AttributedConcept" flags="ng" index="trNpa">
        <reference id="6054523464627965081" name="concept" index="trN6q" />
      </concept>
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <property id="1212080844762" name="hasNoDefaultMember" index="PDuV0" />
        <property id="1197591154882" name="memberIdentifierPolicy" index="3lZH7k" />
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <reference id="1083241965437" name="defaultMember" index="Qgau1" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1192116978809" name="javaIdentifier" index="2fHolG" />
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="2992811758677295509" name="jetbrains.mps.lang.structure.structure.AttributeInfo" flags="ng" index="M6xJ_">
        <property id="7588428831955550663" name="role" index="Hh88m" />
        <child id="7588428831947959310" name="attributed" index="EQaZv" />
        <child id="7588428831955550186" name="multiple" index="HhnKV" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <property id="1587916991969465369" name="conceptId" index="1pbfSe" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1160488491229" name="iconPath" index="MwhBj" />
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
  <node concept="1TIwiD" id="f_TIwhg">
    <property role="R5$K7" value="false" />
    <property role="19KtqR" value="true" />
    <property role="R5$K2" value="true" />
    <property role="MwhBj" value="${language_descriptor}/icons/structure.png" />
    <property role="TrG5h" value="ConceptDeclaration" />
    <property role="34LRSv" value="Concept" />
    <property role="1pbfSe" value="2042234185" />
    <ref role="1TJDcQ" node="h0PkWnZ" resolve="AbstractConceptDeclaration" />
    <node concept="1TJgyi" id="fX9Ktp8" role="1TKVEl">
      <property role="TrG5h" value="rootable" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="gSMwhzt" role="1TKVEl">
      <property role="TrG5h" value="iconPath" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4G1g3fIR8D8" role="1TKVEl">
      <property role="TrG5h" value="staticScope" />
      <ref role="AX2Wp" node="4G1g3fIR8JB" resolve="StaticScope" />
    </node>
    <node concept="1TJgyj" id="f_TJDff" role="1TKVEi">
      <property role="20kJfa" value="extends" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="f_TIwhg" resolve="ConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="h0Pzm$Y" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="implements" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="h0PrWoo" resolve="InterfaceConceptReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="f_TJgxE">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="true" />
    <property role="MwhBj" value="${language_descriptor}/icons/link.png" />
    <property role="TrG5h" value="LinkDeclaration" />
    <property role="1pbfSe" value="2042431843" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="50$LP2ztBgg" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
    <node concept="1TJgyi" id="fA0kJcN" role="1TKVEl">
      <property role="TrG5h" value="role" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="fA0lm$B" role="1TKVEl">
      <property role="TrG5h" value="metaClass" />
      <ref role="AX2Wp" node="fLJjDmR" resolve="LinkMetaclass" />
    </node>
    <node concept="1TJgyi" id="fA0lbG4" role="1TKVEl">
      <property role="TrG5h" value="sourceCardinality" />
      <ref role="AX2Wp" node="fLJekj2" resolve="Cardinality" />
    </node>
    <node concept="1TJgyi" id="24YP6ZDjW8M" role="1TKVEl">
      <property role="TrG5h" value="unordered" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="fA0ks94" role="1TKVEi">
      <property role="20kJfa" value="specializedLink" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="1TJgyj" id="fA0lvVK" role="1TKVEi">
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="hRkpyE_" role="PzmwI">
      <ref role="PrY4T" node="hOIDzy1" resolve="IStructureDeprecatable" />
    </node>
    <node concept="PrWs8" id="1oksCg99EhD" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="f_TJgxF">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="true" />
    <property role="MwhBj" value="${language_descriptor}/icons/property.png" />
    <property role="TrG5h" value="PropertyDeclaration" />
    <property role="1pbfSe" value="2042431844" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="50$LP2ztBgn" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
    <node concept="PrWs8" id="h0TBbGY" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="hOIDY1x" role="PzmwI">
      <ref role="PrY4T" node="hOIDzy1" resolve="IStructureDeprecatable" />
    </node>
    <node concept="1TJgyj" id="fKAX2Z_" role="1TKVEi">
      <property role="20kJfa" value="dataType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="fKAxPRU" resolve="DataTypeDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="fKAxPRU">
    <property role="TrG5h" value="DataTypeDeclaration" />
    <property role="1pbfSe" value="646405878" />
    <node concept="PrWs8" id="yuXZmMPAvJ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="fKAxPRV">
    <property role="19KtqR" value="true" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="MwhBj" value="${language_descriptor}/icons/enum.png" />
    <property role="TrG5h" value="EnumerationDataTypeDeclaration" />
    <property role="34LRSv" value="Enum Data Type" />
    <property role="1pbfSe" value="646405879" />
    <ref role="1TJDcQ" node="fKAxPRU" resolve="DataTypeDeclaration" />
    <node concept="1TJgyi" id="hrlZH32" role="1TKVEl">
      <property role="TrG5h" value="memberIdentifierPolicy" />
      <ref role="AX2Wp" node="hrlYF45" resolve="EnumerationMemberIdentifierPolicy" />
    </node>
    <node concept="1TJgyi" id="hCPDuZq" role="1TKVEl">
      <property role="TrG5h" value="hasNoDefaultMember" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="hCQ2FqA" role="1TKVEl">
      <property role="TrG5h" value="noValueText" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="fKM4eW5" role="1TKVEi">
      <property role="20kJfa" value="memberDataType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="fKQkHSB" resolve="PrimitiveDataTypeDeclaration" />
    </node>
    <node concept="1TJgyj" id="fKQgatX" role="1TKVEi">
      <property role="20kJfa" value="defaultMember" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="fKM4N6M" resolve="EnumerationMemberDeclaration" />
    </node>
    <node concept="1TJgyj" id="fKM5hVY" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="member" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="fKM4N6M" resolve="EnumerationMemberDeclaration" />
    </node>
    <node concept="PrWs8" id="yuXZmMPAu4" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="fKAz7CR">
    <property role="19KtqR" value="true" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="MwhBj" value="${language_descriptor}/icons/constrainedTD.png" />
    <property role="TrG5h" value="ConstrainedDataTypeDeclaration" />
    <property role="34LRSv" value="Constrained Data Type" />
    <property role="1pbfSe" value="646740787" />
    <ref role="1TJDcQ" node="fKAxPRU" resolve="DataTypeDeclaration" />
    <node concept="1TJgyi" id="fKFLfW2" role="1TKVEl">
      <property role="TrG5h" value="constraint" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="fKM4N6M">
    <property role="TrG5h" value="EnumerationMemberDeclaration" />
    <property role="1pbfSe" value="840118958" />
    <node concept="1TJgyi" id="fLuS6pz" role="1TKVEl">
      <property role="TrG5h" value="internalValue" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="fLuS6p$" role="1TKVEl">
      <property role="TrG5h" value="externalValue" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="hmfHohT" role="1TKVEl">
      <property role="TrG5h" value="javaIdentifier" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="1$21UiMc2k0" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
  </node>
  <node concept="1TIwiD" id="fKQkHSB">
    <property role="19KtqR" value="true" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="true" />
    <property role="MwhBj" value="${language_descriptor}/icons/primitiveTD.png" />
    <property role="TrG5h" value="PrimitiveDataTypeDeclaration" />
    <property role="1pbfSe" value="911400739" />
    <ref role="1TJDcQ" node="fKAxPRU" resolve="DataTypeDeclaration" />
  </node>
  <node concept="AxPO7" id="fLJekj2">
    <property role="3lZH7k" value="derive_from_internal_value" />
    <property role="PDuV0" value="false" />
    <property role="TrG5h" value="Cardinality" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="fLJekj3" role="M5hS2">
      <property role="1uS6qv" value="0..1" />
      <property role="1uS6qo" value="0..1" />
    </node>
    <node concept="M4N5e" id="fLJekj4" role="M5hS2">
      <property role="1uS6qv" value="1" />
      <property role="1uS6qo" value="1" />
    </node>
    <node concept="M4N5e" id="fLJekj5" role="M5hS2">
      <property role="1uS6qv" value="0..n" />
      <property role="1uS6qo" value="0..n" />
    </node>
    <node concept="M4N5e" id="fLJekj6" role="M5hS2">
      <property role="1uS6qv" value="1..n" />
      <property role="1uS6qo" value="1..n" />
    </node>
  </node>
  <node concept="AxPO7" id="fLJjDmR">
    <property role="3lZH7k" value="derive_from_internal_value" />
    <property role="PDuV0" value="false" />
    <property role="TrG5h" value="LinkMetaclass" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="fLJjDmS" role="M5hS2">
      <property role="1uS6qv" value="reference" />
      <property role="1uS6qo" value="reference" />
    </node>
    <node concept="M4N5e" id="fLJjDmT" role="M5hS2">
      <property role="1uS6qv" value="aggregation" />
      <property role="1uS6qo" value="aggregation" />
    </node>
  </node>
  <node concept="1TIwiD" id="h0PkWnZ">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AbstractConceptDeclaration" />
    <property role="1pbfSe" value="894682895" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="28RKVM5GRls" role="1TKVEl">
      <property role="TrG5h" value="helpURL" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4qF2Hm2r7ja" role="1TKVEl">
      <property role="TrG5h" value="conceptAlias" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="40UcGlRaVSw" role="1TKVEl">
      <property role="TrG5h" value="conceptShortDescription" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="40UcGlRb7V2" role="1TKVEl">
      <property role="TrG5h" value="abstract" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="40UcGlRb7V7" role="1TKVEl">
      <property role="TrG5h" value="final" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="1o9qxtf9pgp" role="1TKVEl">
      <property role="TrG5h" value="conceptId" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="h0TBFkr" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="50$LP2ztBbO" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
    <node concept="PrWs8" id="hOIE3lE" role="PzmwI">
      <ref role="PrY4T" node="hOIDzy1" resolve="IStructureDeprecatable" />
    </node>
    <node concept="1TJgyj" id="f_TKVDF" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="linkDeclaration" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="1TJgyj" id="f_TKVDG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="propertyDeclaration" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="f_TJgxF" resolve="PropertyDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="h0PlHMJ">
    <property role="19KtqR" value="true" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="true" />
    <property role="MwhBj" value="${language_descriptor}/icons/interfaceStructure.png" />
    <property role="TrG5h" value="InterfaceConceptDeclaration" />
    <property role="34LRSv" value="Interface Concept" />
    <property role="1pbfSe" value="894885311" />
    <ref role="1TJDcQ" node="h0PkWnZ" resolve="AbstractConceptDeclaration" />
    <node concept="1TJgyj" id="h0PrDRO" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="extends" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="h0PrWoo" resolve="InterfaceConceptReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="h0PrWoo">
    <property role="TrG5h" value="InterfaceConceptReference" />
    <property role="1pbfSe" value="896517928" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="h0PrY0D" role="1TKVEi">
      <property role="20kJfa" value="intfc" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="h0PlHMJ" resolve="InterfaceConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="50$LP2ztBnv" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
  </node>
  <node concept="AxPO7" id="hrlYF45">
    <property role="3lZH7k" value="derive_from_internal_value" />
    <property role="TrG5h" value="EnumerationMemberIdentifierPolicy" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <ref role="Qgau1" node="hrlYF46" />
    <node concept="M4N5e" id="hrlYF46" role="M5hS2">
      <property role="1uS6qv" value="derive_from_presentation" />
      <property role="1uS6qo" value="derive from presentation" />
    </node>
    <node concept="M4N5e" id="hrlZj6Q" role="M5hS2">
      <property role="1uS6qv" value="derive_from_internal_value" />
      <property role="1uS6qo" value="derive from internal value" />
    </node>
    <node concept="M4N5e" id="hrlZpEz" role="M5hS2">
      <property role="1uS6qv" value="custom" />
      <property role="1uS6qo" value="custom" />
    </node>
  </node>
  <node concept="1TIwiD" id="hOasaTk">
    <property role="TrG5h" value="DeprecatedNodeAnnotation" />
    <property role="3GE5qa" value="deprecatedAnnotation" />
    <property role="1pbfSe" value="175157105" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="PrWs8" id="hOasgxt" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="1PH8wrDG0$q" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
    <node concept="1TJgyi" id="hOYLP83" role="1TKVEl">
      <property role="TrG5h" value="build" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="hOYLQ3C" role="1TKVEl">
      <property role="TrG5h" value="comment" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="M6xJ_" id="6_gUeuqOePe" role="lGtFl">
      <property role="Hh88m" value="deprecatedNode" />
      <node concept="trNpa" id="166$sc$ZIAQ" role="EQaZv">
        <ref role="trN6q" node="hOIDzy1" resolve="IStructureDeprecatable" />
      </node>
    </node>
  </node>
  <node concept="PlHQZ" id="hOIDzy1">
    <property role="TrG5h" value="IStructureDeprecatable" />
    <property role="3GE5qa" value="deprecatedAnnotation" />
    <property role="1pbfSe" value="782645662" />
    <node concept="PrWs8" id="hOIDCJM" role="PrDN$">
      <ref role="PrY4T" to="tpck:hOwnYed" resolve="IDeprecatable" />
    </node>
  </node>
  <node concept="PlHQZ" id="2hxg_BDjKM4">
    <property role="TrG5h" value="IConceptAspect" />
    <property role="1pbfSe" value="229658333" />
  </node>
  <node concept="AxPO7" id="70UXEPd7E3S">
    <property role="3lZH7k" value="custom" />
    <property role="TrG5h" value="InstanceIncomingReferencesPolicy" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="70UXEPd7E9M" role="M5hS2">
      <property role="2fHolG" value="allowed" />
      <property role="1uS6qo" value="allowed" />
    </node>
    <node concept="M4N5e" id="70UXEPd7EbO" role="M5hS2">
      <property role="1uS6qv" value="local" />
      <property role="2fHolG" value="local" />
      <property role="1uS6qo" value="same root only" />
    </node>
    <node concept="M4N5e" id="70UXEPd7EbS" role="M5hS2">
      <property role="1uS6qv" value="forbidden" />
      <property role="2fHolG" value="forbidden" />
      <property role="1uS6qo" value="forbidden" />
    </node>
  </node>
  <node concept="AxPO7" id="2MLIwFLUK_h">
    <property role="3lZH7k" value="custom" />
    <property role="TrG5h" value="ChildrenIncomingReferencesPolicy" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="2MLIwFLUK_i" role="M5hS2">
      <property role="2fHolG" value="allowed" />
      <property role="1uS6qo" value="allowed" />
    </node>
    <node concept="M4N5e" id="2MLIwFLUK_j" role="M5hS2">
      <property role="1uS6qv" value="local" />
      <property role="2fHolG" value="local" />
      <property role="1uS6qo" value="enforce `same root only'" />
    </node>
    <node concept="M4N5e" id="2MLIwFLUK_m" role="M5hS2">
      <property role="1uS6qv" value="forbidden" />
      <property role="2fHolG" value="forbidden" />
      <property role="1uS6qo" value="enforce `forbidden'" />
    </node>
  </node>
  <node concept="AxPO7" id="4G1g3fIR8JB">
    <property role="3lZH7k" value="custom" />
    <property role="TrG5h" value="StaticScope" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="4G1g3fIR8JC" role="M5hS2">
      <property role="2fHolG" value="global" />
      <property role="1uS6qo" value="global" />
    </node>
    <node concept="M4N5e" id="4G1g3fIR8JD" role="M5hS2">
      <property role="1uS6qv" value="root" />
      <property role="2fHolG" value="root" />
      <property role="1uS6qo" value="containing root" />
    </node>
    <node concept="M4N5e" id="4G1g3fIR8JG" role="M5hS2">
      <property role="1uS6qv" value="none" />
      <property role="2fHolG" value="none" />
      <property role="1uS6qo" value="none" />
    </node>
  </node>
  <node concept="1TIwiD" id="2A8AB0r$C6l">
    <property role="TrG5h" value="AttributeInfo" />
    <property role="34LRSv" value="@attribute info" />
    <property role="3GE5qa" value="attribute" />
    <property role="1pbfSe" value="1159404549" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyi" id="6_fwX542K77" role="1TKVEl">
      <property role="TrG5h" value="role" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="6_fwX542JZE" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="multiple" />
      <ref role="20lvS9" node="5g5Zgd9mvvs" resolve="AttributeInfo_IsMultiple" />
    </node>
    <node concept="1TJgyj" id="6_fwX53_MKe" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="attributed" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5g5Zgd9qGH9" resolve="AttributeInfo_AttributedConcept" />
    </node>
    <node concept="M6xJ_" id="6_gUeuqOeTg" role="lGtFl">
      <property role="Hh88m" value="attributeInfo" />
      <node concept="tn0Fv" id="166$sc$NVlM" role="HhnKV">
        <property role="tnX3d" value="false" />
      </node>
      <node concept="trNpa" id="166$sc$ZIAG" role="EQaZv">
        <ref role="trN6q" node="f_TIwhg" resolve="ConceptDeclaration" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="5g5Zgd9mvvs">
    <property role="3GE5qa" value="attribute" />
    <property role="TrG5h" value="AttributeInfo_IsMultiple" />
    <property role="1pbfSe" value="1654655777" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5g5Zgd9myRe" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="166$sc$H4fp" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="5g5Zgd9qGH9">
    <property role="3GE5qa" value="attribute" />
    <property role="TrG5h" value="AttributeInfo_AttributedConcept" />
    <property role="1pbfSe" value="1653553076" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5g5Zgd9qGMp" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="PlHQZ" id="4Xny4S7K8wS">
    <property role="TrG5h" value="ReferenceLinkDeclartionScopeKind" />
    <property role="3GE5qa" value="scope" />
    <property role="1pbfSe" value="1461194886" />
  </node>
  <node concept="PlHQZ" id="4Xny4S7K8CL">
    <property role="3GE5qa" value="scope" />
    <property role="TrG5h" value="AggregationLinkDeclarationScopeKind" />
    <property role="1pbfSe" value="1461195391" />
  </node>
</model>

