package kotlin.reflect.jvm.internal;

import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.b;
import kotlin.reflect.jvm.internal.c;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.CloneableClassScope;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedCallableMemberDescriptor;

/* JADX INFO: compiled from: RuntimeTypeMapper.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class r {
    private static final ClassId a;
    public static final r b = new r();

    static {
        ClassId classId = ClassId.topLevel(new FqName("java.lang.Void"));
        Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(FqName(\"java.lang.Void\"))");
        a = classId;
    }

    private r() {
    }

    private final PrimitiveType a(Class<?> cls) {
        if (!cls.isPrimitive()) {
            return null;
        }
        JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.get(cls.getSimpleName());
        Intrinsics.checkExpressionValueIsNotNull(jvmPrimitiveType, "JvmPrimitiveType.get(simpleName)");
        return jvmPrimitiveType.g();
    }

    private final boolean b(kotlin.reflect.jvm.internal.impl.descriptors.o oVar) {
        if (DescriptorFactory.isEnumValueOfMethod(oVar) || DescriptorFactory.isEnumValuesMethod(oVar)) {
            return true;
        }
        return Intrinsics.areEqual(oVar.getName(), CloneableClassScope.f9069f.a()) && oVar.g().isEmpty();
    }

    private final b.e d(kotlin.reflect.jvm.internal.impl.descriptors.o oVar) {
        return new b.e(new c.b(e(oVar), MethodSignatureMappingKt.computeJvmDescriptor$default(oVar, false, false, 1, null)));
    }

    private final String e(CallableMemberDescriptor callableMemberDescriptor) {
        String jvmMethodNameIfSpecial = SpecialBuiltinMembers.getJvmMethodNameIfSpecial(callableMemberDescriptor);
        if (jvmMethodNameIfSpecial == null) {
            jvmMethodNameIfSpecial = callableMemberDescriptor instanceof z ? JvmAbi.getterName(DescriptorUtilsKt.getPropertyIfAccessor(callableMemberDescriptor).getName().e()) : callableMemberDescriptor instanceof a0 ? JvmAbi.setterName(DescriptorUtilsKt.getPropertyIfAccessor(callableMemberDescriptor).getName().e()) : callableMemberDescriptor.getName().e();
            Intrinsics.checkExpressionValueIsNotNull(jvmMethodNameIfSpecial, "when (descriptor) {\n    …name.asString()\n        }");
        }
        return jvmMethodNameIfSpecial;
    }

    public final ClassId c(Class<?> klass) {
        Intrinsics.checkParameterIsNotNull(klass, "klass");
        if (klass.isArray()) {
            Class<?> componentType = klass.getComponentType();
            Intrinsics.checkExpressionValueIsNotNull(componentType, "klass.componentType");
            PrimitiveType primitiveTypeA = a(componentType);
            if (primitiveTypeA != null) {
                return new ClassId(KotlinBuiltIns.b, primitiveTypeA.f());
            }
            ClassId classId = ClassId.topLevel(KotlinBuiltIns.h.h.l());
            Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(KotlinB….FQ_NAMES.array.toSafe())");
            return classId;
        }
        if (Intrinsics.areEqual(klass, Void.TYPE)) {
            return a;
        }
        PrimitiveType primitiveTypeA2 = a(klass);
        if (primitiveTypeA2 != null) {
            return new ClassId(KotlinBuiltIns.b, primitiveTypeA2.h());
        }
        ClassId classId2 = ReflectClassUtilKt.getClassId(klass);
        if (!classId2.i()) {
            JavaToKotlinClassMap javaToKotlinClassMap = JavaToKotlinClassMap.m;
            FqName fqNameB = classId2.b();
            Intrinsics.checkExpressionValueIsNotNull(fqNameB, "classId.asSingleFqName()");
            ClassId classIdU = javaToKotlinClassMap.u(fqNameB);
            if (classIdU != null) {
                return classIdU;
            }
        }
        return classId2;
    }

    public final c f(y possiblyOverriddenProperty) {
        Intrinsics.checkParameterIsNotNull(possiblyOverriddenProperty, "possiblyOverriddenProperty");
        CallableMemberDescriptor callableMemberDescriptorUnwrapFakeOverride = DescriptorUtils.unwrapFakeOverride(possiblyOverriddenProperty);
        Intrinsics.checkExpressionValueIsNotNull(callableMemberDescriptorUnwrapFakeOverride, "DescriptorUtils.unwrapFa…ssiblyOverriddenProperty)");
        y yVarA = ((y) callableMemberDescriptorUnwrapFakeOverride).a();
        Intrinsics.checkExpressionValueIsNotNull(yVarA, "DescriptorUtils.unwrapFa…rriddenProperty).original");
        if (yVarA instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e) {
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e eVar = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e) yVarA;
            ProtoBuf$Property protoBuf$PropertyS0 = eVar.X();
            GeneratedMessageLite.f<ProtoBuf$Property, JvmProtoBuf.JvmPropertySignature> fVar = JvmProtoBuf.f9631d;
            Intrinsics.checkExpressionValueIsNotNull(fVar, "JvmProtoBuf.propertySignature");
            JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) ProtoBufUtilKt.getExtensionOrNull(protoBuf$PropertyS0, fVar);
            if (jvmPropertySignature != null) {
                return new c.C0508c(yVarA, protoBuf$PropertyS0, jvmPropertySignature, eVar.F(), eVar.B());
            }
        } else if (yVarA instanceof JavaPropertyDescriptor) {
            d0 source = ((JavaPropertyDescriptor) yVarA).getSource();
            if (!(source instanceof kotlin.reflect.jvm.internal.impl.load.java.p.a)) {
                source = null;
            }
            kotlin.reflect.jvm.internal.impl.load.java.p.a aVar = (kotlin.reflect.jvm.internal.impl.load.java.p.a) source;
            kotlin.reflect.jvm.internal.impl.load.java.structure.k kVarC = aVar != null ? aVar.c() : null;
            if (kVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l) {
                return new c.a(((kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l) kVarC).K());
            }
            if (!(kVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.o)) {
                throw new o("Incorrect resolution sequence for Java field " + yVarA + " (source = " + kVarC + ')');
            }
            Method methodM = ((kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.o) kVarC).K();
            a0 setter = yVarA.getSetter();
            d0 source2 = setter != null ? setter.getSource() : null;
            if (!(source2 instanceof kotlin.reflect.jvm.internal.impl.load.java.p.a)) {
                source2 = null;
            }
            kotlin.reflect.jvm.internal.impl.load.java.p.a aVar2 = (kotlin.reflect.jvm.internal.impl.load.java.p.a) source2;
            kotlin.reflect.jvm.internal.impl.load.java.structure.k kVarC2 = aVar2 != null ? aVar2.c() : null;
            if (!(kVarC2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.o)) {
                kVarC2 = null;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.o oVar = (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.o) kVarC2;
            return new c.b(methodM, oVar != null ? oVar.K() : null);
        }
        z getter = yVarA.getGetter();
        if (getter == null) {
            Intrinsics.throwNpe();
        }
        b.e eVarD = d(getter);
        a0 setter2 = yVarA.getSetter();
        return new c.d(eVarD, setter2 != null ? d(setter2) : null);
    }

    public final b g(kotlin.reflect.jvm.internal.impl.descriptors.o possiblySubstitutedFunction) {
        Method methodM;
        c.b bVarB;
        c.b bVarD;
        Intrinsics.checkParameterIsNotNull(possiblySubstitutedFunction, "possiblySubstitutedFunction");
        CallableMemberDescriptor callableMemberDescriptorUnwrapFakeOverride = DescriptorUtils.unwrapFakeOverride(possiblySubstitutedFunction);
        Intrinsics.checkExpressionValueIsNotNull(callableMemberDescriptorUnwrapFakeOverride, "DescriptorUtils.unwrapFa…siblySubstitutedFunction)");
        kotlin.reflect.jvm.internal.impl.descriptors.o oVarA = ((kotlin.reflect.jvm.internal.impl.descriptors.o) callableMemberDescriptorUnwrapFakeOverride).a();
        Intrinsics.checkExpressionValueIsNotNull(oVarA, "DescriptorUtils.unwrapFa…titutedFunction).original");
        if (oVarA instanceof DeserializedCallableMemberDescriptor) {
            DeserializedCallableMemberDescriptor deserializedCallableMemberDescriptor = (DeserializedCallableMemberDescriptor) oVarA;
            kotlin.reflect.jvm.internal.impl.protobuf.j jVarX = deserializedCallableMemberDescriptor.X();
            if ((jVarX instanceof ProtoBuf$Function) && (bVarD = JvmProtoBufUtil.b.d((ProtoBuf$Function) jVarX, deserializedCallableMemberDescriptor.F(), deserializedCallableMemberDescriptor.B())) != null) {
                return new b.e(bVarD);
            }
            if (!(jVarX instanceof ProtoBuf$Constructor) || (bVarB = JvmProtoBufUtil.b.b((ProtoBuf$Constructor) jVarX, deserializedCallableMemberDescriptor.F(), deserializedCallableMemberDescriptor.B())) == null) {
                return d(oVarA);
            }
            kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = possiblySubstitutedFunction.b();
            Intrinsics.checkExpressionValueIsNotNull(iVarB, "possiblySubstitutedFunction.containingDeclaration");
            return InlineClassesUtilsKt.isInlineClass(iVarB) ? new b.e(bVarB) : new b.d(bVarB);
        }
        if (oVarA instanceof JavaMethodDescriptor) {
            d0 source = ((JavaMethodDescriptor) oVarA).getSource();
            if (!(source instanceof kotlin.reflect.jvm.internal.impl.load.java.p.a)) {
                source = null;
            }
            kotlin.reflect.jvm.internal.impl.load.java.p.a aVar = (kotlin.reflect.jvm.internal.impl.load.java.p.a) source;
            kotlin.reflect.jvm.internal.impl.load.java.structure.k kVarC = aVar != null ? aVar.c() : null;
            kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.o oVar = (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.o) (kVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.o ? kVarC : null);
            if (oVar != null && (methodM = oVar.K()) != null) {
                return new b.c(methodM);
            }
            throw new o("Incorrect resolution sequence for Java method " + oVarA);
        }
        if (!(oVarA instanceof JavaClassConstructorDescriptor)) {
            if (b(oVarA)) {
                return d(oVarA);
            }
            throw new o("Unknown origin of " + oVarA + " (" + oVarA.getClass() + ')');
        }
        d0 source2 = ((JavaClassConstructorDescriptor) oVarA).getSource();
        if (!(source2 instanceof kotlin.reflect.jvm.internal.impl.load.java.p.a)) {
            source2 = null;
        }
        kotlin.reflect.jvm.internal.impl.load.java.p.a aVar2 = (kotlin.reflect.jvm.internal.impl.load.java.p.a) source2;
        kotlin.reflect.jvm.internal.impl.load.java.structure.k kVarC2 = aVar2 != null ? aVar2.c() : null;
        if (kVarC2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.i) {
            return new b.C0507b(((kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.i) kVarC2).K());
        }
        if (kVarC2 instanceof ReflectJavaClass) {
            ReflectJavaClass reflectJavaClass = (ReflectJavaClass) kVarC2;
            if (reflectJavaClass.m()) {
                return new b.a(reflectJavaClass.c());
            }
        }
        throw new o("Incorrect resolution sequence for Java constructor " + oVarA + " (" + kVarC2 + ')');
    }
}
