package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.load.kotlin.g;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: methodSignatureMapping.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class MethodSignatureMappingKt {
    private static final void a(StringBuilder sb, u uVar) {
        sb.append(mapToJvmType(uVar));
    }

    public static final String computeJvmDescriptor(kotlin.reflect.jvm.internal.impl.descriptors.o computeJvmDescriptor, boolean z, boolean z2) {
        String strE;
        Intrinsics.checkParameterIsNotNull(computeJvmDescriptor, "$this$computeJvmDescriptor");
        StringBuilder sb = new StringBuilder();
        if (z2) {
            if (computeJvmDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.h) {
                strE = "<init>";
            } else {
                strE = computeJvmDescriptor.getName().e();
                Intrinsics.checkExpressionValueIsNotNull(strE, "name.asString()");
            }
            sb.append(strE);
        }
        sb.append("(");
        for (ValueParameterDescriptor parameter : computeJvmDescriptor.g()) {
            Intrinsics.checkExpressionValueIsNotNull(parameter, "parameter");
            u type = parameter.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "parameter.type");
            a(sb, type);
        }
        sb.append(")");
        if (z) {
            if (TypeSignatureMappingKt.hasVoidReturnType(computeJvmDescriptor)) {
                sb.append("V");
            } else {
                u returnType = computeJvmDescriptor.getReturnType();
                if (returnType == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(returnType, "returnType!!");
                a(sb, returnType);
            }
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static /* synthetic */ String computeJvmDescriptor$default(kotlin.reflect.jvm.internal.impl.descriptors.o oVar, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        return computeJvmDescriptor(oVar, z, z2);
    }

    public static final String computeJvmSignature(kotlin.reflect.jvm.internal.impl.descriptors.a computeJvmSignature) {
        Intrinsics.checkParameterIsNotNull(computeJvmSignature, "$this$computeJvmSignature");
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
        if (DescriptorUtils.isLocal(computeJvmSignature)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = computeJvmSignature.b();
        if (!(iVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            iVarB = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB;
        if (dVar != null) {
            Name name = dVar.getName();
            Intrinsics.checkExpressionValueIsNotNull(name, "classDescriptor.name");
            if (name.h()) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.a aVarA = computeJvmSignature.a();
            if (!(aVarA instanceof c0)) {
                aVarA = null;
            }
            c0 c0Var = (c0) aVarA;
            if (c0Var != null) {
                return signatureBuildingComponents.k(dVar, computeJvmDescriptor$default(c0Var, false, false, 3, null));
            }
        }
        return null;
    }

    public static final boolean forceSingleValueParameterBoxing(kotlin.reflect.jvm.internal.impl.descriptors.a f2) {
        kotlin.reflect.jvm.internal.impl.descriptors.o overriddenBuiltinFunctionWithErasedValueParametersInJava;
        Intrinsics.checkParameterIsNotNull(f2, "f");
        if (!(f2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.o)) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.o oVar = (kotlin.reflect.jvm.internal.impl.descriptors.o) f2;
        if (oVar.g().size() != 1 || SpecialBuiltinMembers.isFromJavaOrBuiltins((CallableMemberDescriptor) f2) || (!Intrinsics.areEqual(oVar.getName().e(), "remove"))) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.o oVarA = oVar.a();
        Intrinsics.checkExpressionValueIsNotNull(oVarA, "f.original");
        List<ValueParameterDescriptor> listG = oVarA.g();
        Intrinsics.checkExpressionValueIsNotNull(listG, "f.original.valueParameters");
        Object objSingle = kotlin.collections.p.single((List<? extends Object>) listG);
        Intrinsics.checkExpressionValueIsNotNull(objSingle, "f.original.valueParameters.single()");
        u type = ((ValueParameterDescriptor) objSingle).getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "f.original.valueParameters.single().type");
        g gVarMapToJvmType = mapToJvmType(type);
        if (!(gVarMapToJvmType instanceof g.c)) {
            gVarMapToJvmType = null;
        }
        g.c cVar = (g.c) gVarMapToJvmType;
        if ((cVar != null ? cVar.a() : null) != JvmPrimitiveType.INT || (overriddenBuiltinFunctionWithErasedValueParametersInJava = BuiltinMethodsWithSpecialGenericSignature.getOverriddenBuiltinFunctionWithErasedValueParametersInJava(oVar)) == null) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.o oVarA2 = overriddenBuiltinFunctionWithErasedValueParametersInJava.a();
        Intrinsics.checkExpressionValueIsNotNull(oVarA2, "overridden.original");
        List<ValueParameterDescriptor> listG2 = oVarA2.g();
        Intrinsics.checkExpressionValueIsNotNull(listG2, "overridden.original.valueParameters");
        Object objSingle2 = kotlin.collections.p.single((List<? extends Object>) listG2);
        Intrinsics.checkExpressionValueIsNotNull(objSingle2, "overridden.original.valueParameters.single()");
        u type2 = ((ValueParameterDescriptor) objSingle2).getType();
        Intrinsics.checkExpressionValueIsNotNull(type2, "overridden.original.valueParameters.single().type");
        g gVarMapToJvmType2 = mapToJvmType(type2);
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = overriddenBuiltinFunctionWithErasedValueParametersInJava.b();
        Intrinsics.checkExpressionValueIsNotNull(iVarB, "overridden.containingDeclaration");
        return Intrinsics.areEqual(DescriptorUtilsKt.getFqNameUnsafe(iVarB), KotlinBuiltIns.h.V.j()) && (gVarMapToJvmType2 instanceof g.b) && Intrinsics.areEqual(((g.b) gVarMapToJvmType2).a(), "java/lang/Object");
    }

    public static final String getInternalName(kotlin.reflect.jvm.internal.impl.descriptors.d internalName) {
        Intrinsics.checkParameterIsNotNull(internalName, "$this$internalName");
        JavaToKotlinClassMap javaToKotlinClassMap = JavaToKotlinClassMap.m;
        FqNameUnsafe fqNameUnsafeJ = DescriptorUtilsKt.getFqNameSafe(internalName).j();
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafeJ, "fqNameSafe.toUnsafe()");
        ClassId classIdV = javaToKotlinClassMap.v(fqNameUnsafeJ);
        if (classIdV == null) {
            return TypeSignatureMappingKt.computeInternalName$default(internalName, null, 2, null);
        }
        JvmClassName jvmClassNameByClassId = JvmClassName.byClassId(classIdV);
        Intrinsics.checkExpressionValueIsNotNull(jvmClassNameByClassId, "JvmClassName.byClassId(it)");
        String strC = jvmClassNameByClassId.c();
        Intrinsics.checkExpressionValueIsNotNull(strC, "JvmClassName.byClassId(it).internalName");
        return strC;
    }

    public static final g mapToJvmType(u mapToJvmType) {
        Intrinsics.checkParameterIsNotNull(mapToJvmType, "$this$mapToJvmType");
        return (g) TypeSignatureMappingKt.mapType$default(mapToJvmType, i.a, q.c, p.a, null, null, 32, null);
    }
}
