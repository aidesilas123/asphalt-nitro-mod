package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TypeSubstitution.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class s extends j0 {
    private final kotlin.reflect.jvm.internal.impl.descriptors.i0[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g0[] f9876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f9877e;

    /* JADX WARN: Illegal instructions before constructor call */
    public s(List<? extends kotlin.reflect.jvm.internal.impl.descriptors.i0> parameters, List<? extends g0> argumentsList) {
        Intrinsics.checkParameterIsNotNull(parameters, "parameters");
        Intrinsics.checkParameterIsNotNull(argumentsList, "argumentsList");
        Object[] array = parameters.toArray(new kotlin.reflect.jvm.internal.impl.descriptors.i0[0]);
        if (array == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        kotlin.reflect.jvm.internal.impl.descriptors.i0[] i0VarArr = (kotlin.reflect.jvm.internal.impl.descriptors.i0[]) array;
        Object[] array2 = argumentsList.toArray(new g0[0]);
        if (array2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        this(i0VarArr, (g0[]) array2, false, 4, null);
    }

    public s(kotlin.reflect.jvm.internal.impl.descriptors.i0[] parameters, g0[] arguments, boolean z) {
        Intrinsics.checkParameterIsNotNull(parameters, "parameters");
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        this.c = parameters;
        this.f9876d = arguments;
        this.f9877e = z;
        int length = parameters.length;
        int length2 = arguments.length;
    }

    public /* synthetic */ s(kotlin.reflect.jvm.internal.impl.descriptors.i0[] i0VarArr, g0[] g0VarArr, boolean z, int i, kotlin.jvm.internal.n nVar) {
        this(i0VarArr, g0VarArr, (i & 4) != 0 ? false : z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public boolean b() {
        return this.f9877e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public g0 e(u key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = key.H0().c();
        if (!(fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.i0)) {
            fVarC = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var = (kotlin.reflect.jvm.internal.impl.descriptors.i0) fVarC;
        if (i0Var != null) {
            int iH = i0Var.h();
            kotlin.reflect.jvm.internal.impl.descriptors.i0[] i0VarArr = this.c;
            if (iH < i0VarArr.length && Intrinsics.areEqual(i0VarArr[iH].i(), i0Var.i())) {
                return this.f9876d[iH];
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public boolean f() {
        return this.f9876d.length == 0;
    }

    public final g0[] h() {
        return this.f9876d;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.i0[] i() {
        return this.c;
    }
}
