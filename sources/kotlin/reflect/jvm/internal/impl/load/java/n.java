package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;

/* JADX INFO: compiled from: JvmAnnotationNames.java */
/* JADX INFO: loaded from: classes5.dex */
public final class n {
    public static final FqName a;
    public static final String b;
    public static final Name c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final FqName f9245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FqName f9246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FqName f9247f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final FqName f9248g;
    public static final FqName h;
    public static final FqName i;
    public static final FqName j;
    public static final FqName k;
    public static final FqName l;
    public static final FqName m;
    public static final FqName n;
    public static final FqName o;

    static {
        FqName fqName = new FqName("kotlin.Metadata");
        a = fqName;
        b = "L" + JvmClassName.byFqNameWithoutInnerClasses(fqName).c() + ";";
        c = Name.identifier("value");
        f9245d = new FqName("org.jetbrains.annotations.NotNull");
        f9246e = new FqName("org.jetbrains.annotations.Nullable");
        f9247f = new FqName("org.jetbrains.annotations.Mutable");
        f9248g = new FqName("org.jetbrains.annotations.ReadOnly");
        h = new FqName("kotlin.annotations.jvm.ReadOnly");
        i = new FqName("kotlin.annotations.jvm.Mutable");
        j = new FqName("kotlin.jvm.PurelyImplements");
        k = new FqName("kotlin.jvm.internal.EnhancedNullability");
        l = new FqName("kotlin.jvm.internal.EnhancedMutability");
        m = new FqName("kotlin.annotations.jvm.internal.ParameterName");
        n = new FqName("kotlin.annotations.jvm.internal.DefaultValue");
        o = new FqName("kotlin.annotations.jvm.internal.DefaultNull");
    }
}
