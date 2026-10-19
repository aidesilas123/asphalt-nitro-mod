package com.bytedance.sdk.openadsdk.multipro.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: VideoControllerDataModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public boolean a;
    public boolean b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f1842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f1843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f1844g;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.multipro.b.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: VideoControllerDataModel.java */
    public interface InterfaceC0147a {
        a g();
    }

    public static a a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        aVar.b(jSONObject.optBoolean("isCompleted"));
        aVar.c(jSONObject.optBoolean("isFromVideoDetailPage"));
        aVar.d(jSONObject.optBoolean("isFromDetailPage"));
        aVar.a(jSONObject.optLong("duration"));
        aVar.b(jSONObject.optLong("totalPlayDuration"));
        aVar.c(jSONObject.optLong("currentPlayPosition"));
        aVar.a(jSONObject.optBoolean("isAutoPlay"));
        return aVar;
    }

    public a a(long j) {
        this.f1842e = j;
        return this;
    }

    public a a(boolean z) {
        this.f1841d = z;
        return this;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isCompleted", this.a);
            jSONObject.put("isFromVideoDetailPage", this.b);
            jSONObject.put("isFromDetailPage", this.c);
            jSONObject.put("duration", this.f1842e);
            jSONObject.put("totalPlayDuration", this.f1843f);
            jSONObject.put("currentPlayPosition", this.f1844g);
            jSONObject.put("isAutoPlay", this.f1841d);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public a b(long j) {
        this.f1843f = j;
        return this;
    }

    public a b(boolean z) {
        this.a = z;
        return this;
    }

    public a c(long j) {
        this.f1844g = j;
        return this;
    }

    public a c(boolean z) {
        this.b = z;
        return this;
    }

    public a d(boolean z) {
        this.c = z;
        return this;
    }
}
