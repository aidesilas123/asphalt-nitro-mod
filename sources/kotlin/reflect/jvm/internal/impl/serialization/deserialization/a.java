package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: AbstractDeserializedPackageFragmentProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class a implements kotlin.reflect.jvm.internal.impl.descriptors.t {
    protected j a;
    private final kotlin.reflect.jvm.internal.impl.storage.c<FqName, kotlin.reflect.jvm.internal.impl.descriptors.s> b;
    private final kotlin.reflect.jvm.internal.impl.storage.h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f9788d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ModuleDescriptor f9789e;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractDeserializedPackageFragmentProvider.kt */
    static final class C0545a extends Lambda implements Function1<FqName, l> {
        C0545a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l invoke(FqName fqName) {
            Intrinsics.checkParameterIsNotNull(fqName, "fqName");
            l lVarB = a.this.b(fqName);
            if (lVarB == null) {
                return null;
            }
            lVarB.k0(a.this.c());
            return lVarB;
        }
    }

    public a(kotlin.reflect.jvm.internal.impl.storage.h storageManager, p finder, ModuleDescriptor moduleDescriptor) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(finder, "finder");
        Intrinsics.checkParameterIsNotNull(moduleDescriptor, "moduleDescriptor");
        this.c = storageManager;
        this.f9788d = finder;
        this.f9789e = moduleDescriptor;
        this.b = storageManager.g(new C0545a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t
    public List<kotlin.reflect.jvm.internal.impl.descriptors.s> a(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return CollectionsKt__CollectionsKt.listOfNotNull(this.b.invoke(fqName));
    }

    protected abstract l b(FqName fqName);

    protected final j c() {
        j jVar = this.a;
        if (jVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("components");
        }
        return jVar;
    }

    protected final p d() {
        return this.f9788d;
    }

    protected final ModuleDescriptor e() {
        return this.f9789e;
    }

    protected final kotlin.reflect.jvm.internal.impl.storage.h f() {
        return this.c;
    }

    protected final void g(j jVar) {
        Intrinsics.checkParameterIsNotNull(jVar, "<set-?>");
        this.a = jVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t
    public Collection<FqName> l(FqName fqName, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        return SetsKt__SetsKt.emptySet();
    }
}
