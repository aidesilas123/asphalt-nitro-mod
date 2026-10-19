package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: JavaAnnotationMapper.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b {
    private static final FqName a;
    private static final FqName b;
    private static final FqName c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final FqName f9198d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final FqName f9199e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Name f9200f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Name f9201g;
    private static final Name h;
    private static final Map<FqName, FqName> i;
    private static final Map<FqName, FqName> j;
    public static final b k = new b();

    static {
        FqName fqName = new FqName(Target.class.getCanonicalName());
        a = fqName;
        FqName fqName2 = new FqName(Retention.class.getCanonicalName());
        b = fqName2;
        FqName fqName3 = new FqName(Deprecated.class.getCanonicalName());
        c = fqName3;
        FqName fqName4 = new FqName(Documented.class.getCanonicalName());
        f9198d = fqName4;
        FqName fqName5 = new FqName("java.lang.annotation.Repeatable");
        f9199e = fqName5;
        Name nameIdentifier = Name.identifier("message");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(\"message\")");
        f9200f = nameIdentifier;
        Name nameIdentifier2 = Name.identifier("allowedTargets");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier2, "Name.identifier(\"allowedTargets\")");
        f9201g = nameIdentifier2;
        Name nameIdentifier3 = Name.identifier("value");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier3, "Name.identifier(\"value\")");
        h = nameIdentifier3;
        KotlinBuiltIns.e eVar = KotlinBuiltIns.h;
        i = MapsKt__MapsKt.mapOf(TuplesKt.to(eVar.D, fqName), TuplesKt.to(eVar.G, fqName2), TuplesKt.to(eVar.H, fqName5), TuplesKt.to(eVar.I, fqName4));
        j = MapsKt__MapsKt.mapOf(TuplesKt.to(fqName, eVar.D), TuplesKt.to(fqName2, eVar.G), TuplesKt.to(fqName3, eVar.x), TuplesKt.to(fqName5, eVar.H), TuplesKt.to(fqName4, eVar.I));
    }

    private b() {
    }

    public final AnnotationDescriptor a(FqName kotlinName, kotlin.reflect.jvm.internal.impl.load.java.structure.c annotationOwner, kotlin.reflect.jvm.internal.impl.load.java.lazy.d c2) {
        JavaAnnotation javaAnnotationB;
        JavaAnnotation javaAnnotationB2;
        Intrinsics.checkParameterIsNotNull(kotlinName, "kotlinName");
        Intrinsics.checkParameterIsNotNull(annotationOwner, "annotationOwner");
        Intrinsics.checkParameterIsNotNull(c2, "c");
        if (Intrinsics.areEqual(kotlinName, KotlinBuiltIns.h.x) && ((javaAnnotationB2 = annotationOwner.b(c)) != null || annotationOwner.x())) {
            return new d(javaAnnotationB2, c2);
        }
        FqName fqName = i.get(kotlinName);
        if (fqName == null || (javaAnnotationB = annotationOwner.b(fqName)) == null) {
            return null;
        }
        return k.e(javaAnnotationB, c2);
    }

    public final Name b() {
        return f9200f;
    }

    public final Name c() {
        return h;
    }

    public final Name d() {
        return f9201g;
    }

    public final AnnotationDescriptor e(JavaAnnotation annotation, kotlin.reflect.jvm.internal.impl.load.java.lazy.d c2) {
        Intrinsics.checkParameterIsNotNull(annotation, "annotation");
        Intrinsics.checkParameterIsNotNull(c2, "c");
        ClassId classIdA = annotation.a();
        if (Intrinsics.areEqual(classIdA, ClassId.topLevel(a))) {
            return new h(annotation, c2);
        }
        if (Intrinsics.areEqual(classIdA, ClassId.topLevel(b))) {
            return new g(annotation, c2);
        }
        if (Intrinsics.areEqual(classIdA, ClassId.topLevel(f9199e))) {
            FqName fqName = KotlinBuiltIns.h.H;
            Intrinsics.checkExpressionValueIsNotNull(fqName, "KotlinBuiltIns.FQ_NAMES.repeatable");
            return new a(c2, annotation, fqName);
        }
        if (Intrinsics.areEqual(classIdA, ClassId.topLevel(f9198d))) {
            FqName fqName2 = KotlinBuiltIns.h.I;
            Intrinsics.checkExpressionValueIsNotNull(fqName2, "KotlinBuiltIns.FQ_NAMES.mustBeDocumented");
            return new a(c2, annotation, fqName2);
        }
        if (Intrinsics.areEqual(classIdA, ClassId.topLevel(c))) {
            return null;
        }
        return new LazyJavaAnnotationDescriptor(c2, annotation);
    }
}
