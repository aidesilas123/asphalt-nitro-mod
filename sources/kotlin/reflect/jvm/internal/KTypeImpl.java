package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.NotImplementedError;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.jvm.KTypesJvm;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: KTypeImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KTypeImpl implements KType {
    static final /* synthetic */ KProperty[] a = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(KTypeImpl.class), "javaType", "getJavaType$kotlin_reflection()Ljava/lang/reflect/Type;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(KTypeImpl.class), "classifier", "getClassifier()Lkotlin/reflect/KClassifier;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(KTypeImpl.class), "arguments", "getArguments()Ljava/util/List;"))};
    private final ReflectProperties.a b;
    private final ReflectProperties.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReflectProperties.a f9011d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f9012e;

    /* JADX INFO: compiled from: KTypeImpl.kt */
    static final class a extends Lambda implements Function0<List<? extends KTypeProjection>> {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.KTypeImpl$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: KTypeImpl.kt */
        static final class C0504a extends Lambda implements Function0<Type> {
            final /* synthetic */ int a;
            final /* synthetic */ a b;
            final /* synthetic */ Lazy c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ KProperty f9013d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0504a(int i, a aVar, Lazy lazy, KProperty kProperty) {
                super(0);
                this.a = i;
                this.b = aVar;
                this.c = lazy;
                this.f9013d = kProperty;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Type invoke() {
                Type typeG = KTypeImpl.this.g();
                if (typeG instanceof Class) {
                    Class cls = (Class) typeG;
                    Class componentType = cls.isArray() ? cls.getComponentType() : Object.class;
                    Intrinsics.checkExpressionValueIsNotNull(componentType, "if (javaType.isArray) ja…Type else Any::class.java");
                    return componentType;
                }
                if (typeG instanceof GenericArrayType) {
                    if (this.a == 0) {
                        Type genericComponentType = ((GenericArrayType) typeG).getGenericComponentType();
                        Intrinsics.checkExpressionValueIsNotNull(genericComponentType, "javaType.genericComponentType");
                        return genericComponentType;
                    }
                    throw new o("Array type has been queried for a non-0th argument: " + KTypeImpl.this);
                }
                if (!(typeG instanceof ParameterizedType)) {
                    throw new o("Non-generic type has been queried for arguments: " + KTypeImpl.this);
                }
                Type type = (Type) ((List) this.c.getValue()).get(this.a);
                if (type instanceof WildcardType) {
                    WildcardType wildcardType = (WildcardType) type;
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    Intrinsics.checkExpressionValueIsNotNull(lowerBounds, "argument.lowerBounds");
                    Type type2 = (Type) kotlin.collections.k.firstOrNull(lowerBounds);
                    if (type2 != null) {
                        type = type2;
                    } else {
                        Type[] upperBounds = wildcardType.getUpperBounds();
                        Intrinsics.checkExpressionValueIsNotNull(upperBounds, "argument.upperBounds");
                        type = (Type) kotlin.collections.k.first(upperBounds);
                    }
                }
                Intrinsics.checkExpressionValueIsNotNull(type, "if (argument !is Wildcar…ument.upperBounds.first()");
                return type;
            }
        }

        /* JADX INFO: compiled from: KTypeImpl.kt */
        static final class b extends Lambda implements Function0<List<? extends Type>> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<Type> invoke() {
                return ReflectClassUtilKt.getParameterizedTypeArguments(KTypeImpl.this.g());
            }
        }

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<KTypeProjection> invoke() {
            KTypeProjection kTypeProjectionD;
            List<g0> listG0 = KTypeImpl.this.j().G0();
            if (listG0.isEmpty()) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            Lazy lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) new b());
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listG0, 10));
            int i = 0;
            for (Object obj : listG0) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                g0 g0Var = (g0) obj;
                if (g0Var.b()) {
                    kTypeProjectionD = KTypeProjection.a.c();
                } else {
                    u type = g0Var.getType();
                    Intrinsics.checkExpressionValueIsNotNull(type, "typeProjection.type");
                    KTypeImpl kTypeImpl = new KTypeImpl(type, new C0504a(i, this, lazy, null));
                    int i3 = l.a[g0Var.c().ordinal()];
                    if (i3 == 1) {
                        kTypeProjectionD = KTypeProjection.a.d(kTypeImpl);
                    } else if (i3 == 2) {
                        kTypeProjectionD = KTypeProjection.a.a(kTypeImpl);
                    } else {
                        if (i3 != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        kTypeProjectionD = KTypeProjection.a.b(kTypeImpl);
                    }
                }
                arrayList.add(kTypeProjectionD);
                i = i2;
            }
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: KTypeImpl.kt */
    static final class b extends Lambda implements Function0<KClassifier> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final KClassifier invoke() {
            KTypeImpl kTypeImpl = KTypeImpl.this;
            return kTypeImpl.a(kTypeImpl.j());
        }
    }

    public KTypeImpl(u type, Function0<? extends Type> computeJavaType) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        Intrinsics.checkParameterIsNotNull(computeJavaType, "computeJavaType");
        this.f9012e = type;
        this.b = ReflectProperties.lazySoft(computeJavaType);
        this.c = ReflectProperties.lazySoft(new b());
        this.f9011d = ReflectProperties.lazySoft(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KClassifier a(u uVar) {
        u type;
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = uVar.H0().q();
        if (!(fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            if (fVarQ instanceof i0) {
                return new n((i0) fVarQ);
            }
            if (!(fVarQ instanceof h0)) {
                return null;
            }
            throw new NotImplementedError("An operation is not implemented: Type alias classifiers are not yet supported");
        }
        Class<?> javaClass = UtilKt.toJavaClass((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ);
        if (javaClass == null) {
            return null;
        }
        if (!javaClass.isArray()) {
            if (TypeUtils.isNullableType(uVar)) {
                return new KClassImpl(javaClass);
            }
            Class<?> primitiveByWrapper = ReflectClassUtilKt.getPrimitiveByWrapper(javaClass);
            if (primitiveByWrapper != null) {
                javaClass = primitiveByWrapper;
            }
            return new KClassImpl(javaClass);
        }
        g0 g0Var = (g0) kotlin.collections.p.singleOrNull((List) uVar.G0());
        if (g0Var == null || (type = g0Var.getType()) == null) {
            return new KClassImpl(javaClass);
        }
        Intrinsics.checkExpressionValueIsNotNull(type, "type.arguments.singleOrN…return KClassImpl(jClass)");
        KClassifier kClassifierA = a(type);
        if (kClassifierA != null) {
            return new KClassImpl(ReflectClassUtilKt.createArrayType(JvmClassMappingKt.getJavaClass((KClass) KTypesJvm.getJvmErasure(kClassifierA))));
        }
        throw new o("Cannot determine classifier for array element type: " + this);
    }

    @Override // kotlin.reflect.KType
    public KClassifier d() {
        return (KClassifier) this.c.b(this, a[1]);
    }

    public boolean equals(Object obj) {
        return (obj instanceof KTypeImpl) && Intrinsics.areEqual(this.f9012e, ((KTypeImpl) obj).f9012e);
    }

    public final Type g() {
        return (Type) this.b.b(this, a[0]);
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public List<Annotation> getAnnotations() {
        return UtilKt.computeAnnotations(this.f9012e);
    }

    public int hashCode() {
        return this.f9012e.hashCode();
    }

    public final u j() {
        return this.f9012e;
    }

    @Override // kotlin.reflect.KType
    public List<KTypeProjection> k() {
        return (List) this.f9011d.b(this, a[2]);
    }

    @Override // kotlin.reflect.KType
    public boolean n() {
        return this.f9012e.I0();
    }

    public String toString() {
        return q.b.h(this.f9012e);
    }
}
