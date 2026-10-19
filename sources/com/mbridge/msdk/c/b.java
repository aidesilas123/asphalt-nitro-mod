package com.mbridge.msdk.c;

import org.json.JSONObject;

/* JADX INFO: compiled from: EventLibMonitorSetting.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private String a;
    private String b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6762d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6763e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6764f = 30;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6765g = 0;
    private int h = 1;
    private int i = 0;

    public static b a(String str) {
        Exception e2;
        b bVar;
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
            bVar = new b();
        } catch (Exception e3) {
            e2 = e3;
            bVar = null;
        }
        try {
            bVar.a = jSONObject.optString("h_d", com.mbridge.msdk.foundation.same.net.g.d.a().c);
            bVar.b = jSONObject.optString("t_d", com.mbridge.msdk.foundation.same.net.g.d.a().k);
            bVar.c = jSONObject.optInt("t_p", com.mbridge.msdk.foundation.same.net.g.d.a().o);
            bVar.f6762d = jSONObject.optInt("type", 1);
            bVar.f6764f = jSONObject.optInt("d_t", 30);
            bVar.f6765g = jSONObject.optInt("d_a", 0);
        } catch (Exception e4) {
            e2 = e4;
            e2.printStackTrace();
        }
        return bVar;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final int c() {
        return this.c;
    }

    public final int d() {
        return this.f6764f;
    }

    public final int e() {
        return this.f6765g;
    }
}
