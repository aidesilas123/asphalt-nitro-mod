package com.bytedance.sdk.component.b.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class m {
    public k a;

    /* JADX INFO: compiled from: Request.java */
    public static class a {
        com.bytedance.sdk.component.b.a.a a;
        Map<String, List<String>> b;
        g c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f925d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Object f926e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        n f927f;

        public a() {
            this.b = new HashMap();
        }

        a(m mVar) {
            this.c = mVar.b();
            this.f925d = mVar.c();
            this.b = mVar.d();
            this.f926e = mVar.a();
            this.f927f = mVar.f();
            this.a = mVar.e();
        }

        private a a(String str, n nVar) {
            this.f925d = str;
            this.f927f = nVar;
            return this;
        }

        public a a() {
            return a("GET", (n) null);
        }

        public a a(com.bytedance.sdk.component.b.a.a aVar) {
            this.a = aVar;
            return this;
        }

        public a a(g gVar) {
            this.c = gVar;
            return this;
        }

        public a a(n nVar) {
            return a("POST", nVar);
        }

        public a a(Object obj) {
            this.f926e = obj;
            return this;
        }

        public a a(String str) {
            return a(g.c(str));
        }

        public a a(String str, String str2) {
            return b(str, str2);
        }

        public a b(String str, String str2) {
            if (!this.b.containsKey(str)) {
                this.b.put(str, new ArrayList());
            }
            this.b.get(str).add(str2);
            return this;
        }

        public m b() {
            return new m() { // from class: com.bytedance.sdk.component.b.a.m.a.1
                @Override // com.bytedance.sdk.component.b.a.m
                public Object a() {
                    return a.this.f926e;
                }

                @Override // com.bytedance.sdk.component.b.a.m
                public g b() {
                    return a.this.c;
                }

                @Override // com.bytedance.sdk.component.b.a.m
                public String c() {
                    return a.this.f925d;
                }

                @Override // com.bytedance.sdk.component.b.a.m
                public Map d() {
                    return a.this.b;
                }

                @Override // com.bytedance.sdk.component.b.a.m
                public com.bytedance.sdk.component.b.a.a e() {
                    return a.this.a;
                }

                @Override // com.bytedance.sdk.component.b.a.m
                public n f() {
                    return a.this.f927f;
                }

                public String toString() {
                    return "";
                }
            };
        }
    }

    public abstract Object a();

    public void a(k kVar) {
        this.a = kVar;
    }

    public abstract g b();

    public abstract String c();

    public abstract Map<String, List<String>> d();

    public abstract com.bytedance.sdk.component.b.a.a e();

    public n f() {
        return null;
    }

    public a g() {
        return new a(this);
    }
}
