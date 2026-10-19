package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.j0;
import kotlin.reflect.jvm.internal.impl.types.k;
import kotlin.reflect.jvm.internal.impl.types.s;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: CapturedTypeConstructor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class CapturedTypeConstructorKt {

    /* JADX INFO: compiled from: CapturedTypeConstructor.kt */
    static final class a extends Lambda implements Function0<u> {
        final /* synthetic */ g0 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g0 g0Var) {
            super(0);
            this.a = g0Var;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final u invoke() {
            u type = this.a.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "this@createCapturedIfNeeded.type");
            return type;
        }
    }

    /* JADX INFO: compiled from: CapturedTypeConstructor.kt */
    public static final class b extends k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ j0 f9752d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f9753e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(j0 j0Var, boolean z, j0 j0Var2) {
            super(j0Var2);
            this.f9752d = j0Var;
            this.f9753e = z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.j0
        public boolean b() {
            return this.f9753e;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.k, kotlin.reflect.jvm.internal.impl.types.j0
        public g0 e(u key) {
            Intrinsics.checkParameterIsNotNull(key, "key");
            g0 g0VarE = super.e(key);
            if (g0VarE == null) {
                return null;
            }
            f fVarC = key.H0().q();
            return CapturedTypeConstructorKt.a(g0VarE, (i0) (fVarC instanceof i0 ? fVarC : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g0 a(g0 g0Var, i0 i0Var) {
        if (i0Var == null || g0Var.c() == Variance.INVARIANT) {
            return g0Var;
        }
        if (i0Var.j() != g0Var.c()) {
            return new kotlin.reflect.jvm.internal.impl.types.i0(createCapturedType(g0Var));
        }
        if (!g0Var.b()) {
            return new kotlin.reflect.jvm.internal.impl.types.i0(g0Var.getType());
        }
        h hVar = LockBasedStorageManager.b;
        Intrinsics.checkExpressionValueIsNotNull(hVar, "LockBasedStorageManager.NO_LOCKS");
        return new kotlin.reflect.jvm.internal.impl.types.i0(new LazyWrappedType(hVar, new a(g0Var)));
    }

    public static final u createCapturedType(g0 typeProjection) {
        Intrinsics.checkParameterIsNotNull(typeProjection, "typeProjection");
        return new kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a(typeProjection, null, false, null, 14, null);
    }

    public static final boolean isCaptured(u isCaptured) {
        Intrinsics.checkParameterIsNotNull(isCaptured, "$this$isCaptured");
        return isCaptured.H0() instanceof kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b;
    }

    public static final j0 wrapWithCapturingSubstitution(j0 wrapWithCapturingSubstitution, boolean z) {
        Intrinsics.checkParameterIsNotNull(wrapWithCapturingSubstitution, "$this$wrapWithCapturingSubstitution");
        if (!(wrapWithCapturingSubstitution instanceof s)) {
            return new b(wrapWithCapturingSubstitution, z, wrapWithCapturingSubstitution);
        }
        s sVar = (s) wrapWithCapturingSubstitution;
        i0[] i0VarArrI = sVar.i();
        List<Pair> listZip = ArraysKt___ArraysKt.zip(sVar.h(), sVar.i());
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listZip, 10));
        for (Pair pair : listZip) {
            arrayList.add(a((g0) pair.f(), (i0) pair.g()));
        }
        Object[] array = arrayList.toArray(new g0[0]);
        if (array != null) {
            return new s(i0VarArrI, (g0[]) array, z);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public static /* synthetic */ j0 wrapWithCapturingSubstitution$default(j0 j0Var, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return wrapWithCapturingSubstitution(j0Var, z);
    }
}
