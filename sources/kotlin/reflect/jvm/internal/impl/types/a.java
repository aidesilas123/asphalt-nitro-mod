package kotlin.reflect.jvm.internal.impl.types;

import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: SpecialTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a extends l {
    private final y b;
    private final y c;

    public a(y delegate, y abbreviation) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        Intrinsics.checkParameterIsNotNull(abbreviation, "abbreviation");
        this.b = delegate;
        this.c = abbreviation;
    }

    public final y D() {
        return Q0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    protected y Q0() {
        return this.b;
    }

    public final y T0() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public a L0(boolean z) {
        return new a(Q0().L0(z), this.c.L0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public a R0(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        u uVarG = kotlinTypeRefiner.g(Q0());
        if (uVarG == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        }
        y yVar = (y) uVarG;
        u uVarG2 = kotlinTypeRefiner.g(this.c);
        if (uVarG2 != null) {
            return new a(yVar, (y) uVarG2);
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    /* JADX INFO: renamed from: W0, reason: merged with bridge method [inline-methods] */
    public a N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return new a(Q0().N0(newAnnotations), this.c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    /* JADX INFO: renamed from: X0, reason: merged with bridge method [inline-methods] */
    public a S0(y delegate) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        return new a(delegate, this.c);
    }
}
