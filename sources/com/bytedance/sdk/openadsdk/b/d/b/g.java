package com.bytedance.sdk.openadsdk.b.d.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: FeedPauseModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class g implements c {
    private long a;
    private long b;

    public void a(long j) {
        this.a = j;
    }

    @Override // com.bytedance.sdk.openadsdk.b.d.b.c
    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.a);
            jSONObject.put("total_duration", this.b);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("FeedPauseModel", th.getMessage());
        }
    }

    public void b(long j) {
        this.b = j;
    }
}
