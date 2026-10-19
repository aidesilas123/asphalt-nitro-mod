package com.bytedance.sdk.openadsdk.component.reward;

import android.text.TextUtils;

/* JADX INFO: compiled from: SpCache.java */
/* JADX INFO: loaded from: classes2.dex */
class m {
    private final String a;

    m(String str) {
        this.a = TextUtils.isEmpty(str) ? "" : str;
    }

    private String e(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "0";
        }
        return this.a + "_cache_" + str;
    }

    String a(String str) {
        try {
            return com.bytedance.sdk.openadsdk.multipro.d.d.b(e(str), "material_data", null);
        } catch (Throwable unused) {
            return null;
        }
    }

    void a(String str, String str2) {
        try {
            com.bytedance.sdk.openadsdk.multipro.d.d.a(e(str), "has_played", Boolean.FALSE);
            com.bytedance.sdk.openadsdk.multipro.d.d.a(e(str), "create_time", Long.valueOf(System.currentTimeMillis()));
            com.bytedance.sdk.openadsdk.multipro.d.d.a(e(str), "material_data", str2);
        } catch (Throwable unused) {
        }
    }

    long b(String str) {
        try {
            return com.bytedance.sdk.openadsdk.multipro.d.d.a(e(str), "create_time", 0L);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    boolean c(String str) {
        try {
            return com.bytedance.sdk.openadsdk.multipro.d.d.a(e(str), "has_played", true);
        } catch (Throwable unused) {
            return true;
        }
    }

    void d(String str) {
        try {
            com.bytedance.sdk.openadsdk.multipro.d.d.a(e(str));
        } catch (Throwable unused) {
        }
    }
}
