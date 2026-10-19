package kotlin.reflect.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c;

/* JADX INFO: compiled from: RuntimeTypeMapper.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class b {

    /* JADX INFO: compiled from: RuntimeTypeMapper.kt */
    public static final class a extends b {
        private final List<Method> a;
        private final Class<?> b;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Comparisons.kt */
        public static final class C0505a<T> implements Comparator<T> {
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                Method it = (Method) t;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                String name = it.getName();
                Method it2 = (Method) t2;
                Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                return ComparisonsKt__ComparisonsKt.compareValues(name, it2.getName());
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.b$a$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: RuntimeTypeMapper.kt */
        static final class C0506b extends Lambda implements Function1<Method, String> {
            public static final C0506b a = new C0506b();

            C0506b() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke(Method it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Class<?> returnType = it.getReturnType();
                Intrinsics.checkExpressionValueIsNotNull(returnType, "it.returnType");
                return ReflectClassUtilKt.getDesc(returnType);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Class<?> jClass) {
            super(null);
            Intrinsics.checkParameterIsNotNull(jClass, "jClass");
            this.b = jClass;
            Method[] declaredMethods = jClass.getDeclaredMethods();
            Intrinsics.checkExpressionValueIsNotNull(declaredMethods, "jClass.declaredMethods");
            this.a = ArraysKt___ArraysKt.sortedWith(declaredMethods, new C0505a());
        }

        @Override // kotlin.reflect.jvm.internal.b
        public String a() {
            return CollectionsKt___CollectionsKt.joinToString$default(this.a, "", "<init>(", ")V", 0, null, C0506b.a, 24, null);
        }

        public final List<Method> b() {
            return this.a;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RuntimeTypeMapper.kt */
    public static final class C0507b extends b {
        private final Constructor<?> a;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.b$b$a */
        /* JADX INFO: compiled from: RuntimeTypeMapper.kt */
        static final class a extends Lambda implements Function1<Class<?>, String> {
            public static final a a = new a();

            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke(Class<?> it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                return ReflectClassUtilKt.getDesc(it);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0507b(Constructor<?> constructor) {
            super(null);
            Intrinsics.checkParameterIsNotNull(constructor, "constructor");
            this.a = constructor;
        }

        @Override // kotlin.reflect.jvm.internal.b
        public String a() {
            Class<?>[] parameterTypes = this.a.getParameterTypes();
            Intrinsics.checkExpressionValueIsNotNull(parameterTypes, "constructor.parameterTypes");
            return ArraysKt___ArraysKt.joinToString$default(parameterTypes, "", "<init>(", ")V", 0, (CharSequence) null, a.a, 24, (Object) null);
        }

        public final Constructor<?> b() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: RuntimeTypeMapper.kt */
    public static final class c extends b {
        private final Method a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Method method) {
            super(null);
            Intrinsics.checkParameterIsNotNull(method, "method");
            this.a = method;
        }

        @Override // kotlin.reflect.jvm.internal.b
        public String a() {
            return RuntimeTypeMapperKt.a(this.a);
        }

        public final Method b() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: RuntimeTypeMapper.kt */
    public static final class d extends b {
        private final String a;
        private final c.b b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(c.b signature) {
            super(null);
            Intrinsics.checkParameterIsNotNull(signature, "signature");
            this.b = signature;
            this.a = signature.a();
        }

        @Override // kotlin.reflect.jvm.internal.b
        public String a() {
            return this.a;
        }

        public final String b() {
            return this.b.b();
        }
    }

    /* JADX INFO: compiled from: RuntimeTypeMapper.kt */
    public static final class e extends b {
        private final String a;
        private final c.b b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(c.b signature) {
            super(null);
            Intrinsics.checkParameterIsNotNull(signature, "signature");
            this.b = signature;
            this.a = signature.a();
        }

        @Override // kotlin.reflect.jvm.internal.b
        public String a() {
            return this.a;
        }

        public final String b() {
            return this.b.b();
        }

        public final String c() {
            return this.b.c();
        }
    }

    private b() {
    }

    public /* synthetic */ b(kotlin.jvm.internal.n nVar) {
        this();
    }

    public abstract String a();
}
