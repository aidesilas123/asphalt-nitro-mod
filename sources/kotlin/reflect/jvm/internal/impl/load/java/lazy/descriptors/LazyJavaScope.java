package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.jvm.internal.n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.m;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.c;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;

/* JADX INFO: compiled from: LazyJavaScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class LazyJavaScope extends kotlin.reflect.jvm.internal.impl.resolve.scopes.f {
    static final /* synthetic */ KProperty[] b = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(LazyJavaScope.class), "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(LazyJavaScope.class), "propertyNamesLazy", "getPropertyNamesLazy()Ljava/util/Set;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(LazyJavaScope.class), "classNamesLazy", "getClassNamesLazy()Ljava/util/Set;"))};
    private final kotlin.reflect.jvm.internal.impl.storage.e<Collection<kotlin.reflect.jvm.internal.impl.descriptors.i>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.e<kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a> f9232d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.b<Name, Collection<c0>> f9233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.c<Name, y> f9234f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.b<Name, Collection<c0>> f9235g;
    private final kotlin.reflect.jvm.internal.impl.storage.e h;
    private final kotlin.reflect.jvm.internal.impl.storage.e i;
    private final kotlin.reflect.jvm.internal.impl.storage.e j;
    private final kotlin.reflect.jvm.internal.impl.storage.b<Name, List<y>> k;
    private final kotlin.reflect.jvm.internal.impl.load.java.lazy.d l;
    private final LazyJavaScope m;

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    protected static final class a {
        private final u a;
        private final u b;
        private final List<ValueParameterDescriptor> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<i0> f9236d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f9237e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final List<String> f9238f;

        /* JADX WARN: Multi-variable type inference failed */
        public a(u returnType, u uVar, List<? extends ValueParameterDescriptor> valueParameters, List<? extends i0> typeParameters, boolean z, List<String> errors) {
            Intrinsics.checkParameterIsNotNull(returnType, "returnType");
            Intrinsics.checkParameterIsNotNull(valueParameters, "valueParameters");
            Intrinsics.checkParameterIsNotNull(typeParameters, "typeParameters");
            Intrinsics.checkParameterIsNotNull(errors, "errors");
            this.a = returnType;
            this.b = uVar;
            this.c = valueParameters;
            this.f9236d = typeParameters;
            this.f9237e = z;
            this.f9238f = errors;
        }

        public final List<String> a() {
            return this.f9238f;
        }

        public final boolean b() {
            return this.f9237e;
        }

        public final u c() {
            return this.b;
        }

        public final u d() {
            return this.a;
        }

        public final List<i0> e() {
            return this.f9236d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.c, aVar.c) && Intrinsics.areEqual(this.f9236d, aVar.f9236d) && this.f9237e == aVar.f9237e && Intrinsics.areEqual(this.f9238f, aVar.f9238f);
        }

        public final List<ValueParameterDescriptor> f() {
            return this.c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v10, types: [int] */
        /* JADX WARN: Type inference failed for: r2v12 */
        /* JADX WARN: Type inference failed for: r2v16 */
        public int hashCode() {
            u uVar = this.a;
            int iHashCode = (uVar != null ? uVar.hashCode() : 0) * 31;
            u uVar2 = this.b;
            int iHashCode2 = (iHashCode + (uVar2 != null ? uVar2.hashCode() : 0)) * 31;
            List<ValueParameterDescriptor> list = this.c;
            int iHashCode3 = (iHashCode2 + (list != null ? list.hashCode() : 0)) * 31;
            List<i0> list2 = this.f9236d;
            int iHashCode4 = (iHashCode3 + (list2 != null ? list2.hashCode() : 0)) * 31;
            boolean z = this.f9237e;
            ?? r2 = z;
            if (z) {
                r2 = 1;
            }
            int i = (iHashCode4 + r2) * 31;
            List<String> list3 = this.f9238f;
            return i + (list3 != null ? list3.hashCode() : 0);
        }

        public String toString() {
            return "MethodSignatureData(returnType=" + this.a + ", receiverType=" + this.b + ", valueParameters=" + this.c + ", typeParameters=" + this.f9236d + ", hasStableParameterNames=" + this.f9237e + ", errors=" + this.f9238f + ")";
        }
    }

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    protected static final class b {
        private final List<ValueParameterDescriptor> a;
        private final boolean b;

        /* JADX WARN: Multi-variable type inference failed */
        public b(List<? extends ValueParameterDescriptor> descriptors, boolean z) {
            Intrinsics.checkParameterIsNotNull(descriptors, "descriptors");
            this.a = descriptors;
            this.b = z;
        }

        public final List<ValueParameterDescriptor> a() {
            return this.a;
        }

        public final boolean b() {
            return this.b;
        }
    }

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    static final class c extends Lambda implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.i>> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<kotlin.reflect.jvm.internal.impl.descriptors.i> invoke() {
            return LazyJavaScope.this.h(DescriptorKindFilter.l, MemberScope.a.a());
        }
    }

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    static final class d extends Lambda implements Function0<Set<? extends Name>> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Set<Name> invoke() {
            return LazyJavaScope.this.g(DescriptorKindFilter.q, null);
        }
    }

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    static final class e extends Lambda implements Function1<Name, y> {
        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final y invoke(Name name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            if (LazyJavaScope.this.u() != null) {
                return (y) LazyJavaScope.this.u().f9234f.invoke(name);
            }
            m mVarD = LazyJavaScope.this.r().invoke().d(name);
            if (mVarD == null || mVarD.C()) {
                return null;
            }
            return LazyJavaScope.this.C(mVarD);
        }
    }

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    static final class f extends Lambda implements Function1<Name, Collection<? extends c0>> {
        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<c0> invoke(Name name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            if (LazyJavaScope.this.u() != null) {
                return (Collection) LazyJavaScope.this.u().f9233e.invoke(name);
            }
            ArrayList arrayList = new ArrayList();
            for (JavaMethod javaMethod : LazyJavaScope.this.r().invoke().c(name)) {
                JavaMethodDescriptor javaMethodDescriptorB = LazyJavaScope.this.B(javaMethod);
                if (LazyJavaScope.this.z(javaMethodDescriptorB)) {
                    LazyJavaScope.this.q().a().g().c(javaMethod, javaMethodDescriptorB);
                    arrayList.add(javaMethodDescriptorB);
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    static final class g extends Lambda implements Function0<kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a invoke() {
            return LazyJavaScope.this.j();
        }
    }

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    static final class h extends Lambda implements Function0<Set<? extends Name>> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Set<Name> invoke() {
            return LazyJavaScope.this.i(DescriptorKindFilter.s, null);
        }
    }

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    static final class i extends Lambda implements Function1<Name, List<? extends c0>> {
        i() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<c0> invoke(Name name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            LinkedHashSet linkedHashSet = new LinkedHashSet((Collection) LazyJavaScope.this.f9233e.invoke(name));
            OverridingUtilsKt.retainMostSpecificInEachOverridableGroup(linkedHashSet);
            LazyJavaScope.this.l(linkedHashSet, name);
            return CollectionsKt___CollectionsKt.toList(LazyJavaScope.this.q().a().p().b(LazyJavaScope.this.q(), linkedHashSet));
        }
    }

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    static final class j extends Lambda implements Function1<Name, List<? extends y>> {
        j() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<y> invoke(Name name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            ArrayList arrayList = new ArrayList();
            CollectionsKt.addIfNotNull(arrayList, LazyJavaScope.this.f9234f.invoke(name));
            LazyJavaScope.this.m(name, arrayList);
            return DescriptorUtils.isAnnotationClass(LazyJavaScope.this.v()) ? CollectionsKt___CollectionsKt.toList(arrayList) : CollectionsKt___CollectionsKt.toList(LazyJavaScope.this.q().a().p().b(LazyJavaScope.this.q(), arrayList));
        }
    }

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    static final class k extends Lambda implements Function0<Set<? extends Name>> {
        k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Set<Name> invoke() {
            return LazyJavaScope.this.n(DescriptorKindFilter.t, null);
        }
    }

    /* JADX INFO: compiled from: LazyJavaScope.kt */
    static final class l extends Lambda implements Function0<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> {
        final /* synthetic */ m b;
        final /* synthetic */ PropertyDescriptorImpl c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(m mVar, PropertyDescriptorImpl propertyDescriptorImpl) {
            super(0);
            this.b = mVar;
            this.c = propertyDescriptorImpl;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> invoke() {
            return LazyJavaScope.this.q().a().f().a(this.b, this.c);
        }
    }

    public LazyJavaScope(kotlin.reflect.jvm.internal.impl.load.java.lazy.d c2, LazyJavaScope lazyJavaScope) {
        Intrinsics.checkParameterIsNotNull(c2, "c");
        this.l = c2;
        this.m = lazyJavaScope;
        this.c = c2.e().b(new c(), CollectionsKt__CollectionsKt.emptyList());
        this.f9232d = c2.e().c(new g());
        this.f9233e = c2.e().h(new f());
        this.f9234f = c2.e().g(new e());
        this.f9235g = c2.e().h(new i());
        this.h = c2.e().c(new h());
        this.i = c2.e().c(new k());
        this.j = c2.e().c(new d());
        this.k = c2.e().h(new j());
    }

    public /* synthetic */ LazyJavaScope(kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar, LazyJavaScope lazyJavaScope, int i2, n nVar) {
        this(dVar, (i2 & 2) != 0 ? null : lazyJavaScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final y C(m mVar) {
        PropertyDescriptorImpl propertyDescriptorImplO = o(mVar);
        propertyDescriptorImplO.K0(null, null, null, null);
        propertyDescriptorImplO.P0(x(mVar), CollectionsKt__CollectionsKt.emptyList(), s(), null);
        if (DescriptorUtils.shouldRecordInitializerForProperty(propertyDescriptorImplO, propertyDescriptorImplO.getType())) {
            propertyDescriptorImplO.e0(this.l.e().e(new l(mVar, propertyDescriptorImplO)));
        }
        this.l.a().g().b(mVar, propertyDescriptorImplO);
        return propertyDescriptorImplO;
    }

    private final PropertyDescriptorImpl o(m mVar) {
        JavaPropertyDescriptor javaPropertyDescriptorCreate = JavaPropertyDescriptor.create(v(), LazyJavaAnnotationsKt.resolveAnnotations(this.l, mVar), Modality.FINAL, mVar.getVisibility(), !mVar.isFinal(), mVar.getName(), this.l.a().r().a(mVar), y(mVar));
        Intrinsics.checkExpressionValueIsNotNull(javaPropertyDescriptorCreate, "JavaPropertyDescriptor.c…d.isFinalStatic\n        )");
        return javaPropertyDescriptorCreate;
    }

    private final Set<Name> t() {
        return (Set) StorageKt.getValue(this.h, this, (KProperty<?>) b[0]);
    }

    private final Set<Name> w() {
        return (Set) StorageKt.getValue(this.i, this, (KProperty<?>) b[1]);
    }

    private final u x(m mVar) {
        boolean z = false;
        u uVarK = this.l.g().k(mVar.getType(), JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, false, null, 3, null));
        if ((KotlinBuiltIns.isPrimitiveType(uVarK) || KotlinBuiltIns.isString(uVarK)) && y(mVar) && mVar.H()) {
            z = true;
        }
        if (!z) {
            return uVarK;
        }
        u uVarMakeNotNullable = TypeUtils.makeNotNullable(uVarK);
        Intrinsics.checkExpressionValueIsNotNull(uVarMakeNotNullable, "TypeUtils.makeNotNullable(propertyType)");
        return uVarMakeNotNullable;
    }

    private final boolean y(m mVar) {
        return mVar.isFinal() && mVar.J();
    }

    protected abstract a A(JavaMethod javaMethod, List<? extends i0> list, u uVar, List<? extends ValueParameterDescriptor> list2);

    protected final JavaMethodDescriptor B(JavaMethod method) {
        Intrinsics.checkParameterIsNotNull(method, "method");
        JavaMethodDescriptor javaMethodDescriptorCreateJavaMethod = JavaMethodDescriptor.createJavaMethod(v(), LazyJavaAnnotationsKt.resolveAnnotations(this.l, method), method.getName(), this.l.a().r().a(method));
        Intrinsics.checkExpressionValueIsNotNull(javaMethodDescriptorCreateJavaMethod, "JavaMethodDescriptor.cre….source(method)\n        )");
        kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVarChildForMethod$default = ContextKt.childForMethod$default(this.l, javaMethodDescriptorCreateJavaMethod, method, 0, 4, null);
        List<kotlin.reflect.jvm.internal.impl.load.java.structure.u> typeParameters = method.getTypeParameters();
        List<? extends i0> arrayList = new ArrayList<>(CollectionsKt__IterablesKt.collectionSizeOrDefault(typeParameters, 10));
        Iterator<T> it = typeParameters.iterator();
        while (it.hasNext()) {
            i0 i0VarA = dVarChildForMethod$default.f().a((kotlin.reflect.jvm.internal.impl.load.java.structure.u) it.next());
            if (i0VarA == null) {
                Intrinsics.throwNpe();
            }
            arrayList.add(i0VarA);
        }
        b bVarD = D(dVarChildForMethod$default, javaMethodDescriptorCreateJavaMethod, method.g());
        a aVarA = A(method, arrayList, k(method, dVarChildForMethod$default), bVarD.a());
        u uVarC = aVarA.c();
        javaMethodDescriptorCreateJavaMethod.b1(uVarC != null ? DescriptorFactory.createExtensionReceiverParameterForCallable(javaMethodDescriptorCreateJavaMethod, uVarC, Annotations.e0.b()) : null, s(), aVarA.e(), aVarA.f(), aVarA.d(), Modality.f9094f.a(method.isAbstract(), !method.isFinal()), method.getVisibility(), aVarA.c() != null ? MapsKt__MapsJVMKt.mapOf(TuplesKt.to(JavaMethodDescriptor.D, p.first((List) bVarD.a()))) : MapsKt__MapsKt.emptyMap());
        javaMethodDescriptorCreateJavaMethod.f1(aVarA.b(), bVarD.b());
        if (!aVarA.a().isEmpty()) {
            dVarChildForMethod$default.a().q().b(javaMethodDescriptorCreateJavaMethod, aVarA.a());
        }
        return javaMethodDescriptorCreateJavaMethod;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0122  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope.b D(kotlin.reflect.jvm.internal.impl.load.java.lazy.d r23, kotlin.reflect.jvm.internal.impl.descriptors.o r24, java.util.List<? extends kotlin.reflect.jvm.internal.impl.load.java.structure.w> r25) {
        /*
            Method dump skipped, instruction units count: 387
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope.D(kotlin.reflect.jvm.internal.impl.load.java.lazy.d, kotlin.reflect.jvm.internal.impl.descriptors.o, java.util.List):kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$b");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return !b().contains(name) ? CollectionsKt__CollectionsKt.emptyList() : this.f9235g.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<Name> b() {
        return t();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.i> d(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        return this.c.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return !f().contains(name) ? CollectionsKt__CollectionsKt.emptyList() : this.k.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<Name> f() {
        return w();
    }

    protected abstract Set<Name> g(DescriptorKindFilter descriptorKindFilter, Function1<? super Name, Boolean> function1);

    protected final List<kotlin.reflect.jvm.internal.impl.descriptors.i> h(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        NoLookupLocation noLookupLocation = NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (kindFilter.a(DescriptorKindFilter.x.b())) {
            for (Name name : g(kindFilter, nameFilter)) {
                if (nameFilter.invoke(name).booleanValue()) {
                    CollectionsKt.addIfNotNull(linkedHashSet, c(name, noLookupLocation));
                }
            }
        }
        if (kindFilter.a(DescriptorKindFilter.x.c()) && !kindFilter.b().contains(c.a.b)) {
            for (Name name2 : i(kindFilter, nameFilter)) {
                if (nameFilter.invoke(name2).booleanValue()) {
                    linkedHashSet.addAll(a(name2, noLookupLocation));
                }
            }
        }
        if (kindFilter.a(DescriptorKindFilter.x.h()) && !kindFilter.b().contains(c.a.b)) {
            for (Name name3 : n(kindFilter, nameFilter)) {
                if (nameFilter.invoke(name3).booleanValue()) {
                    linkedHashSet.addAll(e(name3, noLookupLocation));
                }
            }
        }
        return CollectionsKt___CollectionsKt.toList(linkedHashSet);
    }

    protected abstract Set<Name> i(DescriptorKindFilter descriptorKindFilter, Function1<? super Name, Boolean> function1);

    protected abstract kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a j();

    protected final u k(JavaMethod method, kotlin.reflect.jvm.internal.impl.load.java.lazy.d c2) {
        Intrinsics.checkParameterIsNotNull(method, "method");
        Intrinsics.checkParameterIsNotNull(c2, "c");
        return c2.g().k(method.getReturnType(), JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, method.I().m(), null, 2, null));
    }

    protected abstract void l(Collection<c0> collection, Name name);

    protected abstract void m(Name name, Collection<y> collection);

    protected abstract Set<Name> n(DescriptorKindFilter descriptorKindFilter, Function1<? super Name, Boolean> function1);

    protected final kotlin.reflect.jvm.internal.impl.storage.e<Collection<kotlin.reflect.jvm.internal.impl.descriptors.i>> p() {
        return this.c;
    }

    protected final kotlin.reflect.jvm.internal.impl.load.java.lazy.d q() {
        return this.l;
    }

    protected final kotlin.reflect.jvm.internal.impl.storage.e<kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a> r() {
        return this.f9232d;
    }

    protected abstract b0 s();

    public String toString() {
        return "Lazy scope for " + v();
    }

    protected final LazyJavaScope u() {
        return this.m;
    }

    protected abstract kotlin.reflect.jvm.internal.impl.descriptors.i v();

    protected boolean z(JavaMethodDescriptor isVisibleAsFunction) {
        Intrinsics.checkParameterIsNotNull(isVisibleAsFunction, "$this$isVisibleAsFunction");
        return true;
    }
}
