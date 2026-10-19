package com.bytedance.sdk.component.g.b;

import org.json.JSONObject;

/* JADX INFO: compiled from: ThreadLogModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public int a;
    public int b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1072d;

    public a(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.f1072d = i4;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_thread_num", this.a);
            jSONObject.put("sdk_max_thread_num", this.b);
            jSONObject.put("app_thread_num", this.c);
            jSONObject.put("app_max_thread_num", this.f1072d);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }
}
