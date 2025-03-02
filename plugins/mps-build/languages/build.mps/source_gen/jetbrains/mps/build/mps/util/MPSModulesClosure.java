package jetbrains.mps.build.mps.util;

/*Generated by MPS */

import java.util.LinkedHashSet;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.iterable.RecursiveIterator;
import java.util.Iterator;
import java.util.HashSet;
import jetbrains.mps.build.mps.behavior.BuildMps_Generator_BehaviorDescriptor;
import java.util.List;

public class MPSModulesClosure {
  private LinkedHashSet<SNode> modules = new LinkedHashSet<SNode>();
  private Set<SNode> devkits = new LinkedHashSet<SNode>();
  private LinkedHashSet<SNode> languagesWithRuntime = new LinkedHashSet<SNode>();
  private Iterable<SNode> initialModules;
  private boolean skipExternalModules = false;
  private boolean trackDevkits = false;
  public MPSModulesClosure(SNode initialModule) {
    this.initialModules = Sequence.<SNode>singleton(initialModule);
  }
  public MPSModulesClosure(Iterable<SNode> initialModules) {
    this.initialModules = SNodeOperations.ofConcept(initialModules, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, "jetbrains.mps.build.mps.structure.BuildMps_Module"));
    SNode containingRoot = SNodeOperations.getContainingRoot(Sequence.fromIterable(initialModules).first());
    for (SNode m : Sequence.fromIterable(initialModules)) {
      if (containingRoot != SNodeOperations.getContainingRoot(m)) {
        throw new IllegalArgumentException("all modules should be from the same root");
      }
    }
  }
  private SNode toOriginal(SNode node) {
    if (node == null) {
      return null;
    }
    if (SNodeOperations.getContainingRoot(node) == SNodeOperations.getContainingRoot(Sequence.fromIterable(initialModules).first())) {
      return node;
    }
    if (skipExternalModules) {
      return null;
    }
    return node;
  }
  private Iterable<SNode> toOriginal(Iterable<SNode> modules) {
    return Sequence.fromIterable(modules).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return toOriginal(it);
      }
    }).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return it != null;
      }
    });
  }
  private Iterable<SNode> toOriginalLangs(Iterable<SNode> langs) {
    return Sequence.fromIterable(langs).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SNodeOperations.as(toOriginal(it), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f8L, "jetbrains.mps.build.mps.structure.BuildMps_Language"));
      }
    }).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return it != null;
      }
    });
  }
  private Iterable<SNode> dependencies(SNode module) {
    return ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, 0x48e82d5083341cb8L, "dependencies"))).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return (SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x64bd442e1cf7aaeeL, "jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency")) ? SLinkOperations.getTarget(SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x64bd442e1cf7aaeeL, "jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency")), MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x64bd442e1cf7aaeeL, 0x64bd442e1cf7aaefL, "dependency")) : it);
      }
    });
  }
  private Iterable<SNode> getDependencies(SNode module, final boolean reexportOnly) {
    Iterable<SNode> dependencies = Sequence.fromIterable(SNodeOperations.ofConcept(dependencies(module), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule"))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return (!(reexportOnly) || SPropertyOperations.getBoolean(it, MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, 0x48e82d5083341cc1L, "reexport")));
      }
    }).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, 0x48e82d5083341cb9L, "module"));
      }
    });

    // add extended langs 
    dependencies = Sequence.fromIterable(dependencies).concat(Sequence.fromIterable(SNodeOperations.ofConcept(dependencies(module), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c19032eL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage"))).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c19032eL, 0x3b60c4a45c190330L, "language"));
      }
    }));

    if (reexportOnly) {
      return toOriginal(dependencies);
    }

    Iterable<SNode> usedDevkits = Sequence.fromIterable(includingExtended(usedDevkits(module))).toListSequence();
    if (trackDevkits) {
      SetSequence.fromSet(devkits).addSequence(Sequence.fromIterable(usedDevkits));
    }
    Iterable<SNode> solutionsFromDevkits = Sequence.fromIterable(usedDevkits).translate(new ITranslator2<SNode, SNode>() {
      public Iterable<SNode> translate(SNode it) {
        return Sequence.fromIterable(SNodeOperations.ofConcept(SLinkOperations.getChildren(it, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d2060eL, 0x4780308f5d29d82L, "exports")), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d29d7aL, "jetbrains.mps.build.mps.structure.BuildMps_DevKitExportSolution"))).select(new ISelector<SNode, SNode>() {
          public SNode select(SNode iit) {
            return SLinkOperations.getTarget(iit, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d29d7aL, 0x4780308f5d29d7bL, "solution"));
          }
        });
      }
    });
    // "core" language is added in loadModules pre-script 
    return toOriginal(IterableUtil.distinct(IterableUtil.merge(dependencies, solutionsFromDevkits)));
  }
  private Iterable<SNode> getUsedLanguages(SNode module) {
    Iterable<SNode> usedLangs = Sequence.fromIterable(SNodeOperations.ofConcept(dependencies(module), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643d2d2L, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyUseLanguage"))).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643d2d2L, 0x2c4467914643d2d3L, "language"));
      }
    });

    Iterable<SNode> usedDevkits = Sequence.fromIterable(includingExtended(usedDevkits(module))).toListSequence();
    if (trackDevkits) {
      SetSequence.fromSet(devkits).addSequence(Sequence.fromIterable(usedDevkits));
    }
    Iterable<SNode> languagesFromDevkits = Sequence.fromIterable(usedDevkits).translate(new ITranslator2<SNode, SNode>() {
      public Iterable<SNode> translate(SNode it) {
        return Sequence.fromIterable(SNodeOperations.ofConcept(SLinkOperations.getChildren(it, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d2060eL, 0x4780308f5d29d82L, "exports")), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d29d6aL, "jetbrains.mps.build.mps.structure.BuildMps_DevKitExportLanguage"))).select(new ISelector<SNode, SNode>() {
          public SNode select(SNode iit) {
            return SLinkOperations.getTarget(iit, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d29d6aL, 0x4780308f5d29d73L, "language"));
          }
        });
      }
    });

    // use "core" language is added in loadModules pre-script 
    return toOriginalLangs(includingExtendedLanguages(IterableUtil.merge(usedLangs, languagesFromDevkits)));
  }
  private Iterable<SNode> usedDevkits(SNode module) {
    return Sequence.fromIterable(SNodeOperations.ofConcept(dependencies(module), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d5bc49L, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnDevKit"))).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d5bc49L, 0x4780308f5d5bc4aL, "devkit"));
      }
    });
  }
  private Iterable<SNode> includingExtended(Iterable<SNode> devkits) {
    return new RecursiveIterator<SNode>(devkits, false) {
      @Override
      protected Iterator<SNode> children(SNode node) {
        return ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d2060eL, 0x4780308f5d23142L, "extends"))).where(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return (SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d2313aL, 0x4780308f5d2313bL, "devkit")) != null);
          }
        }).select(new ISelector<SNode, SNode>() {
          public SNode select(SNode it) {
            return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d2313aL, 0x4780308f5d2313bL, "devkit"));
          }
        }).iterator();
      }
    };
  }
  private Iterable<SNode> includingExtendedLanguages(Iterable<SNode> langs) {
    return new RecursiveIterator<SNode>(langs, false) {
      @Override
      protected Iterator<SNode> children(SNode node) {
        return Sequence.fromIterable(SNodeOperations.ofConcept(dependencies(node), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c19032eL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage"))).select(new ISelector<SNode, SNode>() {
          public SNode select(SNode it) {
            return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c19032eL, 0x3b60c4a45c190330L, "language"));
          }
        }).iterator();
      }
    };
  }
  private Iterable<SNode> usedGenerators(Iterable<SNode> generators) {
    return new RecursiveIterator<SNode>(generators, false) {
      protected Iterator<SNode> children(SNode generator) {
        return Sequence.fromIterable(SNodeOperations.ofConcept(Sequence.fromIterable(SNodeOperations.ofConcept(dependencies(generator), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule"))).where(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return (SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, 0x48e82d5083341cb9L, "module")) != null);
          }
        }).select(new ISelector<SNode, SNode>() {
          public SNode select(SNode it) {
            return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, 0x48e82d5083341cb9L, "module"));
          }
        }), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4c6db07d2e56a8b4L, "jetbrains.mps.build.mps.structure.BuildMps_Generator"))).iterator();
      }
    };
  }
  private void collectDependencies(Iterable<SNode> sequence, boolean reexportOnly) {
    if (Sequence.fromIterable(sequence).isEmpty()) {
      return;
    }
    Set<SNode> dependencies = SetSequence.fromSet(new HashSet<SNode>());
    for (SNode module : Sequence.fromIterable(sequence)) {
      SetSequence.fromSet(dependencies).addSequence(Sequence.fromIterable(getDependencies(module, reexportOnly)));
    }
    SetSequence.fromSet(dependencies).removeSequence(SetSequence.fromSet(modules));
    modules.addAll(dependencies);
    collectDependencies(dependencies, reexportOnly);
  }
  private void collectAllUsedLanguageRuntimesAndTheirDeps(Iterable<SNode> sequence) {
    if (Sequence.fromIterable(sequence).isEmpty()) {
      return;
    }
    Set<SNode> langs = SetSequence.fromSet(new HashSet<SNode>());
    Set<SNode> solutions = SetSequence.fromSet(new HashSet<SNode>());
    for (SNode module : Sequence.fromIterable(sequence)) {
      fillUsedLanguageRuntimes(module, langs, solutions);
    }
    SetSequence.fromSet(solutions).removeSequence(SetSequence.fromSet(modules));
    modules.addAll(solutions);
    languagesWithRuntime.addAll(langs);
    collectDependencies(((Iterable<SNode>) solutions), false);
    collectAllUsedLanguageRuntimesAndTheirDeps(((Iterable<SNode>) solutions));
  }
  private void collectGeneratorsDependendencies(Iterable<SNode> languages) {
    if (Sequence.fromIterable(languages).isEmpty()) {
      return;
    }
    Set<SNode> extraLangs = SetSequence.fromSet(new HashSet<SNode>());
    for (SNode g : Sequence.fromIterable(languages).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return (SLinkOperations.getTarget(it, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f8L, 0x7fae147806433827L, "generator")) != null);
      }
    }).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SLinkOperations.getTarget(it, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f8L, 0x7fae147806433827L, "generator"));
      }
    })) {
      if (g == null) {
        continue;
      }
      Iterable<SNode> deps = Sequence.fromIterable(SNodeOperations.ofConcept(dependencies(g), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule"))).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return (SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, 0x48e82d5083341cb9L, "module")) != null);
        }
      }).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode it) {
          return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, 0x48e82d5083341cb9L, "module"));
        }
      });
      Iterable<SNode> usedLangs = Sequence.fromIterable(SNodeOperations.ofConcept(dependencies(g), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643d2d2L, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyUseLanguage"))).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return (SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643d2d2L, 0x2c4467914643d2d3L, "language")) != null);
        }
      }).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode it) {
          return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643d2d2L, 0x2c4467914643d2d3L, "language"));
        }
      });

      // I'm not quite sure it's possible to depend directly from generator module. 
      // Instead introduce a dependency from generator's source language 
      SetSequence.fromSet(extraLangs).addSequence(Sequence.fromIterable(SNodeOperations.ofConcept(deps, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4c6db07d2e56a8b4L, "jetbrains.mps.build.mps.structure.BuildMps_Generator"))).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode it) {
          return BuildMps_Generator_BehaviorDescriptor.getSourceLanguage_id7YI57w6ZMdZ.invoke(it);
        }
      }).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return it != null;
        }
      }));
      // any language generator depends from are better to be there, too. 
      SetSequence.fromSet(extraLangs).addSequence(Sequence.fromIterable(SNodeOperations.ofConcept(deps, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f8L, "jetbrains.mps.build.mps.structure.BuildMps_Language"))));
      SetSequence.fromSet(extraLangs).addSequence(Sequence.fromIterable(usedLangs));
      modules.addAll(Sequence.fromIterable(SNodeOperations.ofConcept(deps, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f7L, "jetbrains.mps.build.mps.structure.BuildMps_Solution"))).toListSequence());
    }
    SetSequence.fromSet(extraLangs).removeSequence(SetSequence.fromSet(modules));
    modules.addAll(extraLangs);
    collectGeneratorsDependendencies(extraLangs);
  }
  public MPSModulesClosure reset() {
    modules.clear();
    languagesWithRuntime.clear();
    SetSequence.fromSet(devkits).clear();
    skipExternalModules = false;
    trackDevkits = false;
    return this;
  }

  /**
   * To compile, module needs its direct dependencies, plus re-exported dependencies of those.
   * RTs of used languages and their dependencies won't hurt either.
   */
  public MPSModulesClosure closure() {
    // get all direct dependencies abd runtimes, plus re-exported dependencies thereof. 
    Set<SNode> langs = SetSequence.fromSet(new HashSet<SNode>());
    Set<SNode> solutions = SetSequence.fromSet(new HashSet<SNode>());

    for (SNode module : Sequence.fromIterable(initialModules)) {
      List<SNode> firstLevelDeps = Sequence.fromIterable(getDependencies(module, false)).toListSequence();
      collectDependencies(firstLevelDeps, true);
      fillUsedLanguageRuntimes(module, langs, solutions);
      modules.addAll(firstLevelDeps);
    }
    modules.addAll(solutions);
    languagesWithRuntime.addAll(langs);
    collectDependencies(((Iterable<SNode>) solutions), true);
    modules.removeAll(Sequence.fromIterable(initialModules).toListSequence());
    return this;
  }

  /**
   * To start, module needs all its dependencies plus RTs of languages it uses.
   * However, its use in mps.build.mps generator is dubious, as it merely adds rt dependencies of specific module
   * to the list of external (for the current project) modules.
   * 
   * Its use in MPSModulesPartitioner is another way of saying "if I generate a model and there's a language, which has runtime coming from another build script, add it to dependencies"
   * Although it's not clear why would one need language runtime during generation.
   * XXX Perhaps, {@link jetbrains.mps.build.mps.util.MPSModulesClosure#generationDependenciesClosure() } shall collect module's dependencies (collectDependencies(false)) instead
   */
  public MPSModulesClosure runtimeClosure() {
    collectDependencies(initialModules, false);
    collectAllUsedLanguageRuntimesAndTheirDeps(initialModules);
    modules.removeAll(Sequence.fromIterable(initialModules).toListSequence());
    return this;
  }

  /**
   * Looks like an attempt to replace MPSModulePartitioner.getExternal() + runtimeClosure() (i.e. expand external dependencies with dependencies from this project)
   * We use this to populate libraries of Environment for our tasks (MpsWorker) to start MPS with specific set of modules (hence we need a closure of modules for MPS to start properly).
   */
  public MPSModulesClosure designtimeClosure() {
    // direct and indirect dependencies of the modules, languages used and their runtimes 
    collectDependencies(initialModules, false);
    collectAllUsedLanguageRuntimesAndTheirDeps(initialModules);
    for (SNode m : Sequence.fromIterable(initialModules)) {
      Iterable<SNode> usedLanguages = getUsedLanguages(m);
      collectDependencies(usedLanguages, false);
      collectAllUsedLanguageRuntimesAndTheirDeps(usedLanguages);
      modules.addAll(Sequence.fromIterable(usedLanguages).toListSequence());
    }
    modules.removeAll(Sequence.fromIterable(initialModules).toListSequence());
    return this;
  }

  /**
   * To generate a module, we need its languages and all their dependencies.
   * Unlike {@link jetbrains.mps.build.mps.util.MPSModulesClosure#runtimeClosure() } or {@link jetbrains.mps.build.mps.util.MPSModulesClosure#designtimeClosure() }, dependencies of the module itself (aka classpath) doesn't look
   * that imporant (although what if there's utility class in the generator, which depends on external module, and is queried during generation?)
   */
  public MPSModulesClosure generationDependenciesClosure() {
    // direct and indirect dependencies of used languages and their runtimes; source languages of generators involved 
    for (SNode m : Sequence.fromIterable(initialModules)) {
      Iterable<SNode> usedLanguages = getUsedLanguages(m);
      collectDependencies(usedLanguages, false);
      collectAllUsedLanguageRuntimesAndTheirDeps(usedLanguages);
      modules.addAll(Sequence.fromIterable(usedLanguages).toListSequence());
      collectGeneratorsDependendencies(usedLanguages);
    }
    return this;
  }

  /**
   * This is what we list as module dependencies in module.xml
   * I have no idea why it's a list of runtime solutions of used languages.
   * As long as we distribute (and process) original module descriptor in src.jar, it seems these dependencies 
   * (ModuleDescriptor.getDeploymentDescriptor().getDependencies()) are irrelevant.
   */
  public MPSModulesClosure runtimeDependencies() {
    // direct dependencies of used languages' runtime solutions 
    if (Sequence.fromIterable(initialModules).count() != 1) {
      throw new IllegalStateException("cannot build runtime dependencies for several modules");
    }

    SNode initial = Sequence.fromIterable(initialModules).first();
    Set<SNode> langs = SetSequence.fromSet(new HashSet<SNode>());
    Set<SNode> solutions = SetSequence.fromSet(new HashSet<SNode>());
    fillUsedLanguageRuntimes(initial, langs, solutions);
    modules.addAll(solutions);
    languagesWithRuntime.addAll(langs);
    return this;
  }
  private void fillUsedLanguageRuntimes(SNode m, Set<SNode> runtimeLanguages, Set<SNode> runtimeSolutions) {
    for (SNode language : getUsedLanguages(m)) {
      boolean hasRuntime = false;
      for (SNode rdep : SLinkOperations.getChildren(language, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f8L, 0x2c4467914643be24L, "runtime"))) {
        if (!(SNodeOperations.isInstanceOf(rdep, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914644b6e3L, "jetbrains.mps.build.mps.structure.BuildMps_ModuleSolutionRuntime")))) {
          hasRuntime = true;
          continue;
        }
        SNode runtimeSolution = SNodeOperations.as(toOriginal(SLinkOperations.getTarget(SNodeOperations.cast(rdep, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914644b6e3L, "jetbrains.mps.build.mps.structure.BuildMps_ModuleSolutionRuntime")), MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914644b6e3L, 0x2c4467914644b6e4L, "solution"))), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f7L, "jetbrains.mps.build.mps.structure.BuildMps_Solution"));
        if (runtimeSolution != null) {
          SetSequence.fromSet(runtimeSolutions).addElement(runtimeSolution);
        }
      }
      if (hasRuntime) {
        SetSequence.fromSet(runtimeLanguages).addElement(language);
      }
    }
  }
  public MPSModulesClosure.RequiredJavaModules getRequiredJava() {
    Iterable<SNode> reexportedFromModuleDependencies = Sequence.fromIterable(getModules()).concat(Sequence.fromIterable(initialModules)).translate(new ITranslator2<SNode, SNode>() {
      public Iterable<SNode> translate(SNode mod) {
        return ListSequence.fromList(SLinkOperations.getChildren(mod, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, 0x48e82d5083341cb8L, "dependencies"))).where(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnJavaModule")) && SPropertyOperations.getBoolean(SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnJavaModule")), MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, 0x2c4467914643e8fcL, "reexport"));
          }
        }).select(new ISelector<SNode, SNode>() {
          public SNode select(SNode it) {
            return SLinkOperations.getTarget(SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnJavaModule")), MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, 0x2c4467914643e8fdL, "module"));
          }
        });
      }
    });
    Set<SNode> reexportMods = SetSequence.fromSet(new HashSet<SNode>());
    for (SNode mod : reexportedFromModuleDependencies) {
      SetSequence.fromSet(reexportMods).addElement(mod);
    }

    Iterable<SNode> directDeps = Sequence.fromIterable(SNodeOperations.ofConcept(Sequence.fromIterable(initialModules).translate(new ITranslator2<SNode, SNode>() {
      public Iterable<SNode> translate(SNode it) {
        return SLinkOperations.getChildren(it, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, 0x48e82d5083341cb8L, "dependencies"));
      }
    }), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnJavaModule"))).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, 0x2c4467914643e8fdL, "module"));
      }
    });
    return new MPSModulesClosure.RequiredJavaModules(Sequence.fromIterable(reexportedFromModuleDependencies).concat(Sequence.fromIterable(directDeps)), reexportMods);
  }
  public Iterable<SNode> getModules() {
    return modules;
  }
  public Iterable<SNode> getLanguagesWithRuntime() {
    return languagesWithRuntime;
  }
  public Iterable<SNode> getAllModules() {
    return Sequence.fromIterable(((Iterable<SNode>) modules)).concat(Sequence.fromIterable((Iterable<SNode>) languagesWithRuntime)).concat(Sequence.fromIterable((Iterable<SNode>) devkits));
  }
  public SNode getInitial() {
    return Sequence.fromIterable(initialModules).first();
  }
  public MPSModulesClosure skipExternalModules() {
    this.skipExternalModules = true;
    return this;
  }
  public MPSModulesClosure trackDevkits() {
    this.trackDevkits = true;
    return this;
  }
  public static class RequiredJavaModules {
    private Iterable<SNode> modules;
    private Set<SNode> reexported;
    public RequiredJavaModules(Iterable<SNode> modules, Set<SNode> reexported) {
      this.modules = modules;
      this.reexported = reexported;
    }
    public Iterable<SNode> getModules() {
      return modules;
    }
    public boolean isReexported(SNode mod) {
      return SetSequence.fromSet(reexported).contains(mod);
    }
  }
}
