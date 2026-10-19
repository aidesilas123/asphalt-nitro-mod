package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;

/* JADX INFO: compiled from: LazyPackageViewDescriptorImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class n extends DeclarationDescriptorImpl implements PackageViewDescriptor {
    static final /* synthetic */ KProperty[] c = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(n.class), "fragments", "getFragments()Ljava/util/List;"))};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.e f9149d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MemberScope f9150e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ModuleDescriptorImpl f9151f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final FqName f9152g;

    /* JADX INFO: compiled from: LazyPackageViewDescriptorImpl.kt */
    static final class a extends Lambda implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.s>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<kotlin.reflect.jvm.internal.impl.descriptors.s> invoke() {
            return n.this.v0().e0().a(n.this.e());
        }
    }

    /* JADX INFO: compiled from: LazyPackageViewDescriptorImpl.kt */
    static final class b extends Lambda implements Function0<MemberScope> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final MemberScope invoke() {
            if (n.this.a0().isEmpty()) {
                return MemberScope.b.b;
            }
            List<kotlin.reflect.jvm.internal.impl.descriptors.s> listA0 = n.this.a0();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listA0, 10));
            Iterator<T> it = listA0.iterator();
            while (it.hasNext()) {
                arrayList.add(((kotlin.reflect.jvm.internal.impl.descriptors.s) it.next()).m());
            }
            return new kotlin.reflect.jvm.internal.impl.resolve.scopes.b("package view scope for " + n.this.e() + " in " + n.this.v0().getName(), CollectionsKt___CollectionsKt.plus((Collection<? extends x>) arrayList, new x(n.this.v0(), n.this.e())));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(ModuleDescriptorImpl module, FqName fqName, kotlin.reflect.jvm.internal.impl.storage.h storageManager) {
        super(Annotations.e0.b(), fqName.h());
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        this.f9151f = module;
        this.f9152g = fqName;
        this.f9149d = storageManager.c(new a());
        this.f9150e = new kotlin.reflect.jvm.internal.impl.resolve.scopes.e(storageManager.c(new b()));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public PackageViewDescriptor b() {
        if (e().d()) {
            return null;
        }
        ModuleDescriptorImpl moduleDescriptorImplV0 = v0();
        FqName fqNameE = e().e();
        Intrinsics.checkExpressionValueIsNotNull(fqNameE, "fqName.parent()");
        return moduleDescriptorImplV0.d0(fqNameE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    public List<kotlin.reflect.jvm.internal.impl.descriptors.s> a0() {
        return (List) StorageKt.getValue(this.f9149d, this, (KProperty<?>) c[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public ModuleDescriptorImpl v0() {
        return this.f9151f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    public FqName e() {
        return this.f9152g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PackageViewDescriptor)) {
            obj = null;
        }
        PackageViewDescriptor packageViewDescriptor = (PackageViewDescriptor) obj;
        return packageViewDescriptor != null && Intrinsics.areEqual(e(), packageViewDescriptor.e()) && Intrinsics.areEqual(v0(), packageViewDescriptor.v0());
    }

    public int hashCode() {
        return (v0().hashCode() * 31) + e().hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    public boolean isEmpty() {
        return PackageViewDescriptor.DefaultImpls.isEmpty(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    public MemberScope m() {
        return this.f9150e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> visitor, D d2) {
        Intrinsics.checkParameterIsNotNull(visitor, "visitor");
        return visitor.b(this, d2);
    }
}
