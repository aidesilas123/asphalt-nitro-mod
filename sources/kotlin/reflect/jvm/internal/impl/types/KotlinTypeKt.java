package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KotlinType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KotlinTypeKt {
    public static final boolean isError(u isError) {
        Intrinsics.checkParameterIsNotNull(isError, "$this$isError");
        m0 m0VarK0 = isError.K0();
        return (m0VarK0 instanceof o) || ((m0VarK0 instanceof p) && (((p) m0VarK0).O0() instanceof o));
    }
}
