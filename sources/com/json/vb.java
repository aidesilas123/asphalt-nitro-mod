package com.json;

import com.json.o2;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class vb {
    private final JSONObject a;

    public vb(JSONObject jSONObject) {
        this.a = jSONObject == null ? new JSONObject() : jSONObject;
    }

    public boolean a() {
        return this.a.optBoolean("uxt", false);
    }

    public boolean b() {
        return this.a.optBoolean(o2.a.m, false);
    }

    public boolean c() {
        return this.a.optBoolean(o2.a.n, false);
    }

    public boolean d() {
        return this.a.optBoolean(o2.a.j, false);
    }

    public boolean e() {
        return this.a.optBoolean(o2.a.l, false);
    }
}
