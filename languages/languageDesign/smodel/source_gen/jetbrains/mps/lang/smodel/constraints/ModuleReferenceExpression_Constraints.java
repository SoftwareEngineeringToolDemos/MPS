package jetbrains.mps.lang.smodel.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Map;
import jetbrains.mps.smodel.adapter.ids.SPropertyId;
import jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor;
import java.util.HashMap;
import jetbrains.mps.smodel.runtime.base.BasePropertyConstraintsDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.lang.smodel.behavior.ModuleReferenceExpression_BehaviorDescriptor;

public class ModuleReferenceExpression_Constraints extends BaseConstraintsDescriptor {
  public ModuleReferenceExpression_Constraints() {
    super(MetaIdFactory.conceptId(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x38130dc4e3db5af1L));
  }
  @Override
  protected Map<SPropertyId, PropertyConstraintsDescriptor> getNotDefaultSProperties() {
    Map<SPropertyId, PropertyConstraintsDescriptor> properties = new HashMap<SPropertyId, PropertyConstraintsDescriptor>();
    properties.put(MetaIdFactory.propId(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x38130dc4e3db5af1L, 0x38130dc4e3db5af2L), new BasePropertyConstraintsDescriptor(MetaIdFactory.propId(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x38130dc4e3db5af1L, 0x38130dc4e3db5af2L), this) {
      @Override
      public boolean hasOwnGetter() {
        return true;
      }
      @Override
      public Object getValue(SNode node) {
        String propertyName = "name";
        {
          SModule module = ModuleReferenceExpression_BehaviorDescriptor.getModule_id3wj3sjzQUV1.invoke(node);
          if (module == null) {
            return null;
          }
          return module.getModuleName();
        }
      }
    });
    return properties;
  }
}
