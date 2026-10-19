package com.google.common.base.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class Finalizer implements Runnable {
    private static final Logger a = Logger.getLogger(Finalizer.class.getName());
    private static final Constructor<Thread> b;
    private static final Field c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WeakReference<Class<?>> f3504d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PhantomReference<Object> f3505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ReferenceQueue<Object> f3506f;

    static {
        Constructor<Thread> constructorB = b();
        b = constructorB;
        c = constructorB == null ? d() : null;
    }

    private boolean a(Reference<?> reference) {
        Method methodC = c();
        if (methodC == null) {
            return false;
        }
        do {
            reference.clear();
            if (reference == this.f3505e) {
                return false;
            }
            try {
                methodC.invoke(reference, new Object[0]);
            } catch (Throwable th) {
                a.log(Level.SEVERE, "Error cleaning up after reference.", th);
            }
            reference = this.f3506f.poll();
        } while (reference != null);
        return true;
    }

    private static Constructor<Thread> b() {
        try {
            return Thread.class.getConstructor(ThreadGroup.class, Runnable.class, String.class, Long.TYPE, Boolean.TYPE);
        } catch (Throwable unused) {
            return null;
        }
    }

    private Method c() {
        Class<?> cls = this.f3504d.get();
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod("finalizeReferent", new Class[0]);
        } catch (NoSuchMethodException e2) {
            throw new AssertionError(e2);
        }
    }

    private static Field d() {
        try {
            Field declaredField = Thread.class.getDeclaredField("inheritableThreadLocals");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            a.log(Level.INFO, "Couldn't access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values.");
            return null;
        }
    }

    public static void startFinalizer(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        cls.getName();
        throw new IllegalArgumentException("Expected com.google.common.base.FinalizableReference.");
    }

    @Override // java.lang.Runnable
    public void run() {
        while (a(this.f3506f.remove())) {
        }
    }
}
