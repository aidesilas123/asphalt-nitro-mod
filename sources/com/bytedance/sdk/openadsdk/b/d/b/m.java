package com.bytedance.sdk.openadsdk.b.d.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: PlayBufferModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class m implements c {
    public long a;
    public int b;
    public long c;

    public void a(int i) {
        this.b = i;
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
            jSONObject.put("buffers_time", this.a);
            jSONObject.put("buffers_count", this.b);
            jSONObject.put("total_duration", this.c);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("PlayBufferModel", th.getMessage());
        }
    }

    public void b(long j) {
        this.c = j;
    }
}
