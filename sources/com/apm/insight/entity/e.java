package com.apm.insight.entity;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private String a;
    private JSONObject b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f229d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f231f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f232g;
    private List<String> h;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(List<String> list) {
        this.h = list;
    }

    public void a(JSONObject jSONObject) {
        this.b = jSONObject;
    }

    public void a(boolean z) {
        this.f229d = z;
    }

    public JSONObject b() {
        return this.b;
    }

    public void b(String str) {
        this.c = str;
    }

    public String c() {
        return this.c;
    }

    public void c(String str) {
        this.f230e = str;
    }

    public String d() {
        return this.f230e;
    }

    public void d(String str) {
        this.f231f = str;
    }

    public String e() {
        return this.f231f;
    }

    public void e(String str) {
        this.f232g = str;
    }

    public String f() {
        return this.f232g;
    }

    public List<String> g() {
        return this.h;
    }
}
