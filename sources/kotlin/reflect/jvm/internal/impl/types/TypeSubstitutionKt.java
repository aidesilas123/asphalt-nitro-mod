package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: TypeSubstitution.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeSubstitutionKt {
    public static final y asSimpleType(u asSimpleType) {
        Intrinsics.checkParameterIsNotNull(asSimpleType, "$this$asSimpleType");
        m0 m0VarK0 = asSimpleType.K0();
        if (!(m0VarK0 instanceof y)) {
            m0VarK0 = null;
        }
        y yVar = (y) m0VarK0;
        if (yVar != null) {
            return yVar;
        }
        throw new IllegalStateException(("This is should be simple type: " + asSimpleType).toString());
    }

    public static final u replace(u replace, List<? extends g0> newArguments, Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(replace, "$this$replace");
        Intrinsics.checkParameterIsNotNull(newArguments, "newArguments");
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        if ((newArguments.isEmpty() || newArguments == replace.G0()) && newAnnotations == replace.getAnnotations()) {
            return replace;
        }
        m0 m0VarK0 = replace.K0();
        if (m0VarK0 instanceof p) {
            p pVar = (p) m0VarK0;
            return KotlinTypeFactory.flexibleType(replace(pVar.P0(), newArguments, newAnnotations), replace(pVar.Q0(), newArguments, newAnnotations));
        }
        if (m0VarK0 instanceof y) {
            return replace((y) m0VarK0, newArguments, newAnnotations);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final y replace(y replace, List<? extends g0> newArguments, Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(replace, "$this$replace");
        Intrinsics.checkParameterIsNotNull(newArguments, "newArguments");
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return (newArguments.isEmpty() && newAnnotations == replace.getAnnotations()) ? replace : newArguments.isEmpty() ? replace.N0(newAnnotations) : KotlinTypeFactory.simpleType$default(newAnnotations, replace.H0(), newArguments, replace.I0(), null, 16, null);
    }

    public static /* synthetic */ u replace$default(u uVar, List list, Annotations annotations, int i, Object obj) {
        if ((i & 1) != 0) {
            list = uVar.G0();
        }
        if ((i & 2) != 0) {
            annotations = uVar.getAnnotations();
        }
        return replace(uVar, (List<? extends g0>) list, annotations);
    }

    public static /* synthetic */ y replace$default(y yVar, List list, Annotations annotations, int i, Object obj) {
        if ((i & 1) != 0) {
            list = yVar.G0();
        }
        if ((i & 2) != 0) {
            annotations = yVar.getAnnotations();
        }
        return replace(yVar, (List<? extends g0>) list, annotations);
    }
}
