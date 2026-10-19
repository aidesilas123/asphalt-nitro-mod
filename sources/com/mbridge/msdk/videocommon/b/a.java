package com.mbridge.msdk.videocommon.b;

import com.json.o2;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdParams.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private String a;
    private String b;

    private a(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public static a a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return new a(jSONObject.optString("appId"), jSONObject.optString(o2.i));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
