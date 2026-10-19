package com.moat.analytics.mobile.glft;

import androidx.annotation.VisibleForTesting;
import com.moat.analytics.mobile.glft.u;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.LinkedList;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
class v<T> implements InvocationHandler {
    private static final Object[] a = new Object[0];
    private final a<T> b;
    private final c<T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedList<v<T>.b> f7670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LinkedList<v<T>.b> f7671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7672f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private T f7673g;

    interface a<T> {
        com.moat.analytics.mobile.glft.a.b.a<T> a();
    }

    private class b {
        private final WeakReference[] b;
        private final LinkedList<Object> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Method f7674d;

        private b(Method method, Object... objArr) {
            this.c = new LinkedList<>();
            objArr = objArr == null ? v.a : objArr;
            WeakReference[] weakReferenceArr = new WeakReference[objArr.length];
            int length = objArr.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                Object obj = objArr[i];
                if ((obj instanceof Map) || (obj instanceof Integer) || (obj instanceof Double)) {
                    this.c.add(obj);
                }
                weakReferenceArr[i2] = new WeakReference(obj);
                i++;
                i2++;
            }
            this.b = weakReferenceArr;
            this.f7674d = method;
        }
    }

    interface c<T> {
        Class<T> a();
    }

    @VisibleForTesting
    v(a<T> aVar, c<T> cVar) {
        com.moat.analytics.mobile.glft.a.a.a.a(aVar);
        com.moat.analytics.mobile.glft.a.a.a.a(cVar);
        this.b = aVar;
        this.c = cVar;
        this.f7670d = new LinkedList<>();
        this.f7671e = new LinkedList<>();
        u.d().a(new u.b() { // from class: com.moat.analytics.mobile.glft.v.1
            @Override // com.moat.analytics.mobile.glft.u.b
            public void b() {
                v.this.c();
            }

            @Override // com.moat.analytics.mobile.glft.u.b
            public void c() {
            }
        });
    }

    static <T> T a(a<T> aVar, c<T> cVar) {
        Class<T> clsA = cVar.a();
        return (T) Proxy.newProxyInstance(clsA.getClassLoader(), new Class[]{clsA}, new v(aVar, cVar));
    }

    private Object a(Method method) {
        try {
            if (Boolean.TYPE.equals(method.getReturnType())) {
                return Boolean.TRUE;
            }
            return null;
        } catch (Exception e2) {
            l.a(e2);
            return null;
        }
    }

    private Object a(Method method, Object[] objArr) throws IllegalAccessException, InvocationTargetException {
        Class<?> declaringClass = method.getDeclaringClass();
        u uVarD = u.d();
        if (Object.class.equals(declaringClass)) {
            String name = method.getName();
            Class<T> clsA = this.c.a();
            if ("getClass".equals(name)) {
                return clsA;
            }
            boolean zEquals = "toString".equals(name);
            Object objInvoke = method.invoke(this, objArr);
            if (!zEquals) {
                return objInvoke;
            }
            return (objInvoke + "").replace(v.class.getName(), clsA.getName());
        }
        if (this.f7672f && this.f7673g == null) {
            d();
            return a(method);
        }
        if (uVarD.a() == u.d.ON) {
            c();
            T t = this.f7673g;
            if (t != null) {
                return method.invoke(t, objArr);
            }
        }
        if (uVarD.a() == u.d.OFF && (!this.f7672f || this.f7673g != null)) {
            b(method, objArr);
        }
        return a(method);
    }

    private void b() {
        if (this.f7672f) {
            return;
        }
        try {
            this.f7673g = this.b.a().c(null);
        } catch (Exception e2) {
            n.a("OnOffTrackerProxy", this, "Could not create instance", e2);
            l.a(e2);
        }
        this.f7672f = true;
    }

    private void b(Method method, Object[] objArr) {
        LinkedList<v<T>.b> linkedList;
        v<T>.b bVar;
        if (this.f7670d.size() < 5) {
            linkedList = this.f7670d;
            bVar = new b(method, objArr);
        } else {
            if (this.f7671e.size() >= 10) {
                this.f7671e.removeFirst();
            }
            linkedList = this.f7671e;
            bVar = new b(method, objArr);
        }
        linkedList.add(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        b();
        if (this.f7673g == null) {
            return;
        }
        LinkedList<LinkedList> linkedList = new LinkedList();
        linkedList.add(this.f7670d);
        linkedList.add(this.f7671e);
        for (LinkedList<b> linkedList2 : linkedList) {
            for (b bVar : linkedList2) {
                try {
                    Object[] objArr = new Object[bVar.b.length];
                    WeakReference[] weakReferenceArr = bVar.b;
                    int length = weakReferenceArr.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        objArr[i2] = weakReferenceArr[i].get();
                        i++;
                        i2++;
                    }
                    bVar.f7674d.invoke(this.f7673g, objArr);
                } catch (Exception e2) {
                    l.a(e2);
                }
            }
            linkedList2.clear();
        }
    }

    private void d() {
        this.f7670d.clear();
        this.f7671e.clear();
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        try {
            return a(method, objArr);
        } catch (Exception e2) {
            l.a(e2);
            return a(method);
        }
    }
}
