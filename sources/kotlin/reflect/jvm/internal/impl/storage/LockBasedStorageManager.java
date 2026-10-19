package kotlin.reflect.jvm.internal.impl.storage;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.utils.ExceptionUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.WrappedValues;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
public class LockBasedStorageManager implements kotlin.reflect.jvm.internal.impl.storage.h {
    private static final String a = StringsKt__StringsKt.substringBeforeLast(LockBasedStorageManager.class.getCanonicalName(), ".", "");
    public static final kotlin.reflect.jvm.internal.impl.storage.h b = new a("NO_LOCKS", f.a, kotlin.reflect.jvm.internal.impl.storage.d.a);
    protected final Lock c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f9816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f9817e;

    private enum NotValue {
        NOT_COMPUTED,
        COMPUTING,
        RECURSION_WAS_DETECTED
    }

    private static class RecursionDetectedResult<T> {
        private final T a;
        private final boolean b;

        private RecursionDetectedResult(T t, boolean z) {
            this.a = t;
            this.b = z;
        }

        public static <T> RecursionDetectedResult<T> fallThrough() {
            return new RecursionDetectedResult<>(null, true);
        }

        public static <T> RecursionDetectedResult<T> value(T t) {
            return new RecursionDetectedResult<>(t, false);
        }

        public T a() {
            return this.a;
        }

        public boolean b() {
            return this.b;
        }

        public String toString() {
            return b() ? "FALL_THROUGH" : String.valueOf(this.a);
        }
    }

    static class a extends LockBasedStorageManager {
        a(String str, f fVar, Lock lock) {
            super(str, fVar, lock, null);
        }

        private static /* synthetic */ void i(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1", "recursionDetectedDefault"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager
        protected <T> RecursionDetectedResult<T> o() {
            RecursionDetectedResult<T> recursionDetectedResultFallThrough = RecursionDetectedResult.fallThrough();
            if (recursionDetectedResultFallThrough == null) {
                i(0);
            }
            return recursionDetectedResultFallThrough;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class b<T> extends j<T> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Object f9819d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(LockBasedStorageManager lockBasedStorageManager, Function0 function0, Object obj) {
            super(lockBasedStorageManager, function0);
            this.f9819d = obj;
        }

        private static /* synthetic */ void a(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$3", "recursionDetected"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h
        protected RecursionDetectedResult<T> d(boolean z) {
            RecursionDetectedResult<T> recursionDetectedResultValue = RecursionDetectedResult.value(this.f9819d);
            if (recursionDetectedResultValue == null) {
                a(0);
            }
            return recursionDetectedResultValue;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class c<T> extends k<T> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Function1 f9821e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Function1 f9822f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(LockBasedStorageManager lockBasedStorageManager, Function0 function0, Function1 function1, Function1 function12) {
            super(lockBasedStorageManager, function0);
            this.f9821e = function1;
            this.f9822f = function12;
        }

        private static /* synthetic */ void a(int i) {
            String str = i != 2 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[i != 2 ? 2 : 3];
            if (i != 2) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4";
            } else {
                objArr[0] = "value";
            }
            if (i != 2) {
                objArr[1] = "recursionDetected";
            } else {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4";
            }
            if (i == 2) {
                objArr[2] = "doPostCompute";
            }
            String str2 = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalArgumentException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h
        protected RecursionDetectedResult<T> d(boolean z) {
            Function1 function1 = this.f9821e;
            if (function1 == null) {
                RecursionDetectedResult<T> recursionDetectedResultD = super.d(z);
                if (recursionDetectedResultD == null) {
                    a(0);
                }
                return recursionDetectedResultD;
            }
            RecursionDetectedResult<T> recursionDetectedResultValue = RecursionDetectedResult.value(function1.invoke(Boolean.valueOf(z)));
            if (recursionDetectedResultValue == null) {
                a(1);
            }
            return recursionDetectedResultValue;
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.i
        protected void e(T t) {
            if (t == null) {
                a(2);
            }
            this.f9822f.invoke(t);
        }
    }

    private static class d<K, V> extends e<K, V> implements kotlin.reflect.jvm.internal.impl.storage.a<K, V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private d(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap<g<K, V>, Object> concurrentMap) {
            super(lockBasedStorageManager, concurrentMap, null);
            if (lockBasedStorageManager == null) {
                c(0);
            }
            if (concurrentMap == null) {
                c(1);
            }
        }

        /* synthetic */ d(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap concurrentMap, a aVar) {
            this(lockBasedStorageManager, concurrentMap);
        }

        private static /* synthetic */ void c(int i) {
            String str = i != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 3 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "computation";
            } else if (i != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            }
            if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            } else {
                objArr[1] = "computeIfAbsent";
            }
            if (i == 2) {
                objArr[2] = "computeIfAbsent";
            } else if (i != 3) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i == 3) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.e, kotlin.reflect.jvm.internal.impl.storage.a
        public V a(K k, Function0<? extends V> function0) {
            if (function0 == null) {
                c(2);
            }
            V v = (V) super.a(k, function0);
            if (v == null) {
                c(3);
            }
            return v;
        }
    }

    private static class e<K, V> extends l<g<K, V>, V> {

        class a implements Function1<g<K, V>, V> {
            a() {
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public V invoke(g<K, V> gVar) {
                return (V) ((g) gVar).b.invoke();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private e(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap<g<K, V>, Object> concurrentMap) {
            super(lockBasedStorageManager, concurrentMap, new a());
            if (lockBasedStorageManager == null) {
                c(0);
            }
            if (concurrentMap == null) {
                c(1);
            }
        }

        /* synthetic */ e(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap concurrentMap, a aVar) {
            this(lockBasedStorageManager, concurrentMap);
        }

        private static /* synthetic */ void c(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computation";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction";
            if (i != 2) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "computeIfAbsent";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        public V a(K k, Function0<? extends V> function0) {
            if (function0 == null) {
                c(2);
            }
            return invoke(new g(k, function0));
        }
    }

    public interface f {
        public static final f a = new a();

        static class a implements f {
            a() {
            }

            private static /* synthetic */ void a(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "throwable", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy$1", "handleException"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.f
            public RuntimeException handleException(Throwable th) {
                if (th == null) {
                    a(0);
                }
                throw ExceptionUtilsKt.rethrow(th);
            }
        }

        RuntimeException handleException(Throwable th);
    }

    private static class g<K, V> {
        private final K a;
        private final Function0<? extends V> b;

        public g(K k, Function0<? extends V> function0) {
            this.a = k;
            this.b = function0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && g.class == obj.getClass() && this.a.equals(((g) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    private static class h<T> implements kotlin.reflect.jvm.internal.impl.storage.f<T> {
        private final LockBasedStorageManager a;
        private final Function0<? extends T> b;
        private volatile Object c;

        public h(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            if (lockBasedStorageManager == null) {
                a(0);
            }
            if (function0 == null) {
                a(1);
            }
            this.c = NotValue.NOT_COMPUTED;
            this.a = lockBasedStorageManager;
            this.b = function0;
        }

        private static /* synthetic */ void a(int i) {
            String str = (i == 2 || i == 3) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 2 || i == 3) ? 2 : 3];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i == 2 || i == 3) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[0] = "storageManager";
            }
            if (i == 2) {
                objArr[1] = "recursionDetected";
            } else if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[1] = "renderDebugInformation";
            }
            if (i != 2 && i != 3) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i != 2 && i != 3) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        protected void c(T t) {
        }

        protected RecursionDetectedResult<T> d(boolean z) {
            RecursionDetectedResult<T> recursionDetectedResultO = this.a.o();
            if (recursionDetectedResultO == null) {
                a(2);
            }
            return recursionDetectedResultO;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x003c A[Catch: all -> 0x0083, TryCatch #0 {all -> 0x0083, blocks: (B:7:0x0012, B:9:0x0018, B:12:0x0024, B:14:0x0028, B:16:0x0037, B:17:0x003c, B:19:0x0040, B:21:0x004b, B:22:0x0050, B:26:0x005f, B:28:0x0065, B:30:0x006b, B:31:0x0071, B:32:0x007b, B:33:0x007c, B:34:0x0082, B:23:0x0052), top: B:38:0x0012, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0050 A[Catch: all -> 0x0083, TRY_LEAVE, TryCatch #0 {all -> 0x0083, blocks: (B:7:0x0012, B:9:0x0018, B:12:0x0024, B:14:0x0028, B:16:0x0037, B:17:0x003c, B:19:0x0040, B:21:0x004b, B:22:0x0050, B:26:0x005f, B:28:0x0065, B:30:0x006b, B:31:0x0071, B:32:0x007b, B:33:0x007c, B:34:0x0082, B:23:0x0052), top: B:38:0x0012, inners: #1 }] */
        @Override // kotlin.jvm.functions.Function0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public T invoke() {
            /*
                r4 = this;
                java.lang.Object r0 = r4.c
                boolean r1 = r0 instanceof kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.NotValue
                if (r1 != 0) goto Lb
                java.lang.Object r0 = kotlin.reflect.jvm.internal.impl.utils.WrappedValues.unescapeThrowable(r0)
                return r0
            Lb:
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r0 = r4.a
                java.util.concurrent.locks.Lock r0 = r0.c
                r0.lock()
                java.lang.Object r0 = r4.c     // Catch: java.lang.Throwable -> L83
                boolean r1 = r0 instanceof kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.NotValue     // Catch: java.lang.Throwable -> L83
                if (r1 != 0) goto L24
                java.lang.Object r0 = kotlin.reflect.jvm.internal.impl.utils.WrappedValues.unescapeThrowable(r0)     // Catch: java.lang.Throwable -> L83
            L1c:
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r1 = r4.a
                java.util.concurrent.locks.Lock r1 = r1.c
                r1.unlock()
                return r0
            L24:
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$NotValue r1 = kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.NotValue.COMPUTING     // Catch: java.lang.Throwable -> L83
                if (r0 != r1) goto L3c
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$NotValue r2 = kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.NotValue.RECURSION_WAS_DETECTED     // Catch: java.lang.Throwable -> L83
                r4.c = r2     // Catch: java.lang.Throwable -> L83
                r2 = 1
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$RecursionDetectedResult r2 = r4.d(r2)     // Catch: java.lang.Throwable -> L83
                boolean r3 = r2.b()     // Catch: java.lang.Throwable -> L83
                if (r3 != 0) goto L3c
                java.lang.Object r0 = r2.a()     // Catch: java.lang.Throwable -> L83
                goto L1c
            L3c:
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$NotValue r2 = kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.NotValue.RECURSION_WAS_DETECTED     // Catch: java.lang.Throwable -> L83
                if (r0 != r2) goto L50
                r0 = 0
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$RecursionDetectedResult r0 = r4.d(r0)     // Catch: java.lang.Throwable -> L83
                boolean r2 = r0.b()     // Catch: java.lang.Throwable -> L83
                if (r2 != 0) goto L50
                java.lang.Object r0 = r0.a()     // Catch: java.lang.Throwable -> L83
                goto L1c
            L50:
                r4.c = r1     // Catch: java.lang.Throwable -> L83
                kotlin.jvm.b.a<? extends T> r0 = r4.b     // Catch: java.lang.Throwable -> L5e
                java.lang.Object r0 = r0.invoke()     // Catch: java.lang.Throwable -> L5e
                r4.c(r0)     // Catch: java.lang.Throwable -> L5e
                r4.c = r0     // Catch: java.lang.Throwable -> L5e
                goto L1c
            L5e:
                r0 = move-exception
                boolean r1 = kotlin.reflect.jvm.internal.impl.utils.ExceptionUtilsKt.isProcessCanceledException(r0)     // Catch: java.lang.Throwable -> L83
                if (r1 != 0) goto L7c
                java.lang.Object r1 = r4.c     // Catch: java.lang.Throwable -> L83
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$NotValue r2 = kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.NotValue.COMPUTING     // Catch: java.lang.Throwable -> L83
                if (r1 != r2) goto L71
                java.lang.Object r1 = kotlin.reflect.jvm.internal.impl.utils.WrappedValues.escapeThrowable(r0)     // Catch: java.lang.Throwable -> L83
                r4.c = r1     // Catch: java.lang.Throwable -> L83
            L71:
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r1 = r4.a     // Catch: java.lang.Throwable -> L83
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$f r1 = kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.j(r1)     // Catch: java.lang.Throwable -> L83
                java.lang.RuntimeException r0 = r1.handleException(r0)     // Catch: java.lang.Throwable -> L83
                throw r0     // Catch: java.lang.Throwable -> L83
            L7c:
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$NotValue r1 = kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.NotValue.NOT_COMPUTED     // Catch: java.lang.Throwable -> L83
                r4.c = r1     // Catch: java.lang.Throwable -> L83
                java.lang.RuntimeException r0 = (java.lang.RuntimeException) r0     // Catch: java.lang.Throwable -> L83
                throw r0     // Catch: java.lang.Throwable -> L83
            L83:
                r0 = move-exception
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r1 = r4.a
                java.util.concurrent.locks.Lock r1 = r1.c
                r1.unlock()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h.invoke():java.lang.Object");
        }

        public boolean j() {
            return (this.c == NotValue.NOT_COMPUTED || this.c == NotValue.COMPUTING) ? false : true;
        }
    }

    private static abstract class i<T> extends h<T> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private volatile kotlin.reflect.jvm.internal.impl.storage.g<T> f9824d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                a(0);
            }
            if (function0 == null) {
                a(1);
            }
            this.f9824d = null;
        }

        private static /* synthetic */ void a(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computable";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h
        protected final void c(T t) {
            this.f9824d = new kotlin.reflect.jvm.internal.impl.storage.g<>(t);
            try {
                e(t);
            } finally {
                this.f9824d = null;
            }
        }

        protected abstract void e(T t);

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h, kotlin.jvm.functions.Function0
        public T invoke() {
            kotlin.reflect.jvm.internal.impl.storage.g<T> gVar = this.f9824d;
            return (gVar == null || !gVar.b()) ? (T) super.invoke() : gVar.a();
        }
    }

    private static class j<T> extends h<T> implements kotlin.reflect.jvm.internal.impl.storage.e<T> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                a(0);
            }
            if (function0 == null) {
                a(1);
            }
        }

        private static /* synthetic */ void a(int i) {
            String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 2 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            }
            if (i != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 2) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h, kotlin.jvm.functions.Function0
        public T invoke() {
            T t = (T) super.invoke();
            if (t == null) {
                a(2);
            }
            return t;
        }
    }

    private static abstract class k<T> extends i<T> implements kotlin.reflect.jvm.internal.impl.storage.e<T> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                a(0);
            }
            if (function0 == null) {
                a(1);
            }
        }

        private static /* synthetic */ void a(int i) {
            String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 2 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            }
            if (i != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 2) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.i, kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h, kotlin.jvm.functions.Function0
        public T invoke() {
            T t = (T) super.invoke();
            if (t == null) {
                a(2);
            }
            return t;
        }
    }

    private static class l<K, V> implements kotlin.reflect.jvm.internal.impl.storage.c<K, V> {
        private final LockBasedStorageManager a;
        private final ConcurrentMap<K, Object> b;
        private final Function1<? super K, ? extends V> c;

        public l(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap<K, Object> concurrentMap, Function1<? super K, ? extends V> function1) {
            if (lockBasedStorageManager == null) {
                c(0);
            }
            if (concurrentMap == null) {
                c(1);
            }
            if (function1 == null) {
                c(2);
            }
            this.a = lockBasedStorageManager;
            this.b = concurrentMap;
            this.c = function1;
        }

        private static /* synthetic */ void c(int i) {
            String str = (i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 3 || i == 4) ? 2 : 3];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "compute";
            } else if (i == 3 || i == 4) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[0] = "storageManager";
            }
            if (i == 3) {
                objArr[1] = "recursionDetected";
            } else if (i != 4) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[1] = "raceCondition";
            }
            if (i != 3 && i != 4) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i != 3 && i != 4) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        private AssertionError d(K k, Object obj) {
            AssertionError assertionError = (AssertionError) LockBasedStorageManager.p(new AssertionError("Race condition detected on input " + k + ". Old value is " + obj + " under " + this.a));
            if (assertionError == null) {
                c(4);
            }
            return assertionError;
        }

        private AssertionError e(K k) {
            AssertionError assertionError = (AssertionError) LockBasedStorageManager.p(new AssertionError("Recursion detected on input: " + k + " under " + this.a));
            if (assertionError == null) {
                c(3);
            }
            return assertionError;
        }

        @Override // kotlin.jvm.functions.Function1
        public V invoke(K k) {
            Object obj = this.b.get(k);
            if (obj != null && obj != NotValue.COMPUTING) {
                return (V) WrappedValues.unescapeExceptionOrNull(obj);
            }
            this.a.c.lock();
            try {
                Object obj2 = this.b.get(k);
                NotValue notValue = NotValue.COMPUTING;
                if (obj2 == notValue) {
                    throw e(k);
                }
                if (obj2 != null) {
                    return (V) WrappedValues.unescapeExceptionOrNull(obj2);
                }
                AssertionError assertionErrorD = null;
                try {
                    this.b.put(k, notValue);
                    V vInvoke = this.c.invoke(k);
                    Object objPut = this.b.put(k, WrappedValues.escapeNull(vInvoke));
                    if (objPut == notValue) {
                        return vInvoke;
                    }
                    assertionErrorD = d(k, objPut);
                    throw assertionErrorD;
                } catch (Throwable th) {
                    if (ExceptionUtilsKt.isProcessCanceledException(th)) {
                        this.b.remove(k);
                        throw th;
                    }
                    if (th == assertionErrorD) {
                        throw this.a.f9816d.handleException(th);
                    }
                    Object objPut2 = this.b.put(k, WrappedValues.escapeThrowable(th));
                    if (objPut2 != NotValue.COMPUTING) {
                        throw d(k, objPut2);
                    }
                    throw this.a.f9816d.handleException(th);
                }
            } finally {
                this.a.c.unlock();
            }
        }
    }

    private static class m<K, V> extends l<K, V> implements kotlin.reflect.jvm.internal.impl.storage.b<K, V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap<K, Object> concurrentMap, Function1<? super K, ? extends V> function1) {
            super(lockBasedStorageManager, concurrentMap, function1);
            if (lockBasedStorageManager == null) {
                c(0);
            }
            if (concurrentMap == null) {
                c(1);
            }
            if (function1 == null) {
                c(2);
            }
        }

        private static /* synthetic */ void c(int i) {
            String str = i != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 3 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "compute";
            } else if (i != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            }
            if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 3) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i == 3) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.l, kotlin.jvm.functions.Function1
        public V invoke(K k) {
            V v = (V) super.invoke(k);
            if (v == null) {
                c(3);
            }
            return v;
        }
    }

    public LockBasedStorageManager(String str) {
        this(str, f.a, new ReentrantLock());
    }

    private LockBasedStorageManager(String str, f fVar, Lock lock) {
        if (str == null) {
            i(2);
        }
        if (fVar == null) {
            i(3);
        }
        if (lock == null) {
            i(4);
        }
        this.c = lock;
        this.f9816d = fVar;
        this.f9817e = str;
    }

    /* synthetic */ LockBasedStorageManager(String str, f fVar, Lock lock, a aVar) {
        this(str, fVar, lock);
    }

    private static /* synthetic */ void i(int i2) {
        String str = (i2 == 8 || i2 == 12 || i2 == 28) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i2 == 8 || i2 == 12 || i2 == 28) ? 2 : 3];
        switch (i2) {
            case 1:
            case 3:
            case 6:
                objArr[0] = "exceptionHandlingStrategy";
                break;
            case 2:
            case 5:
            default:
                objArr[0] = "debugText";
                break;
            case 4:
                objArr[0] = "lock";
                break;
            case 7:
            case 9:
            case 11:
            case 13:
                objArr[0] = "compute";
                break;
            case 8:
            case 12:
            case 28:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager";
                break;
            case 10:
            case 14:
                objArr[0] = "map";
                break;
            case 15:
            case 16:
            case 18:
            case 20:
            case 22:
            case 23:
            case 24:
            case 26:
                objArr[0] = "computable";
                break;
            case 17:
            case 19:
                objArr[0] = "onRecursiveCall";
                break;
            case 21:
            case 25:
                objArr[0] = "postCompute";
                break;
            case 27:
                objArr[0] = "throwable";
                break;
        }
        if (i2 == 8) {
            objArr[1] = "createMemoizedFunction";
        } else if (i2 == 12) {
            objArr[1] = "createMemoizedFunctionWithNullableValues";
        } else if (i2 != 28) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager";
        } else {
            objArr[1] = "sanitizeStackTrace";
        }
        switch (i2) {
            case 2:
            case 3:
            case 4:
                objArr[2] = "<init>";
                break;
            case 5:
            case 6:
                objArr[2] = "replaceExceptionHandling";
                break;
            case 7:
            case 9:
            case 10:
                objArr[2] = "createMemoizedFunction";
                break;
            case 8:
            case 12:
            case 28:
                break;
            case 11:
            case 13:
            case 14:
                objArr[2] = "createMemoizedFunctionWithNullableValues";
                break;
            case 15:
            case 16:
            case 17:
                objArr[2] = "createLazyValue";
                break;
            case 18:
            case 19:
                objArr[2] = "createRecursionTolerantLazyValue";
                break;
            case 20:
            case 21:
                objArr[2] = "createLazyValueWithPostCompute";
                break;
            case 22:
                objArr[2] = "createNullableLazyValue";
                break;
            case 23:
                objArr[2] = "createRecursionTolerantNullableLazyValue";
                break;
            case 24:
            case 25:
                objArr[2] = "createNullableLazyValueWithPostCompute";
                break;
            case 26:
                objArr[2] = "compute";
                break;
            case 27:
                objArr[2] = "sanitizeStackTrace";
                break;
            default:
                objArr[2] = "createWithExceptionHandling";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 8 && i2 != 12 && i2 != 28) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    private static <K> ConcurrentMap<K, Object> l() {
        return new ConcurrentHashMap(3, 1.0f, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends Throwable> T p(T t) {
        if (t == null) {
            i(27);
        }
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                break;
            }
            if (!stackTrace[i3].getClassName().startsWith(a)) {
                i2 = i3;
                break;
            }
            i3++;
        }
        List listSubList = Arrays.asList(stackTrace).subList(i2, length);
        t.setStackTrace((StackTraceElement[]) listSubList.toArray(new StackTraceElement[listSubList.size()]));
        return t;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.h
    public <K, V> kotlin.reflect.jvm.internal.impl.storage.a<K, V> a() {
        return new d(this, l(), null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.h
    public <T> kotlin.reflect.jvm.internal.impl.storage.e<T> b(Function0<? extends T> function0, T t) {
        if (function0 == null) {
            i(18);
        }
        if (t == null) {
            i(19);
        }
        return new b(this, function0, t);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.h
    public <T> kotlin.reflect.jvm.internal.impl.storage.e<T> c(Function0<? extends T> function0) {
        if (function0 == null) {
            i(15);
        }
        return new j(this, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.h
    public <T> T d(Function0<? extends T> function0) {
        if (function0 == null) {
            i(26);
        }
        this.c.lock();
        try {
            return function0.invoke();
        } finally {
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.h
    public <T> kotlin.reflect.jvm.internal.impl.storage.f<T> e(Function0<? extends T> function0) {
        if (function0 == null) {
            i(22);
        }
        return new h(this, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.h
    public <T> kotlin.reflect.jvm.internal.impl.storage.e<T> f(Function0<? extends T> function0, Function1<? super Boolean, ? extends T> function1, Function1<? super T, v> function12) {
        if (function0 == null) {
            i(20);
        }
        if (function12 == null) {
            i(21);
        }
        return new c(this, function0, function1, function12);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.h
    public <K, V> kotlin.reflect.jvm.internal.impl.storage.c<K, V> g(Function1<? super K, ? extends V> function1) {
        if (function1 == null) {
            i(11);
        }
        kotlin.reflect.jvm.internal.impl.storage.c<K, V> cVarN = n(function1, l());
        if (cVarN == null) {
            i(12);
        }
        return cVarN;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.h
    public <K, V> kotlin.reflect.jvm.internal.impl.storage.b<K, V> h(Function1<? super K, ? extends V> function1) {
        if (function1 == null) {
            i(7);
        }
        kotlin.reflect.jvm.internal.impl.storage.b<K, V> bVarM = m(function1, l());
        if (bVarM == null) {
            i(8);
        }
        return bVarM;
    }

    public <K, V> kotlin.reflect.jvm.internal.impl.storage.b<K, V> m(Function1<? super K, ? extends V> function1, ConcurrentMap<K, Object> concurrentMap) {
        if (function1 == null) {
            i(9);
        }
        if (concurrentMap == null) {
            i(10);
        }
        return new m(this, concurrentMap, function1);
    }

    public <K, V> kotlin.reflect.jvm.internal.impl.storage.c<K, V> n(Function1<? super K, ? extends V> function1, ConcurrentMap<K, Object> concurrentMap) {
        if (function1 == null) {
            i(13);
        }
        if (concurrentMap == null) {
            i(14);
        }
        return new l(this, concurrentMap, function1);
    }

    protected <T> RecursionDetectedResult<T> o() {
        throw ((IllegalStateException) p(new IllegalStateException("Recursive call in a lazy value under " + this)));
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (" + this.f9817e + ")";
    }
}
