package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: dynamicTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DynamicTypesKt {
    public static final boolean isDynamic(u isDynamic) {
        Intrinsics.checkParameterIsNotNull(isDynamic, "$this$isDynamic");
        return isDynamic.K0() instanceof n;
    }
}
