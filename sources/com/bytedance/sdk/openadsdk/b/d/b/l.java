package com.bytedance.sdk.openadsdk.b.d.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: LoadVideoSuccessModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class l implements c {
    private String a;
    private long b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1220d;

    public void a(long j) {
        this.b = j;
    }

    public void a(String str) {
        this.a = str;
    }

    @Override // com.bytedance.sdk.openadsdk.b.d.b.c
    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.a);
            jSONObject.put("preload_size", this.b);
            jSONObject.put("load_time", this.c);
            jSONObject.put("local_cache", this.f1220d);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("LoadVideoSuccessModel", th.getMessage());
        }
    }

    public void b(long j) {
        this.c = j;
    }

    public void c(long j) {
        this.f1220d = j;
    }
}
