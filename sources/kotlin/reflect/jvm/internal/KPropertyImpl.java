package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.c;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.InlineClassAwareCallerKt;
import kotlin.reflect.jvm.internal.impl.descriptors.a0;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.x;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.v;

/* JADX INFO: compiled from: KPropertyImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class KPropertyImpl<R> extends KCallableImpl<R> implements KProperty<R> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ReflectProperties.b<Field> f9003g;
    private final ReflectProperties.a<y> h;
    private final KDeclarationContainerImpl i;
    private final String j;
    private final String k;
    private final Object l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f9002f = new b(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f9001e = new Object();

    /* JADX INFO: compiled from: KPropertyImpl.kt */
    public static abstract class a<PropertyType, ReturnType> extends KCallableImpl<ReturnType> implements KFunction<ReturnType>, KProperty.a<PropertyType> {
        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public boolean B() {
            return D().B();
        }

        /* JADX INFO: renamed from: C */
        public abstract x z();

        public abstract KPropertyImpl<PropertyType> D();

        @Override // kotlin.reflect.KFunction
        public boolean isExternal() {
            return z().isExternal();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isInfix() {
            return z().isInfix();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isInline() {
            return z().isInline();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isOperator() {
            return z().isOperator();
        }

        @Override // kotlin.reflect.KCallable
        public boolean isSuspend() {
            return z().isSuspend();
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public KDeclarationContainerImpl x() {
            return D().x();
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public Caller<?> y() {
            return null;
        }
    }

    /* JADX INFO: compiled from: KPropertyImpl.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final Object a() {
            return KPropertyImpl.f9001e;
        }
    }

    /* JADX INFO: compiled from: KPropertyImpl.kt */
    public static abstract class c<R> extends a<R, R> implements KProperty.b<R> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final /* synthetic */ KProperty[] f9004e = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(c.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(c.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ReflectProperties.a f9005f = ReflectProperties.lazySoft(new b());

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ReflectProperties.b f9006g = ReflectProperties.lazy(new a());

        /* JADX INFO: compiled from: KPropertyImpl.kt */
        static final class a extends Lambda implements Function0<Caller<?>> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Caller<?> invoke() {
                return KPropertyImplKt.a(c.this, true);
            }
        }

        /* JADX INFO: compiled from: KPropertyImpl.kt */
        static final class b extends Lambda implements Function0<z> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final z invoke() {
                z getter = c.this.D().z().getGetter();
                return getter != null ? getter : DescriptorFactory.createDefaultGetter(c.this.D().z(), Annotations.e0.b());
            }
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public z z() {
            return (z) this.f9005f.b(this, f9004e[0]);
        }

        @Override // kotlin.reflect.KCallable
        public String getName() {
            return "<get-" + D().getName() + '>';
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public Caller<?> w() {
            return (Caller) this.f9006g.b(this, f9004e[1]);
        }
    }

    /* JADX INFO: compiled from: KPropertyImpl.kt */
    public static abstract class d<R> extends a<R, v> implements KMutableProperty.a<R> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final /* synthetic */ KProperty[] f9007e = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(d.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(d.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ReflectProperties.a f9008f = ReflectProperties.lazySoft(new b());

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ReflectProperties.b f9009g = ReflectProperties.lazy(new a());

        /* JADX INFO: compiled from: KPropertyImpl.kt */
        static final class a extends Lambda implements Function0<Caller<?>> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Caller<?> invoke() {
                return KPropertyImplKt.a(d.this, false);
            }
        }

        /* JADX INFO: compiled from: KPropertyImpl.kt */
        static final class b extends Lambda implements Function0<a0> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final a0 invoke() {
                a0 setter = d.this.D().z().getSetter();
                if (setter != null) {
                    return setter;
                }
                y yVarZ = d.this.D().z();
                Annotations.a aVar = Annotations.e0;
                return DescriptorFactory.createDefaultSetter(yVarZ, aVar.b(), aVar.b());
            }
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
        public a0 z() {
            return (a0) this.f9008f.b(this, f9007e[0]);
        }

        @Override // kotlin.reflect.KCallable
        public String getName() {
            return "<set-" + D().getName() + '>';
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public Caller<?> w() {
            return (Caller) this.f9009g.b(this, f9007e[1]);
        }
    }

    /* JADX INFO: compiled from: KPropertyImpl.kt */
    static final class e extends Lambda implements Function0<y> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final y invoke() {
            return KPropertyImpl.this.x().y(KPropertyImpl.this.getName(), KPropertyImpl.this.I());
        }
    }

    /* JADX INFO: compiled from: KPropertyImpl.kt */
    static final class f extends Lambda implements Function0<Field> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Field invoke() {
            Class<?> enclosingClass;
            kotlin.reflect.jvm.internal.c cVarF = r.b.f(KPropertyImpl.this.z());
            if (!(cVarF instanceof c.C0508c)) {
                if (cVarF instanceof c.a) {
                    return ((c.a) cVarF).b();
                }
                if ((cVarF instanceof c.b) || (cVarF instanceof c.d)) {
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }
            c.C0508c c0508c = (c.C0508c) cVarF;
            y yVarB = c0508c.b();
            c.a jvmFieldSignature$default = JvmProtoBufUtil.getJvmFieldSignature$default(JvmProtoBufUtil.b, c0508c.e(), c0508c.d(), c0508c.g(), false, 8, null);
            if (jvmFieldSignature$default == null) {
                return null;
            }
            if (JvmAbi.isPropertyWithBackingFieldInOuterClass(yVarB) || JvmProtoBufUtil.isMovedFromInterfaceCompanion(c0508c.e())) {
                enclosingClass = KPropertyImpl.this.x().a().getEnclosingClass();
            } else {
                kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = yVarB.b();
                enclosingClass = iVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? UtilKt.toJavaClass((kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB) : KPropertyImpl.this.x().a();
            }
            if (enclosingClass == null) {
                return null;
            }
            try {
                return enclosingClass.getDeclaredField(jvmFieldSignature$default.c());
            } catch (NoSuchFieldException unused) {
                return null;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KPropertyImpl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        this(container, name, signature, null, obj);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(signature, "signature");
    }

    private KPropertyImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, y yVar, Object obj) {
        this.i = kDeclarationContainerImpl;
        this.j = str;
        this.k = str2;
        this.l = obj;
        ReflectProperties.b<Field> bVarLazy = ReflectProperties.lazy(new f());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy {…y -> null\n        }\n    }");
        this.f9003g = bVarLazy;
        ReflectProperties.a<y> aVarLazySoft = ReflectProperties.lazySoft(yVar, new e());
        Intrinsics.checkExpressionValueIsNotNull(aVarLazySoft, "ReflectProperties.lazySo…or(name, signature)\n    }");
        this.h = aVarLazySoft;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public KPropertyImpl(KDeclarationContainerImpl container, y descriptor) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        String strE = descriptor.getName().e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "descriptor.name.asString()");
        this(container, strE, r.b.f(descriptor).a(), descriptor, kotlin.jvm.internal.l.NO_RECEIVER);
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public boolean B() {
        return !Intrinsics.areEqual(this.l, kotlin.jvm.internal.l.NO_RECEIVER);
    }

    protected final Field C() {
        if (z().y()) {
            return H();
        }
        return null;
    }

    public final Object D() {
        return InlineClassAwareCallerKt.coerceToExpectedReceiverType(this.l, z());
    }

    protected final Object E(Field field, Object obj) throws kotlin.reflect.full.b {
        try {
            if (obj == f9001e && z().K() == null) {
                throw new RuntimeException('\'' + this + "' is not an extension property and thus getExtensionDelegate() is not going to work, use getDelegate() instead");
            }
            if (field != null) {
                return field.get(obj);
            }
            return null;
        } catch (IllegalAccessException e2) {
            throw new kotlin.reflect.full.b(e2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public y z() {
        y yVarC = this.h.c();
        Intrinsics.checkExpressionValueIsNotNull(yVarC, "_descriptor()");
        return yVarC;
    }

    public abstract c<R> G();

    public final Field H() {
        return this.f9003g.c();
    }

    public final String I() {
        return this.k;
    }

    public boolean equals(Object obj) {
        KPropertyImpl<?> kPropertyImplAsKPropertyImpl = UtilKt.asKPropertyImpl(obj);
        return kPropertyImplAsKPropertyImpl != null && Intrinsics.areEqual(x(), kPropertyImplAsKPropertyImpl.x()) && Intrinsics.areEqual(getName(), kPropertyImplAsKPropertyImpl.getName()) && Intrinsics.areEqual(this.k, kPropertyImplAsKPropertyImpl.k) && Intrinsics.areEqual(this.l, kPropertyImplAsKPropertyImpl.l);
    }

    @Override // kotlin.reflect.KCallable
    public String getName() {
        return this.j;
    }

    public int hashCode() {
        return (((x().hashCode() * 31) + getName().hashCode()) * 31) + this.k.hashCode();
    }

    @Override // kotlin.reflect.KProperty
    public boolean isConst() {
        return z().isConst();
    }

    @Override // kotlin.reflect.KProperty
    public boolean isLateinit() {
        return z().s0();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isSuspend() {
        return false;
    }

    public String toString() {
        return q.b.g(z());
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> w() {
        return G().w();
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public KDeclarationContainerImpl x() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> y() {
        return G().y();
    }
}
