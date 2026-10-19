package kotlin.reflect.jvm.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KotlinReflectionInternalError.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class o extends Error {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(String message) {
        super(message);
        Intrinsics.checkParameterIsNotNull(message, "message");
    }
}
