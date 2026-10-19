package kotlin.reflect.full;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: exceptions.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(IllegalAccessException cause) {
        super(cause);
        Intrinsics.checkParameterIsNotNull(cause, "cause");
    }
}
