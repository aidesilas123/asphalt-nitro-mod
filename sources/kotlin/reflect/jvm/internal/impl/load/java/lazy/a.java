package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.g0;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.i;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.j;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.m;

/* JADX INFO: compiled from: context.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a {
    private final kotlin.reflect.jvm.internal.impl.storage.h a;
    private final i b;
    private final j c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DeserializedDescriptorResolver f9214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.components.j f9215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final m f9216f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.components.f f9217g;
    private final kotlin.reflect.jvm.internal.impl.load.java.components.e h;
    private final kotlin.reflect.jvm.internal.impl.load.java.components.i i;
    private final kotlin.reflect.jvm.internal.impl.load.java.p.b j;
    private final e k;
    private final o l;
    private final g0 m;
    private final kotlin.reflect.jvm.internal.impl.incremental.components.c n;
    private final ModuleDescriptor o;
    private final ReflectionTypes p;
    private final AnnotationTypeQualifierResolver q;
    private final SignatureEnhancement r;
    private final kotlin.reflect.jvm.internal.impl.load.java.j s;
    private final b t;
    private final kotlin.reflect.jvm.internal.impl.types.checker.f u;

    public a(kotlin.reflect.jvm.internal.impl.storage.h storageManager, i finder, j kotlinClassFinder, DeserializedDescriptorResolver deserializedDescriptorResolver, kotlin.reflect.jvm.internal.impl.load.java.components.j signaturePropagator, m errorReporter, kotlin.reflect.jvm.internal.impl.load.java.components.f javaResolverCache, kotlin.reflect.jvm.internal.impl.load.java.components.e javaPropertyInitializerEvaluator, kotlin.reflect.jvm.internal.impl.load.java.components.i samConversionResolver, kotlin.reflect.jvm.internal.impl.load.java.p.b sourceElementFactory, e moduleClassResolver, o packagePartProvider, g0 supertypeLoopChecker, kotlin.reflect.jvm.internal.impl.incremental.components.c lookupTracker, ModuleDescriptor module, ReflectionTypes reflectionTypes, AnnotationTypeQualifierResolver annotationTypeQualifierResolver, SignatureEnhancement signatureEnhancement, kotlin.reflect.jvm.internal.impl.load.java.j javaClassesTracker, b settings, kotlin.reflect.jvm.internal.impl.types.checker.f kotlinTypeChecker) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(finder, "finder");
        Intrinsics.checkParameterIsNotNull(kotlinClassFinder, "kotlinClassFinder");
        Intrinsics.checkParameterIsNotNull(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        Intrinsics.checkParameterIsNotNull(signaturePropagator, "signaturePropagator");
        Intrinsics.checkParameterIsNotNull(errorReporter, "errorReporter");
        Intrinsics.checkParameterIsNotNull(javaResolverCache, "javaResolverCache");
        Intrinsics.checkParameterIsNotNull(javaPropertyInitializerEvaluator, "javaPropertyInitializerEvaluator");
        Intrinsics.checkParameterIsNotNull(samConversionResolver, "samConversionResolver");
        Intrinsics.checkParameterIsNotNull(sourceElementFactory, "sourceElementFactory");
        Intrinsics.checkParameterIsNotNull(moduleClassResolver, "moduleClassResolver");
        Intrinsics.checkParameterIsNotNull(packagePartProvider, "packagePartProvider");
        Intrinsics.checkParameterIsNotNull(supertypeLoopChecker, "supertypeLoopChecker");
        Intrinsics.checkParameterIsNotNull(lookupTracker, "lookupTracker");
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(reflectionTypes, "reflectionTypes");
        Intrinsics.checkParameterIsNotNull(annotationTypeQualifierResolver, "annotationTypeQualifierResolver");
        Intrinsics.checkParameterIsNotNull(signatureEnhancement, "signatureEnhancement");
        Intrinsics.checkParameterIsNotNull(javaClassesTracker, "javaClassesTracker");
        Intrinsics.checkParameterIsNotNull(settings, "settings");
        Intrinsics.checkParameterIsNotNull(kotlinTypeChecker, "kotlinTypeChecker");
        this.a = storageManager;
        this.b = finder;
        this.c = kotlinClassFinder;
        this.f9214d = deserializedDescriptorResolver;
        this.f9215e = signaturePropagator;
        this.f9216f = errorReporter;
        this.f9217g = javaResolverCache;
        this.h = javaPropertyInitializerEvaluator;
        this.i = samConversionResolver;
        this.j = sourceElementFactory;
        this.k = moduleClassResolver;
        this.l = packagePartProvider;
        this.m = supertypeLoopChecker;
        this.n = lookupTracker;
        this.o = module;
        this.p = reflectionTypes;
        this.q = annotationTypeQualifierResolver;
        this.r = signatureEnhancement;
        this.s = javaClassesTracker;
        this.t = settings;
        this.u = kotlinTypeChecker;
    }

    public final AnnotationTypeQualifierResolver a() {
        return this.q;
    }

    public final DeserializedDescriptorResolver b() {
        return this.f9214d;
    }

    public final m c() {
        return this.f9216f;
    }

    public final i d() {
        return this.b;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.j e() {
        return this.s;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.components.e f() {
        return this.h;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.components.f g() {
        return this.f9217g;
    }

    public final j h() {
        return this.c;
    }

    public final kotlin.reflect.jvm.internal.impl.types.checker.f i() {
        return this.u;
    }

    public final kotlin.reflect.jvm.internal.impl.incremental.components.c j() {
        return this.n;
    }

    public final ModuleDescriptor k() {
        return this.o;
    }

    public final e l() {
        return this.k;
    }

    public final o m() {
        return this.l;
    }

    public final ReflectionTypes n() {
        return this.p;
    }

    public final b o() {
        return this.t;
    }

    public final SignatureEnhancement p() {
        return this.r;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.components.j q() {
        return this.f9215e;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.p.b r() {
        return this.j;
    }

    public final kotlin.reflect.jvm.internal.impl.storage.h s() {
        return this.a;
    }

    public final g0 t() {
        return this.m;
    }

    public final a u(kotlin.reflect.jvm.internal.impl.load.java.components.f javaResolverCache) {
        Intrinsics.checkParameterIsNotNull(javaResolverCache, "javaResolverCache");
        return new a(this.a, this.b, this.c, this.f9214d, this.f9215e, this.f9216f, javaResolverCache, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u);
    }
}
