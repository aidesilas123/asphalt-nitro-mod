package com.bytedance.sdk.openadsdk.b.d.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: LoadVideoStartModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class k implements c {
    private final String a;
    private final long b;

    public k(String str, long j) {
        this.a = str;
        this.b = j;
    }

    @Override // com.bytedance.sdk.openadsdk.b.d.b.c
    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.a);
            jSONObject.put("preload_size", this.b);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("LoadVideoStartModel", th.getMessage());
        }
    }
}
