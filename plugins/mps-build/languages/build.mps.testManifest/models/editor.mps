<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:62b685a8-caa0-436e-bd8f-043142e659b2(jetbrains.mps.build.mps.testManifest.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
    <import index="jjwj" ref="r:d58a0a69-0655-46ea-90b9-604f6da8b24f(jetbrains.mps.build.mps.testManifest.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="928328222691832421" name="separatorTextQuery" index="2gpyvW" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="709996738298806197" name="jetbrains.mps.lang.editor.structure.QueryFunction_SeparatorText" flags="in" index="2o9xnK" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="2R6x4AnxQyd">
    <ref role="1XX52x" to="jjwj:2R6x4AnxQy2" resolve="TestModuleManifest" />
    <node concept="3EZMnI" id="2R6x4AnxQyf" role="2wV5jI">
      <node concept="3EZMnI" id="2R6x4AnxQym" role="3EZMnx">
        <node concept="VPM3Z" id="2R6x4AnxQyo" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="PMmxH" id="6DW_AMAxcuI" role="3EZMnx">
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        </node>
        <node concept="3F0A7n" id="6DW_AMAxf1l" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="l2Vlx" id="2R6x4AnxQyr" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="2R6x4AnxSCR" role="3EZMnx" />
      <node concept="3F0ifn" id="vgcurbB05n" role="3EZMnx">
        <property role="3F0ifm" value="languages:" />
      </node>
      <node concept="3F2HdR" id="vgcurbAZYK" role="3EZMnx">
        <ref role="1NtTu8" to="jjwj:vgcurbAYi0" />
        <node concept="2iRkQZ" id="vgcurbAZYM" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="2R6x4AnxQyi" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2R6x4Anyb5O">
    <ref role="1XX52x" to="jjwj:2R6x4AnxQy5" resolve="TestProjectConfiguration" />
    <node concept="3EZMnI" id="2R6x4Anyb5Q" role="2wV5jI">
      <node concept="3F0A7n" id="2R6x4Anyb67" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2R6x4Anyb6j" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="ljvvj" id="6DW_AMA$82I" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="6DW_AMA$83Y" role="3EZMnx">
        <node concept="VPM3Z" id="6DW_AMA$840" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="6DW_AMA$843" role="2iSdaV" />
        <node concept="lj46D" id="6DW_AMA$84y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="6DW_AMA$8H0" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="ljvvj" id="6DW_AMA$8Hl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="6DW_AMA$3CO" role="3EZMnx">
          <node concept="lj46D" id="6DW_AMA$7kP" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPM3Z" id="6DW_AMA$3CQ" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="6DW_AMA$3CS" role="3EZMnx">
            <property role="3F0ifm" value="generate in: " />
          </node>
          <node concept="l2Vlx" id="6DW_AMA$3CT" role="2iSdaV" />
          <node concept="3F1sOY" id="6DW_AMA$3Dk" role="3EZMnx">
            <ref role="1NtTu8" to="jjwj:6DW_AMA$3Cx" />
          </node>
          <node concept="ljvvj" id="6DW_AMA$82J" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="2R6x4Anyb9p" role="3EZMnx">
          <node concept="ljvvj" id="6DW_AMA$82K" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="2R6x4Anyb8L" role="3EZMnx">
          <node concept="lj46D" id="6DW_AMA$7mF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPM3Z" id="2R6x4Anyb8N" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F2HdR" id="2R6x4AnydJa" role="3EZMnx">
            <property role="2czwfO" value=" " />
            <ref role="1NtTu8" to="jjwj:2R6x4AnydJ4" />
            <node concept="l2Vlx" id="2R6x4AnydJc" role="2czzBx" />
            <node concept="tppnM" id="6DW_AMABklN" role="sWeuL">
              <node concept="ljvvj" id="6DW_AMABklP" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="ljvvj" id="6DW_AMABknv" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="2o9xnK" id="6DW_AMABlFa" role="2gpyvW">
              <node concept="3clFbS" id="6DW_AMABlFb" role="2VODD2">
                <node concept="3clFbF" id="6DW_AMABlKf" role="3cqZAp">
                  <node concept="Xl_RD" id="6DW_AMABlKe" role="3clFbG">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="l2Vlx" id="2R6x4Anyb8Q" role="2iSdaV" />
          <node concept="ljvvj" id="6DW_AMA$82L" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="2R6x4Anyc6n" role="3EZMnx">
          <node concept="ljvvj" id="6DW_AMA$82M" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2R6x4Anyb7y" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="ljvvj" id="6DW_AMA$82N" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6DW_AMA$82O" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2R6x4Anyc7c">
    <ref role="1XX52x" to="jjwj:2R6x4Anyc74" resolve="TestModuleManifestRef" />
    <node concept="3EZMnI" id="2R6x4Anyc7e" role="2wV5jI">
      <node concept="1iCGBv" id="2R6x4Anyc7l" role="3EZMnx">
        <ref role="1NtTu8" to="jjwj:2R6x4Anyc75" />
        <node concept="1sVBvm" id="2R6x4Anyc7n" role="1sWHZn">
          <node concept="3F0A7n" id="2R6x4Anyc7u" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2R6x4Anyc7h" role="2iSdaV" />
    </node>
  </node>
</model>

