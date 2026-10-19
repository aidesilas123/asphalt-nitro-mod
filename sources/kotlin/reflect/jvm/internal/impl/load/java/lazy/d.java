package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver;

/* JADX INFO: compiled from: context.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d {
    private final Lazy a;
    private final JavaTypeResolver b;
    private final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h f9218d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy<c> f9219e;

    public d(a components, h typeParameterResolver, Lazy<c> delegateForDefaultTypeQualifiers) {
        Intrinsics.checkParameterIsNotNull(components, "components");
        Intrinsics.checkParameterIsNotNull(typeParameterResolver, "typeParameterResolver");
        Intrinsics.checkParameterIsNotNull(delegateForDefaultTypeQualifiers, "delegateForDefaultTypeQualifiers");
        this.c = components;
        this.f9218d = typeParameterResolver;
        this.f9219e = delegateForDefaultTypeQualifiers;
        this.a = delegateForDefaultTypeQualifiers;
        this.b = new JavaTypeResolver(this, typeParameterResolver);
    }

    public final a a() {
        return this.c;
    }

    public final c b() {
        return (c) this.a.getValue();
    }

    public final Lazy<c> c() {
        return this.f9219e;
    }

    public final ModuleDescriptor d() {
        return this.c.k();
    }

    public final kotlin.reflect.jvm.internal.impl.storage.h e() {
        return this.c.s();
    }

    public final h f() {
        return this.f9218d;
    }

    public final JavaTypeResolver g() {
        return this.b;
    }
}
