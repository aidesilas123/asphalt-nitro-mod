package kotlin.reflect.jvm.internal.impl.storage;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: storage.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class StorageKt {
    public static final <T> T getValue(e<? extends T> getValue, Object obj, KProperty<?> p) {
        Intrinsics.checkParameterIsNotNull(getValue, "$this$getValue");
        Intrinsics.checkParameterIsNotNull(p, "p");
        return getValue.invoke();
    }

    public static final <T> T getValue(f<? extends T> getValue, Object obj, KProperty<?> p) {
        Intrinsics.checkParameterIsNotNull(getValue, "$this$getValue");
        Intrinsics.checkParameterIsNotNull(p, "p");
        return getValue.invoke();
    }
}
