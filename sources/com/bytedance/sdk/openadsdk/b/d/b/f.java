package com.bytedance.sdk.openadsdk.b.d.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: FeedOverModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements c {
    private long a;
    private long b;
    private int c = 0;

    public void a(int i) {
        this.c = i;
    }

    public void a(long j) {
        this.a = j;
    }

    @Override // com.bytedance.sdk.openadsdk.b.d.b.c
    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("total_duration", this.a);
            jSONObject.put("buffers_time", this.b);
            jSONObject.put("video_backup", this.c);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("FeedOverModel", th.getMessage());
        }
    }

    public void b(long j) {
        this.b = j;
    }
}
