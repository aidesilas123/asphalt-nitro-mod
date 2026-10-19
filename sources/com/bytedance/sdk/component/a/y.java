package com.bytedance.sdk.component.a;

import android.text.TextUtils;

/* JADX INFO: compiled from: SerializeHelper.java */
/* JADX INFO: loaded from: classes.dex */
class y {
    private static boolean a;

    static String a() {
        return "";
    }

    static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "{\"code\":1}";
        }
        String strSubstring = a ? str.substring(1, str.length() - 1) : "";
        String str2 = "{\"code\":1,\"__data\":" + str;
        if (strSubstring.isEmpty()) {
            return str2 + "}";
        }
        return str2 + "," + strSubstring + "}";
    }

    static String a(Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append("{\"code\":");
        sb.append(th instanceof s ? ((s) th).a : 0);
        sb.append("}");
        return sb.toString();
    }

    static void a(boolean z) {
        a = z;
    }
}
