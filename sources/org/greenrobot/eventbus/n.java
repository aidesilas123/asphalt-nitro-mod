package org.greenrobot.eventbus;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: SubscriberMethodFinder.java */
/* JADX INFO: loaded from: classes5.dex */
class n {
    private static final Map<Class<?>, List<m>> a = new ConcurrentHashMap();
    private static final a[] b = new a[4];
    private List<org.greenrobot.eventbus.p.b> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f10947d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f10948e;

    /* JADX INFO: compiled from: SubscriberMethodFinder.java */
    static class a {
        final List<m> a = new ArrayList();
        final Map<Class, Object> b = new HashMap();
        final Map<String, Class> c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final StringBuilder f10949d = new StringBuilder(128);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Class<?> f10950e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Class<?> f10951f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f10952g;
        org.greenrobot.eventbus.p.a h;

        a() {
        }

        private boolean b(Method method, Class<?> cls) {
            this.f10949d.setLength(0);
            this.f10949d.append(method.getName());
            StringBuilder sb = this.f10949d;
            sb.append('>');
            sb.append(cls.getName());
            String string = this.f10949d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class clsPut = this.c.put(string, declaringClass);
            if (clsPut == null || clsPut.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.c.put(string, clsPut);
            return false;
        }

        boolean a(Method method, Class<?> cls) {
            Object objPut = this.b.put(cls, method);
            if (objPut == null) {
                return true;
            }
            if (objPut instanceof Method) {
                if (!b((Method) objPut, cls)) {
                    throw new IllegalStateException();
                }
                this.b.put(cls, this);
            }
            return b(method, cls);
        }

        void c(Class<?> cls) {
            this.f10951f = cls;
            this.f10950e = cls;
            this.f10952g = false;
            this.h = null;
        }

        void d() {
            if (this.f10952g) {
                this.f10951f = null;
                return;
            }
            Class<? super Object> superclass = this.f10951f.getSuperclass();
            this.f10951f = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                this.f10951f = null;
            }
        }

        void e() {
            this.a.clear();
            this.b.clear();
            this.c.clear();
            this.f10949d.setLength(0);
            this.f10950e = null;
            this.f10951f = null;
            this.f10952g = false;
            this.h = null;
        }
    }

    n(List<org.greenrobot.eventbus.p.b> list, boolean z, boolean z2) {
        this.c = list;
        this.f10947d = z;
        this.f10948e = z2;
    }

    static void a() {
        a.clear();
    }

    private List<m> c(Class<?> cls) {
        a aVarH = h();
        aVarH.c(cls);
        while (aVarH.f10951f != null) {
            org.greenrobot.eventbus.p.a aVarG = g(aVarH);
            aVarH.h = aVarG;
            if (aVarG != null) {
                for (m mVar : aVarG.a()) {
                    if (aVarH.a(mVar.a, mVar.c)) {
                        aVarH.a.add(mVar);
                    }
                }
            } else {
                e(aVarH);
            }
            aVarH.d();
        }
        return f(aVarH);
    }

    private List<m> d(Class<?> cls) {
        a aVarH = h();
        aVarH.c(cls);
        while (aVarH.f10951f != null) {
            e(aVarH);
            aVarH.d();
        }
        return f(aVarH);
    }

    private void e(a aVar) {
        Method[] methods;
        try {
            try {
                methods = aVar.f10951f.getDeclaredMethods();
            } catch (LinkageError e2) {
                String str = "Could not inspect methods of " + aVar.f10951f.getName();
                throw new d(this.f10948e ? str + ". Please consider using EventBus annotation processor to avoid reflection." : str + ". Please make this class visible to EventBus annotation processor to avoid reflection.", e2);
            }
        } catch (Throwable unused) {
            methods = aVar.f10951f.getMethods();
            aVar.f10952g = true;
        }
        for (Method method : methods) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1) {
                    k kVar = (k) method.getAnnotation(k.class);
                    if (kVar != null) {
                        Class<?> cls = parameterTypes[0];
                        if (aVar.a(method, cls)) {
                            aVar.a.add(new m(method, cls, kVar.threadMode(), kVar.priority(), kVar.sticky()));
                        }
                    }
                } else if (this.f10947d && method.isAnnotationPresent(k.class)) {
                    throw new d("@Subscribe method " + (method.getDeclaringClass().getName() + "." + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                }
            } else if (this.f10947d && method.isAnnotationPresent(k.class)) {
                throw new d((method.getDeclaringClass().getName() + "." + method.getName()) + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
            }
        }
    }

    private List<m> f(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.a);
        aVar.e();
        synchronized (b) {
            int i = 0;
            while (true) {
                if (i >= 4) {
                    break;
                }
                a[] aVarArr = b;
                if (aVarArr[i] == null) {
                    aVarArr[i] = aVar;
                    break;
                }
                i++;
            }
        }
        return arrayList;
    }

    private org.greenrobot.eventbus.p.a g(a aVar) {
        org.greenrobot.eventbus.p.a aVar2 = aVar.h;
        if (aVar2 != null && aVar2.c() != null) {
            org.greenrobot.eventbus.p.a aVarC = aVar.h.c();
            if (aVar.f10951f == aVarC.b()) {
                return aVarC;
            }
        }
        List<org.greenrobot.eventbus.p.b> list = this.c;
        if (list == null) {
            return null;
        }
        Iterator<org.greenrobot.eventbus.p.b> it = list.iterator();
        while (it.hasNext()) {
            org.greenrobot.eventbus.p.a aVarA = it.next().a(aVar.f10951f);
            if (aVarA != null) {
                return aVarA;
            }
        }
        return null;
    }

    private a h() {
        synchronized (b) {
            for (int i = 0; i < 4; i++) {
                a[] aVarArr = b;
                a aVar = aVarArr[i];
                if (aVar != null) {
                    aVarArr[i] = null;
                    return aVar;
                }
            }
            return new a();
        }
    }

    List<m> b(Class<?> cls) {
        Map<Class<?>, List<m>> map = a;
        List<m> list = map.get(cls);
        if (list != null) {
            return list;
        }
        List<m> listD = this.f10948e ? d(cls) : c(cls);
        if (!listD.isEmpty()) {
            map.put(cls, listD);
            return listD;
        }
        throw new d("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
    }
}
