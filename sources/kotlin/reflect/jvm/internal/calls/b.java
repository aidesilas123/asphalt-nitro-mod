package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.k;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.n0;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.v;

/* JADX INFO: compiled from: CallerImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class b<M extends Member> implements Caller<M> {
    public static final d a = new d(null);
    private final List<Type> b;
    private final M c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Type f9026d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Class<?> f9027e;

    /* JADX INFO: compiled from: CallerImpl.kt */
    public static final class a extends b<Constructor<?>> implements kotlin.reflect.jvm.internal.calls.a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Object f9028f;

        /* JADX WARN: Illegal instructions before constructor call */
        public a(Constructor<?> constructor, Object obj) {
            Object objCopyOfRange;
            Intrinsics.checkParameterIsNotNull(constructor, "constructor");
            Class<?> declaringClass = constructor.getDeclaringClass();
            Intrinsics.checkExpressionValueIsNotNull(declaringClass, "constructor.declaringClass");
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            Intrinsics.checkExpressionValueIsNotNull(genericParameterTypes, "constructor.genericParameterTypes");
            if (genericParameterTypes.length <= 2) {
                objCopyOfRange = new Type[0];
            } else {
                objCopyOfRange = k.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length - 1);
                if (objCopyOfRange == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
            super(constructor, declaringClass, null, (Type[]) objCopyOfRange, null);
            this.f9028f = obj;
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] args) {
            Intrinsics.checkParameterIsNotNull(args, "args");
            c(args);
            Constructor<?> constructorB = b();
            n0 n0Var = new n0(3);
            n0Var.a(this.f9028f);
            n0Var.b(args);
            n0Var.a(null);
            return constructorB.newInstance(n0Var.d(new Object[n0Var.c()]));
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.calls.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CallerImpl.kt */
    public static final class C0509b extends b<Constructor<?>> {
        /* JADX WARN: Illegal instructions before constructor call */
        public C0509b(Constructor<?> constructor) {
            Object objCopyOfRange;
            Intrinsics.checkParameterIsNotNull(constructor, "constructor");
            Class<?> declaringClass = constructor.getDeclaringClass();
            Intrinsics.checkExpressionValueIsNotNull(declaringClass, "constructor.declaringClass");
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            Intrinsics.checkExpressionValueIsNotNull(genericParameterTypes, "constructor.genericParameterTypes");
            if (genericParameterTypes.length <= 1) {
                objCopyOfRange = new Type[0];
            } else {
                objCopyOfRange = k.copyOfRange(genericParameterTypes, 0, genericParameterTypes.length - 1);
                if (objCopyOfRange == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
            super(constructor, declaringClass, null, (Type[]) objCopyOfRange, null);
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] args) {
            Intrinsics.checkParameterIsNotNull(args, "args");
            c(args);
            Constructor<?> constructorB = b();
            n0 n0Var = new n0(2);
            n0Var.b(args);
            n0Var.a(null);
            return constructorB.newInstance(n0Var.d(new Object[n0Var.c()]));
        }
    }

    /* JADX INFO: compiled from: CallerImpl.kt */
    public static final class c extends b<Constructor<?>> implements kotlin.reflect.jvm.internal.calls.a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Object f9029f;

        /* JADX WARN: Illegal instructions before constructor call */
        public c(Constructor<?> constructor, Object obj) {
            Intrinsics.checkParameterIsNotNull(constructor, "constructor");
            Class<?> declaringClass = constructor.getDeclaringClass();
            Intrinsics.checkExpressionValueIsNotNull(declaringClass, "constructor.declaringClass");
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            Intrinsics.checkExpressionValueIsNotNull(genericParameterTypes, "constructor.genericParameterTypes");
            super(constructor, declaringClass, null, genericParameterTypes, null);
            this.f9029f = obj;
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] args) {
            Intrinsics.checkParameterIsNotNull(args, "args");
            c(args);
            Constructor<?> constructorB = b();
            n0 n0Var = new n0(2);
            n0Var.a(this.f9029f);
            n0Var.b(args);
            return constructorB.newInstance(n0Var.d(new Object[n0Var.c()]));
        }
    }

    /* JADX INFO: compiled from: CallerImpl.kt */
    public static final class d {
        private d() {
        }

        public /* synthetic */ d(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: CallerImpl.kt */
    public static final class e extends b<Constructor<?>> {
        /* JADX WARN: Illegal instructions before constructor call */
        public e(Constructor<?> constructor) {
            Intrinsics.checkParameterIsNotNull(constructor, "constructor");
            Class<?> declaringClass = constructor.getDeclaringClass();
            Intrinsics.checkExpressionValueIsNotNull(declaringClass, "constructor.declaringClass");
            Class<?> klass = constructor.getDeclaringClass();
            Intrinsics.checkExpressionValueIsNotNull(klass, "klass");
            Class<?> declaringClass2 = klass.getDeclaringClass();
            Class<?> cls = (declaringClass2 == null || Modifier.isStatic(klass.getModifiers())) ? null : declaringClass2;
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            Intrinsics.checkExpressionValueIsNotNull(genericParameterTypes, "constructor.genericParameterTypes");
            super(constructor, declaringClass, cls, genericParameterTypes, null);
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] args) {
            Intrinsics.checkParameterIsNotNull(args, "args");
            c(args);
            return b().newInstance(Arrays.copyOf(args, args.length));
        }
    }

    /* JADX INFO: compiled from: CallerImpl.kt */
    public static abstract class f extends b<Field> {

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class a extends f implements kotlin.reflect.jvm.internal.calls.a {

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private final Object f9030f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Field field, Object obj) {
                super(field, false, null);
                Intrinsics.checkParameterIsNotNull(field, "field");
                this.f9030f = obj;
            }

            @Override // kotlin.reflect.jvm.internal.calls.b.f, kotlin.reflect.jvm.internal.calls.Caller
            public Object call(Object[] args) {
                Intrinsics.checkParameterIsNotNull(args, "args");
                c(args);
                return b().get(this.f9030f);
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.calls.b$f$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class C0510b extends f implements kotlin.reflect.jvm.internal.calls.a {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0510b(Field field) {
                super(field, false, null);
                Intrinsics.checkParameterIsNotNull(field, "field");
            }
        }

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class c extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Field field) {
                super(field, true, null);
                Intrinsics.checkParameterIsNotNull(field, "field");
            }
        }

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class d extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Field field) {
                super(field, true, null);
                Intrinsics.checkParameterIsNotNull(field, "field");
            }

            @Override // kotlin.reflect.jvm.internal.calls.b
            public void c(Object[] args) {
                Intrinsics.checkParameterIsNotNull(args, "args");
                super.c(args);
                d(k.firstOrNull(args));
            }
        }

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class e extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(Field field) {
                super(field, false, null);
                Intrinsics.checkParameterIsNotNull(field, "field");
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private f(Field field, boolean z) {
            Type genericType = field.getGenericType();
            Intrinsics.checkExpressionValueIsNotNull(genericType, "field.genericType");
            super(field, genericType, z ? field.getDeclaringClass() : null, new Type[0], null);
        }

        public /* synthetic */ f(Field field, boolean z, n nVar) {
            this(field, z);
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] args) {
            Intrinsics.checkParameterIsNotNull(args, "args");
            c(args);
            return b().get(e() != null ? k.first(args) : null);
        }
    }

    /* JADX INFO: compiled from: CallerImpl.kt */
    public static abstract class g extends b<Field> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f9031f;

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class a extends g implements kotlin.reflect.jvm.internal.calls.a {

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private final Object f9032g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Field field, boolean z, Object obj) {
                super(field, z, false, null);
                Intrinsics.checkParameterIsNotNull(field, "field");
                this.f9032g = obj;
            }

            @Override // kotlin.reflect.jvm.internal.calls.b.g, kotlin.reflect.jvm.internal.calls.Caller
            public Object call(Object[] args) throws IllegalAccessException {
                Intrinsics.checkParameterIsNotNull(args, "args");
                c(args);
                b().set(this.f9032g, k.first(args));
                return v.a;
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.calls.b$g$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class C0511b extends g implements kotlin.reflect.jvm.internal.calls.a {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0511b(Field field, boolean z) {
                super(field, z, false, null);
                Intrinsics.checkParameterIsNotNull(field, "field");
            }

            @Override // kotlin.reflect.jvm.internal.calls.b.g, kotlin.reflect.jvm.internal.calls.Caller
            public Object call(Object[] args) throws IllegalAccessException {
                Intrinsics.checkParameterIsNotNull(args, "args");
                c(args);
                b().set(null, k.last(args));
                return v.a;
            }
        }

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class c extends g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Field field, boolean z) {
                super(field, z, true, null);
                Intrinsics.checkParameterIsNotNull(field, "field");
            }
        }

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class d extends g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Field field, boolean z) {
                super(field, z, true, null);
                Intrinsics.checkParameterIsNotNull(field, "field");
            }

            @Override // kotlin.reflect.jvm.internal.calls.b.g, kotlin.reflect.jvm.internal.calls.b
            public void c(Object[] args) {
                Intrinsics.checkParameterIsNotNull(args, "args");
                super.c(args);
                d(k.firstOrNull(args));
            }
        }

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class e extends g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(Field field, boolean z) {
                super(field, z, false, null);
                Intrinsics.checkParameterIsNotNull(field, "field");
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private g(Field field, boolean z, boolean z2) {
            Class cls = Void.TYPE;
            Intrinsics.checkExpressionValueIsNotNull(cls, "Void.TYPE");
            Class<?> declaringClass = z2 ? field.getDeclaringClass() : null;
            Type genericType = field.getGenericType();
            Intrinsics.checkExpressionValueIsNotNull(genericType, "field.genericType");
            super(field, cls, declaringClass, new Type[]{genericType}, null);
            this.f9031f = z;
        }

        public /* synthetic */ g(Field field, boolean z, boolean z2, n nVar) {
            this(field, z, z2);
        }

        @Override // kotlin.reflect.jvm.internal.calls.b
        public void c(Object[] args) {
            Intrinsics.checkParameterIsNotNull(args, "args");
            super.c(args);
            if (this.f9031f && k.last(args) == null) {
                throw new IllegalArgumentException("null is not allowed as a value for this property.");
            }
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] args) throws IllegalAccessException {
            Intrinsics.checkParameterIsNotNull(args, "args");
            c(args);
            b().set(e() != null ? k.first(args) : null, k.last(args));
            return v.a;
        }
    }

    /* JADX INFO: compiled from: CallerImpl.kt */
    public static abstract class h extends b<Method> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f9033f;

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class a extends h implements kotlin.reflect.jvm.internal.calls.a {

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private final Object f9034g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Method method, Object obj) {
                super(method, false, null, 4, null);
                Intrinsics.checkParameterIsNotNull(method, "method");
                this.f9034g = obj;
            }

            @Override // kotlin.reflect.jvm.internal.calls.Caller
            public Object call(Object[] args) {
                Intrinsics.checkParameterIsNotNull(args, "args");
                c(args);
                return f(this.f9034g, args);
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.calls.b$h$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class C0512b extends h implements kotlin.reflect.jvm.internal.calls.a {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0512b(Method method) {
                super(method, false, null, 4, null);
                Intrinsics.checkParameterIsNotNull(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.calls.Caller
            public Object call(Object[] args) {
                Intrinsics.checkParameterIsNotNull(args, "args");
                c(args);
                return f(null, args);
            }
        }

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class c extends h implements kotlin.reflect.jvm.internal.calls.a {

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private final Object f9035g;

            /* JADX WARN: Illegal instructions before constructor call */
            public c(Method method, Object obj) {
                Object objCopyOfRange;
                Intrinsics.checkParameterIsNotNull(method, "method");
                Type[] genericParameterTypes = method.getGenericParameterTypes();
                Intrinsics.checkExpressionValueIsNotNull(genericParameterTypes, "method.genericParameterTypes");
                boolean z = false;
                if (genericParameterTypes.length <= 1) {
                    objCopyOfRange = new Type[0];
                } else {
                    objCopyOfRange = k.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length);
                    if (objCopyOfRange == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                }
                super(method, z, (Type[]) objCopyOfRange, null);
                this.f9035g = obj;
            }

            @Override // kotlin.reflect.jvm.internal.calls.Caller
            public Object call(Object[] args) {
                Intrinsics.checkParameterIsNotNull(args, "args");
                c(args);
                n0 n0Var = new n0(2);
                n0Var.a(this.f9035g);
                n0Var.b(args);
                return f(null, n0Var.d(new Object[n0Var.c()]));
            }
        }

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class d extends h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Method method) {
                super(method, false, null, 6, null);
                Intrinsics.checkParameterIsNotNull(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.calls.Caller
            public Object call(Object[] args) {
                Object[] objArrCopyOfRange;
                Intrinsics.checkParameterIsNotNull(args, "args");
                c(args);
                Object obj = args[0];
                if (args.length <= 1) {
                    objArrCopyOfRange = new Object[0];
                } else {
                    objArrCopyOfRange = k.copyOfRange(args, 1, args.length);
                    if (objArrCopyOfRange == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                }
                return f(obj, objArrCopyOfRange);
            }
        }

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class e extends h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(Method method) {
                super(method, true, null, 4, null);
                Intrinsics.checkParameterIsNotNull(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.calls.Caller
            public Object call(Object[] args) {
                Object[] objArrCopyOfRange;
                Intrinsics.checkParameterIsNotNull(args, "args");
                c(args);
                d(k.firstOrNull(args));
                if (args.length <= 1) {
                    objArrCopyOfRange = new Object[0];
                } else {
                    objArrCopyOfRange = k.copyOfRange(args, 1, args.length);
                    if (objArrCopyOfRange == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                }
                return f(null, objArrCopyOfRange);
            }
        }

        /* JADX INFO: compiled from: CallerImpl.kt */
        public static final class f extends h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public f(Method method) {
                super(method, false, null, 6, null);
                Intrinsics.checkParameterIsNotNull(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.calls.Caller
            public Object call(Object[] args) {
                Intrinsics.checkParameterIsNotNull(args, "args");
                c(args);
                return f(null, args);
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private h(Method method, boolean z, Type[] typeArr) {
            Type genericReturnType = method.getGenericReturnType();
            Intrinsics.checkExpressionValueIsNotNull(genericReturnType, "method.genericReturnType");
            super(method, genericReturnType, z ? method.getDeclaringClass() : null, typeArr, null);
            this.f9033f = Intrinsics.areEqual(getReturnType(), Void.TYPE);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /* synthetic */ h(Method method, boolean z, Type[] typeArr, int i, n nVar) {
            z = (i & 2) != 0 ? !Modifier.isStatic(method.getModifiers()) : z;
            if ((i & 4) != 0) {
                typeArr = method.getGenericParameterTypes();
                Intrinsics.checkExpressionValueIsNotNull(typeArr, "method.genericParameterTypes");
            }
            this(method, z, typeArr);
        }

        public /* synthetic */ h(Method method, boolean z, Type[] typeArr, n nVar) {
            this(method, z, typeArr);
        }

        protected final Object f(Object obj, Object[] args) {
            Intrinsics.checkParameterIsNotNull(args, "args");
            return this.f9033f ? v.a : b().invoke(obj, Arrays.copyOf(args, args.length));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private b(M r1, java.lang.reflect.Type r2, java.lang.Class<?> r3, java.lang.reflect.Type[] r4) {
        /*
            r0 = this;
            r0.<init>()
            r0.c = r1
            r0.f9026d = r2
            r0.f9027e = r3
            if (r3 == 0) goto L2a
            kotlin.jvm.internal.n0 r1 = new kotlin.jvm.internal.n0
            r2 = 2
            r1.<init>(r2)
            r1.a(r3)
            r1.b(r4)
            int r2 = r1.c()
            java.lang.reflect.Type[] r2 = new java.lang.reflect.Type[r2]
            java.lang.Object[] r1 = r1.d(r2)
            java.lang.reflect.Type[] r1 = (java.lang.reflect.Type[]) r1
            java.util.List r1 = kotlin.collections.p.listOf(r1)
            if (r1 == 0) goto L2a
            goto L2e
        L2a:
            java.util.List r1 = kotlin.collections.k.toList(r4)
        L2e:
            r0.b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.b.<init>(java.lang.reflect.Member, java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type[]):void");
    }

    public /* synthetic */ b(Member member, Type type, Class cls, Type[] typeArr, n nVar) {
        this(member, type, cls, typeArr);
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public List<Type> a() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final M b() {
        return this.c;
    }

    public void c(Object[] args) {
        Intrinsics.checkParameterIsNotNull(args, "args");
        Caller.DefaultImpls.checkArguments(this, args);
    }

    protected final void d(Object obj) {
        if (obj == null || !this.c.getDeclaringClass().isInstance(obj)) {
            throw new IllegalArgumentException("An object member requires the object instance passed as the first argument.");
        }
    }

    public final Class<?> e() {
        return this.f9027e;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Type getReturnType() {
        return this.f9026d;
    }
}
