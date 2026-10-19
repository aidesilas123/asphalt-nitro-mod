package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.load.java.structure.r;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.storage.f;
import kotlin.reflect.jvm.internal.impl.utils.FunctionsKt;

/* JADX INFO: compiled from: LazyJavaPackageScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LazyJavaPackageScope extends kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d {
    private final f<Set<String>> n;
    private final kotlin.reflect.jvm.internal.impl.storage.c<a, kotlin.reflect.jvm.internal.impl.descriptors.d> o;
    private final r p;
    private final LazyJavaPackageFragment q;

    /* JADX INFO: compiled from: LazyJavaPackageScope.kt */
    private static final class a {
        private final Name a;
        private final kotlin.reflect.jvm.internal.impl.load.java.structure.f b;

        public a(Name name, kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            this.a = name;
            this.b = fVar;
        }

        public final kotlin.reflect.jvm.internal.impl.load.java.structure.f a() {
            return this.b;
        }

        public final Name b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && Intrinsics.areEqual(this.a, ((a) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    /* JADX INFO: compiled from: LazyJavaPackageScope.kt */
    private static abstract class b {

        /* JADX INFO: compiled from: LazyJavaPackageScope.kt */
        public static final class a extends b {
            private final kotlin.reflect.jvm.internal.impl.descriptors.d a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(kotlin.reflect.jvm.internal.impl.descriptors.d descriptor) {
                super(null);
                Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
                this.a = descriptor;
            }

            public final kotlin.reflect.jvm.internal.impl.descriptors.d a() {
                return this.a;
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: LazyJavaPackageScope.kt */
        public static final class C0527b extends b {
            public static final C0527b a = new C0527b();

            private C0527b() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: LazyJavaPackageScope.kt */
        public static final class c extends b {
            public static final c a = new c();

            private c() {
                super(null);
            }
        }

        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: LazyJavaPackageScope.kt */
    static final class c extends Lambda implements Function1<a, kotlin.reflect.jvm.internal.impl.descriptors.d> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.d b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar) {
            super(1);
            this.b = dVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x00a2  */
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke(kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope.a r17) {
            /*
                Method dump skipped, instruction units count: 362
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope.c.invoke(kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope$a):kotlin.reflect.jvm.internal.impl.descriptors.d");
        }
    }

    /* JADX INFO: compiled from: LazyJavaPackageScope.kt */
    static final class d extends Lambda implements Function0<Set<? extends String>> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.d b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar) {
            super(0);
            this.b = dVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Set<String> invoke() {
            return this.b.a().d().c(LazyJavaPackageScope.this.v().e());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaPackageScope(kotlin.reflect.jvm.internal.impl.load.java.lazy.d c2, r jPackage, LazyJavaPackageFragment ownerDescriptor) {
        super(c2);
        Intrinsics.checkParameterIsNotNull(c2, "c");
        Intrinsics.checkParameterIsNotNull(jPackage, "jPackage");
        Intrinsics.checkParameterIsNotNull(ownerDescriptor, "ownerDescriptor");
        this.p = jPackage;
        this.q = ownerDescriptor;
        this.n = c2.e().e(new d(c2));
        this.o = c2.e().g(new c(c2));
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.d E(Name name, kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar) {
        if (!SpecialNames.isSafeIdentifier(name)) {
            return null;
        }
        Set<String> setInvoke = this.n.invoke();
        if (fVar != null || setInvoke == null || setInvoke.contains(name.e())) {
            return this.o.invoke(new a(name, fVar));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b I(k kVar) {
        if (kVar == null) {
            return b.C0527b.a;
        }
        if (kVar.c().c() != KotlinClassHeader.Kind.CLASS) {
            return b.c.a;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarI = q().a().b().i(kVar);
        return dVarI != null ? new b.a(dVarI) : b.C0527b.a;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d F(kotlin.reflect.jvm.internal.impl.load.java.structure.f javaClass) {
        Intrinsics.checkParameterIsNotNull(javaClass, "javaClass");
        return E(javaClass.getName(), javaClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.d c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return E(name, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public LazyJavaPackageFragment v() {
        return this.q;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005d  */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.i> d(kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter r5, kotlin.jvm.functions.Function1<? super kotlin.reflect.jvm.internal.impl.name.Name, java.lang.Boolean> r6) {
        /*
            r4 = this;
            java.lang.String r0 = "kindFilter"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            java.lang.String r0 = "nameFilter"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r6, r0)
            kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter$Companion r0 = kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter.x
            int r1 = r0.b()
            int r0 = r0.d()
            r0 = r0 | r1
            boolean r5 = r5.a(r0)
            if (r5 != 0) goto L20
            java.util.List r5 = kotlin.collections.p.emptyList()
            goto L65
        L20:
            kotlin.reflect.jvm.internal.impl.storage.e r5 = r4.p()
            java.lang.Object r5 = r5.invoke()
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r5 = r5.iterator()
        L33:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L64
            java.lang.Object r1 = r5.next()
            r2 = r1
            kotlin.reflect.jvm.internal.impl.descriptors.i r2 = (kotlin.reflect.jvm.internal.impl.descriptors.i) r2
            boolean r3 = r2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.d
            if (r3 == 0) goto L5d
            kotlin.reflect.jvm.internal.impl.descriptors.d r2 = (kotlin.reflect.jvm.internal.impl.descriptors.d) r2
            kotlin.reflect.jvm.internal.impl.name.Name r2 = r2.getName()
            java.lang.String r3 = "it.name"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3)
            java.lang.Object r2 = r6.invoke(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L5d
            r2 = 1
            goto L5e
        L5d:
            r2 = 0
        L5e:
            if (r2 == 0) goto L33
            r0.add(r1)
            goto L33
        L64:
            r5 = r0
        L65:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope.d(kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter, kotlin.jvm.b.l):java.util.Collection");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<Name> g(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        if (!kindFilter.a(DescriptorKindFilter.x.d())) {
            return SetsKt__SetsKt.emptySet();
        }
        Set<String> setInvoke = this.n.invoke();
        if (setInvoke != null) {
            HashSet hashSet = new HashSet();
            Iterator<T> it = setInvoke.iterator();
            while (it.hasNext()) {
                hashSet.add(Name.identifier((String) it.next()));
            }
            return hashSet;
        }
        r rVar = this.p;
        if (function1 == null) {
            function1 = FunctionsKt.alwaysTrue();
        }
        Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.f> collectionZ = rVar.z(function1);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar : collectionZ) {
            Name name = fVar.E() == LightClassOriginKind.SOURCE ? null : fVar.getName();
            if (name != null) {
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<Name> i(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        return SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a j() {
        return a.C0528a.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void l(Collection<c0> result, Name name) {
        Intrinsics.checkParameterIsNotNull(result, "result");
        Intrinsics.checkParameterIsNotNull(name, "name");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<Name> n(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        return SetsKt__SetsKt.emptySet();
    }
}
