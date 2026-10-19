package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KotlinTypeFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
final class w extends m {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(y delegate) {
        super(delegate);
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l, kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public w S0(y delegate) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        return new w(delegate);
    }
}
