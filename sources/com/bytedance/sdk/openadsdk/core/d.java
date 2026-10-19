package com.bytedance.sdk.openadsdk.core;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ConvertTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static void a(com.bytedance.sdk.openadsdk.core.model.q qVar, String str, int i, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("type", i);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.b.c.b(qVar, str, "convert_track", jSONObject);
    }
}
