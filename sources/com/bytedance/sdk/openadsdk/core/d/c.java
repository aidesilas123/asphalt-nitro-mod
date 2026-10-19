package com.bytedance.sdk.openadsdk.core.d;

import com.bytedance.sdk.component.f.b.d;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.utils.ac;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: FrequentCallEventHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static void a(String str, long j) {
        JSONObject jSONObjectB = b(str, j);
        d dVarB = com.bytedance.sdk.openadsdk.k.c.a().b().b();
        dVarB.a(ac.d("/api/ad/union/sdk/stats/"));
        dVarB.c(jSONObjectB.toString());
        dVarB.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.core.d.c.1
            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, com.bytedance.sdk.component.f.b bVar) {
            }

            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, IOException iOException) {
                l.c("uploadFrequentEvent", iOException.getMessage());
            }
        });
    }

    private static JSONObject b(String str, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "over_freq");
            jSONObject.put("rit", str);
            jSONObject.put("ad_sdk_version", BuildConfig.VERSION_NAME);
            jSONObject.put("timestamp", j);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
