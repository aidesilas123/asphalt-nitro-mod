package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ReflectJavaPackage.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class p extends j implements kotlin.reflect.jvm.internal.impl.load.java.structure.r {
    private final FqName a;

    public p(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        this.a = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    public JavaAnnotation b(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.r
    public FqName e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof p) && Intrinsics.areEqual(e(), ((p) obj).e());
    }

    public int hashCode() {
        return e().hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public List<JavaAnnotation> getAnnotations() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.r
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.r> q() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    public String toString() {
        return p.class.getName() + ": " + e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    public boolean x() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.r
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.f> z(Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        return CollectionsKt__CollectionsKt.emptyList();
    }
}
