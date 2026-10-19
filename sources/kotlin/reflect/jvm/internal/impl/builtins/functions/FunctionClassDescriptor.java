package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.g0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.v;

/* JADX INFO: compiled from: FunctionClassDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FunctionClassDescriptor extends kotlin.reflect.jvm.internal.impl.descriptors.impl.a {
    private final c i;
    private final kotlin.reflect.jvm.internal.impl.builtins.functions.c j;
    private final List<i0> k;
    private final h l;
    private final s m;
    private final Kind n;
    private final int o;
    public static final b h = new b(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ClassId f9062f = new ClassId(KotlinBuiltIns.b, Name.identifier("Function"));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ClassId f9063g = new ClassId(ReflectionTypesKt.getKOTLIN_REFLECT_FQ_NAME(), Name.identifier("KFunction"));

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'a' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: compiled from: FunctionClassDescriptor.kt */
    public static final class Kind {
        public static final Kind a;
        public static final Kind b;
        public static final Kind c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final Kind f9064d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ Kind[] f9065e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final a f9066f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final FqName f9067g;
        private final String h;

        /* JADX INFO: compiled from: FunctionClassDescriptor.kt */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(n nVar) {
                this();
            }

            public final Kind a(FqName packageFqName, String className) {
                Intrinsics.checkParameterIsNotNull(packageFqName, "packageFqName");
                Intrinsics.checkParameterIsNotNull(className, "className");
                for (Kind kind : Kind.values()) {
                    if (Intrinsics.areEqual(kind.f(), packageFqName) && StringsKt__StringsJVMKt.startsWith$default(className, kind.e(), false, 2, null)) {
                        return kind;
                    }
                }
                return null;
            }
        }

        static {
            FqName BUILT_INS_PACKAGE_FQ_NAME = KotlinBuiltIns.b;
            Intrinsics.checkExpressionValueIsNotNull(BUILT_INS_PACKAGE_FQ_NAME, "BUILT_INS_PACKAGE_FQ_NAME");
            Kind kind = new Kind("Function", 0, BUILT_INS_PACKAGE_FQ_NAME, "Function");
            a = kind;
            FqName COROUTINES_PACKAGE_FQ_NAME_RELEASE = DescriptorUtils.c;
            Intrinsics.checkExpressionValueIsNotNull(COROUTINES_PACKAGE_FQ_NAME_RELEASE, "COROUTINES_PACKAGE_FQ_NAME_RELEASE");
            Kind kind2 = new Kind("SuspendFunction", 1, COROUTINES_PACKAGE_FQ_NAME_RELEASE, "SuspendFunction");
            b = kind2;
            Kind kind3 = new Kind("KFunction", 2, ReflectionTypesKt.getKOTLIN_REFLECT_FQ_NAME(), "KFunction");
            c = kind3;
            Kind kind4 = new Kind("KSuspendFunction", 3, ReflectionTypesKt.getKOTLIN_REFLECT_FQ_NAME(), "KSuspendFunction");
            f9064d = kind4;
            f9065e = new Kind[]{kind, kind2, kind3, kind4};
            f9066f = new a(null);
        }

        private Kind(String str, int i, FqName fqName, String str2) {
            this.f9067g = fqName;
            this.h = str2;
        }

        public static Kind valueOf(String str) {
            return (Kind) Enum.valueOf(Kind.class, str);
        }

        public static Kind[] values() {
            return (Kind[]) f9065e.clone();
        }

        public final String e() {
            return this.h;
        }

        public final FqName f() {
            return this.f9067g;
        }

        public final Name g(int i) {
            Name nameIdentifier = Name.identifier(this.h + i);
            Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(\"$classNamePrefix$arity\")");
            return nameIdentifier;
        }
    }

    /* JADX INFO: compiled from: FunctionClassDescriptor.kt */
    static final class a extends Lambda implements Function2<Variance, String, v> {
        final /* synthetic */ ArrayList b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ArrayList arrayList) {
            super(2);
            this.b = arrayList;
        }

        public final void a(Variance variance, String name) {
            Intrinsics.checkParameterIsNotNull(variance, "variance");
            Intrinsics.checkParameterIsNotNull(name, "name");
            this.b.add(TypeParameterDescriptorImpl.createWithDefaultBound(FunctionClassDescriptor.this, Annotations.e0.b(), false, variance, Name.identifier(name), this.b.size(), FunctionClassDescriptor.this.l));
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ v invoke(Variance variance, String str) {
            a(variance, str);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: FunctionClassDescriptor.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: FunctionClassDescriptor.kt */
    private final class c extends kotlin.reflect.jvm.internal.impl.types.b {
        public c() {
            super(FunctionClassDescriptor.this.l);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public boolean d() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected Collection<u> f() {
            List<ClassId> listListOf;
            int i = kotlin.reflect.jvm.internal.impl.builtins.functions.a.a[FunctionClassDescriptor.this.G0().ordinal()];
            if (i == 1) {
                listListOf = CollectionsKt__CollectionsJVMKt.listOf(FunctionClassDescriptor.f9062f);
            } else if (i == 2) {
                listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ClassId[]{FunctionClassDescriptor.f9063g, new ClassId(KotlinBuiltIns.b, Kind.a.g(FunctionClassDescriptor.this.k0()))});
            } else if (i == 3) {
                listListOf = CollectionsKt__CollectionsJVMKt.listOf(FunctionClassDescriptor.f9062f);
            } else {
                if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ClassId[]{FunctionClassDescriptor.f9063g, new ClassId(DescriptorUtils.c, Kind.b.g(FunctionClassDescriptor.this.k0()))});
            }
            ModuleDescriptor moduleDescriptorB = FunctionClassDescriptor.this.m.b();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10));
            for (ClassId classId : listListOf) {
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarFindClassAcrossModuleDependencies = FindClassInModuleKt.findClassAcrossModuleDependencies(moduleDescriptorB, classId);
                if (dVarFindClassAcrossModuleDependencies == null) {
                    throw new IllegalStateException(("Built-in class " + classId + " not found").toString());
                }
                List<i0> parameters = getParameters();
                f0 f0VarI = dVarFindClassAcrossModuleDependencies.i();
                Intrinsics.checkExpressionValueIsNotNull(f0VarI, "descriptor.typeConstructor");
                List listTakeLast = CollectionsKt___CollectionsKt.takeLast(parameters, f0VarI.getParameters().size());
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listTakeLast, 10));
                Iterator it = listTakeLast.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new kotlin.reflect.jvm.internal.impl.types.i0(((i0) it.next()).n()));
                }
                arrayList.add(KotlinTypeFactory.simpleNotNullType(Annotations.e0.b(), dVarFindClassAcrossModuleDependencies, arrayList2));
            }
            return CollectionsKt___CollectionsKt.toList(arrayList);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public List<i0> getParameters() {
            return FunctionClassDescriptor.this.k;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected g0 j() {
            return g0.a.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.b
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public FunctionClassDescriptor q() {
            return FunctionClassDescriptor.this;
        }

        public String toString() {
            return c().toString();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionClassDescriptor(h storageManager, s containingDeclaration, Kind functionKind, int i) {
        super(storageManager, functionKind.g(i));
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        Intrinsics.checkParameterIsNotNull(functionKind, "functionKind");
        this.l = storageManager;
        this.m = containingDeclaration;
        this.n = functionKind;
        this.o = i;
        this.i = new c();
        this.j = new kotlin.reflect.jvm.internal.impl.builtins.functions.c(storageManager, this);
        ArrayList arrayList = new ArrayList();
        a aVar = new a(arrayList);
        IntRange intRange = new IntRange(1, i);
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange, 10));
        Iterator<Integer> it = intRange.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            Variance variance = Variance.IN_VARIANCE;
            StringBuilder sb = new StringBuilder();
            sb.append('P');
            sb.append(iNextInt);
            aVar.a(variance, sb.toString());
            arrayList2.add(v.a);
        }
        aVar.a(Variance.OUT_VARIANCE, "R");
        this.k = CollectionsKt___CollectionsKt.toList(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.c A() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.c) K0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.descriptors.c> f() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean C0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.j, kotlin.reflect.jvm.internal.impl.descriptors.i
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public s b() {
        return this.m;
    }

    public final Kind G0() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: H0, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.descriptors.d> v() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: I0, reason: merged with bridge method [inline-methods] */
    public MemberScope.b f0() {
        return MemberScope.b.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.p
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.builtins.functions.c Z(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.j;
    }

    public Void K0() {
        return null;
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
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d g0() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.d) z0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return Annotations.e0.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind getKind() {
        return ClassKind.INTERFACE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l
    public d0 getSource() {
        d0 d0Var = d0.a;
        Intrinsics.checkExpressionValueIsNotNull(d0Var, "SourceElement.NO_SOURCE");
        return d0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        m0 m0Var = Visibilities.f9100e;
        Intrinsics.checkExpressionValueIsNotNull(m0Var, "Visibilities.PUBLIC");
        return m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public f0 i() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return false;
    }

    public final int k0() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<i0> o() {
        return this.k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.q
    public Modality p() {
        return Modality.ABSTRACT;
    }

    public String toString() {
        String strE = getName().e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "name.asString()");
        return strE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean x() {
        return false;
    }

    public Void z0() {
        return null;
    }
}
