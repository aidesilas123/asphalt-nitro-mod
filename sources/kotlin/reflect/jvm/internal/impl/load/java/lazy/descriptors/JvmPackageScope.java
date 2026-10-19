package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.incremental.UtilsKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.r;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.util.collectionUtils.ScopeUtilsKt;

/* JADX INFO: compiled from: JvmPackageScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JvmPackageScope implements MemberScope {
    static final /* synthetic */ KProperty[] b = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(JvmPackageScope.class), "kotlinScopes", "getKotlinScopes()Ljava/util/List;"))};
    private final LazyJavaPackageScope c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.e f9222d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.lazy.d f9223e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final LazyJavaPackageFragment f9224f;

    /* JADX INFO: compiled from: JvmPackageScope.kt */
    static final class a extends Lambda implements Function0<List<? extends MemberScope>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<MemberScope> invoke() {
            Collection<k> collectionValues = JvmPackageScope.this.f9224f.e0().values();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                MemberScope memberScopeA = JvmPackageScope.this.f9223e.a().b().a(JvmPackageScope.this.f9224f, (k) it.next());
                if (memberScopeA != null) {
                    arrayList.add(memberScopeA);
                }
            }
            return CollectionsKt___CollectionsKt.toList(arrayList);
        }
    }

    public JvmPackageScope(kotlin.reflect.jvm.internal.impl.load.java.lazy.d c, r jPackage, LazyJavaPackageFragment packageFragment) {
        Intrinsics.checkParameterIsNotNull(c, "c");
        Intrinsics.checkParameterIsNotNull(jPackage, "jPackage");
        Intrinsics.checkParameterIsNotNull(packageFragment, "packageFragment");
        this.f9223e = c;
        this.f9224f = packageFragment;
        this.c = new LazyJavaPackageScope(c, jPackage, packageFragment);
        this.f9222d = c.e().c(new a());
    }

    private final List<MemberScope> h() {
        return (List) StorageKt.getValue(this.f9222d, this, (KProperty<?>) b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        i(name, location);
        LazyJavaPackageScope lazyJavaPackageScope = this.c;
        List<MemberScope> listH = h();
        Collection<? extends c0> collectionA = lazyJavaPackageScope.a(name, location);
        Iterator<MemberScope> it = listH.iterator();
        Collection collectionConcat = collectionA;
        while (it.hasNext()) {
            collectionConcat = ScopeUtilsKt.concat(collectionConcat, it.next().a(name, location));
        }
        return collectionConcat != null ? collectionConcat : SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<Name> b() {
        List<MemberScope> listH = h();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = listH.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, ((MemberScope) it.next()).b());
        }
        linkedHashSet.addAll(this.c.b());
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        i(name, location);
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarG = this.c.c(name, location);
        if (dVarG != null) {
            return dVarG;
        }
        f fVar = null;
        Iterator<MemberScope> it = h().iterator();
        while (it.hasNext()) {
            f fVarC = it.next().c(name, location);
            if (fVarC != null) {
                if (!(fVarC instanceof g) || !((g) fVarC).c0()) {
                    return fVarC;
                }
                if (fVar == null) {
                    fVar = fVarC;
                }
            }
        }
        return fVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<i> d(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        LazyJavaPackageScope lazyJavaPackageScope = this.c;
        List<MemberScope> listH = h();
        Collection<i> collectionD = lazyJavaPackageScope.d(kindFilter, nameFilter);
        Iterator<MemberScope> it = listH.iterator();
        while (it.hasNext()) {
            collectionD = ScopeUtilsKt.concat(collectionD, it.next().d(kindFilter, nameFilter));
        }
        return collectionD != null ? collectionD : SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        i(name, location);
        LazyJavaPackageScope lazyJavaPackageScope = this.c;
        List<MemberScope> listH = h();
        Collection<? extends y> collectionE = lazyJavaPackageScope.e(name, location);
        Iterator<MemberScope> it = listH.iterator();
        Collection collectionConcat = collectionE;
        while (it.hasNext()) {
            collectionConcat = ScopeUtilsKt.concat(collectionConcat, it.next().e(name, location));
        }
        return collectionConcat != null ? collectionConcat : SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<Name> f() {
        List<MemberScope> listH = h();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = listH.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, ((MemberScope) it.next()).f());
        }
        linkedHashSet.addAll(this.c.f());
        return linkedHashSet;
    }

    public final LazyJavaPackageScope g() {
        return this.c;
    }

    public void i(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        UtilsKt.record(this.f9223e.a().j(), location, this.f9224f, name);
    }
}
