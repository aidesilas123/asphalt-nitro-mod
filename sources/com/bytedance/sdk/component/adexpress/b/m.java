package com.bytedance.sdk.component.adexpress.b;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: RenderRequest.java */
/* JADX INFO: loaded from: classes.dex */
public class m {
    private JSONObject a;
    private e b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f672f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f673g;
    private String h;
    private boolean i;
    private int j;
    private long k;
    private int l;
    private String m;
    private Map<String, String> n;
    private int o;
    private boolean p;
    private String q;
    private int r;
    private int s;
    private int t;
    private int u;
    private String v;
    private double w;
    private int x;
    private boolean y;

    /* JADX INFO: compiled from: RenderRequest.java */
    public static class a {
        private JSONObject a;
        private e b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private i f674d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f675e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f676f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f677g;
        private String h;
        private boolean i;
        private int j;
        private long k;
        private int l;
        private String m;
        private Map<String, String> n;
        private int o;
        private boolean p;
        private String q;
        private int r;
        private int s;
        private int t;
        private int u;
        private String v;
        private double w;
        private int x;
        private boolean y = true;

        public a a(double d2) {
            this.w = d2;
            return this;
        }

        public a a(int i) {
            this.f675e = i;
            return this;
        }

        public a a(long j) {
            this.k = j;
            return this;
        }

        public a a(e eVar) {
            this.b = eVar;
            return this;
        }

        public a a(i iVar) {
            this.f674d = iVar;
            return this;
        }

        public a a(String str) {
            this.c = str;
            return this;
        }

        public a a(Map<String, String> map) {
            this.n = map;
            return this;
        }

        public a a(boolean z) {
            this.y = z;
            return this;
        }

        public m a() {
            return new m(this);
        }

        public a b(int i) {
            this.j = i;
            return this;
        }

        public a b(String str) {
            this.f676f = str;
            return this;
        }

        public a b(boolean z) {
            this.i = z;
            return this;
        }

        public a c(int i) {
            this.l = i;
            return this;
        }

        public a c(String str) {
            this.f677g = str;
            return this;
        }

        public a c(boolean z) {
            this.p = z;
            return this;
        }

        public a d(int i) {
            this.o = i;
            return this;
        }

        public a d(String str) {
            this.h = str;
            return this;
        }

        public a e(int i) {
            this.x = i;
            return this;
        }

        public a e(String str) {
            this.q = str;
            return this;
        }
    }

    public m(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.f670d = aVar.f674d;
        this.f671e = aVar.f675e;
        this.f672f = aVar.f676f;
        this.f673g = aVar.f677g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
        this.k = aVar.k;
        this.l = aVar.l;
        this.m = aVar.m;
        this.n = aVar.n;
        this.o = aVar.o;
        this.p = aVar.p;
        this.q = aVar.q;
        this.r = aVar.r;
        this.s = aVar.s;
        this.t = aVar.t;
        this.u = aVar.u;
        this.v = aVar.v;
        this.w = aVar.w;
        this.x = aVar.x;
        this.y = aVar.y;
    }

    public boolean a() {
        return this.y;
    }

    public double b() {
        return this.w;
    }

    public JSONObject c() {
        e eVar;
        if (this.a == null && (eVar = this.b) != null) {
            this.a = eVar.a();
        }
        return this.a;
    }

    public String d() {
        return this.c;
    }

    public i e() {
        return this.f670d;
    }

    public int f() {
        return this.f671e;
    }

    public int g() {
        return this.x;
    }

    public boolean h() {
        return this.i;
    }

    public long i() {
        return this.k;
    }

    public int j() {
        return this.l;
    }

    public Map<String, String> k() {
        return this.n;
    }

    public int l() {
        return this.o;
    }

    public boolean m() {
        return this.p;
    }

    public String n() {
        return this.q;
    }

    public int o() {
        return this.r;
    }

    public int p() {
        return this.s;
    }

    public int q() {
        return this.t;
    }

    public int r() {
        return this.u;
    }
}
