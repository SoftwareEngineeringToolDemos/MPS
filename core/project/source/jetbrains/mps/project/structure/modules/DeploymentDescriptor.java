/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.project.structure.modules;

import jetbrains.mps.util.io.ModelInputStream;
import jetbrains.mps.util.io.ModelOutputStream;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Evgeny Gryaznov, 7/12/11
 */
public class DeploymentDescriptor extends ModuleDescriptor {
  private String mySourcesJar;
  private String myDescriptorFile;
  private String myType;

  private final List<String> myLibraries = new ArrayList<String>();

  public String getSourcesJar() {
    return mySourcesJar;
  }

  public void setSourcesJar(String sourcesJar) {
    mySourcesJar = sourcesJar;
  }

  public String getDescriptorFile() {
    return myDescriptorFile;
  }

  public void setDescriptorFile(String descriptorFile) {
    myDescriptorFile = descriptorFile;
  }

  public String getType() {
    return myType;
  }

  public void setType(String type) {
    myType = type;
  }

  public List<String> getLibraries() {
    return myLibraries;
  }

  @Override
  protected int getHeaderMarker() {
    return 0xabababa;
  }

  @Override
  public void save(ModelOutputStream stream) throws IOException {
    super.save(stream);
    stream.writeString(mySourcesJar);
    stream.writeString(myDescriptorFile);
    stream.writeString(myType);

    stream.writeStrings(myLibraries);
  }

  @Override
  public void load(ModelInputStream stream) throws IOException {
    super.load(stream);
    mySourcesJar = stream.readString();
    myDescriptorFile = stream.readString();
    myType = stream.readString();

    myLibraries.clear();
    myLibraries.addAll(stream.readStrings());
  }
}
