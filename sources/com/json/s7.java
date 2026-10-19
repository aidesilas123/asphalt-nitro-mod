package com.json;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class s7 {
    private final boolean a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private y5 f6542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, String> f6543f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private y9 f6544g;
    private boolean h;

    s7(String str, String str2, boolean z, boolean z2, boolean z3, Map<String, String> map, y9 y9Var, y5 y5Var) {
        this.b = str;
        this.c = str2;
        this.a = z;
        this.f6541d = z2;
        this.f6543f = map;
        this.f6544g = y9Var;
        this.f6542e = y5Var;
        this.h = z3;
    }

    public Map<String, String> a() {
        HashMap map = new HashMap();
        map.put("instanceId", this.b);
        map.put("instanceName", this.c);
        map.put("rewarded", Boolean.toString(this.a));
        map.put("inAppBidding", Boolean.toString(this.f6541d));
        map.put("isOneFlow", Boolean.toString(this.h));
        map.put(o2.q, String.valueOf(2));
        y5 y5Var = this.f6542e;
        map.put("width", y5Var != null ? Integer.toString(y5Var.c()) : "0");
        y5 y5Var2 = this.f6542e;
        map.put("height", y5Var2 != null ? Integer.toString(y5Var2.a()) : "0");
        y5 y5Var3 = this.f6542e;
        map.put("label", y5Var3 != null ? y5Var3.b() : "");
        map.put(o2.u, Boolean.toString(g()));
        Map<String, String> map2 = this.f6543f;
        if (map2 != null) {
            map.putAll(map2);
        }
        return map;
    }

    public final y9 b() {
        return this.f6544g;
    }

    public Map<String, String> c() {
        return this.f6543f;
    }

    public String d() {
        return this.b;
    }

    public String e() {
        return this.c;
    }

    public y5 f() {
        return this.f6542e;
    }

    public boolean g() {
        return f() != null && f().d();
    }

    public boolean h() {
        return this.f6541d;
    }

    public boolean i() {
        return h() || j();
    }

    public boolean j() {
        return this.h;
    }

    public boolean k() {
        return this.a;
    }
}
