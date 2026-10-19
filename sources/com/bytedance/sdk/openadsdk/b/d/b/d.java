package com.bytedance.sdk.openadsdk.b.d.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: FeedBreakModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class d implements c {
    public long a;
    public long b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1216d = 0;

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
            jSONObject.put("break_reason", this.c);
            jSONObject.put("video_backup", this.f1216d);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("FeedBreakModel", th.getMessage());
        }
    }

    public void b(int i) {
        this.f1216d = i;
    }

    public void b(long j) {
        this.b = j;
    }
}
