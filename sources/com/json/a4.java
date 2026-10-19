package com.json;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a4 {
    private int a;
    private long b;
    private JSONObject c;

    public a4(int i, long j, JSONObject jSONObject) {
        this.a = i;
        this.b = j;
        if (jSONObject == null) {
            this.c = new JSONObject();
        } else {
            this.c = jSONObject;
        }
    }

    public a4(int i, JSONObject jSONObject) {
        this.b = -1L;
        this.a = i;
        this.b = System.currentTimeMillis();
        if (jSONObject == null) {
            this.c = new JSONObject();
        } else {
            this.c = jSONObject;
        }
    }

    public String a() {
        return this.c.toString();
    }

    public void a(int i) {
        this.a = i;
    }

    public void a(String str, Object obj) {
        try {
            this.c.put(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public JSONObject b() {
        return this.c;
    }

    public int c() {
        return this.a;
    }

    public long d() {
        return this.b;
    }

    public String toString() {
        return ("{\"eventId\":" + c() + ",\"timestamp\":" + d() + "," + a().substring(1) + "}").replace(",", "\n");
    }
}
