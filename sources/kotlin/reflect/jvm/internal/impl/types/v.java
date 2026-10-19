package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KotlinTypeFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
final class v extends m {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(y delegate) {
        super(delegate);
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l, kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public v S0(y delegate) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        return new v(delegate);
    }
}
