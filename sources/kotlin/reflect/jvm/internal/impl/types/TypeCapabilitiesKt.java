package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TypeCapabilities.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeCapabilitiesKt {
    public static final i getCustomTypeVariable(u getCustomTypeVariable) {
        Intrinsics.checkParameterIsNotNull(getCustomTypeVariable, "$this$getCustomTypeVariable");
        kotlin.reflect.jvm.internal.impl.types.model.f fVarK0 = getCustomTypeVariable.K0();
        if (!(fVarK0 instanceof i)) {
            fVarK0 = null;
        }
        i iVar = (i) fVarK0;
        if (iVar == null || !iVar.u()) {
            return null;
        }
        return iVar;
    }

    public static final u getSubtypeRepresentative(u getSubtypeRepresentative) {
        u uVarB0;
        Intrinsics.checkParameterIsNotNull(getSubtypeRepresentative, "$this$getSubtypeRepresentative");
        kotlin.reflect.jvm.internal.impl.types.model.f fVarK0 = getSubtypeRepresentative.K0();
        if (!(fVarK0 instanceof c0)) {
            fVarK0 = null;
        }
        c0 c0Var = (c0) fVarK0;
        return (c0Var == null || (uVarB0 = c0Var.B0()) == null) ? getSubtypeRepresentative : uVarB0;
    }

    public static final u getSupertypeRepresentative(u getSupertypeRepresentative) {
        u uVarE0;
        Intrinsics.checkParameterIsNotNull(getSupertypeRepresentative, "$this$getSupertypeRepresentative");
        kotlin.reflect.jvm.internal.impl.types.model.f fVarK0 = getSupertypeRepresentative.K0();
        if (!(fVarK0 instanceof c0)) {
            fVarK0 = null;
        }
        c0 c0Var = (c0) fVarK0;
        return (c0Var == null || (uVarE0 = c0Var.e0()) == null) ? getSupertypeRepresentative : uVarE0;
    }

    public static final boolean isCustomTypeVariable(u isCustomTypeVariable) {
        Intrinsics.checkParameterIsNotNull(isCustomTypeVariable, "$this$isCustomTypeVariable");
        kotlin.reflect.jvm.internal.impl.types.model.f fVarK0 = isCustomTypeVariable.K0();
        if (!(fVarK0 instanceof i)) {
            fVarK0 = null;
        }
        i iVar = (i) fVarK0;
        if (iVar != null) {
            return iVar.u();
        }
        return false;
    }

    public static final boolean sameTypeConstructors(u first, u second) {
        Intrinsics.checkParameterIsNotNull(first, "first");
        Intrinsics.checkParameterIsNotNull(second, "second");
        kotlin.reflect.jvm.internal.impl.types.model.f fVarK0 = first.K0();
        if (!(fVarK0 instanceof c0)) {
            fVarK0 = null;
        }
        c0 c0Var = (c0) fVarK0;
        if (!(c0Var != null ? c0Var.k0(second) : false)) {
            m0 m0VarK0 = second.K0();
            c0 c0Var2 = (c0) (m0VarK0 instanceof c0 ? m0VarK0 : null);
            if (!(c0Var2 != null ? c0Var2.k0(first) : false)) {
                return false;
            }
        }
        return true;
    }
}
