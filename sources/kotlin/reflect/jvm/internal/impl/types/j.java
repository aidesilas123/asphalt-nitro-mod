package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: compiled from: SpecialTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class j extends l implements i, kotlin.reflect.jvm.internal.impl.types.model.c {
    public static final a b = new a(null);
    private final y c;

    /* JADX INFO: compiled from: SpecialTypes.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        private final boolean b(m0 m0Var) {
            return TypeUtilsKt.canHaveUndefinedNullability(m0Var) && !kotlin.reflect.jvm.internal.impl.types.checker.h.a.a(m0Var);
        }

        public final j a(m0 type) {
            Intrinsics.checkParameterIsNotNull(type, "type");
            kotlin.jvm.internal.n nVar = null;
            if (type instanceof j) {
                return (j) type;
            }
            if (!b(type)) {
                return null;
            }
            if (type instanceof p) {
                p pVar = (p) type;
                Intrinsics.areEqual(pVar.P0().H0(), pVar.Q0().H0());
            }
            return new j(FlexibleTypesKt.lowerIfFlexible(type), nVar);
        }
    }

    private j(y yVar) {
        this.c = yVar;
    }

    public /* synthetic */ j(y yVar, kotlin.jvm.internal.n nVar) {
        this(yVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l, kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: O0 */
    public y L0(boolean z) {
        return z ? Q0().L0(z) : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    protected y Q0() {
        return this.c;
    }

    public final y T0() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public j N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return new j(Q0().N0(newAnnotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public j S0(y delegate) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        return new j(delegate);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.i
    public u b0(u replacement) {
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        return SpecialTypesKt.makeDefinitelyNotNullOrNotNull(replacement.K0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    public String toString() {
        return Q0() + "!!";
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.i
    public boolean u() {
        Q0().H0();
        return Q0().H0().q() instanceof kotlin.reflect.jvm.internal.impl.descriptors.i0;
    }
}
