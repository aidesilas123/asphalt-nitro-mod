package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BuiltInsResourceLoader.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class c {
    public final InputStream a(String path) {
        InputStream resourceAsStream;
        Intrinsics.checkParameterIsNotNull(path, "path");
        ClassLoader classLoader = c.class.getClassLoader();
        return (classLoader == null || (resourceAsStream = classLoader.getResourceAsStream(path)) == null) ? ClassLoader.getSystemResourceAsStream(path) : resourceAsStream;
    }
}
