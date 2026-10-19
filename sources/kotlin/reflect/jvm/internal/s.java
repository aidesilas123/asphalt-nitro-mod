package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: moduleByClassLoader.kt */
/* JADX INFO: loaded from: classes5.dex */
final class s {
    private final WeakReference<ClassLoader> a;
    private final int b;
    private ClassLoader c;

    public s(ClassLoader classLoader) {
        Intrinsics.checkParameterIsNotNull(classLoader, "classLoader");
        this.a = new WeakReference<>(classLoader);
        this.b = System.identityHashCode(classLoader);
        this.c = classLoader;
    }

    public final void a(ClassLoader classLoader) {
        this.c = classLoader;
    }

    public boolean equals(Object obj) {
        return (obj instanceof s) && this.a.get() == ((s) obj).a.get();
    }

    public int hashCode() {
        return this.b;
    }

    public String toString() {
        String string;
        ClassLoader classLoader = this.a.get();
        return (classLoader == null || (string = classLoader.toString()) == null) ? "<null>" : string;
    }
}
