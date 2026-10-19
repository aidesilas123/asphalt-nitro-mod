package com.json;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class j3 {
    public static final int i = 0;
    public static final int j = 1;
    public static final int k = 2;
    public static final int l = 3;
    public static final int m = -1;
    private String a;
    private String b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, String> f6163d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6164e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6165f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private y9 f6166g;
    private s7 h;

    public j3(s7 s7Var) {
        this(s7Var.d(), s7Var.e(), s7Var.a(), s7Var.b());
        this.h = s7Var;
    }

    public j3(String str, String str2, Map<String, String> map, y9 y9Var) {
        this.c = -1;
        this.b = str;
        this.a = str2;
        this.f6163d = map;
        this.f6166g = y9Var;
        this.f6164e = 0;
        this.f6165f = false;
        this.h = null;
    }

    public void a() {
        this.f6166g = null;
        Map<String, String> map = this.f6163d;
        if (map != null) {
            map.clear();
        }
        this.f6163d = null;
    }

    public void a(boolean z) {
        this.f6165f = z;
    }

    public boolean a(int i2) {
        return this.c == i2;
    }

    public Map<String, String> b() {
        HashMap map = new HashMap();
        map.put("demandSourceId", this.b);
        map.put("demandSourceName", this.a);
        Map<String, String> map2 = this.f6163d;
        if (map2 != null) {
            map.putAll(map2);
        }
        return map;
    }

    public synchronized void b(int i2) {
        this.f6164e = i2;
    }

    public s7 c() {
        return this.h;
    }

    public void c(int i2) {
        this.c = i2;
    }

    public boolean d() {
        return this.f6165f;
    }

    public int e() {
        return this.f6164e;
    }

    public String f() {
        return this.a;
    }

    public Map<String, String> g() {
        return this.f6163d;
    }

    public String h() {
        return this.b;
    }

    public y9 i() {
        return this.f6166g;
    }

    public int j() {
        return this.c;
    }

    public boolean k() {
        Map<String, String> map = this.f6163d;
        if (map == null || !map.containsKey("rewarded")) {
            return false;
        }
        return Boolean.parseBoolean(this.f6163d.get("rewarded"));
    }
}
