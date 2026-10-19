package kotlin.reflect.jvm.internal.impl.name;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: NameUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class NameUtils {
    public static final NameUtils b = new NameUtils();
    private static final Regex a = new Regex("[^\\p{L}\\p{Digit}]");

    private NameUtils() {
    }

    public static final String sanitizeAsJavaIdentifier(String name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return a.f(name, "_");
    }
}
