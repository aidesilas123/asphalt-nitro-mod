package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.g;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: JavaIncompatibilityRulesOverridabilityCondition.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class l implements ExternalOverridabilityCondition {
    public static final a a = new a(null);

    /* JADX INFO: compiled from: JavaIncompatibilityRulesOverridabilityCondition.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        private final boolean b(kotlin.reflect.jvm.internal.impl.descriptors.o oVar) {
            if (oVar.g().size() != 1) {
                return false;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = oVar.b();
            if (!(iVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                iVarB = null;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB;
            if (dVar != null) {
                List<ValueParameterDescriptor> listG = oVar.g();
                Intrinsics.checkExpressionValueIsNotNull(listG, "f.valueParameters");
                Object objSingle = p.single((List<? extends Object>) listG);
                Intrinsics.checkExpressionValueIsNotNull(objSingle, "f.valueParameters.single()");
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = ((ValueParameterDescriptor) objSingle).getType().H0().q();
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.d) (fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? fVarQ : null);
                return dVar2 != null && KotlinBuiltIns.isPrimitiveClass(dVar) && Intrinsics.areEqual(DescriptorUtilsKt.getFqNameSafe(dVar), DescriptorUtilsKt.getFqNameSafe(dVar2));
            }
            return false;
        }

        private final kotlin.reflect.jvm.internal.impl.load.kotlin.g c(kotlin.reflect.jvm.internal.impl.descriptors.o oVar, ValueParameterDescriptor valueParameterDescriptor) {
            if (MethodSignatureMappingKt.forceSingleValueParameterBoxing(oVar) || b(oVar)) {
                u type = valueParameterDescriptor.getType();
                Intrinsics.checkExpressionValueIsNotNull(type, "valueParameterDescriptor.type");
                return MethodSignatureMappingKt.mapToJvmType(TypeUtilsKt.makeNullable(type));
            }
            u type2 = valueParameterDescriptor.getType();
            Intrinsics.checkExpressionValueIsNotNull(type2, "valueParameterDescriptor.type");
            return MethodSignatureMappingKt.mapToJvmType(type2);
        }

        public final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.a superDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a subDescriptor) {
            Intrinsics.checkParameterIsNotNull(superDescriptor, "superDescriptor");
            Intrinsics.checkParameterIsNotNull(subDescriptor, "subDescriptor");
            if ((subDescriptor instanceof JavaMethodDescriptor) && (superDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.o)) {
                JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) subDescriptor;
                javaMethodDescriptor.g().size();
                kotlin.reflect.jvm.internal.impl.descriptors.o oVar = (kotlin.reflect.jvm.internal.impl.descriptors.o) superDescriptor;
                oVar.g().size();
                c0 c0VarA = javaMethodDescriptor.a();
                Intrinsics.checkExpressionValueIsNotNull(c0VarA, "subDescriptor.original");
                List<ValueParameterDescriptor> listG = c0VarA.g();
                Intrinsics.checkExpressionValueIsNotNull(listG, "subDescriptor.original.valueParameters");
                kotlin.reflect.jvm.internal.impl.descriptors.o oVarA = oVar.a();
                Intrinsics.checkExpressionValueIsNotNull(oVarA, "superDescriptor.original");
                List<ValueParameterDescriptor> listG2 = oVarA.g();
                Intrinsics.checkExpressionValueIsNotNull(listG2, "superDescriptor.original.valueParameters");
                for (Pair pair : CollectionsKt___CollectionsKt.zip(listG, listG2)) {
                    ValueParameterDescriptor subParameter = (ValueParameterDescriptor) pair.c();
                    ValueParameterDescriptor superParameter = (ValueParameterDescriptor) pair.d();
                    Intrinsics.checkExpressionValueIsNotNull(subParameter, "subParameter");
                    boolean z = c((kotlin.reflect.jvm.internal.impl.descriptors.o) subDescriptor, subParameter) instanceof g.c;
                    Intrinsics.checkExpressionValueIsNotNull(superParameter, "superParameter");
                    if (z != (c(oVar, superParameter) instanceof g.c)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private final boolean c(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if ((aVar instanceof CallableMemberDescriptor) && (aVar2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.o) && !KotlinBuiltIns.isBuiltIn(aVar2)) {
            BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.h;
            kotlin.reflect.jvm.internal.impl.descriptors.o oVar = (kotlin.reflect.jvm.internal.impl.descriptors.o) aVar2;
            Name name = oVar.getName();
            Intrinsics.checkExpressionValueIsNotNull(name, "subDescriptor.name");
            if (!builtinMethodsWithSpecialGenericSignature.b(name)) {
                BuiltinMethodsWithDifferentJvmName builtinMethodsWithDifferentJvmName = BuiltinMethodsWithDifferentJvmName.f9178f;
                Name name2 = oVar.getName();
                Intrinsics.checkExpressionValueIsNotNull(name2, "subDescriptor.name");
                if (!builtinMethodsWithDifferentJvmName.d(name2)) {
                    return false;
                }
            }
            CallableMemberDescriptor overriddenSpecialBuiltin = SpecialBuiltinMembers.getOverriddenSpecialBuiltin((CallableMemberDescriptor) aVar);
            boolean zW0 = oVar.w0();
            boolean z = aVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.o;
            kotlin.reflect.jvm.internal.impl.descriptors.o oVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.o) (!z ? null : aVar);
            if ((oVar2 == null || zW0 != oVar2.w0()) && (overriddenSpecialBuiltin == null || !oVar.w0())) {
                return true;
            }
            if ((dVar instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.c) && oVar.n0() == null && overriddenSpecialBuiltin != null && !SpecialBuiltinMembers.hasRealKotlinSuperClassWithOverrideOf(dVar, overriddenSpecialBuiltin)) {
                if ((overriddenSpecialBuiltin instanceof kotlin.reflect.jvm.internal.impl.descriptors.o) && z && BuiltinMethodsWithSpecialGenericSignature.getOverriddenBuiltinFunctionWithErasedValueParametersInJava((kotlin.reflect.jvm.internal.impl.descriptors.o) overriddenSpecialBuiltin) != null) {
                    String strComputeJvmDescriptor$default = MethodSignatureMappingKt.computeJvmDescriptor$default(oVar, false, false, 2, null);
                    kotlin.reflect.jvm.internal.impl.descriptors.o oVarA = ((kotlin.reflect.jvm.internal.impl.descriptors.o) aVar).a();
                    Intrinsics.checkExpressionValueIsNotNull(oVarA, "superDescriptor.original");
                    if (Intrinsics.areEqual(strComputeJvmDescriptor$default, MethodSignatureMappingKt.computeJvmDescriptor$default(oVarA, false, false, 2, null))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public ExternalOverridabilityCondition.Contract a() {
        return ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public ExternalOverridabilityCondition.Result b(kotlin.reflect.jvm.internal.impl.descriptors.a superDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a subDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        Intrinsics.checkParameterIsNotNull(superDescriptor, "superDescriptor");
        Intrinsics.checkParameterIsNotNull(subDescriptor, "subDescriptor");
        if (!c(superDescriptor, subDescriptor, dVar) && !a.a(superDescriptor, subDescriptor)) {
            return ExternalOverridabilityCondition.Result.UNKNOWN;
        }
        return ExternalOverridabilityCondition.Result.INCOMPATIBLE;
    }
}
