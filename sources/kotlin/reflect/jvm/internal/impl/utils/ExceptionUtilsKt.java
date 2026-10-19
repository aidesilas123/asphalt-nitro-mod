package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: exceptionUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ExceptionUtilsKt {
    public static final boolean isProcessCanceledException(Throwable isProcessCanceledException) {
        Intrinsics.checkParameterIsNotNull(isProcessCanceledException, "$this$isProcessCanceledException");
        Class<?> superclass = isProcessCanceledException.getClass();
        while (!Intrinsics.areEqual(superclass.getCanonicalName(), "com.intellij.openapi.progress.ProcessCanceledException")) {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                return false;
            }
        }
        return true;
    }

    public static final RuntimeException rethrow(Throwable e2) throws Throwable {
        Intrinsics.checkParameterIsNotNull(e2, "e");
        throw e2;
    }
}
