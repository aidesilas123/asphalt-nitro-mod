package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: UnsafeAllocator.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class f {
    public static final f a = c();

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    class a extends f {
        final /* synthetic */ Method b;
        final /* synthetic */ Object c;

        a(Method method, Object obj) {
            this.b = method;
            this.c = obj;
        }

        @Override // com.google.gson.internal.f
        public <T> T d(Class<T> cls) throws Exception {
            f.b(cls);
            return (T) this.b.invoke(this.c, cls);
        }
    }

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    class b extends f {
        final /* synthetic */ Method b;
        final /* synthetic */ int c;

        b(Method method, int i) {
            this.b = method;
            this.c = i;
        }

        @Override // com.google.gson.internal.f
        public <T> T d(Class<T> cls) throws Exception {
            f.b(cls);
            return (T) this.b.invoke(null, cls, Integer.valueOf(this.c));
        }
    }

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    class c extends f {
        final /* synthetic */ Method b;

        c(Method method) {
            this.b = method;
        }

        @Override // com.google.gson.internal.f
        public <T> T d(Class<T> cls) throws Exception {
            f.b(cls);
            return (T) this.b.invoke(null, cls, Object.class);
        }
    }

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    class d extends f {
        d() {
        }

        @Override // com.google.gson.internal.f
        public <T> T d(Class<T> cls) {
            throw new UnsupportedOperationException("Cannot allocate " + cls + ". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Class<?> cls) {
        String strA = com.google.gson.internal.a.a(cls);
        if (strA == null) {
            return;
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: " + strA);
    }

    private static f c() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new a(cls.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    return new b(declaredMethod2, iIntValue);
                } catch (Exception unused2) {
                    return new d();
                }
            } catch (Exception unused3) {
                Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod3.setAccessible(true);
                return new c(declaredMethod3);
            }
        }
    }

    public abstract <T> T d(Class<T> cls) throws Exception;
}
