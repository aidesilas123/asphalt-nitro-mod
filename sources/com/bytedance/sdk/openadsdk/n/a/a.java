package com.bytedance.sdk.openadsdk.n.a;

import org.json.JSONObject;

/* JADX INFO: compiled from: PAGAdViewInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private final int a;
    private final int b;
    private final float c;

    public a(int i, int i2, float f2) {
        this.a = i;
        this.b = i2;
        this.c = f2;
    }

    public static JSONObject a(a aVar) throws Throwable {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", aVar.a);
        jSONObject.put("height", aVar.b);
        jSONObject.put("alpha", aVar.c);
        return jSONObject;
    }
}
