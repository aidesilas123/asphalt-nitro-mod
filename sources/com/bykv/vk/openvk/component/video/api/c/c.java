package com.bykv.vk.openvk.component.video.api.c;

import android.os.Build;
import android.text.TextUtils;
import java.io.Serializable;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: compiled from: VideoUrlModel.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements Serializable {
    public String a;
    public int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f476d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f477e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f478f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f479g;
    private String k;
    private int l;
    private int m;
    private String n;
    private long o;
    private boolean p;
    private boolean q;
    private int r;
    private int s;
    private int h = 204800;
    private int i = 0;
    private int j = 0;
    public final HashMap<String, Object> c = new HashMap<>();
    private int t = 10000;
    private int u = 10000;
    private int v = 10000;
    private int w = 0;
    private JSONObject x = new JSONObject();

    public c(String str, b bVar, b bVar2, int i, int i2) {
        this.r = 0;
        this.s = 0;
        this.f479g = str;
        this.f477e = bVar;
        this.f478f = bVar2;
        this.r = i;
        this.s = i2;
    }

    public int a() {
        return this.x.optInt("pitaya_cache_size", 0);
    }

    public void a(int i) {
        this.l = i;
    }

    public void a(long j) {
        this.o = j;
    }

    public void a(String str) {
        this.f479g = str;
    }

    public synchronized void a(String str, Object obj) {
        this.c.put(str, obj);
    }

    public void a(boolean z) {
        this.p = z;
    }

    public String b() {
        return this.f479g;
    }

    public void b(int i) {
        this.m = i;
    }

    public void b(String str) {
        this.k = str;
    }

    public int c() {
        if (k()) {
            return this.f478f.o();
        }
        b bVar = this.f477e;
        if (bVar != null) {
            return bVar.o();
        }
        return 0;
    }

    public void c(int i) {
        this.b = i;
    }

    public void c(String str) {
        this.n = str;
    }

    public void d(int i) {
        this.t = i;
    }

    public void d(String str) {
        this.a = str;
    }

    public boolean d() {
        return this.q;
    }

    public int e() {
        return this.l;
    }

    public synchronized Object e(String str) {
        return this.c.get(str);
    }

    public void e(int i) {
        this.u = i;
    }

    public int f() {
        return this.m;
    }

    public void f(int i) {
        this.v = i;
    }

    public long g() {
        return this.o;
    }

    public void g(int i) {
        this.w = i;
    }

    public boolean h() {
        return this.p;
    }

    public long i() {
        if (k()) {
            return this.f478f.e();
        }
        b bVar = this.f477e;
        if (bVar != null) {
            return bVar.e();
        }
        return 0L;
    }

    public boolean j() {
        if (k()) {
            return this.f478f.v();
        }
        b bVar = this.f477e;
        if (bVar != null) {
            return bVar.v();
        }
        return true;
    }

    public boolean k() {
        b bVar;
        if (this.s == 1 && (bVar = this.f478f) != null && !TextUtils.isEmpty(bVar.k())) {
            if (com.bykv.vk.openvk.component.video.api.c.f() == 2) {
                if (Build.VERSION.SDK_INT >= 26) {
                    return true;
                }
            } else if (this.r == 1) {
                return true;
            }
        }
        return false;
    }

    public float l() {
        if (k()) {
            return this.f478f.h();
        }
        b bVar = this.f477e;
        if (bVar != null) {
            return bVar.h();
        }
        return -1.0f;
    }

    public String m() {
        if (k()) {
            return this.f478f.k();
        }
        b bVar = this.f477e;
        if (bVar != null) {
            return bVar.k();
        }
        return null;
    }

    public String n() {
        if (k()) {
            return this.f478f.n();
        }
        b bVar = this.f477e;
        if (bVar != null) {
            return bVar.n();
        }
        return null;
    }

    public int o() {
        return this.r;
    }

    public int p() {
        return this.t;
    }

    public int q() {
        return this.u;
    }

    public int r() {
        return this.v;
    }

    public int s() {
        return this.w;
    }

    public b t() {
        return this.f477e;
    }

    public b u() {
        return this.f478f;
    }
}
