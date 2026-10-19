package com.bytedance.sdk.openadsdk.b.b;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: EventStartListenerWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements b {
    b a;

    @Override // com.bytedance.sdk.openadsdk.b.b.b
    public void a(JSONObject jSONObject, long j) throws JSONException {
        b bVar = this.a;
        if (bVar != null) {
            bVar.a(jSONObject, j);
        }
        if (j <= 0) {
            j = System.currentTimeMillis();
        }
        jSONObject.put("event_ts", j);
    }
}
