package com.bytedance.sdk.openadsdk.core.model;

import androidx.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: compiled from: DeepLink.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {
    private String a;
    private String b;
    private int c;

    public String a() {
        return this.a;
    }

    public void a(int i) {
        this.c = i;
    }

    public void a(String str) {
        this.a = str;
    }

    public String b() {
        return this.b;
    }

    public void b(String str) {
        this.b = str;
    }

    public int c() {
        return this.c;
    }

    @Nullable
    public JSONObject d() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("u", this.a);
            jSONObject.put("ft", this.c);
            jSONObject.put("fu", this.b);
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
