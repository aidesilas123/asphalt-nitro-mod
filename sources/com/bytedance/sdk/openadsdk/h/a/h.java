package com.bytedance.sdk.openadsdk.h.a;

import com.bytedance.sdk.component.a.r;
import com.bytedance.sdk.openadsdk.core.x;
import org.json.JSONObject;

/* JADX INFO: compiled from: SendCommerceLandingPageMeta.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends com.bytedance.sdk.component.a.e<JSONObject, JSONObject> {
    private final x a;

    public h(x xVar) {
        this.a = xVar;
    }

    public static void a(r rVar, x xVar) {
        rVar.a("commonConvert", new h(xVar));
    }

    @Override // com.bytedance.sdk.component.a.e
    public JSONObject a(JSONObject jSONObject, com.bytedance.sdk.component.a.f fVar) throws Exception {
        this.a.d(jSONObject);
        return null;
    }
}
