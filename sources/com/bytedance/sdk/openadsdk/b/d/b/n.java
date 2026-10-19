package com.bytedance.sdk.openadsdk.b.d.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: PlayErrorModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class n implements c {
    private long a;
    private long b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f1221d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f1222e;

    public n(com.bykv.vk.openvk.component.video.api.c.a aVar) {
        this.c = aVar.a();
        this.f1221d = aVar.b();
        this.f1222e = aVar.c();
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
            jSONObject.put("error_code", this.c);
            jSONObject.put("extra_error_code", this.f1221d);
            jSONObject.put("error_message", this.f1222e);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("PlayErrorModel", th.getMessage());
        }
    }

    public void b(long j) {
        this.b = j;
    }
}
