package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReflectJavaClassFinder.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ReflectJavaClassFinderKt {
    public static final Class<?> tryLoadClass(ClassLoader tryLoadClass, String fqName) {
        Intrinsics.checkParameterIsNotNull(tryLoadClass, "$this$tryLoadClass");
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        try {
            return Class.forName(fqName, false, tryLoadClass);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
