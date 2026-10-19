package com.mbridge.msdk.mbsignalcommon.c;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: Mapping.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private static InterfaceC0413a a;

    /* JADX INFO: renamed from: com.mbridge.msdk.mbsignalcommon.c.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Mapping.java */
    public interface InterfaceC0413a {
        boolean a(b.C0414a c0414a);
    }

    /* JADX INFO: compiled from: Mapping.java */
    public static abstract class b {

        /* JADX INFO: renamed from: com.mbridge.msdk.mbsignalcommon.c.a$b$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Mapping.java */
        public static class C0414a extends Throwable {
            private Class<?> a;
            private String b;

            public C0414a(Exception exc) {
                super(exc);
            }

            public C0414a(String str) {
                super(str);
            }

            public final void a(Class<?> cls) {
                this.a = cls;
            }

            public final void a(String str) {
                this.b = str;
            }

            @Override // java.lang.Throwable
            public final String toString() {
                if (getCause() == null) {
                    return super.toString();
                }
                return C0414a.class.getName() + ": " + getCause();
            }
        }
    }

    /* JADX INFO: compiled from: Mapping.java */
    public static class c<C> {
        protected Class<C> a;

        public c(Class<C> cls) {
            this.a = cls;
        }

        public final d a(String str, Class<?>... clsArr) throws b.C0414a {
            return new d(this.a, str, clsArr, 0);
        }
    }

    /* JADX INFO: compiled from: Mapping.java */
    public static class d {
        protected final Method a;

        d(Class<?> cls, String str, Class<?>[] clsArr, int i) throws b.C0414a {
            Method declaredMethod = null;
            if (cls == null) {
                return;
            }
            while (cls != Object.class) {
                try {
                    declaredMethod = cls.getDeclaredMethod(str, clsArr);
                    break;
                } catch (NoSuchMethodException e2) {
                    e2.printStackTrace();
                    cls = cls.getSuperclass();
                } catch (SecurityException e3) {
                    try {
                        try {
                            e3.printStackTrace();
                            cls = cls.getSuperclass();
                        } catch (Exception e4) {
                            b.C0414a c0414a = new b.C0414a(e4);
                            c0414a.a(cls);
                            c0414a.a(str);
                            a.b(c0414a);
                        }
                    } finally {
                        this.a = declaredMethod;
                    }
                }
            }
            if (i > 0 && (declaredMethod.getModifiers() & i) != i) {
                a.b(new b.C0414a(declaredMethod + " does not match modifiers: " + i));
            }
            declaredMethod.setAccessible(true);
        }

        public final Object a(Object obj, Object... objArr) throws IllegalArgumentException, InvocationTargetException {
            try {
                return this.a.invoke(obj, objArr);
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
                return null;
            }
        }

        public final Method a() {
            return this.a;
        }
    }

    public static <T> c<T> a(ClassLoader classLoader, String str) throws b.C0414a {
        try {
            return new c<>(classLoader.loadClass(str));
        } catch (Exception e2) {
            b(new b.C0414a(e2));
            return new c<>(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(b.C0414a c0414a) throws b.C0414a {
        InterfaceC0413a interfaceC0413a = a;
        if (interfaceC0413a == null || !interfaceC0413a.a(c0414a)) {
            throw c0414a;
        }
    }
}
