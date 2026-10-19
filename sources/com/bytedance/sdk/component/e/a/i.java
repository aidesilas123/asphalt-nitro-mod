package com.bytedance.sdk.component.e.a;

import android.content.Context;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: LogInternalManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {
    private static volatile com.bytedance.sdk.component.e.a.e.a j;
    private static i m;
    private volatile Context a;
    private volatile com.bytedance.sdk.component.e.a.d.b.a b;
    private volatile com.bytedance.sdk.component.e.a.d.b.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile com.bytedance.sdk.component.e.a.d.b.a f1035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile com.bytedance.sdk.component.e.a.d.b.a f1036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile com.bytedance.sdk.component.e.a.d.b.a f1037f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile com.bytedance.sdk.component.e.a.a.e f1038g;
    private volatile boolean h;
    private volatile f i;
    private volatile com.bytedance.sdk.component.e.a.b.c k;
    private volatile Map<Integer, com.bytedance.sdk.component.e.a.b.c> l;
    private final AtomicBoolean n = new AtomicBoolean(false);

    private i() {
    }

    public static com.bytedance.sdk.component.e.a.e.a e() {
        if (j == null) {
            synchronized (i.class) {
                if (j == null) {
                    j = new com.bytedance.sdk.component.e.a.e.b();
                }
            }
        }
        return j;
    }

    public static synchronized i g() {
        if (m == null) {
            m = new i();
        }
        return m;
    }

    public void a(Context context) {
        this.a = context;
    }

    public void a(com.bytedance.sdk.component.e.a.a.e eVar) {
        this.f1038g = eVar;
    }

    public void a(com.bytedance.sdk.component.e.a.b.c cVar) {
        this.k = cVar;
    }

    public void a(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.a(System.currentTimeMillis());
        com.bytedance.sdk.component.e.a.b.d.a.a(aVar, aVar.d());
    }

    public void a(com.bytedance.sdk.component.e.a.d.b.a aVar) {
        this.f1037f = aVar;
    }

    public void a(f fVar) {
        this.i = fVar;
    }

    public void a(String str) {
        com.bytedance.sdk.component.e.a.f.a.a().a(str);
    }

    public void a(String str, List<String> list, boolean z, Map<String, String> map) {
        com.bytedance.sdk.component.e.a.f.a.a().a(str, list, z, map);
    }

    public void a(boolean z) {
        this.n.set(z);
    }

    public boolean a() {
        return this.n.get();
    }

    public void b(com.bytedance.sdk.component.e.a.d.b.a aVar) {
        this.b = aVar;
    }

    public void b(boolean z) {
        this.h = z;
    }

    public boolean b() {
        return this.h;
    }

    public Map<Integer, com.bytedance.sdk.component.e.a.b.c> c() {
        return this.l;
    }

    public void c(com.bytedance.sdk.component.e.a.d.b.a aVar) {
        this.c = aVar;
    }

    public com.bytedance.sdk.component.e.a.a.e d() {
        return this.f1038g;
    }

    public void d(com.bytedance.sdk.component.e.a.d.b.a aVar) {
        this.f1035d = aVar;
    }

    public void e(com.bytedance.sdk.component.e.a.d.b.a aVar) {
        this.f1036e = aVar;
    }

    public Context f() {
        return this.a;
    }

    public com.bytedance.sdk.component.e.a.b.c h() {
        return this.k;
    }

    public void i() {
        com.bytedance.sdk.component.e.a.b.d.a.b();
    }

    public com.bytedance.sdk.component.e.a.d.b.a j() {
        return this.f1037f;
    }

    public void k() {
        com.bytedance.sdk.component.e.a.b.d.a.c();
    }

    public com.bytedance.sdk.component.e.a.d.b.a l() {
        return this.b;
    }

    public com.bytedance.sdk.component.e.a.d.b.a m() {
        return this.c;
    }

    public com.bytedance.sdk.component.e.a.d.b.a n() {
        return this.f1035d;
    }

    public com.bytedance.sdk.component.e.a.d.b.a o() {
        return this.f1036e;
    }

    public f p() {
        return this.i;
    }
}
