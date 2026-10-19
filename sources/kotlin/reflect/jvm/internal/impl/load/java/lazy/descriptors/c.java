package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.UtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.f;
import kotlin.reflect.jvm.internal.impl.load.java.structure.o;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.v;

/* JADX INFO: compiled from: LazyJavaStaticClassScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class c extends kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d {
    private final f n;
    private final LazyJavaClassDescriptor o;

    /* JADX INFO: compiled from: LazyJavaStaticClassScope.kt */
    static final class a extends Lambda implements Function1<o, Boolean> {
        public static final a a = new a();

        a() {
            super(1);
        }

        public final boolean a(o it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return it.J();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(o oVar) {
            return Boolean.valueOf(a(oVar));
        }
    }

    /* JADX INFO: compiled from: LazyJavaStaticClassScope.kt */
    static final class b extends Lambda implements Function1<MemberScope, Collection<? extends y>> {
        final /* synthetic */ Name a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Name name) {
            super(1);
            this.a = name;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<? extends y> invoke(MemberScope it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return it.e(this.a, NoLookupLocation.WHEN_GET_SUPER_MEMBERS);
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LazyJavaStaticClassScope.kt */
    static final class C0529c extends Lambda implements Function1<MemberScope, Set<? extends Name>> {
        public static final C0529c a = new C0529c();

        C0529c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<Name> invoke(MemberScope it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return it.f();
        }
    }

    /* JADX INFO: compiled from: LazyJavaStaticClassScope.kt */
    static final class d<N> implements DFS.d<N> {
        public static final d a = new d();

        /* JADX INFO: compiled from: LazyJavaStaticClassScope.kt */
        static final class a extends Lambda implements Function1<u, kotlin.reflect.jvm.internal.impl.descriptors.d> {
            public static final a a = new a();

            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke(u uVar) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = uVar.H0().q();
                if (!(fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                    fVarQ = null;
                }
                return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ;
            }
        }

        d() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Iterable<kotlin.reflect.jvm.internal.impl.descriptors.d> a(kotlin.reflect.jvm.internal.impl.descriptors.d it) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            f0 f0VarI = it.i();
            Intrinsics.checkExpressionValueIsNotNull(f0VarI, "it.typeConstructor");
            Collection<u> collectionH = f0VarI.h();
            Intrinsics.checkExpressionValueIsNotNull(collectionH, "it.typeConstructor.supertypes");
            return SequencesKt___SequencesKt.asIterable(SequencesKt___SequencesKt.mapNotNull(CollectionsKt___CollectionsKt.asSequence(collectionH), a.a));
        }
    }

    /* JADX INFO: compiled from: LazyJavaStaticClassScope.kt */
    public static final class e extends DFS.b<kotlin.reflect.jvm.internal.impl.descriptors.d, v> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d a;
        final /* synthetic */ Set b;
        final /* synthetic */ Function1 c;

        e(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Set set, Function1 function1) {
            this.a = dVar;
            this.b = set;
            this.c = function1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.e
        public /* bridge */ /* synthetic */ Object a() {
            e();
            return v.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean c(kotlin.reflect.jvm.internal.impl.descriptors.d current) {
            Intrinsics.checkParameterIsNotNull(current, "current");
            if (current == this.a) {
                return true;
            }
            MemberScope memberScopeF0 = current.f0();
            Intrinsics.checkExpressionValueIsNotNull(memberScopeF0, "current.staticScope");
            if (!(memberScopeF0 instanceof kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d)) {
                return true;
            }
            this.b.addAll((Collection) this.c.invoke(memberScopeF0));
            return false;
        }

        public void e() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(kotlin.reflect.jvm.internal.impl.load.java.lazy.d c, f jClass, LazyJavaClassDescriptor ownerDescriptor) {
        super(c);
        Intrinsics.checkParameterIsNotNull(c, "c");
        Intrinsics.checkParameterIsNotNull(jClass, "jClass");
        Intrinsics.checkParameterIsNotNull(ownerDescriptor, "ownerDescriptor");
        this.n = jClass;
        this.o = ownerDescriptor;
    }

    private final <R> Set<R> F(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Set<R> set, Function1<? super MemberScope, ? extends Collection<? extends R>> function1) {
        DFS.dfs(CollectionsKt__CollectionsJVMKt.listOf(dVar), d.a, new e(dVar, set, function1));
        return set;
    }

    private final y H(y yVar) {
        CallableMemberDescriptor.Kind kind = yVar.getKind();
        Intrinsics.checkExpressionValueIsNotNull(kind, "this.kind");
        if (kind.e()) {
            return yVar;
        }
        Collection<? extends y> collectionD = yVar.d();
        Intrinsics.checkExpressionValueIsNotNull(collectionD, "this.overriddenDescriptors");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionD, 10));
        for (y it : collectionD) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(H(it));
        }
        return (y) p.single(CollectionsKt___CollectionsKt.distinct(arrayList));
    }

    private final Set<c0> I(Name name, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        c parentJavaStaticClassScope = UtilKt.getParentJavaStaticClassScope(dVar);
        return parentJavaStaticClassScope != null ? CollectionsKt___CollectionsKt.toSet(parentJavaStaticClassScope.a(name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS)) : SetsKt__SetsKt.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public ClassDeclaredMemberIndex j() {
        return new ClassDeclaredMemberIndex(this.n, a.a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public LazyJavaClassDescriptor v() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public kotlin.reflect.jvm.internal.impl.descriptors.f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<Name> g(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        return SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<Name> i(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Set<Name> mutableSet = CollectionsKt___CollectionsKt.toMutableSet(r().invoke().a());
        c parentJavaStaticClassScope = UtilKt.getParentJavaStaticClassScope(v());
        Set<Name> setB = parentJavaStaticClassScope != null ? parentJavaStaticClassScope.b() : null;
        if (setB == null) {
            setB = SetsKt__SetsKt.emptySet();
        }
        mutableSet.addAll(setB);
        if (this.n.r()) {
            mutableSet.addAll(CollectionsKt__CollectionsKt.listOf((Object[]) new Name[]{DescriptorUtils.b, DescriptorUtils.a}));
        }
        return mutableSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void l(Collection<c0> result, Name name) {
        Intrinsics.checkParameterIsNotNull(result, "result");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Collection<? extends c0> collectionResolveOverridesForStaticMembers = DescriptorResolverUtils.resolveOverridesForStaticMembers(name, I(name, v()), result, v(), q().a().c(), q().a().i().a());
        Intrinsics.checkExpressionValueIsNotNull(collectionResolveOverridesForStaticMembers, "resolveOverridesForStati….overridingUtil\n        )");
        result.addAll(collectionResolveOverridesForStaticMembers);
        if (this.n.r()) {
            if (Intrinsics.areEqual(name, DescriptorUtils.b)) {
                c0 c0VarCreateEnumValueOfMethod = DescriptorFactory.createEnumValueOfMethod(v());
                Intrinsics.checkExpressionValueIsNotNull(c0VarCreateEnumValueOfMethod, "createEnumValueOfMethod(ownerDescriptor)");
                result.add(c0VarCreateEnumValueOfMethod);
            } else if (Intrinsics.areEqual(name, DescriptorUtils.a)) {
                c0 c0VarCreateEnumValuesMethod = DescriptorFactory.createEnumValuesMethod(v());
                Intrinsics.checkExpressionValueIsNotNull(c0VarCreateEnumValuesMethod, "createEnumValuesMethod(ownerDescriptor)");
                result.add(c0VarCreateEnumValuesMethod);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d, kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void m(Name name, Collection<y> result) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(result, "result");
        Set setF = F(v(), new LinkedHashSet(), new b(name));
        if (!result.isEmpty()) {
            Collection<? extends y> collectionResolveOverridesForStaticMembers = DescriptorResolverUtils.resolveOverridesForStaticMembers(name, setF, result, v(), q().a().c(), q().a().i().a());
            Intrinsics.checkExpressionValueIsNotNull(collectionResolveOverridesForStaticMembers, "resolveOverridesForStati…ingUtil\n                )");
            result.addAll(collectionResolveOverridesForStaticMembers);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : setF) {
            y yVarH = H((y) obj);
            Object arrayList = linkedHashMap.get(yVarH);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(yVarH, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, DescriptorResolverUtils.resolveOverridesForStaticMembers(name, (Collection) ((Map.Entry) it.next()).getValue(), result, v(), q().a().c(), q().a().i().a()));
        }
        result.addAll(arrayList2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<Name> n(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Set<Name> mutableSet = CollectionsKt___CollectionsKt.toMutableSet(r().invoke().b());
        F(v(), mutableSet, C0529c.a);
        return mutableSet;
    }
}
