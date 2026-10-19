package kotlin.reflect.jvm.internal.impl.types;

import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: TypeWithEnhancement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a0 extends l implements k0 {
    private final y b;
    private final u c;

    public a0(y delegate, u enhancement) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        Intrinsics.checkParameterIsNotNull(enhancement, "enhancement");
        this.b = delegate;
        this.c = enhancement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: O0 */
    public y L0(boolean z) {
        m0 m0VarWrapEnhancement = TypeWithEnhancementKt.wrapEnhancement(z0().L0(z), Z().K0().L0(z));
        if (m0VarWrapEnhancement != null) {
            return (y) m0VarWrapEnhancement;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: P0 */
    public y N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        m0 m0VarWrapEnhancement = TypeWithEnhancementKt.wrapEnhancement(z0().N0(newAnnotations), Z());
        if (m0VarWrapEnhancement != null) {
            return (y) m0VarWrapEnhancement;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    protected y Q0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public a0 R0(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        u uVarG = kotlinTypeRefiner.g(Q0());
        if (uVarG != null) {
            return new a0((y) uVarG, kotlinTypeRefiner.g(Z()));
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public a0 S0(y delegate) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        return new a0(delegate, Z());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.k0
    public u Z() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.k0
    public m0 z0() {
        return Q0();
    }
}
