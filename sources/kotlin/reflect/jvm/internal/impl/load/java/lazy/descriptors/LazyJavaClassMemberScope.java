package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.q;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EnumEntrySyntheticClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.v;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.incremental.UtilsKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithDifferentJvmName;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.components.j;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.UtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.i;
import kotlin.reflect.jvm.internal.impl.load.java.l;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.m;
import kotlin.reflect.jvm.internal.impl.load.java.structure.o;
import kotlin.reflect.jvm.internal.impl.load.java.structure.t;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;

/* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LazyJavaClassMemberScope extends LazyJavaScope {
    private final kotlin.reflect.jvm.internal.impl.storage.e<List<kotlin.reflect.jvm.internal.impl.descriptors.c>> n;
    private final kotlin.reflect.jvm.internal.impl.storage.e<Set<Name>> o;
    private final kotlin.reflect.jvm.internal.impl.storage.e<Map<Name, m>> p;
    private final kotlin.reflect.jvm.internal.impl.storage.c<Name, kotlin.reflect.jvm.internal.impl.descriptors.impl.f> q;
    private final kotlin.reflect.jvm.internal.impl.descriptors.d r;
    private final kotlin.reflect.jvm.internal.impl.load.java.structure.f s;
    private final boolean t;

    /* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
    static final class a extends Lambda implements Function1<o, Boolean> {
        public static final a a = new a();

        a() {
            super(1);
        }

        public final boolean a(o it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return !it.J();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(o oVar) {
            return Boolean.valueOf(a(oVar));
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
    static final /* synthetic */ class b extends q implements Function1<Name, Collection<? extends c0>> {
        b(LazyJavaClassMemberScope lazyJavaClassMemberScope) {
            super(1, lazyJavaClassMemberScope);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<c0> invoke(Name p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return ((LazyJavaClassMemberScope) this.receiver).p0(p1);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "searchMethodsByNameWithoutBuiltinMagic";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(LazyJavaClassMemberScope.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
    static final /* synthetic */ class c extends q implements Function1<Name, Collection<? extends c0>> {
        c(LazyJavaClassMemberScope lazyJavaClassMemberScope) {
            super(1, lazyJavaClassMemberScope);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<c0> invoke(Name p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return ((LazyJavaClassMemberScope) this.receiver).q0(p1);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "searchMethodsInSupertypesWithoutBuiltinMagic";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(LazyJavaClassMemberScope.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "searchMethodsInSupertypesWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
    static final class d extends Lambda implements Function1<Name, Collection<? extends c0>> {
        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<c0> invoke(Name it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return LazyJavaClassMemberScope.this.p0(it);
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
    static final class e extends Lambda implements Function1<Name, Collection<? extends c0>> {
        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<c0> invoke(Name it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return LazyJavaClassMemberScope.this.q0(it);
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
    static final class f extends Lambda implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.c>> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.d b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar) {
            super(0);
            this.b = dVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<kotlin.reflect.jvm.internal.impl.descriptors.c> invoke() {
            Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.j> collectionF = LazyJavaClassMemberScope.this.s.f();
            ArrayList arrayList = new ArrayList(collectionF.size());
            Iterator<kotlin.reflect.jvm.internal.impl.load.java.structure.j> it = collectionF.iterator();
            while (it.hasNext()) {
                arrayList.add(LazyJavaClassMemberScope.this.o0(it.next()));
            }
            SignatureEnhancement signatureEnhancementP = this.b.a().p();
            kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar = this.b;
            boolean zIsEmpty = arrayList.isEmpty();
            List listListOfNotNull = arrayList;
            if (zIsEmpty) {
                listListOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(LazyJavaClassMemberScope.this.N());
            }
            return CollectionsKt___CollectionsKt.toList(signatureEnhancementP.b(dVar, listListOfNotNull));
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
    static final class g extends Lambda implements Function0<Map<Name, ? extends m>> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Map<Name, m> invoke() {
            Collection<m> collectionT = LazyJavaClassMemberScope.this.s.t();
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionT) {
                if (((m) obj).C()) {
                    arrayList.add(obj);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10)), 16));
            for (Object obj2 : arrayList) {
                linkedHashMap.put(((m) obj2).getName(), obj2);
            }
            return linkedHashMap;
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
    static final class h extends Lambda implements Function1<Name, Collection<? extends c0>> {
        final /* synthetic */ c0 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(c0 c0Var) {
            super(1);
            this.b = c0Var;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<c0> invoke(Name accessorName) {
            Intrinsics.checkParameterIsNotNull(accessorName, "accessorName");
            return Intrinsics.areEqual(this.b.getName(), accessorName) ? CollectionsKt__CollectionsJVMKt.listOf(this.b) : CollectionsKt___CollectionsKt.plus(LazyJavaClassMemberScope.this.p0(accessorName), (Iterable) LazyJavaClassMemberScope.this.q0(accessorName));
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
    static final class i extends Lambda implements Function0<Set<? extends Name>> {
        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Set<Name> invoke() {
            return CollectionsKt___CollectionsKt.toSet(LazyJavaClassMemberScope.this.s.v());
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
    static final class j extends Lambda implements Function1<Name, kotlin.reflect.jvm.internal.impl.descriptors.impl.f> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.d b;

        /* JADX INFO: compiled from: LazyJavaClassMemberScope.kt */
        static final class a extends Lambda implements Function0<Set<? extends Name>> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Set<Name> invoke() {
                return SetsKt___SetsKt.plus((Set) LazyJavaClassMemberScope.this.b(), (Iterable) LazyJavaClassMemberScope.this.f());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar) {
            super(1);
            this.b = dVar;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.descriptors.impl.f invoke(Name name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            if (!((Set) LazyJavaClassMemberScope.this.o.invoke()).contains(name)) {
                m mVar = (m) ((Map) LazyJavaClassMemberScope.this.p.invoke()).get(name);
                if (mVar == null) {
                    return null;
                }
                return EnumEntrySyntheticClassDescriptor.create(this.b.e(), LazyJavaClassMemberScope.this.v(), name, this.b.e().c(new a()), LazyJavaAnnotationsKt.resolveAnnotations(this.b, mVar), this.b.a().r().a(mVar));
            }
            kotlin.reflect.jvm.internal.impl.load.java.i iVarD = this.b.a().d();
            ClassId classId = DescriptorUtilsKt.getClassId(LazyJavaClassMemberScope.this.v());
            if (classId == null) {
                Intrinsics.throwNpe();
            }
            ClassId classIdD = classId.d(name);
            Intrinsics.checkExpressionValueIsNotNull(classIdD, "ownerDescriptor.classId!…createNestedClassId(name)");
            kotlin.reflect.jvm.internal.impl.load.java.structure.f fVarA = iVarD.a(new i.a(classIdD, null, LazyJavaClassMemberScope.this.s, 2, null));
            if (fVarA == null) {
                return null;
            }
            LazyJavaClassDescriptor lazyJavaClassDescriptor = new LazyJavaClassDescriptor(this.b, LazyJavaClassMemberScope.this.v(), fVarA, null, 8, null);
            this.b.a().e().a(lazyJavaClassDescriptor);
            return lazyJavaClassDescriptor;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassMemberScope(kotlin.reflect.jvm.internal.impl.load.java.lazy.d c2, kotlin.reflect.jvm.internal.impl.descriptors.d ownerDescriptor, kotlin.reflect.jvm.internal.impl.load.java.structure.f jClass, boolean z, LazyJavaClassMemberScope lazyJavaClassMemberScope) {
        super(c2, lazyJavaClassMemberScope);
        Intrinsics.checkParameterIsNotNull(c2, "c");
        Intrinsics.checkParameterIsNotNull(ownerDescriptor, "ownerDescriptor");
        Intrinsics.checkParameterIsNotNull(jClass, "jClass");
        this.r = ownerDescriptor;
        this.s = jClass;
        this.t = z;
        this.n = c2.e().c(new f(c2));
        this.o = c2.e().c(new i());
        this.p = c2.e().c(new g());
        this.q = c2.e().g(new j(c2));
    }

    public /* synthetic */ LazyJavaClassMemberScope(kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar2, kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar, boolean z, LazyJavaClassMemberScope lazyJavaClassMemberScope, int i2, n nVar) {
        this(dVar, dVar2, fVar, z, (i2 & 16) != 0 ? null : lazyJavaClassMemberScope);
    }

    private final void E(List<ValueParameterDescriptor> list, kotlin.reflect.jvm.internal.impl.descriptors.h hVar, int i2, JavaMethod javaMethod, u uVar, u uVar2) {
        Annotations annotationsB = Annotations.e0.b();
        Name name = javaMethod.getName();
        u uVarMakeNotNullable = TypeUtils.makeNotNullable(uVar);
        Intrinsics.checkExpressionValueIsNotNull(uVarMakeNotNullable, "TypeUtils.makeNotNullable(returnType)");
        list.add(new ValueParameterDescriptorImpl(hVar, null, i2, annotationsB, name, uVarMakeNotNullable, javaMethod.G(), false, false, uVar2 != null ? TypeUtils.makeNotNullable(uVar2) : null, q().a().r().a(javaMethod)));
    }

    private final void F(Collection<c0> collection, Name name, Collection<? extends c0> collection2, boolean z) {
        Collection<? extends c0> collectionResolveOverridesForNonStaticMembers = DescriptorResolverUtils.resolveOverridesForNonStaticMembers(name, collection2, collection, v(), q().a().c(), q().a().i().a());
        Intrinsics.checkExpressionValueIsNotNull(collectionResolveOverridesForNonStaticMembers, "resolveOverridesForNonSt….overridingUtil\n        )");
        if (!z) {
            collection.addAll(collectionResolveOverridesForNonStaticMembers);
            return;
        }
        List listPlus = CollectionsKt___CollectionsKt.plus((Collection) collection, (Iterable) collectionResolveOverridesForNonStaticMembers);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionResolveOverridesForNonStaticMembers, 10));
        for (c0 resolvedOverride : collectionResolveOverridesForNonStaticMembers) {
            c0 c0Var = (c0) SpecialBuiltinMembers.getOverriddenSpecialBuiltin(resolvedOverride);
            if (c0Var != null) {
                Intrinsics.checkExpressionValueIsNotNull(resolvedOverride, "resolvedOverride");
                resolvedOverride = O(resolvedOverride, c0Var, listPlus);
            }
            arrayList.add(resolvedOverride);
        }
        collection.addAll(arrayList);
    }

    private final void G(Name name, Collection<? extends c0> collection, Collection<? extends c0> collection2, Collection<c0> collection3, Function1<? super Name, ? extends Collection<? extends c0>> function1) {
        for (c0 c0Var : collection2) {
            CollectionsKt.addIfNotNull(collection3, l0(c0Var, function1, name, collection));
            CollectionsKt.addIfNotNull(collection3, k0(c0Var, function1, collection));
            CollectionsKt.addIfNotNull(collection3, m0(c0Var, function1));
        }
    }

    private final void H(Set<? extends y> set, Collection<y> collection, Function1<? super Name, ? extends Collection<? extends c0>> function1) {
        Iterator<? extends y> it = set.iterator();
        while (it.hasNext()) {
            JavaPropertyDescriptor javaPropertyDescriptorQ = Q(it.next(), function1);
            if (javaPropertyDescriptorQ != null) {
                collection.add(javaPropertyDescriptorQ);
                return;
            }
        }
    }

    private final void I(Name name, Collection<y> collection) {
        JavaMethod javaMethod = (JavaMethod) p.singleOrNull(r().invoke().c(name));
        if (javaMethod != null) {
            collection.add(S(this, javaMethod, null, Modality.FINAL, 2, null));
        }
    }

    private final Collection<u> L() {
        if (!this.t) {
            return q().a().i().c().f(v());
        }
        f0 f0VarI = v().i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "ownerDescriptor.typeConstructor");
        Collection<u> collectionH = f0VarI.h();
        Intrinsics.checkExpressionValueIsNotNull(collectionH, "ownerDescriptor.typeConstructor.supertypes");
        return collectionH;
    }

    private final List<ValueParameterDescriptor> M(ClassConstructorDescriptorImpl classConstructorDescriptorImpl) {
        Pair pair;
        Collection<JavaMethod> collectionW = this.s.w();
        ArrayList arrayList = new ArrayList(collectionW.size());
        JavaTypeAttributes attributes$default = JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, true, null, 2, null);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : collectionW) {
            if (Intrinsics.areEqual(((JavaMethod) obj).getName(), kotlin.reflect.jvm.internal.impl.load.java.n.c)) {
                arrayList2.add(obj);
            } else {
                arrayList3.add(obj);
            }
        }
        Pair pair2 = new Pair(arrayList2, arrayList3);
        List list = (List) pair2.c();
        List<JavaMethod> list2 = (List) pair2.d();
        list.size();
        JavaMethod javaMethod = (JavaMethod) p.firstOrNull(list);
        if (javaMethod != null) {
            t returnType = javaMethod.getReturnType();
            if (returnType instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.e) {
                kotlin.reflect.jvm.internal.impl.load.java.structure.e eVar = (kotlin.reflect.jvm.internal.impl.load.java.structure.e) returnType;
                pair = new Pair(q().g().i(eVar, attributes$default, true), q().g().k(eVar.l(), attributes$default));
            } else {
                pair = new Pair(q().g().k(returnType, attributes$default), null);
            }
            E(arrayList, classConstructorDescriptorImpl, 0, javaMethod, (u) pair.c(), (u) pair.d());
        }
        int i2 = javaMethod != null ? 1 : 0;
        int i3 = 0;
        for (JavaMethod javaMethod2 : list2) {
            E(arrayList, classConstructorDescriptorImpl, i3 + i2, javaMethod2, q().g().k(javaMethod2.getReturnType(), attributes$default), null);
            i3++;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.c N() {
        boolean zM = this.s.m();
        if (this.s.D() && !zM) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarV = v();
        JavaClassConstructorDescriptor javaClassConstructorDescriptorCreateJavaConstructor = JavaClassConstructorDescriptor.createJavaConstructor(dVarV, Annotations.e0.b(), true, q().a().r().a(this.s));
        Intrinsics.checkExpressionValueIsNotNull(javaClassConstructorDescriptorCreateJavaConstructor, "JavaClassConstructorDesc….source(jClass)\n        )");
        List<ValueParameterDescriptor> listM = zM ? M(javaClassConstructorDescriptorCreateJavaConstructor) : Collections.emptyList();
        javaClassConstructorDescriptorCreateJavaConstructor.N0(false);
        javaClassConstructorDescriptorCreateJavaConstructor.c1(listM, d0(dVarV));
        javaClassConstructorDescriptorCreateJavaConstructor.M0(true);
        javaClassConstructorDescriptorCreateJavaConstructor.U0(dVarV.n());
        q().a().g().a(this.s, javaClassConstructorDescriptorCreateJavaConstructor);
        return javaClassConstructorDescriptorCreateJavaConstructor;
    }

    private final c0 O(c0 c0Var, kotlin.reflect.jvm.internal.impl.descriptors.a aVar, Collection<? extends c0> collection) {
        boolean z = false;
        if ((collection instanceof Collection) && collection.isEmpty()) {
            z = true;
        } else {
            for (c0 c0Var2 : collection) {
                if ((Intrinsics.areEqual(c0Var, c0Var2) ^ true) && c0Var2.n0() == null && W(c0Var2, aVar)) {
                    break;
                }
            }
            z = true;
        }
        if (z) {
            return c0Var;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.o oVarBuild = c0Var.r().h().build();
        if (oVarBuild == null) {
            Intrinsics.throwNpe();
        }
        return (c0) oVarBuild;
    }

    private final c0 P(kotlin.reflect.jvm.internal.impl.descriptors.o oVar, Function1<? super Name, ? extends Collection<? extends c0>> function1) {
        Object next;
        Name name = oVar.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "overridden.name");
        Iterator<T> it = function1.invoke(name).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (i0((c0) next, oVar)) {
                break;
            }
        }
        c0 c0Var = (c0) next;
        if (c0Var == null) {
            return null;
        }
        o.a<? extends c0> aVarR = c0Var.r();
        List<ValueParameterDescriptor> listG = oVar.g();
        Intrinsics.checkExpressionValueIsNotNull(listG, "overridden.valueParameters");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listG, 10));
        for (ValueParameterDescriptor it2 : listG) {
            Intrinsics.checkExpressionValueIsNotNull(it2, "it");
            u type = it2.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "it.type");
            arrayList.add(new kotlin.reflect.jvm.internal.impl.load.java.descriptors.h(type, it2.u0()));
        }
        List<ValueParameterDescriptor> listG2 = c0Var.g();
        Intrinsics.checkExpressionValueIsNotNull(listG2, "override.valueParameters");
        aVarR.b(UtilKt.copyValueParameters(arrayList, listG2, oVar));
        aVarR.s();
        aVarR.k();
        return (c0) aVarR.build();
    }

    private final JavaPropertyDescriptor Q(y yVar, Function1<? super Name, ? extends Collection<? extends c0>> function1) {
        c0 c0VarC0;
        PropertySetterDescriptorImpl propertySetterDescriptorImplCreateSetter = null;
        if (!V(yVar, function1)) {
            return null;
        }
        c0 c0VarB0 = b0(yVar, function1);
        if (c0VarB0 == null) {
            Intrinsics.throwNpe();
        }
        if (yVar.J()) {
            c0VarC0 = c0(yVar, function1);
            if (c0VarC0 == null) {
                Intrinsics.throwNpe();
            }
        } else {
            c0VarC0 = null;
        }
        if (c0VarC0 != null) {
            c0VarC0.p();
            c0VarB0.p();
        }
        kotlin.reflect.jvm.internal.impl.load.java.descriptors.d dVar = new kotlin.reflect.jvm.internal.impl.load.java.descriptors.d(v(), c0VarB0, c0VarC0, yVar);
        u returnType = c0VarB0.getReturnType();
        if (returnType == null) {
            Intrinsics.throwNpe();
        }
        dVar.P0(returnType, CollectionsKt__CollectionsKt.emptyList(), s(), null);
        v vVarCreateGetter = DescriptorFactory.createGetter(dVar, c0VarB0.getAnnotations(), false, false, false, c0VarB0.getSource());
        vVarCreateGetter.B0(c0VarB0);
        vVarCreateGetter.H0(dVar.getType());
        Intrinsics.checkExpressionValueIsNotNull(vVarCreateGetter, "DescriptorFactory.create…escriptor.type)\n        }");
        if (c0VarC0 != null) {
            List<ValueParameterDescriptor> listG = c0VarC0.g();
            Intrinsics.checkExpressionValueIsNotNull(listG, "setterMethod.valueParameters");
            ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) p.firstOrNull((List) listG);
            if (valueParameterDescriptor == null) {
                throw new AssertionError("No parameter found for " + c0VarC0);
            }
            propertySetterDescriptorImplCreateSetter = DescriptorFactory.createSetter(dVar, c0VarC0.getAnnotations(), valueParameterDescriptor.getAnnotations(), false, false, false, c0VarC0.getVisibility(), c0VarC0.getSource());
            propertySetterDescriptorImplCreateSetter.B0(c0VarC0);
        }
        dVar.J0(vVarCreateGetter, propertySetterDescriptorImplCreateSetter);
        return dVar;
    }

    private final JavaPropertyDescriptor R(JavaMethod javaMethod, u uVar, Modality modality) {
        JavaPropertyDescriptor javaPropertyDescriptorCreate = JavaPropertyDescriptor.create(v(), LazyJavaAnnotationsKt.resolveAnnotations(q(), javaMethod), modality, javaMethod.getVisibility(), false, javaMethod.getName(), q().a().r().a(javaMethod), false);
        Intrinsics.checkExpressionValueIsNotNull(javaPropertyDescriptorCreate, "JavaPropertyDescriptor.c…inal = */ false\n        )");
        v vVarCreateDefaultGetter = DescriptorFactory.createDefaultGetter(javaPropertyDescriptorCreate, Annotations.e0.b());
        Intrinsics.checkExpressionValueIsNotNull(vVarCreateDefaultGetter, "DescriptorFactory.create…iptor, Annotations.EMPTY)");
        javaPropertyDescriptorCreate.J0(vVarCreateDefaultGetter, null);
        u uVarK = uVar != null ? uVar : k(javaMethod, ContextKt.childForMethod$default(q(), javaPropertyDescriptorCreate, javaMethod, 0, 4, null));
        javaPropertyDescriptorCreate.P0(uVarK, CollectionsKt__CollectionsKt.emptyList(), s(), null);
        vVarCreateDefaultGetter.H0(uVarK);
        return javaPropertyDescriptorCreate;
    }

    static /* synthetic */ JavaPropertyDescriptor S(LazyJavaClassMemberScope lazyJavaClassMemberScope, JavaMethod javaMethod, u uVar, Modality modality, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            uVar = null;
        }
        return lazyJavaClassMemberScope.R(javaMethod, uVar, modality);
    }

    private final c0 T(c0 c0Var, Name name) {
        o.a<? extends c0> aVarR = c0Var.r();
        aVarR.i(name);
        aVarR.s();
        aVarR.k();
        kotlin.reflect.jvm.internal.impl.descriptors.o oVarBuild = aVarR.build();
        if (oVarBuild == null) {
            Intrinsics.throwNpe();
        }
        return (c0) oVarBuild;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final kotlin.reflect.jvm.internal.impl.descriptors.c0 U(kotlin.reflect.jvm.internal.impl.descriptors.c0 r6) {
        /*
            r5 = this;
            java.util.List r0 = r6.g()
            java.lang.String r1 = "valueParameters"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            java.lang.Object r0 = kotlin.collections.p.lastOrNull(r0)
            kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor r0 = (kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor) r0
            r2 = 0
            if (r0 == 0) goto L8a
            kotlin.reflect.jvm.internal.impl.types.u r3 = r0.getType()
            kotlin.reflect.jvm.internal.impl.types.f0 r3 = r3.H0()
            kotlin.reflect.jvm.internal.impl.descriptors.f r3 = r3.q()
            if (r3 == 0) goto L35
            kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe r3 = kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.getFqNameUnsafe(r3)
            if (r3 == 0) goto L35
            boolean r4 = r3.f()
            if (r4 == 0) goto L2d
            goto L2e
        L2d:
            r3 = r2
        L2e:
            if (r3 == 0) goto L35
            kotlin.reflect.jvm.internal.impl.name.FqName r3 = r3.l()
            goto L36
        L35:
            r3 = r2
        L36:
            kotlin.reflect.jvm.internal.impl.load.java.lazy.d r4 = r5.q()
            kotlin.reflect.jvm.internal.impl.load.java.lazy.a r4 = r4.a()
            kotlin.reflect.jvm.internal.impl.load.java.lazy.b r4 = r4.o()
            boolean r4 = r4.a()
            boolean r3 = kotlin.reflect.jvm.internal.impl.builtins.SuspendFunctionTypesKt.isContinuation(r3, r4)
            if (r3 == 0) goto L4d
            goto L4e
        L4d:
            r0 = r2
        L4e:
            if (r0 == 0) goto L8a
            kotlin.reflect.jvm.internal.impl.descriptors.o$a r2 = r6.r()
            java.util.List r6 = r6.g()
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r1)
            r1 = 1
            java.util.List r6 = kotlin.collections.p.dropLast(r6, r1)
            kotlin.reflect.jvm.internal.impl.descriptors.o$a r6 = r2.b(r6)
            kotlin.reflect.jvm.internal.impl.types.u r0 = r0.getType()
            java.util.List r0 = r0.G0()
            r2 = 0
            java.lang.Object r0 = r0.get(r2)
            kotlin.reflect.jvm.internal.impl.types.g0 r0 = (kotlin.reflect.jvm.internal.impl.types.g0) r0
            kotlin.reflect.jvm.internal.impl.types.u r0 = r0.getType()
            kotlin.reflect.jvm.internal.impl.descriptors.o$a r6 = r6.l(r0)
            kotlin.reflect.jvm.internal.impl.descriptors.o r6 = r6.build()
            kotlin.reflect.jvm.internal.impl.descriptors.c0 r6 = (kotlin.reflect.jvm.internal.impl.descriptors.c0) r6
            r0 = r6
            kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl r0 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl) r0
            if (r0 == 0) goto L89
            r0.V0(r1)
        L89:
            return r6
        L8a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope.U(kotlin.reflect.jvm.internal.impl.descriptors.c0):kotlin.reflect.jvm.internal.impl.descriptors.c0");
    }

    private final boolean V(y yVar, Function1<? super Name, ? extends Collection<? extends c0>> function1) {
        if (JavaDescriptorUtilKt.isJavaField(yVar)) {
            return false;
        }
        c0 c0VarB0 = b0(yVar, function1);
        c0 c0VarC0 = c0(yVar, function1);
        if (c0VarB0 == null) {
            return false;
        }
        if (yVar.J()) {
            return c0VarC0 != null && c0VarC0.p() == c0VarB0.p();
        }
        return true;
    }

    private final boolean W(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        OverridingUtil.OverrideCompatibilityInfo overrideCompatibilityInfoW = OverridingUtil.b.w(aVar2, aVar, true);
        Intrinsics.checkExpressionValueIsNotNull(overrideCompatibilityInfoW, "OverridingUtil.DEFAULT.i…erDescriptor, this, true)");
        OverridingUtil.OverrideCompatibilityInfo.Result resultB = overrideCompatibilityInfoW.b();
        Intrinsics.checkExpressionValueIsNotNull(resultB, "OverridingUtil.DEFAULT.i…iptor, this, true).result");
        return resultB == OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE && !l.a.a(aVar2, aVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean X(kotlin.reflect.jvm.internal.impl.descriptors.c0 r9) {
        /*
            r8 = this;
            kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithDifferentJvmName r0 = kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithDifferentJvmName.f9178f
            kotlin.reflect.jvm.internal.impl.name.Name r1 = r9.getName()
            java.lang.String r2 = "name"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2)
            java.util.List r0 = r0.a(r1)
            boolean r1 = r0 instanceof java.util.Collection
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1d
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L1d
        L1b:
            r2 = 0
            goto L7d
        L1d:
            java.util.Iterator r0 = r0.iterator()
        L21:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L1b
            java.lang.Object r1 = r0.next()
            kotlin.reflect.jvm.internal.impl.name.Name r1 = (kotlin.reflect.jvm.internal.impl.name.Name) r1
            java.util.Set r4 = r8.f0(r1)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.Iterator r4 = r4.iterator()
        L3a:
            boolean r6 = r4.hasNext()
            if (r6 == 0) goto L51
            java.lang.Object r6 = r4.next()
            r7 = r6
            kotlin.reflect.jvm.internal.impl.descriptors.c0 r7 = (kotlin.reflect.jvm.internal.impl.descriptors.c0) r7
            boolean r7 = kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers.doesOverrideBuiltinWithDifferentJvmName(r7)
            if (r7 == 0) goto L3a
            r5.add(r6)
            goto L3a
        L51:
            boolean r4 = r5.isEmpty()
            if (r4 == 0) goto L59
        L57:
            r1 = 0
            goto L7b
        L59:
            kotlin.reflect.jvm.internal.impl.descriptors.c0 r1 = r8.T(r9, r1)
            boolean r4 = r5.isEmpty()
            if (r4 == 0) goto L64
            goto L57
        L64:
            java.util.Iterator r4 = r5.iterator()
        L68:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L57
            java.lang.Object r5 = r4.next()
            kotlin.reflect.jvm.internal.impl.descriptors.c0 r5 = (kotlin.reflect.jvm.internal.impl.descriptors.c0) r5
            boolean r5 = r8.Y(r5, r1)
            if (r5 == 0) goto L68
            r1 = 1
        L7b:
            if (r1 == 0) goto L21
        L7d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope.X(kotlin.reflect.jvm.internal.impl.descriptors.c0):boolean");
    }

    private final boolean Y(c0 c0Var, kotlin.reflect.jvm.internal.impl.descriptors.o oVar) {
        if (BuiltinMethodsWithDifferentJvmName.f9178f.f(c0Var)) {
            oVar = oVar.a();
        }
        Intrinsics.checkExpressionValueIsNotNull(oVar, "if (superDescriptor.isRe…iginal else subDescriptor");
        return W(oVar, c0Var);
    }

    private final boolean Z(c0 c0Var) {
        c0 c0VarU = U(c0Var);
        if (c0VarU == null) {
            return false;
        }
        Name name = c0Var.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "name");
        Set<c0> setF0 = f0(name);
        if ((setF0 instanceof Collection) && setF0.isEmpty()) {
            return false;
        }
        for (c0 c0Var2 : setF0) {
            if (c0Var2.isSuspend() && W(c0VarU, c0Var2)) {
                return true;
            }
        }
        return false;
    }

    private final c0 a0(y yVar, String str, Function1<? super Name, ? extends Collection<? extends c0>> function1) {
        c0 c0Var;
        Name nameIdentifier = Name.identifier(str);
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(getterName)");
        Iterator<T> it = function1.invoke(nameIdentifier).iterator();
        do {
            c0Var = null;
            if (!it.hasNext()) {
                break;
            }
            c0 c0Var2 = (c0) it.next();
            if (c0Var2.g().size() == 0) {
                kotlin.reflect.jvm.internal.impl.types.checker.c cVar = kotlin.reflect.jvm.internal.impl.types.checker.c.a;
                u returnType = c0Var2.getReturnType();
                if (returnType != null ? cVar.d(returnType, yVar.getType()) : false) {
                    c0Var = c0Var2;
                }
            }
        } while (c0Var == null);
        return c0Var;
    }

    private final c0 b0(y yVar, Function1<? super Name, ? extends Collection<? extends c0>> function1) {
        z getter = yVar.getGetter();
        z zVar = getter != null ? (z) SpecialBuiltinMembers.getOverriddenBuiltinWithDifferentJvmName(getter) : null;
        String strA = zVar != null ? kotlin.reflect.jvm.internal.impl.load.java.a.f9194e.a(zVar) : null;
        if (strA != null && !SpecialBuiltinMembers.hasRealKotlinSuperClassWithOverrideOf(v(), zVar)) {
            return a0(yVar, strA, function1);
        }
        String str = JvmAbi.getterName(yVar.getName().e());
        Intrinsics.checkExpressionValueIsNotNull(str, "JvmAbi.getterName(name.asString())");
        return a0(yVar, str, function1);
    }

    private final c0 c0(y yVar, Function1<? super Name, ? extends Collection<? extends c0>> function1) {
        c0 c0Var;
        u returnType;
        Name nameIdentifier = Name.identifier(JvmAbi.setterName(yVar.getName().e()));
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(JvmAbi.s…terName(name.asString()))");
        Iterator<T> it = function1.invoke(nameIdentifier).iterator();
        do {
            c0Var = null;
            if (!it.hasNext()) {
                break;
            }
            c0 c0Var2 = (c0) it.next();
            if (c0Var2.g().size() == 1 && (returnType = c0Var2.getReturnType()) != null && KotlinBuiltIns.isUnit(returnType)) {
                kotlin.reflect.jvm.internal.impl.types.checker.c cVar = kotlin.reflect.jvm.internal.impl.types.checker.c.a;
                List<ValueParameterDescriptor> listG = c0Var2.g();
                Intrinsics.checkExpressionValueIsNotNull(listG, "descriptor.valueParameters");
                Object objSingle = p.single((List<? extends Object>) listG);
                Intrinsics.checkExpressionValueIsNotNull(objSingle, "descriptor.valueParameters.single()");
                if (cVar.b(((ValueParameterDescriptor) objSingle).getType(), yVar.getType())) {
                    c0Var = c0Var2;
                }
            }
        } while (c0Var == null);
        return c0Var;
    }

    private final m0 d0(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        m0 visibility = dVar.getVisibility();
        Intrinsics.checkExpressionValueIsNotNull(visibility, "classDescriptor.visibility");
        if (!Intrinsics.areEqual(visibility, kotlin.reflect.jvm.internal.impl.load.java.m.b)) {
            return visibility;
        }
        m0 m0Var = kotlin.reflect.jvm.internal.impl.load.java.m.c;
        Intrinsics.checkExpressionValueIsNotNull(m0Var, "JavaVisibilities.PROTECTED_AND_PACKAGE");
        return m0Var;
    }

    private final Set<c0> f0(Name name) {
        Collection<u> collectionL = L();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = collectionL.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, ((u) it.next()).m().a(name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS));
        }
        return linkedHashSet;
    }

    private final Set<y> h0(Name name) {
        Collection<u> collectionL = L();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = collectionL.iterator();
        while (it.hasNext()) {
            Collection<? extends y> collectionE = ((u) it.next()).m().e(name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS);
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionE, 10));
            Iterator<T> it2 = collectionE.iterator();
            while (it2.hasNext()) {
                arrayList2.add((y) it2.next());
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList2);
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    private final boolean i0(c0 c0Var, kotlin.reflect.jvm.internal.impl.descriptors.o oVar) {
        String strComputeJvmDescriptor$default = MethodSignatureMappingKt.computeJvmDescriptor$default(c0Var, false, false, 2, null);
        kotlin.reflect.jvm.internal.impl.descriptors.o oVarA = oVar.a();
        Intrinsics.checkExpressionValueIsNotNull(oVarA, "builtinWithErasedParameters.original");
        return Intrinsics.areEqual(strComputeJvmDescriptor$default, MethodSignatureMappingKt.computeJvmDescriptor$default(oVarA, false, false, 2, null)) && !W(c0Var, oVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0072 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[LOOP:0: B:8:0x001f->B:45:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean j0(kotlin.reflect.jvm.internal.impl.descriptors.c0 r7) {
        /*
            r6 = this;
            kotlin.reflect.jvm.internal.impl.name.Name r0 = r7.getName()
            java.lang.String r1 = "function.name"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            java.util.List r0 = kotlin.reflect.jvm.internal.impl.load.java.PropertiesConventionUtilKt.getPropertyNamesCandidatesByAccessorName(r0)
            boolean r1 = r0 instanceof java.util.Collection
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1b
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L1b
        L19:
            r0 = 0
            goto L73
        L1b:
            java.util.Iterator r0 = r0.iterator()
        L1f:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L19
            java.lang.Object r1 = r0.next()
            kotlin.reflect.jvm.internal.impl.name.Name r1 = (kotlin.reflect.jvm.internal.impl.name.Name) r1
            java.util.Set r1 = r6.h0(r1)
            boolean r4 = r1 instanceof java.util.Collection
            if (r4 == 0) goto L3b
            boolean r4 = r1.isEmpty()
            if (r4 == 0) goto L3b
        L39:
            r1 = 0
            goto L70
        L3b:
            java.util.Iterator r1 = r1.iterator()
        L3f:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L39
            java.lang.Object r4 = r1.next()
            kotlin.reflect.jvm.internal.impl.descriptors.y r4 = (kotlin.reflect.jvm.internal.impl.descriptors.y) r4
            kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$h r5 = new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$h
            r5.<init>(r7)
            boolean r5 = r6.V(r4, r5)
            if (r5 == 0) goto L6c
            boolean r4 = r4.J()
            if (r4 != 0) goto L6a
            kotlin.reflect.jvm.internal.impl.name.Name r4 = r7.getName()
            java.lang.String r4 = r4.e()
            boolean r4 = kotlin.reflect.jvm.internal.impl.load.java.JvmAbi.isSetterName(r4)
            if (r4 != 0) goto L6c
        L6a:
            r4 = 1
            goto L6d
        L6c:
            r4 = 0
        L6d:
            if (r4 == 0) goto L3f
            r1 = 1
        L70:
            if (r1 == 0) goto L1f
            r0 = 1
        L73:
            if (r0 == 0) goto L76
            return r3
        L76:
            boolean r0 = r6.X(r7)
            if (r0 != 0) goto L89
            boolean r0 = r6.r0(r7)
            if (r0 != 0) goto L89
            boolean r7 = r6.Z(r7)
            if (r7 != 0) goto L89
            goto L8a
        L89:
            r2 = 0
        L8a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope.j0(kotlin.reflect.jvm.internal.impl.descriptors.c0):boolean");
    }

    private final c0 k0(c0 c0Var, Function1<? super Name, ? extends Collection<? extends c0>> function1, Collection<? extends c0> collection) {
        c0 c0VarP;
        kotlin.reflect.jvm.internal.impl.descriptors.o overriddenBuiltinFunctionWithErasedValueParametersInJava = BuiltinMethodsWithSpecialGenericSignature.getOverriddenBuiltinFunctionWithErasedValueParametersInJava(c0Var);
        if (overriddenBuiltinFunctionWithErasedValueParametersInJava == null || (c0VarP = P(overriddenBuiltinFunctionWithErasedValueParametersInJava, function1)) == null) {
            return null;
        }
        if (!j0(c0VarP)) {
            c0VarP = null;
        }
        if (c0VarP != null) {
            return O(c0VarP, overriddenBuiltinFunctionWithErasedValueParametersInJava, collection);
        }
        return null;
    }

    private final c0 l0(c0 c0Var, Function1<? super Name, ? extends Collection<? extends c0>> function1, Name name, Collection<? extends c0> collection) {
        c0 c0Var2 = (c0) SpecialBuiltinMembers.getOverriddenBuiltinWithDifferentJvmName(c0Var);
        if (c0Var2 != null) {
            String jvmMethodNameIfSpecial = SpecialBuiltinMembers.getJvmMethodNameIfSpecial(c0Var2);
            if (jvmMethodNameIfSpecial == null) {
                Intrinsics.throwNpe();
            }
            Name nameIdentifier = Name.identifier(jvmMethodNameIfSpecial);
            Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(nameInJava)");
            Iterator<? extends c0> it = function1.invoke(nameIdentifier).iterator();
            while (it.hasNext()) {
                c0 c0VarT = T(it.next(), name);
                if (Y(c0Var2, c0VarT)) {
                    return O(c0VarT, c0Var2, collection);
                }
            }
        }
        return null;
    }

    private final c0 m0(c0 c0Var, Function1<? super Name, ? extends Collection<? extends c0>> function1) {
        if (!c0Var.isSuspend()) {
            return null;
        }
        Name name = c0Var.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "descriptor.name");
        Iterator<T> it = function1.invoke(name).iterator();
        while (it.hasNext()) {
            c0 c0VarU = U((c0) it.next());
            if (c0VarU == null || !W(c0VarU, c0Var)) {
                c0VarU = null;
            }
            if (c0VarU != null) {
                return c0VarU;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JavaClassConstructorDescriptor o0(kotlin.reflect.jvm.internal.impl.load.java.structure.j jVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarV = v();
        JavaClassConstructorDescriptor javaClassConstructorDescriptorCreateJavaConstructor = JavaClassConstructorDescriptor.createJavaConstructor(dVarV, LazyJavaAnnotationsKt.resolveAnnotations(q(), jVar), false, q().a().r().a(jVar));
        Intrinsics.checkExpressionValueIsNotNull(javaClassConstructorDescriptorCreateJavaConstructor, "JavaClassConstructorDesc…ce(constructor)\n        )");
        kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVarChildForMethod = ContextKt.childForMethod(q(), javaClassConstructorDescriptorCreateJavaConstructor, jVar, dVarV.o().size());
        LazyJavaScope.b bVarD = D(dVarChildForMethod, javaClassConstructorDescriptorCreateJavaConstructor, jVar.g());
        List<i0> listO = dVarV.o();
        Intrinsics.checkExpressionValueIsNotNull(listO, "classDescriptor.declaredTypeParameters");
        List<kotlin.reflect.jvm.internal.impl.load.java.structure.u> typeParameters = jVar.getTypeParameters();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(typeParameters, 10));
        Iterator<T> it = typeParameters.iterator();
        while (it.hasNext()) {
            i0 i0VarA = dVarChildForMethod.f().a((kotlin.reflect.jvm.internal.impl.load.java.structure.u) it.next());
            if (i0VarA == null) {
                Intrinsics.throwNpe();
            }
            arrayList.add(i0VarA);
        }
        javaClassConstructorDescriptorCreateJavaConstructor.d1(bVarD.a(), jVar.getVisibility(), CollectionsKt___CollectionsKt.plus((Collection) listO, (Iterable) arrayList));
        javaClassConstructorDescriptorCreateJavaConstructor.M0(false);
        javaClassConstructorDescriptorCreateJavaConstructor.N0(bVarD.b());
        javaClassConstructorDescriptorCreateJavaConstructor.U0(dVarV.n());
        dVarChildForMethod.a().g().a(jVar, javaClassConstructorDescriptorCreateJavaConstructor);
        return javaClassConstructorDescriptorCreateJavaConstructor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<c0> p0(Name name) {
        Collection<JavaMethod> collectionC = r().invoke().c(name);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionC, 10));
        Iterator<T> it = collectionC.iterator();
        while (it.hasNext()) {
            arrayList.add(B((JavaMethod) it.next()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<c0> q0(Name name) {
        Set<c0> setF0 = f0(name);
        ArrayList arrayList = new ArrayList();
        for (Object obj : setF0) {
            c0 c0Var = (c0) obj;
            if (!(SpecialBuiltinMembers.doesOverrideBuiltinWithDifferentJvmName(c0Var) || BuiltinMethodsWithSpecialGenericSignature.getOverriddenBuiltinFunctionWithErasedValueParametersInJava(c0Var) != null)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private final boolean r0(c0 c0Var) {
        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.h;
        Name name = c0Var.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "name");
        if (!builtinMethodsWithSpecialGenericSignature.b(name)) {
            return false;
        }
        Name name2 = c0Var.getName();
        Intrinsics.checkExpressionValueIsNotNull(name2, "name");
        Set<c0> setF0 = f0(name2);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = setF0.iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.descriptors.o overriddenBuiltinFunctionWithErasedValueParametersInJava = BuiltinMethodsWithSpecialGenericSignature.getOverriddenBuiltinFunctionWithErasedValueParametersInJava((c0) it.next());
            if (overriddenBuiltinFunctionWithErasedValueParametersInJava != null) {
                arrayList.add(overriddenBuiltinFunctionWithErasedValueParametersInJava);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (i0(c0Var, (kotlin.reflect.jvm.internal.impl.descriptors.o) it2.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected LazyJavaScope.a A(JavaMethod method, List<? extends i0> methodTypeParameters, u returnType, List<? extends ValueParameterDescriptor> valueParameters) {
        Intrinsics.checkParameterIsNotNull(method, "method");
        Intrinsics.checkParameterIsNotNull(methodTypeParameters, "methodTypeParameters");
        Intrinsics.checkParameterIsNotNull(returnType, "returnType");
        Intrinsics.checkParameterIsNotNull(valueParameters, "valueParameters");
        j.b bVarA = q().a().q().a(method, v(), returnType, null, valueParameters, methodTypeParameters);
        Intrinsics.checkExpressionValueIsNotNull(bVarA, "c.components.signaturePr…dTypeParameters\n        )");
        u uVarD = bVarA.d();
        Intrinsics.checkExpressionValueIsNotNull(uVarD, "propagated.returnType");
        u uVarC = bVarA.c();
        List<ValueParameterDescriptor> listF = bVarA.f();
        Intrinsics.checkExpressionValueIsNotNull(listF, "propagated.valueParameters");
        List<i0> listE = bVarA.e();
        Intrinsics.checkExpressionValueIsNotNull(listE, "propagated.typeParameters");
        boolean zG = bVarA.g();
        List<String> listB = bVarA.b();
        Intrinsics.checkExpressionValueIsNotNull(listB, "propagated.errors");
        return new LazyJavaScope.a(uVarD, uVarC, listF, listE, zG, listB);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public HashSet<Name> i(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        f0 f0VarI = v().i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "ownerDescriptor.typeConstructor");
        Collection<u> collectionH = f0VarI.h();
        Intrinsics.checkExpressionValueIsNotNull(collectionH, "ownerDescriptor.typeConstructor.supertypes");
        HashSet<Name> hashSet = new HashSet<>();
        Iterator<T> it = collectionH.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(hashSet, ((u) it.next()).m().b());
        }
        hashSet.addAll(r().invoke().a());
        hashSet.addAll(g(kindFilter, function1));
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public ClassDeclaredMemberIndex j() {
        return new ClassDeclaredMemberIndex(this.s, a.a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        n0(name, location);
        return super.a(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public kotlin.reflect.jvm.internal.impl.descriptors.f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        kotlin.reflect.jvm.internal.impl.storage.c<Name, kotlin.reflect.jvm.internal.impl.descriptors.impl.f> cVar;
        kotlin.reflect.jvm.internal.impl.descriptors.impl.f fVarInvoke;
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        n0(name, location);
        LazyJavaClassMemberScope lazyJavaClassMemberScope = (LazyJavaClassMemberScope) u();
        return (lazyJavaClassMemberScope == null || (cVar = lazyJavaClassMemberScope.q) == null || (fVarInvoke = cVar.invoke(name)) == null) ? this.q.invoke(name) : fVarInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        n0(name, location);
        return super.e(name, location);
    }

    public final kotlin.reflect.jvm.internal.impl.storage.e<List<kotlin.reflect.jvm.internal.impl.descriptors.c>> e0() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<Name> g(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        return SetsKt___SetsKt.plus((Set) this.o.invoke(), (Iterable) this.p.invoke().keySet());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.d v() {
        return this.r;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void l(java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.c0> r11, kotlin.reflect.jvm.internal.impl.name.Name r12) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope.l(java.util.Collection, kotlin.reflect.jvm.internal.impl.name.Name):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void m(Name name, Collection<y> result) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(result, "result");
        if (this.s.m()) {
            I(name, result);
        }
        Set<y> setH0 = h0(name);
        if (setH0.isEmpty()) {
            return;
        }
        SmartSet smartSetA = SmartSet.a.a();
        H(setH0, result, new d());
        H(setH0, smartSetA, new e());
        Collection<? extends y> collectionResolveOverridesForNonStaticMembers = DescriptorResolverUtils.resolveOverridesForNonStaticMembers(name, SetsKt___SetsKt.plus((Set) setH0, (Iterable) smartSetA), result, v(), q().a().c(), q().a().i().a());
        Intrinsics.checkExpressionValueIsNotNull(collectionResolveOverridesForNonStaticMembers, "resolveOverridesForNonSt…rridingUtil\n            )");
        result.addAll(collectionResolveOverridesForNonStaticMembers);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<Name> n(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        if (this.s.m()) {
            return b();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(r().invoke().b());
        f0 f0VarI = v().i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "ownerDescriptor.typeConstructor");
        Collection<u> collectionH = f0VarI.h();
        Intrinsics.checkExpressionValueIsNotNull(collectionH, "ownerDescriptor.typeConstructor.supertypes");
        Iterator<T> it = collectionH.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, ((u) it.next()).m().f());
        }
        return linkedHashSet;
    }

    public void n0(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        UtilsKt.record(q().a().j(), location, v(), name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected b0 s() {
        return DescriptorUtils.getDispatchReceiverParameterIfNeeded(v());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public String toString() {
        return "Lazy Java member scope for " + this.s.e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected boolean z(JavaMethodDescriptor isVisibleAsFunction) {
        Intrinsics.checkParameterIsNotNull(isVisibleAsFunction, "$this$isVisibleAsFunction");
        if (this.s.m()) {
            return false;
        }
        return j0(isVisibleAsFunction);
    }
}
