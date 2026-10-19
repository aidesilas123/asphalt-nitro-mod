package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.o;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.j;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.facebook.internal.security.CertificateUtil;

/* JADX INFO: compiled from: AppInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static String a;

    public static String a() {
        return "open_news";
    }

    public static String a(Context context) {
        return j.a(context);
    }

    private static boolean a(String str) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str) || (strArrSplit = str.split(CertificateUtil.DELIMITER)) == null || strArrSplit.length < 20) {
            return false;
        }
        for (String str2 : strArrSplit) {
            if (!"00".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public static String b() {
        return "1371";
    }

    public static String c() {
        return BuildConfig.VERSION_NAME;
    }

    public static String d() {
        return ac.g();
    }

    public static String e() {
        return com.bytedance.sdk.openadsdk.core.h.b().e();
    }

    public static String f() {
        return o.g(com.bytedance.sdk.openadsdk.core.o.a());
    }

    public static String g() {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        String strA = com.bytedance.sdk.openadsdk.core.h.a("sdk_app_sha1", 259200000L);
        a = strA;
        if (a(strA)) {
            return a;
        }
        String strA2 = com.bytedance.sdk.component.utils.c.a(com.bytedance.sdk.openadsdk.core.o.a());
        a = strA2;
        if (a(strA2)) {
            String upperCase = a.toUpperCase();
            a = upperCase;
            com.bytedance.sdk.openadsdk.core.h.a("sdk_app_sha1", upperCase);
            return a;
        }
        return "";
    }
}
