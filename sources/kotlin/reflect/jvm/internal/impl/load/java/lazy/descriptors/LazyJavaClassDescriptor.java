package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.MappingUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.g0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.f;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.i;
import kotlin.reflect.jvm.internal.impl.load.java.structure.t;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNamesUtilKt;
import kotlin.reflect.jvm.internal.impl.resolve.constants.u;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.m;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;

/* JADX INFO: compiled from: LazyJavaClassDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LazyJavaClassDescriptor extends f implements kotlin.reflect.jvm.internal.impl.load.java.descriptors.c {
    private final kotlin.reflect.jvm.internal.impl.load.java.lazy.d k;
    private final ClassKind l;
    private final Modality m;
    private final m0 n;
    private final boolean o;
    private final b p;
    private final LazyJavaClassMemberScope q;
    private final ScopesHolderForClass<LazyJavaClassMemberScope> r;
    private final kotlin.reflect.jvm.internal.impl.resolve.scopes.d s;
    private final kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.c t;
    private final Annotations u;
    private final kotlin.reflect.jvm.internal.impl.storage.e<List<i0>> v;
    private final kotlin.reflect.jvm.internal.impl.load.java.lazy.d w;
    private final kotlin.reflect.jvm.internal.impl.load.java.structure.f x;
    private final kotlin.reflect.jvm.internal.impl.descriptors.d y;
    public static final a j = new a(null);
    private static final Set<String> i = SetsKt__SetsKt.setOf((Object[]) new String[]{"equals", "hashCode", "getClass", "wait", "notify", "notifyAll", "toString"});

    /* JADX INFO: compiled from: LazyJavaClassDescriptor.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassDescriptor.kt */
    private final class b extends kotlin.reflect.jvm.internal.impl.types.b {
        private final kotlin.reflect.jvm.internal.impl.storage.e<List<i0>> c;

        /* JADX INFO: compiled from: LazyJavaClassDescriptor.kt */
        static final class a extends Lambda implements Function0<List<? extends i0>> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<i0> invoke() {
                return TypeParameterUtilsKt.computeConstructorTypeParameters(LazyJavaClassDescriptor.this);
            }
        }

        public b() {
            super(LazyJavaClassDescriptor.this.k.e());
            this.c = LazyJavaClassDescriptor.this.k.e().c(new a());
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final kotlin.reflect.jvm.internal.impl.types.u s() {
            /*
                Method dump skipped, instruction units count: 225
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.b.s():kotlin.reflect.jvm.internal.impl.types.u");
        }

        private final FqName t() {
            String strB;
            Annotations annotations = LazyJavaClassDescriptor.this.getAnnotations();
            FqName fqName = kotlin.reflect.jvm.internal.impl.load.java.n.j;
            Intrinsics.checkExpressionValueIsNotNull(fqName, "JvmAnnotationNames.PURELY_IMPLEMENTS_ANNOTATION");
            AnnotationDescriptor annotationDescriptorB = annotations.b(fqName);
            if (annotationDescriptorB == null) {
                return null;
            }
            Object objSingleOrNull = p.singleOrNull(annotationDescriptorB.a().values());
            if (!(objSingleOrNull instanceof u)) {
                objSingleOrNull = null;
            }
            u uVar = (u) objSingleOrNull;
            if (uVar == null || (strB = uVar.b()) == null || !FqNamesUtilKt.isValidJavaFqName(strB)) {
                return null;
            }
            return new FqName(strB);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public boolean d() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected Collection<kotlin.reflect.jvm.internal.impl.types.u> f() {
            Collection<i> collectionH = LazyJavaClassDescriptor.this.B0().h();
            ArrayList arrayList = new ArrayList(collectionH.size());
            ArrayList<t> arrayList2 = new ArrayList(0);
            kotlin.reflect.jvm.internal.impl.types.u uVarS = s();
            Iterator<i> it = collectionH.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                i next = it.next();
                kotlin.reflect.jvm.internal.impl.types.u uVarK = LazyJavaClassDescriptor.this.k.g().k(next, JavaTypeResolverKt.toAttributes$default(TypeUsage.SUPERTYPE, false, null, 3, null));
                if (uVarK.H0().q() instanceof NotFoundClasses.b) {
                    arrayList2.add(next);
                }
                if (!Intrinsics.areEqual(uVarK.H0(), uVarS != null ? uVarS.H0() : null) && !KotlinBuiltIns.isAnyOrNullableAny(uVarK)) {
                    arrayList.add(uVarK);
                }
            }
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = LazyJavaClassDescriptor.this.y;
            CollectionsKt.addIfNotNull(arrayList, dVar != null ? MappingUtilKt.createMappedTypeParametersSubstitution(dVar, LazyJavaClassDescriptor.this).c().i(dVar.n(), Variance.INVARIANT) : null);
            CollectionsKt.addIfNotNull(arrayList, uVarS);
            if (!arrayList2.isEmpty()) {
                m mVarC = LazyJavaClassDescriptor.this.k.a().c();
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarQ = q();
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10));
                for (t tVar : arrayList2) {
                    if (tVar == null) {
                        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.load.java.structure.JavaClassifierType");
                    }
                    arrayList3.add(((i) tVar).y());
                }
                mVarC.b(dVarQ, arrayList3);
            }
            return arrayList.isEmpty() ^ true ? CollectionsKt___CollectionsKt.toList(arrayList) : CollectionsKt__CollectionsJVMKt.listOf(LazyJavaClassDescriptor.this.k.d().k().j());
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public List<i0> getParameters() {
            return this.c.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected g0 j() {
            return LazyJavaClassDescriptor.this.k.a().t();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.f0
        public kotlin.reflect.jvm.internal.impl.descriptors.d q() {
            return LazyJavaClassDescriptor.this;
        }

        public String toString() {
            String strE = LazyJavaClassDescriptor.this.getName().e();
            Intrinsics.checkExpressionValueIsNotNull(strE, "name.asString()");
            return strE;
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassDescriptor.kt */
    static final class c extends Lambda implements Function0<List<? extends i0>> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<i0> invoke() {
            List<kotlin.reflect.jvm.internal.impl.load.java.structure.u> typeParameters = LazyJavaClassDescriptor.this.B0().getTypeParameters();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(typeParameters, 10));
            for (kotlin.reflect.jvm.internal.impl.load.java.structure.u uVar : typeParameters) {
                i0 i0VarA = LazyJavaClassDescriptor.this.k.f().a(uVar);
                if (i0VarA == null) {
                    throw new AssertionError("Parameter " + uVar + " surely belongs to class " + LazyJavaClassDescriptor.this.B0() + ", so it must be resolved");
                }
                arrayList.add(i0VarA);
            }
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: LazyJavaClassDescriptor.kt */
    static final class d extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, LazyJavaClassMemberScope> {
        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LazyJavaClassMemberScope invoke(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
            kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar = LazyJavaClassDescriptor.this.k;
            LazyJavaClassDescriptor lazyJavaClassDescriptor = LazyJavaClassDescriptor.this;
            return new LazyJavaClassMemberScope(dVar, lazyJavaClassDescriptor, lazyJavaClassDescriptor.B0(), LazyJavaClassDescriptor.this.y != null, LazyJavaClassDescriptor.this.q);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassDescriptor(kotlin.reflect.jvm.internal.impl.load.java.lazy.d outerContext, kotlin.reflect.jvm.internal.impl.descriptors.i containingDeclaration, kotlin.reflect.jvm.internal.impl.load.java.structure.f jClass, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        Modality modalityA;
        super(outerContext.e(), containingDeclaration, jClass.getName(), outerContext.a().r().a(jClass), false);
        Intrinsics.checkParameterIsNotNull(outerContext, "outerContext");
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        Intrinsics.checkParameterIsNotNull(jClass, "jClass");
        this.w = outerContext;
        this.x = jClass;
        this.y = dVar;
        kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVarChildForClassOrPackage$default = ContextKt.childForClassOrPackage$default(outerContext, this, jClass, 0, 4, null);
        this.k = dVarChildForClassOrPackage$default;
        dVarChildForClassOrPackage$default.a().g().e(jClass, this);
        jClass.E();
        this.l = jClass.m() ? ClassKind.ANNOTATION_CLASS : jClass.D() ? ClassKind.INTERFACE : jClass.r() ? ClassKind.ENUM_CLASS : ClassKind.CLASS;
        if (jClass.m() || jClass.r()) {
            modalityA = Modality.FINAL;
        } else {
            modalityA = Modality.f9094f.a(jClass.isAbstract() || jClass.D(), !jClass.isFinal());
        }
        this.m = modalityA;
        this.n = jClass.getVisibility();
        this.o = (jClass.j() == null || jClass.J()) ? false : true;
        this.p = new b();
        LazyJavaClassMemberScope lazyJavaClassMemberScope = new LazyJavaClassMemberScope(dVarChildForClassOrPackage$default, this, jClass, dVar != null, null, 16, null);
        this.q = lazyJavaClassMemberScope;
        this.r = ScopesHolderForClass.b.a(this, dVarChildForClassOrPackage$default.e(), dVarChildForClassOrPackage$default.a().i().c(), new d());
        this.s = new kotlin.reflect.jvm.internal.impl.resolve.scopes.d(lazyJavaClassMemberScope);
        this.t = new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.c(dVarChildForClassOrPackage$default, jClass, this);
        this.u = LazyJavaAnnotationsKt.resolveAnnotations(dVarChildForClassOrPackage$default, jClass);
        this.v = dVarChildForClassOrPackage$default.e().c(new c());
    }

    public /* synthetic */ LazyJavaClassDescriptor(kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar, kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar2, int i2, n nVar) {
        this(dVar, iVar, fVar, (i2 & 8) != 0 ? null : dVar2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.c A() {
        return null;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.structure.f B0() {
        return this.x;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean C0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.a, kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public LazyJavaClassMemberScope Q() {
        MemberScope memberScopeQ = super.Q();
        if (memberScopeQ != null) {
            return (LazyJavaClassMemberScope) memberScopeQ;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.load.java.lazy.descriptors.LazyJavaClassMemberScope");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.p
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public LazyJavaClassMemberScope Z(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return (LazyJavaClassMemberScope) this.r.a(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.a, kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope O() {
        return this.s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean R() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean U() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean c0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope f0() {
        return this.t;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.d g0() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return this.u;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind getKind() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        m0 m0Var = (Intrinsics.areEqual(this.n, Visibilities.a) && this.x.j() == null) ? kotlin.reflect.jvm.internal.impl.load.java.m.a : this.n;
        Intrinsics.checkExpressionValueIsNotNull(m0Var, "if (visibility == Visibi…ISIBILITY else visibility");
        return m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public f0 i() {
        return this.p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return false;
    }

    public final LazyJavaClassDescriptor k0(kotlin.reflect.jvm.internal.impl.load.java.components.f javaResolverCache, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        Intrinsics.checkParameterIsNotNull(javaResolverCache, "javaResolverCache");
        kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar2 = this.k;
        kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVarReplaceComponents = ContextKt.replaceComponents(dVar2, dVar2.a().u(javaResolverCache));
        kotlin.reflect.jvm.internal.impl.descriptors.i containingDeclaration = b();
        Intrinsics.checkExpressionValueIsNotNull(containingDeclaration, "containingDeclaration");
        return new LazyJavaClassDescriptor(dVarReplaceComponents, containingDeclaration, this.x, dVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<i0> o() {
        return this.v.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.q
    public Modality p() {
        return this.m;
    }

    public String toString() {
        return "Lazy Java class " + DescriptorUtilsKt.getFqNameUnsafe(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> v() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean x() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.descriptors.c> f() {
        return this.q.e0().invoke();
    }
}
