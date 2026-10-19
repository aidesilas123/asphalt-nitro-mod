package com.bytedance.sdk.component.a;

import com.bytedance.component.sdk.annotation.MainThread;
import com.bytedance.sdk.component.a.d;
import com.bytedance.sdk.component.a.t;
import com.bytedance.sdk.component.a.v;
import com.bytedance.sdk.component.a.w;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;

/* JADX INFO: compiled from: CallHandler.java */
/* JADX INFO: loaded from: classes.dex */
class g implements w.a {
    private final h a;
    private final u b;
    private final Map<String, b> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, d.b> f617d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<q> f618e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set<d> f619f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final m f620g;
    private final boolean h;
    private final boolean i;
    private final com.bytedance.sdk.component.a.a j;

    /* JADX INFO: compiled from: CallHandler.java */
    static final class a {
        boolean a;
        String b;

        private a(boolean z, String str) {
            this.a = z;
            this.b = str;
        }
    }

    g(j jVar, com.bytedance.sdk.component.a.a aVar, v vVar) {
        this.j = aVar;
        this.a = jVar.f621d;
        u uVar = new u(vVar, jVar.l, jVar.m);
        this.b = uVar;
        uVar.a(this);
        uVar.a(jVar.p);
        this.f620g = jVar.i;
        this.h = jVar.h;
        this.i = jVar.o;
    }

    @MainThread
    private a a(final q qVar, c cVar, x xVar) throws Exception {
        cVar.a(qVar, new t(qVar.f625d, xVar, new t.a() { // from class: com.bytedance.sdk.component.a.g.2
        }));
        return new a(false, y.a());
    }

    @MainThread
    private a a(final q qVar, final d dVar, f fVar) throws Exception {
        this.f619f.add(dVar);
        dVar.a(a(qVar.f626e, dVar), fVar, new d.a() { // from class: com.bytedance.sdk.component.a.g.1
            @Override // com.bytedance.sdk.component.a.d.a
            public void a(Throwable th) {
                if (g.this.j == null) {
                    return;
                }
                g.this.j.b(y.a(th), qVar);
                g.this.f619f.remove(dVar);
            }
        });
        return new a(false, y.a());
    }

    @MainThread
    private a a(q qVar, e eVar, f fVar) throws Exception {
        return new a(true, y.a(this.a.a(eVar.a(a(qVar.f626e, (b) eVar), fVar))));
    }

    private Object a(String str, b bVar) throws JSONException {
        return this.a.a(str, a(bVar)[0]);
    }

    private static Type[] a(Object obj) {
        Type genericSuperclass = obj.getClass().getGenericSuperclass();
        if (genericSuperclass != null) {
            return ((ParameterizedType) genericSuperclass).getActualTypeArguments();
        }
        throw new IllegalStateException("Method is not parameterized?!");
    }

    private x b(String str, b bVar) {
        return this.i ? x.PRIVATE : this.b.a(this.h, str, bVar);
    }

    @MainThread
    a a(q qVar, f fVar) throws Exception {
        b bVar = this.c.get(qVar.f625d);
        if (bVar != null) {
            try {
                x xVarB = b(fVar.b, bVar);
                fVar.f616d = xVarB;
                if (xVarB == null) {
                    m mVar = this.f620g;
                    if (mVar != null) {
                        mVar.a(fVar.b, qVar.f625d, 1);
                    }
                    i.a("Permission denied, call: " + qVar);
                    throw new s(-1);
                }
                if (bVar instanceof e) {
                    i.a("Processing stateless call: " + qVar);
                    return a(qVar, (e) bVar, fVar);
                }
                if (bVar instanceof c) {
                    i.a("Processing raw call: " + qVar);
                    return a(qVar, (c) bVar, xVarB);
                }
            } catch (v.a e2) {
                i.a("No remote permission config fetched, call pending: " + qVar, e2);
                this.f618e.add(qVar);
                return new a(false, y.a());
            }
        }
        d.b bVar2 = this.f617d.get(qVar.f625d);
        if (bVar2 == null) {
            m mVar2 = this.f620g;
            if (mVar2 != null) {
                mVar2.a(fVar.b, qVar.f625d, 2);
            }
            i.b("Received call: " + qVar + ", but not registered.");
            return null;
        }
        d dVarA = bVar2.a();
        dVarA.a(qVar.f625d);
        x xVarB2 = b(fVar.b, dVarA);
        fVar.f616d = xVarB2;
        if (xVarB2 != null) {
            i.a("Processing stateful call: " + qVar);
            return a(qVar, dVarA, fVar);
        }
        i.a("Permission denied, call: " + qVar);
        dVarA.e();
        throw new s(-1);
    }

    void a() {
        Iterator<d> it = this.f619f.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        this.f619f.clear();
        this.c.clear();
        this.f617d.clear();
        this.b.b(this);
    }

    void a(String str, d.b bVar) {
        this.f617d.put(str, bVar);
        i.a("JsBridge stateful method registered: " + str);
    }

    void a(String str, e<?, ?> eVar) {
        eVar.a(str);
        this.c.put(str, eVar);
        i.a("JsBridge stateless method registered: " + str);
    }
}
