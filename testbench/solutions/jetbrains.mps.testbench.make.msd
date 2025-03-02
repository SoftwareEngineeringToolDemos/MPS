<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.testbench.make" uuid="79f9d103-4ff6-4def-9c1a-27070f9ba255" compileInMPS="false" generatorOutputPath="${mps_home}/testbench/tests_gen">
  <models>
    <modelRoot contentPath="${mps_home}/lib" type="java_classes">
      <sourceRoot location="diffutils-1.2.1.jar" />
    </modelRoot>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="." />
    </modelRoot>
  </models>
  <facets>
    <facet pluginId="com.intellij" type="ideaPlugin" />
  </facets>
  <stubModelEntries>
    <stubModelEntry path="${mps_home}/lib/diffutils-1.2.1.jar" />
  </stubModelEntries>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
    <dependency reexport="false">8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)</dependency>
    <dependency reexport="false">742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)</dependency>
    <dependency reexport="false">86441d7a-e194-42da-81a5-2161ec62a379(MPS.Workbench)</dependency>
    <dependency reexport="false">7a0c7a21-43a3-4bb4-b898-a819ebed44a5(closures.test)</dependency>
    <dependency reexport="false">fb186431-2788-490b-9e84-c2b84ef0ca77(collections_trove.test)</dependency>
    <dependency reexport="false">39a1a79d-8ae2-4e54-a86a-8f7b9e17e2fe(collections_unittest)</dependency>
    <dependency reexport="false">b5660d3a-8a0d-4815-881b-7c884f61c9c7(internalCollections.test)</dependency>
    <dependency reexport="false">fa54094d-fc7a-4393-885f-13866cecf3f3(jetbrains.mps.baseLanguage.closures.unittest)</dependency>
    <dependency reexport="false">0528d773-6535-46f8-89a2-16a3751e6ab5(jetbrains.mps.baseLanguage.doubleDispatch.test)</dependency>
    <dependency reexport="false">9cc656d8-ed07-4493-9531-69f1c9c308c5(jetbrains.mps.baseLanguage.math.tests)</dependency>
    <dependency reexport="false">19cb79b5-ebc3-43ce-9f4c-d4bdce7013ab(jetbrains.mps.baseLanguage.regexp.unittest)</dependency>
    <dependency reexport="false">9c8b4b95-5d89-4201-ad78-0b2db3a22768(jetbrains.mps.baseLanguage.test)</dependency>
    <dependency reexport="false">993e3b08-9f44-43cf-b983-e474ac66855b(jetbrains.mps.baseLanguage.tuples.test)</dependency>
    <dependency reexport="false">83f155ff-422c-4b5a-a2f2-b459302dd215(jetbrains.mps.baseLanguage.unitTest.libs)</dependency>
    <dependency reexport="false">444220d9-055e-44dd-a551-ed91c97d5067(jetbrains.mps.baseLanguage.unitTest.sandbox)</dependency>
    <dependency reexport="false">e60b351d-8d80-4c13-8ad4-3e4759e2a3ea(jetbrains.mps.baseLanguage.unittest)</dependency>
    <dependency reexport="false">4831e627-794e-416a-983a-50889cae21f8(jetbrains.mps.baseLanguageInternal.test)</dependency>
    <dependency reexport="false">c9bc8834-ad52-4c80-83d0-64827cf13fae(jetbrains.mps.build.stripping.tests)</dependency>
    <dependency reexport="false">39742b07-848c-43a7-be0a-845055dd3333(jetbrains.mps.build.tests)</dependency>
    <dependency reexport="false">70b17f0c-ff72-43e8-9468-eda69efb2b71(jetbrains.mps.debugger.java.runtime.tests)</dependency>
    <dependency reexport="false">50fc24f9-2bc9-4702-84ed-7f00cd088aca(jetbrains.mps.generator.tests)</dependency>
    <dependency reexport="false">c3786d2b-aba2-45e5-8de0-1124fd14259b(jetbrains.mps.ide.java.tests)</dependency>
    <dependency reexport="false">9dc77d7d-3b66-403c-b568-37677f157448(jetbrains.mps.ide.vcs.test)</dependency>
    <dependency reexport="false">2d3c70e9-aab2-4870-8d8d-6036800e4103(jetbrains.mps.kernel)</dependency>
    <dependency reexport="false">4076bab3-4981-4035-94aa-19b6b4c51a84(jetbrains.mps.kernel.tests)</dependency>
    <dependency reexport="false">6ed0339f-b777-4ada-9cf7-73354b12f191(jetbrains.mps.lang.actions.test)</dependency>
    <dependency reexport="false">ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)</dependency>
    <dependency reexport="false">779ae18b-ee98-406e-94fd-dec40c78b92f(jetbrains.mps.lang.editor.diagram.tests)</dependency>
    <dependency reexport="false">3c41aa01-5120-470c-8122-06f284bc0419(jetbrains.mps.lang.editor.multiple.tests)</dependency>
    <dependency reexport="false">69de002c-bbba-40be-be5b-f3a6e61ea828(jetbrains.mps.lang.editor.table.tests)</dependency>
    <dependency reexport="false">7597197a-bad8-4672-9806-215a3efe8740(jetbrains.mps.lang.editor.tests)</dependency>
    <dependency reexport="false">bdcad511-2c95-4b17-90fb-99b248f018cc(jetbrains.mps.lang.extension.tests)</dependency>
    <dependency reexport="false">d4650c60-7bd2-4b0f-94fb-1b0e16cc8290(jetbrains.mps.lang.pattern.test)</dependency>
    <dependency reexport="false">982eb8df-2c96-4bd7-9963-11712ea622e5(jetbrains.mps.lang.resources)</dependency>
    <dependency reexport="false">d51c8d2d-7b6e-4d93-9eee-b55b04c5886b(jetbrains.mps.lang.smodel.unittest)</dependency>
    <dependency reexport="false">ab46529e-de2c-48b6-80f0-9ec2d78b7df3(jetbrains.mps.lang.test.sandbox)</dependency>
    <dependency reexport="false">f5b70e84-5208-49eb-a417-d53c9f82bdf2(jetbrains.mps.lang.traceable.operations.test)</dependency>
    <dependency reexport="false">20351dc3-a2df-46f5-b667-fc9adab1f1c9(jetbrains.mps.make)</dependency>
    <dependency reexport="false">f8e20673-3f65-44e9-84c0-c4a4b6ede37e(jetbrains.mps.make.facets)</dependency>
    <dependency reexport="false">a1250a4d-c090-42c3-ad7c-d298a3357dd4(jetbrains.mps.make.runtime)</dependency>
    <dependency reexport="false">ad44d830-d9b6-4c92-9e56-821fcc11b493(jetbrains.mps.make.tests)</dependency>
    <dependency reexport="false">5cc84139-6daa-4cf6-9a75-d1505100aeb4(jetbrains.mps.migration.test)</dependency>
    <dependency reexport="false">45571709-5529-4a2c-94c9-5b0e2469ad35(jetbrains.mps.samples.agreement.framework)</dependency>
    <dependency reexport="false">086f6299-eca0-43c4-bbca-fab3f95963aa(jetbrains.mps.samples.secretCompartment.runtime)</dependency>
    <dependency reexport="false">761394b7-dc42-4fe5-adc7-1d9ff2aa76e6(jetbrains.mps.samples.xmlPersistence)</dependency>
    <dependency reexport="false">df9d410f-2ebb-43f7-893a-483a4f085250(jetbrains.mps.smodel.resources)</dependency>
    <dependency reexport="false">d2213aeb-6827-43e6-8179-d5886cfd0bb6(jetbrains.mps.smodel.test)</dependency>
    <dependency reexport="false">ae6cedf1-e261-45d9-972d-e8cfbc5e7f52(jetbrains.mps.testActions)</dependency>
    <dependency reexport="false">3d09e340-55d4-4ddc-8195-a92c0c5cf603(jetbrains.mps.testRead)</dependency>
    <dependency reexport="false">e9000334-f5e2-4a2f-a0fc-9afd1d31e048(jetbrains.mps.testbench)</dependency>
    <dependency reexport="false">415bc577-86ca-46a6-b873-4670fd19e169(jetbrains.mps.traceInfo.test)</dependency>
    <dependency reexport="false">dc080be0-da6e-4885-aed0-7d999c120619(jetbrains.mps.traceInfo.testWeaving)</dependency>
    <dependency reexport="false">cdd4e8a8-17c1-4f16-b054-27e94948bd47(jetbrains.mps.transformation.test.inputModels)</dependency>
    <dependency reexport="false">b3170ec7-82d9-4e10-a3f0-31baa75ffc0c(testSubtypingTest)</dependency>
    <dependency reexport="false">4c6a90ca-b7fe-4942-9ee4-58e09ff23d6d(tests.testDepViewer)</dependency>
    <dependency reexport="false">f2f32c65-17db-4e68-ad2f-8b0e2554dbd6(tests.testPersistence)</dependency>
    <dependency reexport="false">2f5af9e7-34c8-45f3-b417-4dcbb52409b8(testPackagedLanguage.test)</dependency>
    <dependency reexport="false">f4227833-0d14-4ab5-8560-70880fd9d5ef(testSubstituteType)</dependency>
    <dependency reexport="false">fdaaf35f-8ee3-4c37-b09d-9efaeaaa7a41(jetbrains.mps.core.tool.environment)</dependency>
  </dependencies>
  <languageVersions>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" fqName="jetbrains.mps.baseLanguage" version="3" />
    <language id="ed6d7656-532c-4bc2-81d1-af945aeb8280" fqName="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <language id="fd392034-7849-419d-9071-12563d152375" fqName="jetbrains.mps.baseLanguage.closures" version="0" />
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" fqName="jetbrains.mps.baseLanguage.collections" version="0" />
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" fqName="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" fqName="jetbrains.mps.baseLanguage.tuples" version="0" />
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" fqName="jetbrains.mps.lang.access" version="0" />
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" fqName="jetbrains.mps.lang.core" version="1" />
    <language id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" fqName="jetbrains.mps.lang.traceable" version="0" />
    <language id="696c1165-4a59-463b-bc5d-902caab85dd0" fqName="jetbrains.mps.make.facet" version="0" />
    <language id="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b" fqName="jetbrains.mps.make.script" version="0" />
    <language id="d3c5a46f-b8c2-47db-ad0a-30b8f19c2055" fqName="jetbrains.mps.testbench.suite" version="0" />
  </languageVersions>
</solution>

