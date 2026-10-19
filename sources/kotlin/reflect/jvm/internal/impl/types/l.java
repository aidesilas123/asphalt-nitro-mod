package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: SpecialTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class l extends y {
    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public List<g0> G0() {
        return Q0().G0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public f0 H0() {
        return Q0().H0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return Q0().I0();
    }

    protected abstract y Q0();

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    public y R0(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        u uVarG = kotlinTypeRefiner.g(Q0());
        if (uVarG != null) {
            return S0((y) uVarG);
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
    }

    public abstract l S0(y yVar);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return Q0().getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public MemberScope m() {
        return Q0().m();
    }
}
