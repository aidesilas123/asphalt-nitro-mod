package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: ReflectionTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ReflectionTypesKt {
    private static final FqName a = new FqName("kotlin.reflect");
    private static final String b = "KProperty";
    private static final String c = "KMutableProperty";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f9053d = "KFunction";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f9054e = "KSuspendFunction";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final List<String> f9055f = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"KProperty", "KMutableProperty", "KFunction", "KSuspendFunction"});

    public static final FqName getKOTLIN_REFLECT_FQ_NAME() {
        return a;
    }
}
