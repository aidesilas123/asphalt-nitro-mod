package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;

/* JADX INFO: compiled from: ExternalSpUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {
    public static String a() {
        return b("any_door_id", null);
    }

    public static void a(String str) {
        a("any_door_id", str);
    }

    private static void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.multipro.d.d.a((String) null, str, str2);
        } catch (Throwable unused) {
        }
    }

    private static String b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return com.bytedance.sdk.openadsdk.multipro.d.d.b(null, str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }
}
