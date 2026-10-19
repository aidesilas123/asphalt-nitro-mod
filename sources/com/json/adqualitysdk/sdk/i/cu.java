package com.json.adqualitysdk.sdk.i;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class cu extends cx {
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Object m576(cj cjVar, List<Object> list) {
        cjVar.m454((JSONObject) cx.m592(list, 0, JSONObject.class));
        return null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static JSONObject m577(cj cjVar) {
        return cjVar.m451();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static JSONObject m578(List<Object> list) {
        return ju.m963((JSONObject) cx.m592(list, 0, JSONObject.class), list.size() > 1 ? ((Boolean) cx.m592(list, 1, Boolean.class)).booleanValue() : true);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Object m579(List<Object> list) {
        ju.m955((JSONObject) cx.m592(list, 0, JSONObject.class), (JSONObject) cx.m592(list, 1, JSONObject.class), list.size() > 2 ? ((Boolean) cx.m592(list, 2, Boolean.class)).booleanValue() : true);
        return null;
    }
}
