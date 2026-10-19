package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: JvmAnnotationNames.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JvmAnnotationNamesKt {
    private static final List<FqName> a;
    private static final FqName b;
    private static final FqName c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<FqName> f9189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final FqName f9190e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final FqName f9191f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final FqName f9192g;
    private static final FqName h;
    private static final Set<FqName> i;
    private static final List<FqName> j;
    private static final List<FqName> k;

    static {
        List<FqName> listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new FqName[]{n.f9246e, new FqName("androidx.annotation.Nullable"), new FqName("androidx.annotation.Nullable"), new FqName("android.annotation.Nullable"), new FqName("com.android.annotations.Nullable"), new FqName("org.eclipse.jdt.annotation.Nullable"), new FqName("org.checkerframework.checker.nullness.qual.Nullable"), new FqName("javax.annotation.Nullable"), new FqName("javax.annotation.CheckForNull"), new FqName("edu.umd.cs.findbugs.annotations.CheckForNull"), new FqName("edu.umd.cs.findbugs.annotations.Nullable"), new FqName("edu.umd.cs.findbugs.annotations.PossiblyNull"), new FqName("io.reactivex.annotations.Nullable")});
        a = listListOf;
        FqName fqName = new FqName("javax.annotation.Nonnull");
        b = fqName;
        c = new FqName("javax.annotation.CheckForNull");
        List<FqName> listListOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new FqName[]{n.f9245d, new FqName("edu.umd.cs.findbugs.annotations.NonNull"), new FqName("androidx.annotation.NonNull"), new FqName("androidx.annotation.NonNull"), new FqName("android.annotation.NonNull"), new FqName("com.android.annotations.NonNull"), new FqName("org.eclipse.jdt.annotation.NonNull"), new FqName("org.checkerframework.checker.nullness.qual.NonNull"), new FqName("lombok.NonNull"), new FqName("io.reactivex.annotations.NonNull")});
        f9189d = listListOf2;
        FqName fqName2 = new FqName("org.checkerframework.checker.nullness.compatqual.NullableDecl");
        f9190e = fqName2;
        FqName fqName3 = new FqName("org.checkerframework.checker.nullness.compatqual.NonNullDecl");
        f9191f = fqName3;
        FqName fqName4 = new FqName("androidx.annotation.RecentlyNullable");
        f9192g = fqName4;
        FqName fqName5 = new FqName("androidx.annotation.RecentlyNonNull");
        h = fqName5;
        i = SetsKt___SetsKt.plus((Set<? extends FqName>) SetsKt___SetsKt.plus((Set<? extends FqName>) SetsKt___SetsKt.plus((Set<? extends FqName>) SetsKt___SetsKt.plus((Set<? extends FqName>) SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set<? extends FqName>) SetsKt___SetsKt.plus((Set) new LinkedHashSet(), (Iterable) listListOf), fqName), (Iterable) listListOf2), fqName2), fqName3), fqName4), fqName5);
        j = CollectionsKt__CollectionsKt.listOf((Object[]) new FqName[]{n.f9248g, n.h});
        k = CollectionsKt__CollectionsKt.listOf((Object[]) new FqName[]{n.f9247f, n.i});
    }

    public static final FqName getANDROIDX_RECENTLY_NON_NULL_ANNOTATION() {
        return h;
    }

    public static final FqName getANDROIDX_RECENTLY_NULLABLE_ANNOTATION() {
        return f9192g;
    }

    public static final FqName getCOMPATQUAL_NONNULL_ANNOTATION() {
        return f9191f;
    }

    public static final FqName getCOMPATQUAL_NULLABLE_ANNOTATION() {
        return f9190e;
    }

    public static final FqName getJAVAX_CHECKFORNULL_ANNOTATION() {
        return c;
    }

    public static final FqName getJAVAX_NONNULL_ANNOTATION() {
        return b;
    }

    public static final List<FqName> getMUTABLE_ANNOTATIONS() {
        return k;
    }

    public static final List<FqName> getNOT_NULL_ANNOTATIONS() {
        return f9189d;
    }

    public static final List<FqName> getNULLABLE_ANNOTATIONS() {
        return a;
    }

    public static final List<FqName> getREAD_ONLY_ANNOTATIONS() {
        return j;
    }
}
