package com.json;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class s2 {
    private String a;
    private JSONObject b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6534d;

    public s2(String str) {
        this.a = str;
    }

    public s2(String str, String str2, String str3) {
        this.a = str;
        this.c = str2;
        this.f6534d = str3;
    }

    public s2(String str, JSONObject jSONObject) {
        this.a = str;
        this.b = jSONObject;
    }

    public s2(String str, JSONObject jSONObject, String str2, String str3) {
        this.a = str;
        this.b = jSONObject;
        this.c = str2;
        this.f6534d = str3;
    }

    public String a() {
        return this.f6534d;
    }

    public String b() {
        return this.a;
    }

    public JSONObject c() {
        return this.b;
    }

    public String d() {
        return this.c;
    }
}
