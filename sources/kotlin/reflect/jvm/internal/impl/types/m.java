package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: KotlinTypeFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class m extends l {
    private final y b;

    public m(y delegate) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        this.b = delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: O0 */
    public y L0(boolean z) {
        return z == I0() ? this : Q0().L0(z).N0(getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    protected y Q0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public m N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return newAnnotations != getAnnotations() ? new g(this, newAnnotations) : this;
    }
}
