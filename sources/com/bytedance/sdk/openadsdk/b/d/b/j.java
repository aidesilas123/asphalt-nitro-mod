package com.bytedance.sdk.openadsdk.b.d.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: LoadVideoErrorModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class j implements c {
    private String a;
    private long b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f1218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1219f;

    public void a(int i) {
        this.f1217d = i;
    }

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
            jSONObject.put("error_code", this.f1217d);
            jSONObject.put("error_message", this.f1218e);
            jSONObject.put("error_message_server", this.f1219f);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("LoadVideoErrorModel", th.getMessage());
        }
    }

    public void b(long j) {
        this.c = j;
    }

    public void b(String str) {
        this.f1218e = str;
    }

    public void c(String str) {
        this.f1219f = str;
    }
}
