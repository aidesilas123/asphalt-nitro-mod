package com.mbridge.msdk.c;

import org.json.JSONObject;

/* JADX INFO: compiled from: BCP.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private String a;
    private String b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6758d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6759e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6760f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6761g = 0;
    private int h = 0;

    public static a a(String str) {
        Exception e2;
        a aVar;
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
            aVar = new a();
        } catch (Exception e3) {
            e2 = e3;
            aVar = null;
        }
        try {
            aVar.a = jSONObject.optString("http_domain", com.mbridge.msdk.foundation.same.net.g.d.a().b);
            aVar.b = jSONObject.optString("tcp_domain", com.mbridge.msdk.foundation.same.net.g.d.a().i);
            aVar.c = jSONObject.optInt("tcp_port", com.mbridge.msdk.foundation.same.net.g.d.a().m);
            aVar.f6758d = jSONObject.optInt("type", 0);
            int i = 1;
            int iOptInt = jSONObject.optInt("batch_size", 1);
            if (iOptInt >= 1) {
                i = iOptInt;
            }
            aVar.f6759e = i;
            aVar.f6760f = jSONObject.optInt("duration", 0);
            aVar.f6761g = jSONObject.optInt("disable", 0);
            aVar.h = jSONObject.optInt("e_t_l", 0);
        } catch (Exception e4) {
            e2 = e4;
            e2.printStackTrace();
        }
        return aVar;
    }

    public final int a() {
        return this.h;
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final int d() {
        return this.c;
    }

    public final int e() {
        return this.f6758d;
    }

    public final int f() {
        return this.f6759e;
    }

    public final int g() {
        return this.f6760f;
    }

    public final int h() {
        return this.f6761g;
    }
}
