package kotlin.reflect.jvm.internal;

import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
public class ReflectProperties {

    public static class a<T> extends c<T> {
        private final Function0<T> b;
        private volatile SoftReference<Object> c;

        public a(T t, Function0<T> function0) {
            if (function0 == null) {
                e(0);
            }
            this.c = null;
            this.b = function0;
            if (t != null) {
                this.c = new SoftReference<>(a(t));
            }
        }

        private static /* synthetic */ void e(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.ReflectProperties.c
        public T c() {
            Object obj;
            SoftReference<Object> softReference = this.c;
            if (softReference != null && (obj = softReference.get()) != null) {
                return d(obj);
            }
            T tInvoke = this.b.invoke();
            this.c = new SoftReference<>(a(tInvoke));
            return tInvoke;
        }
    }

    public static class b<T> extends c<T> {
        private final Function0<T> b;
        private volatile Object c;

        public b(Function0<T> function0) {
            if (function0 == null) {
                e(0);
            }
            this.c = null;
            this.b = function0;
        }

        private static /* synthetic */ void e(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties$LazyVal", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.ReflectProperties.c
        public T c() {
            Object obj = this.c;
            if (obj != null) {
                return d(obj);
            }
            T tInvoke = this.b.invoke();
            this.c = a(tInvoke);
            return tInvoke;
        }
    }

    public static abstract class c<T> {
        private static final Object a = new a();

        static class a {
            a() {
            }
        }

        protected Object a(T t) {
            return t == null ? a : t;
        }

        public final T b(Object obj, Object obj2) {
            return c();
        }

        public abstract T c();

        /* JADX WARN: Multi-variable type inference failed */
        protected T d(Object obj) {
            if (obj == a) {
                return null;
            }
            return obj;
        }
    }

    private static /* synthetic */ void a(int i) {
        Object[] objArr = new Object[3];
        objArr[0] = "initializer";
        objArr[1] = "kotlin/reflect/jvm/internal/ReflectProperties";
        if (i == 1 || i == 2) {
            objArr[2] = "lazySoft";
        } else {
            objArr[2] = "lazy";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static <T> b<T> lazy(Function0<T> function0) {
        if (function0 == null) {
            a(0);
        }
        return new b<>(function0);
    }

    public static <T> a<T> lazySoft(T t, Function0<T> function0) {
        if (function0 == null) {
            a(1);
        }
        return new a<>(t, function0);
    }

    public static <T> a<T> lazySoft(Function0<T> function0) {
        if (function0 == null) {
            a(2);
        }
        return lazySoft(null, function0);
    }
}
