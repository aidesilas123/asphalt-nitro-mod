package com.bytedance.sdk.openadsdk.utils;

/* JADX INFO: compiled from: LastShowAdSP.java */
/* JADX INFO: loaded from: classes2.dex */
public class m {
    public static String a() {
        return "sp_last_ad_show_cache_show_ad";
    }

    public static void a(String str, String str2) {
        try {
            com.bytedance.sdk.openadsdk.multipro.d.d.a(a(), "show_time", Long.valueOf(System.currentTimeMillis()));
            com.bytedance.sdk.openadsdk.multipro.d.d.a(a(), "material_data", str);
            com.bytedance.sdk.openadsdk.multipro.d.d.a(a(), "show_ad_tag", str2);
        } catch (Throwable unused) {
        }
    }

    public static String b() {
        try {
            return com.bytedance.sdk.openadsdk.multipro.d.d.b(a(), "material_data", null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String c() {
        try {
            return com.bytedance.sdk.openadsdk.multipro.d.d.b(a(), "show_ad_tag", null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static long d() {
        try {
            return com.bytedance.sdk.openadsdk.multipro.d.d.a(a(), "show_time", 0L);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static void e() {
        try {
            com.bytedance.sdk.openadsdk.multipro.d.d.a(a());
        } catch (Throwable unused) {
        }
    }
}
