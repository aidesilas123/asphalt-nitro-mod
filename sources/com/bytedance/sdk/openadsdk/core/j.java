package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import androidx.annotation.RequiresPermission;
import java.util.Locale;

/* JADX INFO: compiled from: IdUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {
    private static String a;
    private static String b;
    private static String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f1543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f1544e;

    public static String a() {
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
            String language = locale != null ? locale.getLanguage() : "";
            if (locale == null || !"zh".equals(language)) {
                return language;
            }
            String string = locale.toString();
            if (locale.toString().length() >= 5) {
                string = string.substring(0, 5);
            }
            return Locale.SIMPLIFIED_CHINESE.toString().equals(string) ? "zh" : "zh-Hant";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        f(context);
        return a;
    }

    public static void a(Context context, String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(a)) {
            c.a(context).a("did", str);
            a = str;
        }
        if (TextUtils.isEmpty(a)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.e.c.b(a);
    }

    private static String b() {
        StringBuilder sb = new StringBuilder();
        try {
            if (com.bytedance.sdk.openadsdk.utils.t.e()) {
                sb.append("MIUI-");
            } else if (com.bytedance.sdk.openadsdk.utils.t.b()) {
                sb.append("FLYME-");
            } else {
                String strN = com.bytedance.sdk.openadsdk.utils.t.n();
                if (com.bytedance.sdk.openadsdk.utils.t.a(strN)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(strN)) {
                    sb.append(strN);
                    sb.append("-");
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Exception unused) {
        }
        return sb.toString();
    }

    public static String b(Context context) {
        if (c == null && !f1544e) {
            synchronized (j.class) {
                if (!f1544e) {
                    e(context);
                }
            }
        }
        return c;
    }

    public static String c(Context context) {
        if (TextUtils.isEmpty(f1543d) && !f1544e) {
            synchronized (j.class) {
                if (!f1544e) {
                    e(context);
                }
            }
        }
        return f1543d;
    }

    private static Context d(Context context) {
        return context == null ? o.a() : context;
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_WIFI_STATE"})
    @SuppressLint({"HardwareIds"})
    private static void e(Context context) {
        Context contextD;
        if (f1544e || (contextD = d(context)) == null) {
            return;
        }
        b = b();
        c = String.valueOf(Build.TIME);
        f1543d = c.a(contextD).b("uuid", (String) null);
        f1544e = true;
    }

    private static void f(Context context) {
        Context contextD = d(context);
        if (contextD == null) {
            return;
        }
        a = c.a(contextD).b("did", (String) null);
    }
}
