package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.util.collectionUtils.ScopeUtilsKt;

/* JADX INFO: compiled from: ChainedMemberScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b implements MemberScope {
    public static final a b = new a(null);
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<MemberScope> f9771d;

    /* JADX INFO: compiled from: ChainedMemberScope.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final MemberScope a(String debugName, List<? extends MemberScope> scopes) {
            Intrinsics.checkParameterIsNotNull(debugName, "debugName");
            Intrinsics.checkParameterIsNotNull(scopes, "scopes");
            int size = scopes.size();
            return size != 0 ? size != 1 ? new b(debugName, scopes) : (MemberScope) p.single((List) scopes) : MemberScope.b.b;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(String debugName, List<? extends MemberScope> scopes) {
        Intrinsics.checkParameterIsNotNull(debugName, "debugName");
        Intrinsics.checkParameterIsNotNull(scopes, "scopes");
        this.c = debugName;
        this.f9771d = scopes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        List<MemberScope> list = this.f9771d;
        if (list.isEmpty()) {
            return SetsKt__SetsKt.emptySet();
        }
        Collection<c0> collectionConcat = null;
        Iterator<MemberScope> it = list.iterator();
        while (it.hasNext()) {
            collectionConcat = ScopeUtilsKt.concat(collectionConcat, it.next().a(name, location));
        }
        return collectionConcat != null ? collectionConcat : SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<Name> b() {
        List<MemberScope> list = this.f9771d;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, ((MemberScope) it.next()).b());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public kotlin.reflect.jvm.internal.impl.descriptors.f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        Iterator<MemberScope> it = this.f9771d.iterator();
        kotlin.reflect.jvm.internal.impl.descriptors.f fVar = null;
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = it.next().c(name, location);
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
        List<MemberScope> list = this.f9771d;
        if (list.isEmpty()) {
            return SetsKt__SetsKt.emptySet();
        }
        Collection<i> collectionConcat = null;
        Iterator<MemberScope> it = list.iterator();
        while (it.hasNext()) {
            collectionConcat = ScopeUtilsKt.concat(collectionConcat, it.next().d(kindFilter, nameFilter));
        }
        return collectionConcat != null ? collectionConcat : SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        List<MemberScope> list = this.f9771d;
        if (list.isEmpty()) {
            return SetsKt__SetsKt.emptySet();
        }
        Collection<y> collectionConcat = null;
        Iterator<MemberScope> it = list.iterator();
        while (it.hasNext()) {
            collectionConcat = ScopeUtilsKt.concat(collectionConcat, it.next().e(name, location));
        }
        return collectionConcat != null ? collectionConcat : SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<Name> f() {
        List<MemberScope> list = this.f9771d;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, ((MemberScope) it.next()).f());
        }
        return linkedHashSet;
    }

    public String toString() {
        return this.c;
    }
}
