package com.json;

import com.json.h6;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b8 {
    static String a = "ManRewInst_";

    public static String a() {
        return String.valueOf(System.currentTimeMillis());
    }

    public static String a(s7 s7Var) {
        return (s7Var.g() ? h6.e.Banner : s7Var.k() ? h6.e.RewardedVideo : h6.e.Interstitial).toString();
    }

    public static String a(JSONObject jSONObject) {
        if (!jSONObject.optBoolean("rewarded")) {
            return jSONObject.optString("name");
        }
        return a + jSONObject.optString("name");
    }
}
