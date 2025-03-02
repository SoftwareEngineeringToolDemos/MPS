/*
 * Copyright 2003-2014 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.util;

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.MPSClassesListener;
import jetbrains.mps.classloading.MPSClassesListenerAdapter;
import jetbrains.mps.classloading.ModuleIsNotLoadableException;
import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.module.ReloadableModuleBase;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.IllegalModelChangeError;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.util.containers.ConcurrentHashSet;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SModule;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class QueryMethodGenerated implements CoreComponent {
  private static final Logger LOG = LogManager.getLogger(QueryMethodGenerated.class);

  private static QueryMethodGenerated ourInstance;

  private ConcurrentMap<SModelReference, Map<String, Method>> myMethods = new ConcurrentHashMap<SModelReference, Map<String, Method>>();
  private Set<String> myMissingClasses = new ConcurrentHashSet<String>();
  private ConcurrentMap<Class<?>, Boolean> myNeedOpContext = new ConcurrentHashMap<Class<?>, Boolean>();

  private final ClassLoaderManager myClassLoaderManager;
  private final MPSClassesListener myClassesListener = new MPSClassesListenerAdapter() {
    @Override
    public void beforeClassesUnloaded(Set<? extends ReloadableModuleBase> unloadedModules) {
      clearCaches();
    }
  };

  public QueryMethodGenerated(ClassLoaderManager manager) {
    myClassLoaderManager = manager;
  }

  @Override
  public void init() {
    ourInstance = this;
    myClassLoaderManager.addClassesHandler(myClassesListener);
  }

  @Override
  public void dispose() {
    myClassLoaderManager.removeClassesHandler(myClassesListener);
    ourInstance.clearCaches();
    ourInstance = null;
  }

  /*package*/ void clearCaches() {
    myMethods.clear();
    myMissingClasses.clear();
    myNeedOpContext.clear();
  }

  private boolean needReport(String className) {
    return myMissingClasses.add(className);
  }

  private void reportErrorWhileClassLoading(String className, boolean suppressErrorLogging, String message) throws ClassNotFoundException {
    if (!suppressErrorLogging) {
      if (needReport(className)) {
        LOG.error(message);
      }
    }
    throw new ClassNotFoundException(message);
  }

  @NotNull
  public static Class getQueriesGeneratedClassFor(@NotNull SModelReference sm, boolean suppressErrorLogging) throws ClassNotFoundException {
    String packageName = SModelStereotype.withoutStereotype(sm.getModelName());
    String queriesClassName = packageName + ".QueriesGenerated";
    return ourInstance.getGeneratedClass(sm, queriesClassName, suppressErrorLogging);
  }

  private Class getGeneratedClass(@NotNull SModelReference sm, String className, boolean suppressErrorLogging) throws ClassNotFoundException {

    SModel m = sm.resolve(MPSModuleRepository.getInstance());

    SModule module = m == null ? null : m.getModule();
    if (module == null) {
      reportErrorWhileClassLoading(className, suppressErrorLogging, String.format("couldn't find class '%s': no module for model '%s", className,sm));
      return null;
    }
    if (!(module instanceof ReloadableModule && ((ReloadableModule) module).willLoad())) {
      reportErrorWhileClassLoading(className, suppressErrorLogging, String.format("couldn't find class '%s': module %s couldn't be loaded", className, module.getModuleName()));
      return null;
    }

    Class queriesClass = null;
    try {
      queriesClass = ((ReloadableModule) module).getClass(className);
    } catch (ModuleIsNotLoadableException e) {
      LOG.error("Please check the module " + e.getModule() + " is eligible for class loading");
    }
    if (queriesClass == null) {
      reportErrorWhileClassLoading(className, suppressErrorLogging, String.format("couldn't find class '%s' for model '%s' : TRY TO GENERATE", className, sm));
    }
    return queriesClass;
  }

  private Method getQueryMethod(SModelReference sourceModel, String methodName, boolean suppressErrorLogging) throws ClassNotFoundException, NoSuchMethodException {
    Map<String, Method> methods = myMethods.get(sourceModel);

    if (methods == null) {
      Class queriesClass = getQueriesGeneratedClassFor(sourceModel, suppressErrorLogging);

      methods = myMethods.get(sourceModel);
      if (methods == null) {
        methods = new HashMap<String, Method>();
        Method[] declaredMethods = queriesClass.getDeclaredMethods();
        for (Method declaredMethod : declaredMethods) {
          String name = declaredMethod.getName();
          declaredMethod.setAccessible(true);
          methods.put(name, declaredMethod);
        }

        myMethods.putIfAbsent(sourceModel, methods);
      }
    }


    Method method = methods.get(methodName);
    if (method == null) {
      String className = JavaNameUtil.packageNameForModelUID(sourceModel) + ".QueriesGenerated";
      if (!suppressErrorLogging) {
        LOG.error("couldn't find method '" + methodName + "' in '" + className + "' : TRY TO GENERATE model '" + sourceModel + "'");
      }
      throw new NoSuchMethodException("couldn't find method '" + methodName + "' in '" + className + "'");
    }
    return method;
  }

  public static Object invoke(String methodName, IOperationContext context, Object contextObject, SModel sourceModel) throws ClassNotFoundException, NoSuchMethodException {
    return invoke(methodName, context, contextObject, sourceModel, false);
  }
  public static <T> T invoke(String methodName, IOperationContext context, Object contextObject, SModel sourceModel, boolean suppressErrorLogging) throws ClassNotFoundException, NoSuchMethodException {
    return QueryMethodGenerated.<T>invoke(methodName, context, contextObject, sourceModel.getReference(), suppressErrorLogging);
  }

  public static <T> T invoke(String methodName, IOperationContext context, Object contextObject, SModelReference sourceModel, boolean suppressErrorLogging) throws ClassNotFoundException, NoSuchMethodException {
    Method method = ourInstance.getQueryMethod(sourceModel, methodName, suppressErrorLogging);
    try {
      Object[] arguments;
      if (method.getParameterTypes().length == 2) {
        arguments = new Object[] { context, contextObject };
      } else {
        arguments = new Object[] { contextObject };
      }
      @SuppressWarnings("unchecked")
      T result = (T) method.invoke(null, arguments);
      return result;
    } catch (IllegalArgumentException e) {
      throw new RuntimeException("error invocation method: \"" + methodName + "\" in " + method.getDeclaringClass().getName(), e);
    } catch (IllegalAccessException e) {
      throw new RuntimeException("error invocation method: \"" + methodName + "\" in " + method.getDeclaringClass().getName(), e);
    } catch (InvocationTargetException e) {
      if (e.getCause() instanceof IllegalModelChangeError) {
        throw (IllegalModelChangeError) e.getCause();
      }
      String message = "error invocation method: \"" + methodName + "\" in " + method.getDeclaringClass().getName();
      LOG.error(message, e.getCause());
      throw new RuntimeException(message, e.getCause());
    }
  }

  /**
   * EXPERIMENTAL CODE. DO NOT USE
   */
  public static <T> QueryMethod<T> getQueryMethod(SModelReference sourceModel, String methodName) throws NoSuchMethodException, ClassNotFoundException {
    final Method method = ourInstance.getQueryMethod(sourceModel, methodName, true);
    return new QueryMethod<T>() {
      @Override
      @SuppressWarnings("unchecked")
      public T invoke(Object contextObject) {
        try {
          return (T) method.invoke(null, contextObject);
        } catch (IllegalArgumentException e) {
          throw new RuntimeException("error invocation method: \"" + method.getName() + "\" in " + method.getDeclaringClass().getName(), e);
        } catch (IllegalAccessException e) {
          throw new RuntimeException("error invocation method: \"" + method.getName() + "\" in " + method.getDeclaringClass().getName(), e);
        } catch (InvocationTargetException e) {
          Throwable cause = e.getCause();
          if (cause instanceof IllegalModelChangeError) {
            throw (IllegalModelChangeError) cause;
          }
          String message = "error invocation method: \"" + method.getName() + "\" in " + method.getDeclaringClass().getName();
          LOG.error(cause.toString(), cause);
          throw new RuntimeException(message, cause);
        }
      }
    };
  }
  /**
   * EXPERIMENTAL CODE. DO NOT USE
   */
  public interface QueryMethod<T> {
    T invoke(Object contextObject);
  }
}
