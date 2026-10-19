package kotlin.reflect.jvm.internal.calls;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Caller.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class CallerKt {
    public static final int getArity(Caller<?> arity) {
        Intrinsics.checkParameterIsNotNull(arity, "$this$arity");
        return arity.a().size();
    }
}
