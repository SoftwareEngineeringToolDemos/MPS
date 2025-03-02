package jetbrains.mps.baseLanguage.javastub.asm;

/*Generated by MPS */

import org.jetbrains.org.objectweb.asm.Type;
import org.jetbrains.org.objectweb.asm.signature.SignatureReader;
import org.jetbrains.org.objectweb.asm.signature.SignatureVisitor;
import java.util.List;
import java.util.Collections;
import java.util.ArrayList;
import java.util.Stack;

/*package*/ class TypeUtil {
  /*package*/ TypeUtil() {
  }
  /*package*/ static ASMType fromDescriptor(String desc) {
    return TypeUtil.fromType(Type.getType(desc));
  }
  /*package*/ static ASMType fromType(Type type) {
    switch (type.getSort()) {
      case Type.VOID:
        return ASMPrimitiveType.VOID;
      case Type.BOOLEAN:
        return ASMPrimitiveType.BOOLEAN;
      case Type.CHAR:
        return ASMPrimitiveType.CHAR;
      case Type.BYTE:
        return ASMPrimitiveType.BYTE;
      case Type.SHORT:
        return ASMPrimitiveType.SHORT;
      case Type.INT:
        return ASMPrimitiveType.INT;
      case Type.FLOAT:
        return ASMPrimitiveType.FLOAT;
      case Type.LONG:
        return ASMPrimitiveType.LONG;
      case Type.DOUBLE:
        return ASMPrimitiveType.DOUBLE;
      case Type.OBJECT:
        return new ASMClassType(type.getClassName());
      case Type.ARRAY:
        {
          ASMType result = new ASMArrayType(TypeUtil.fromType(type.getElementType()));
          for (int i = 1; i < type.getDimensions(); i++) {
            result = new ASMArrayType(result);
          }
          return result;
        }
      default:
    }
    return null;
  }
  /*package*/ static ASMType getReturnType(String signature) {
    if (signature == null) {
      return null;
    }
    SignatureReader reader = new SignatureReader(signature);
    final TypeUtil.TypeBuilderVisitor builder = new TypeUtil.TypeBuilderVisitor();
    reader.accept(new SignatureVisitorAdapter() {
      @Override
      public SignatureVisitor visitReturnType() {
        return builder;
      }
    });
    return builder.getResult();
  }
  /*package*/ static List<ASMType> getParameterTypes(String signature) {
    if (signature == null) {
      return Collections.emptyList();
    }
    SignatureReader reader = new SignatureReader(signature);
    final List<TypeUtil.TypeBuilderVisitor> visitors = new ArrayList<TypeUtil.TypeBuilderVisitor>();
    reader.accept(new SignatureVisitorAdapter() {
      @Override
      public SignatureVisitor visitParameterType() {
        TypeUtil.TypeBuilderVisitor v = new TypeUtil.TypeBuilderVisitor();
        visitors.add(v);
        return v;
      }
    });
    List<ASMType> types = new ArrayList<ASMType>(visitors.size());
    for (TypeUtil.TypeBuilderVisitor v : visitors) {
      types.add(v.getResult());
    }
    return types;
  }
  public static List<ASMFormalTypeParameter> getFormalTypeParameters(String signature) {
    final List<ASMFormalTypeParameter> result = new ArrayList<ASMFormalTypeParameter>();
    if (signature == null) {
      return result;
    }
    SignatureReader reader = new SignatureReader(signature);
    reader.accept(new SignatureVisitorAdapter() {
      private String name = null;
      private TypeUtil.TypeBuilderVisitor classBoundVisitor = new TypeUtil.TypeBuilderVisitor();
      private List<TypeUtil.TypeBuilderVisitor> interfaceBoundVisitors = new ArrayList<TypeUtil.TypeBuilderVisitor>();
      @Override
      public void visitFormalTypeParameter(String name) {
        if (this.name != null) {
          flush();
        }
        this.name = name;
      }
      @Override
      public SignatureVisitor visitClassBound() {
        classBoundVisitor = new TypeUtil.TypeBuilderVisitor();
        return classBoundVisitor;
      }
      @Override
      public SignatureVisitor visitInterfaceBound() {
        TypeUtil.TypeBuilderVisitor visitor = new TypeUtil.TypeBuilderVisitor();
        interfaceBoundVisitors.add(visitor);
        return visitor;
      }
      @Override
      public SignatureVisitor visitReturnType() {
        if (name != null) {
          flush();
        }
        return super.visitReturnType();
      }
      @Override
      public SignatureVisitor visitSuperclass() {
        if (name != null) {
          flush();
        }
        return super.visitSuperclass();
      }
      private void flush() {
        List<ASMType> interfaceBounds = new ArrayList<ASMType>(interfaceBoundVisitors.size());
        for (TypeUtil.TypeBuilderVisitor v : interfaceBoundVisitors) {
          interfaceBounds.add(v.getResult());
        }
        ASMType formalType = null;
        if (classBoundVisitor != null) {
          formalType = classBoundVisitor.getResult();
          if (formalType instanceof ASMClassType) {
            ASMClassType classFormalType = (ASMClassType) formalType;
            if (classFormalType.getName().equals(Object.class.getName())) {
              formalType = null;
            }
          }
        }
        result.add(new ASMFormalTypeParameter(name, formalType, interfaceBounds));
        name = null;
        classBoundVisitor = null;
        interfaceBoundVisitors.clear();
      }
    });
    return result;
  }
  public static List<ASMType> getExceptionTypes(String signature) {
    if (signature == null) {
      return Collections.emptyList();
    }
    SignatureReader reader = new SignatureReader(signature);
    final List<TypeUtil.TypeBuilderVisitor> visitors = new ArrayList<TypeUtil.TypeBuilderVisitor>();
    reader.accept(new SignatureVisitorAdapter() {
      @Override
      public SignatureVisitor visitExceptionType() {
        TypeUtil.TypeBuilderVisitor v = new TypeUtil.TypeBuilderVisitor();
        visitors.add(v);
        return v;
      }
    });
    final List<ASMType> types = new ArrayList<ASMType>(visitors.size());
    for (TypeUtil.TypeBuilderVisitor v : visitors) {
      types.add(v.getResult());
    }
    return types;
  }
  public static ASMType getFieldType(String signature) {
    if (signature == null) {
      return null;
    }
    final TypeUtil.TypeBuilderVisitor builder = new TypeUtil.TypeBuilderVisitor();
    SignatureReader reader = new SignatureReader(signature);
    reader.acceptType(builder);
    return builder.getResult();
  }
  /*package*/ static class TypeBuilderVisitor extends SignatureVisitorAdapter {
    private ASMType myResult;
    private Stack<ASMType> myTypes = new Stack<ASMType>();
    private char myWildcard;
    private TypeUtil.TypeBuilderVisitor myArrayVisitor = null;
    public TypeBuilderVisitor() {
    }
    protected void setResult(ASMType type) {
      myResult = type;
    }
    protected void addPart(ASMType type) {
      if (myTypes.isEmpty()) {
        myTypes.add(type);
        return;
      }
      if (myTypes.peek() instanceof ASMClassType) {
        ASMClassType ct = (ASMClassType) myTypes.pop();
        ASMParameterizedType replacement = new ASMParameterizedType(ct, new ArrayList<ASMType>());
        if (!(myTypes.isEmpty())) {
          ASMParameterizedType parent = (ASMParameterizedType) unwrap(myTypes.peek());
          parent.removeArgument(ct);
          parent.addArgument(replacement);
        }
        myTypes.push(replacement);
      } else if (myTypes.peek() instanceof ASMBoundedType) {
        ASMBoundedType bounded = (ASMBoundedType) myTypes.peek();
        ASMType bound = bounded.getBound();
        ASMType wrapped = wrap(type);
        if (bound instanceof ASMParameterizedType) {
          ((ASMParameterizedType) bound).addArgument(wrapped);
        } else {
          ASMParameterizedType newBound = new ASMParameterizedType(bound, new ArrayList<ASMType>());
          newBound.addArgument(wrapped);
          bounded.setBound(newBound);
        }
      }
      ASMType wrapped = wrap(type);
      if (myTypes.peek() instanceof ASMParameterizedType) {
        ((ASMParameterizedType) myTypes.peek()).addArgument(wrapped);
      }
      if (type instanceof ASMClassType) {
        myTypes.push(wrapped);
      }
    }
    private void finish() {
      if (myTypes.size() == 1) {
        setResult(myTypes.peek());
      }
      if (!(myTypes.isEmpty())) {
        myTypes.pop();
      }
    }
    private ASMType wrap(ASMType type) {
      if (myWildcard == '+') {
        myWildcard = '=';
        return new ASMExtendsType(type);
      }
      if (myWildcard == '-') {
        myWildcard = '=';
        return new ASMSuperType(type);
      }
      return type;
    }
    private ASMType unwrap(ASMType type) {
      if (type instanceof ASMBoundedType) {
        return ((ASMBoundedType) type).getBound();
      } else {
        return type;
      }
    }
    @Override
    public void visitTypeArgument() {
      addPart(new ASMUnboundedType());
    }
    @Override
    public SignatureVisitor visitTypeArgument(char wildcard) {
      myWildcard = wildcard;
      return this;
    }
    @Override
    public void visitBaseType(char descriptor) {
      addPart(TypeUtil.fromType(Type.getType("" + descriptor)));
    }
    @Override
    public void visitTypeVariable(String name) {
      addPart(new ASMTypeVariable(name));
    }
    @Override
    public SignatureVisitor visitArrayType() {
      return myArrayVisitor = new TypeUtil.TypeBuilderVisitor();
    }
    @Override
    public void visitClassType(String name) {
      addPart(new ASMClassType(name.replace('/', '.')));
    }
    @Override
    public void visitEnd() {
      if (myArrayVisitor != null) {
        addPart(new ASMArrayType(myArrayVisitor.getResult()));
        myArrayVisitor = null;
      } else {
        finish();
      }
    }
    /*package*/ ASMType getResult() {
      if (myArrayVisitor != null) {
        addPart(new ASMArrayType(myArrayVisitor.getResult()));
        myArrayVisitor = null;
      }
      if (myResult == null) {
        finish();
      }
      return myResult;
    }
  }
}
