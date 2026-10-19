package com.bytedance.sdk.component.d.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.component.d.l;
import com.bytedance.sdk.component.d.m;
import com.bytedance.sdk.component.d.p;
import com.bytedance.sdk.component.d.q;
import com.bytedance.sdk.component.d.r;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: LoadFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    private final m b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.component.d.d f983f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private l f984g;
    private ExecutorService h;
    private p i;
    private Map<String, List<c>> a = new ConcurrentHashMap();
    private Map<String, q> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, r> f981d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, com.bytedance.sdk.component.d.c> f982e = new HashMap();

    public f(Context context, m mVar) {
        this.b = (m) h.a(mVar);
        com.bytedance.sdk.component.d.c.a.a.a(context, mVar.h());
    }

    private q d(com.bytedance.sdk.component.d.b bVar) {
        q qVarD = this.b.d();
        return qVarD != null ? com.bytedance.sdk.component.d.c.a.b.a.a(qVarD) : com.bytedance.sdk.component.d.c.a.b.a.a(bVar.b());
    }

    private r e(com.bytedance.sdk.component.d.b bVar) {
        r rVarE = this.b.e();
        return rVarE != null ? rVarE : com.bytedance.sdk.component.d.c.a.b.e.a(bVar.b());
    }

    private com.bytedance.sdk.component.d.c f(com.bytedance.sdk.component.d.b bVar) {
        com.bytedance.sdk.component.d.c cVarF = this.b.f();
        return cVarF != null ? cVarF : new com.bytedance.sdk.component.d.c.a.a.b(bVar.e(), bVar.a(), f());
    }

    private com.bytedance.sdk.component.d.d i() {
        com.bytedance.sdk.component.d.d dVarC = this.b.c();
        return dVarC == null ? com.bytedance.sdk.component.d.b.b.a() : dVarC;
    }

    private l j() {
        l lVarA = this.b.a();
        return lVarA != null ? lVarA : com.bytedance.sdk.component.d.a.b.a();
    }

    private ExecutorService k() {
        ExecutorService executorServiceB = this.b.b();
        return executorServiceB != null ? executorServiceB : com.bytedance.sdk.component.d.a.c.a();
    }

    private p l() {
        p pVarG = this.b.g();
        return pVarG == null ? new g() : pVarG;
    }

    public com.bytedance.sdk.component.d.c.b.a a(c cVar) {
        ImageView.ScaleType scaleTypeD = cVar.d();
        if (scaleTypeD == null) {
            scaleTypeD = com.bytedance.sdk.component.d.c.b.a.a;
        }
        ImageView.ScaleType scaleType = scaleTypeD;
        Bitmap.Config configK = cVar.k();
        if (configK == null) {
            configK = com.bytedance.sdk.component.d.c.b.a.b;
        }
        return new com.bytedance.sdk.component.d.c.b.a(cVar.b(), cVar.c(), scaleType, configK, cVar.g(), cVar.h());
    }

    public com.bytedance.sdk.component.d.c a(String str) {
        return c(com.bytedance.sdk.component.d.c.a.a.a(new File(str)));
    }

    public q a(com.bytedance.sdk.component.d.b bVar) {
        if (bVar == null) {
            bVar = com.bytedance.sdk.component.d.c.a.a.g();
        }
        String string = bVar.e().toString();
        q qVar = this.c.get(string);
        if (qVar != null) {
            return qVar;
        }
        q qVarD = d(bVar);
        this.c.put(string, qVarD);
        return qVarD;
    }

    public Collection<q> a() {
        return this.c.values();
    }

    public r b(com.bytedance.sdk.component.d.b bVar) {
        if (bVar == null) {
            bVar = com.bytedance.sdk.component.d.c.a.a.g();
        }
        String string = bVar.e().toString();
        r rVar = this.f981d.get(string);
        if (rVar != null) {
            return rVar;
        }
        r rVarE = e(bVar);
        this.f981d.put(string, rVarE);
        return rVarE;
    }

    public Collection<r> b() {
        return this.f981d.values();
    }

    public com.bytedance.sdk.component.d.c c(com.bytedance.sdk.component.d.b bVar) {
        if (bVar == null) {
            bVar = com.bytedance.sdk.component.d.c.a.a.g();
        }
        String string = bVar.e().toString();
        com.bytedance.sdk.component.d.c cVar = this.f982e.get(string);
        if (cVar != null) {
            return cVar;
        }
        com.bytedance.sdk.component.d.c cVarF = f(bVar);
        this.f982e.put(string, cVarF);
        return cVarF;
    }

    public Collection<com.bytedance.sdk.component.d.c> c() {
        return this.f982e.values();
    }

    public com.bytedance.sdk.component.d.d d() {
        if (this.f983f == null) {
            this.f983f = i();
        }
        return this.f983f;
    }

    public l e() {
        if (this.f984g == null) {
            this.f984g = j();
        }
        return this.f984g;
    }

    public ExecutorService f() {
        if (this.h == null) {
            this.h = k();
        }
        return this.h;
    }

    public Map<String, List<c>> g() {
        return this.a;
    }

    public p h() {
        if (this.i == null) {
            this.i = l();
        }
        return this.i;
    }
}
