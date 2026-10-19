package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.MBridgeConstans;

/* JADX INFO: compiled from: SameLogTool.java */
/* JADX INFO: loaded from: classes4.dex */
public final class aa {
    public static boolean a = true;
    public static boolean b = true;
    public static boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f7203d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f7204e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f7205f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f7206g = true;
    public static boolean h;

    static {
        if (MBridgeConstans.DEBUG) {
            return;
        }
        a = false;
        b = false;
        c = false;
        f7203d = false;
        f7204e = false;
        f7205f = false;
        f7206g = false;
        h = false;
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return "MBRIDGE_" + str;
    }

    public static void a(String str, String str2) {
        if (!b || TextUtils.isEmpty(str2)) {
            return;
        }
        Log.d(a(str), str2);
    }

    public static void a(String str, String str2, Throwable th) {
        if (!f7203d || TextUtils.isEmpty(str2)) {
            return;
        }
        Log.w(a(str), str2, th);
    }

    public static void a(String str, Throwable th) {
        if (!f7203d || th == null) {
            return;
        }
        Log.w(a(str), th);
    }

    public static void b(String str, String str2) {
        if (!c || TextUtils.isEmpty(str2)) {
            return;
        }
        Log.i(a(str), str2);
    }

    public static void b(String str, String str2, Throwable th) {
        if (!f7204e || str2 == null || th == null) {
            return;
        }
        Log.e(a(str), str2, th);
    }

    public static void c(String str, String str2) {
        if (!f7203d || TextUtils.isEmpty(str2)) {
            return;
        }
        Log.w(a(str), str2);
    }

    public static void d(String str, String str2) {
        if (!f7204e || str2 == null) {
            return;
        }
        Log.e(a(str), str2);
    }
}
