package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.f;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.n;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.l;
import kotlin.reflect.jvm.internal.impl.load.java.structure.t;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.h;
import kotlin.reflect.jvm.internal.impl.resolve.constants.j;
import kotlin.reflect.jvm.internal.impl.resolve.constants.q;
import kotlin.reflect.jvm.internal.impl.resolve.constants.s;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: LazyJavaAnnotationDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LazyJavaAnnotationDescriptor implements AnnotationDescriptor, f {
    static final /* synthetic */ KProperty[] a = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(LazyJavaAnnotationDescriptor.class), "fqName", "getFqName()Lorg/jetbrains/kotlin/name/FqName;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(LazyJavaAnnotationDescriptor.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(LazyJavaAnnotationDescriptor.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    private final kotlin.reflect.jvm.internal.impl.storage.f b;
    private final kotlin.reflect.jvm.internal.impl.storage.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.p.a f9225d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.e f9226e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f9227f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.lazy.d f9228g;
    private final JavaAnnotation h;

    /* JADX INFO: compiled from: LazyJavaAnnotationDescriptor.kt */
    static final class a extends Lambda implements Function0<Map<Name, ? extends g<?>>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Map<Name, g<?>> invoke() {
            Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.a> collectionK = LazyJavaAnnotationDescriptor.this.h.k();
            ArrayList arrayList = new ArrayList();
            for (kotlin.reflect.jvm.internal.impl.load.java.structure.a aVar : collectionK) {
                Name name = aVar.getName();
                if (name == null) {
                    name = n.c;
                }
                g gVarF = LazyJavaAnnotationDescriptor.this.f(aVar);
                Pair pair = gVarF != null ? TuplesKt.to(name, gVarF) : null;
                if (pair != null) {
                    arrayList.add(pair);
                }
            }
            return MapsKt__MapsKt.toMap(arrayList);
        }
    }

    /* JADX INFO: compiled from: LazyJavaAnnotationDescriptor.kt */
    static final class b extends Lambda implements Function0<FqName> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final FqName invoke() {
            ClassId classIdA = LazyJavaAnnotationDescriptor.this.h.a();
            if (classIdA != null) {
                return classIdA.b();
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: LazyJavaAnnotationDescriptor.kt */
    static final class c extends Lambda implements Function0<y> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final y invoke() {
            FqName fqNameE = LazyJavaAnnotationDescriptor.this.e();
            if (fqNameE == null) {
                return ErrorUtils.createErrorType("No fqName: " + LazyJavaAnnotationDescriptor.this.h);
            }
            Intrinsics.checkExpressionValueIsNotNull(fqNameE, "fqName ?: return@createL…fqName: $javaAnnotation\")");
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarMapJavaToKotlin$default = JavaToKotlinClassMap.mapJavaToKotlin$default(JavaToKotlinClassMap.m, fqNameE, LazyJavaAnnotationDescriptor.this.f9228g.d().k(), null, 4, null);
            if (dVarMapJavaToKotlin$default == null) {
                kotlin.reflect.jvm.internal.impl.load.java.structure.f fVarP = LazyJavaAnnotationDescriptor.this.h.p();
                dVarMapJavaToKotlin$default = fVarP != null ? LazyJavaAnnotationDescriptor.this.f9228g.a().l().a(fVarP) : null;
            }
            if (dVarMapJavaToKotlin$default == null) {
                dVarMapJavaToKotlin$default = LazyJavaAnnotationDescriptor.this.b(fqNameE);
            }
            return dVarMapJavaToKotlin$default.n();
        }
    }

    public LazyJavaAnnotationDescriptor(kotlin.reflect.jvm.internal.impl.load.java.lazy.d c2, JavaAnnotation javaAnnotation) {
        Intrinsics.checkParameterIsNotNull(c2, "c");
        Intrinsics.checkParameterIsNotNull(javaAnnotation, "javaAnnotation");
        this.f9228g = c2;
        this.h = javaAnnotation;
        this.b = c2.e().e(new b());
        this.c = c2.e().c(new c());
        this.f9225d = c2.a().r().a(javaAnnotation);
        this.f9226e = c2.e().c(new a());
        this.f9227f = javaAnnotation.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d b(FqName fqName) {
        ModuleDescriptor moduleDescriptorD = this.f9228g.d();
        ClassId classId = ClassId.topLevel(fqName);
        Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(fqName)");
        return FindClassInModuleKt.findNonGenericClassAcrossDependencies(moduleDescriptorD, classId, this.f9228g.a().b().b().q());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final g<?> f(kotlin.reflect.jvm.internal.impl.load.java.structure.a aVar) {
        if (aVar instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.n) {
            return h.a.c(((kotlin.reflect.jvm.internal.impl.load.java.structure.n) aVar).getValue());
        }
        if (aVar instanceof l) {
            l lVar = (l) aVar;
            return j(lVar.d(), lVar.e());
        }
        if (aVar instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.d) {
            Name DEFAULT_ANNOTATION_MEMBER_NAME = aVar.getName();
            if (DEFAULT_ANNOTATION_MEMBER_NAME == null) {
                DEFAULT_ANNOTATION_MEMBER_NAME = n.c;
                Intrinsics.checkExpressionValueIsNotNull(DEFAULT_ANNOTATION_MEMBER_NAME, "DEFAULT_ANNOTATION_MEMBER_NAME");
            }
            return h(DEFAULT_ANNOTATION_MEMBER_NAME, ((kotlin.reflect.jvm.internal.impl.load.java.structure.d) aVar).c());
        }
        if (aVar instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.b) {
            return g(((kotlin.reflect.jvm.internal.impl.load.java.structure.b) aVar).a());
        }
        if (aVar instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.g) {
            return k(((kotlin.reflect.jvm.internal.impl.load.java.structure.g) aVar).b());
        }
        return null;
    }

    private final g<?> g(JavaAnnotation javaAnnotation) {
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.a(new LazyJavaAnnotationDescriptor(this.f9228g, javaAnnotation));
    }

    private final g<?> h(Name name, List<? extends kotlin.reflect.jvm.internal.impl.load.java.structure.a> list) {
        u uVarM;
        y type = getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "type");
        if (KotlinTypeKt.isError(type)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d annotationClass = DescriptorUtilsKt.getAnnotationClass(this);
        if (annotationClass == null) {
            Intrinsics.throwNpe();
        }
        ValueParameterDescriptor annotationParameterByName = DescriptorResolverUtils.getAnnotationParameterByName(name, annotationClass);
        if (annotationParameterByName == null || (uVarM = annotationParameterByName.getType()) == null) {
            uVarM = this.f9228g.a().k().k().m(Variance.INVARIANT, ErrorUtils.createErrorType("Unknown array element type"));
        }
        Intrinsics.checkExpressionValueIsNotNull(uVarM, "DescriptorResolverUtils.… type\")\n                )");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            g<?> gVarF = f((kotlin.reflect.jvm.internal.impl.load.java.structure.a) it.next());
            if (gVarF == null) {
                gVarF = new s();
            }
            arrayList.add(gVarF);
        }
        return h.a.b(arrayList, uVarM);
    }

    private final g<?> j(ClassId classId, Name name) {
        if (classId == null || name == null) {
            return null;
        }
        return new j(classId, name);
    }

    private final g<?> k(t tVar) {
        return q.b.a(this.f9228g.g().k(tVar, JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, false, null, 3, null)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public Map<Name, g<?>> a() {
        return (Map) StorageKt.getValue(this.f9226e, this, (KProperty<?>) a[2]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.load.java.p.a getSource() {
        return this.f9225d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public y getType() {
        return (y) StorageKt.getValue(this.c, this, (KProperty<?>) a[1]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public FqName e() {
        return (FqName) StorageKt.getValue(this.b, this, (KProperty<?>) a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.f
    public boolean i() {
        return this.f9227f;
    }

    public String toString() {
        return DescriptorRenderer.renderAnnotation$default(DescriptorRenderer.f9727f, this, null, 2, null);
    }
}
