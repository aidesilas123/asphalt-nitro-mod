package com.bytedance.sdk.openadsdk.b.d.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: FeedPlayModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class h implements c {
    private long a;
    private long b;
    private int c;

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
            jSONObject.put("video_start_duration", this.a);
            jSONObject.put("video_cache_size", this.b);
            jSONObject.put("is_auto_play", this.c);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("FeedPlayModel", th.getMessage());
        }
    }

    public void b(long j) {
        this.b = j;
    }
}
