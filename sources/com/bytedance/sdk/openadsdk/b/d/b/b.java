package com.bytedance.sdk.openadsdk.b.d.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: EndcardSkipModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements c {
    private long a;
    private long b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1215d;

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
            jSONObject.put("buffers_time", this.a);
            jSONObject.put("total_duration", this.b);
            jSONObject.put("vbtt_skip_type", this.c);
            jSONObject.put("skip_reason", this.f1215d);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("EndcardSkipModel", th.getMessage());
        }
    }

    public void b(int i) {
        this.f1215d = i;
    }

    public void b(long j) {
        this.b = j;
    }
}
