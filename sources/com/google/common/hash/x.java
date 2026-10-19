package com.google.common.hash;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: Striped64.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class x extends Number {
    static final ThreadLocal<int[]> a = new ThreadLocal<>();
    static final Random b = new Random();
    static final int c = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Unsafe f3904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f3905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f3906f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    volatile transient b[] f3907g;
    volatile transient long h;
    volatile transient int i;

    /* JADX INFO: compiled from: Striped64.java */
    class a implements PrivilegedExceptionAction<Unsafe> {
        a() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unsafe run() throws Exception {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }
    }

    /* JADX INFO: compiled from: Striped64.java */
    static final class b {
        private static final Unsafe a;
        private static final long b;
        volatile long c;

        static {
            try {
                Unsafe unsafeG = x.g();
                a = unsafeG;
                b = unsafeG.objectFieldOffset(b.class.getDeclaredField("c"));
            } catch (Exception e2) {
                throw new Error(e2);
            }
        }

        b(long j) {
            this.c = j;
        }

        final boolean a(long j, long j2) {
            return a.compareAndSwapLong(this, b, j, j2);
        }
    }

    static {
        try {
            Unsafe unsafeG = g();
            f3904d = unsafeG;
            f3905e = unsafeG.objectFieldOffset(x.class.getDeclaredField("h"));
            f3906f = unsafeG.objectFieldOffset(x.class.getDeclaredField("i"));
        } catch (Exception e2) {
            throw new Error(e2);
        }
    }

    x() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Unsafe g() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new a());
        }
    }

    final boolean d(long j, long j2) {
        return f3904d.compareAndSwapLong(this, f3905e, j, j2);
    }

    final boolean e() {
        return f3904d.compareAndSwapInt(this, f3906f, 0, 1);
    }

    abstract long f(long j, long j2);

    /* JADX WARN: Removed duplicated region for block: B:117:0x0023 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00ee A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void h(long r17, int[] r19, boolean r20) {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.hash.x.h(long, int[], boolean):void");
    }
}
