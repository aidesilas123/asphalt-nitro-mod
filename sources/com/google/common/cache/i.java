package com.google.common.cache;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: Striped64.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class i extends Number {
    static final ThreadLocal<int[]> a = new ThreadLocal<>();
    static final Random b = new Random();
    static final int c = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Unsafe f3529d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f3530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f3531f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    volatile transient b[] f3532g;
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
    }

    static {
        try {
            Unsafe unsafeC = c();
            f3529d = unsafeC;
            f3530e = unsafeC.objectFieldOffset(i.class.getDeclaredField("h"));
            f3531f = unsafeC.objectFieldOffset(i.class.getDeclaredField("i"));
        } catch (Exception e2) {
            throw new Error(e2);
        }
    }

    i() {
    }

    private static Unsafe c() {
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
}
