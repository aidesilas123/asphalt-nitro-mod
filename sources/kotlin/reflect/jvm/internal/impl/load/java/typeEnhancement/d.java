package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.l;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.p;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: typeEnhancement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d extends l implements kotlin.reflect.jvm.internal.impl.types.i {
    private final y b;

    public d(y delegate) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        this.b = delegate;
    }

    private final y T0(y yVar) {
        y yVarL0 = yVar.L0(false);
        return !TypeUtilsKt.isTypeParameter(yVar) ? yVarL0 : new d(yVarL0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l, kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: O0 */
    public y L0(boolean z) {
        return z ? Q0().L0(true) : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    protected y Q0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public d N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return new d(Q0().N0(newAnnotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public d S0(y delegate) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        return new d(delegate);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.i
    public u b0(u replacement) {
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        m0 m0VarK0 = replacement.K0();
        if (!TypeUtils.isNullableType(m0VarK0) && !TypeUtilsKt.isTypeParameter(m0VarK0)) {
            return m0VarK0;
        }
        if (m0VarK0 instanceof y) {
            return T0((y) m0VarK0);
        }
        if (m0VarK0 instanceof p) {
            p pVar = (p) m0VarK0;
            return TypeWithEnhancementKt.wrapEnhancement(KotlinTypeFactory.flexibleType(T0(pVar.P0()), T0(pVar.Q0())), TypeWithEnhancementKt.getEnhancement(m0VarK0));
        }
        throw new IllegalStateException(("Incorrect type: " + m0VarK0).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.i
    public boolean u() {
        return true;
    }
}
