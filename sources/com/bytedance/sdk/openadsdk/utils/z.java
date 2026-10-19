package com.bytedance.sdk.openadsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;

/* JADX INFO: compiled from: TestHelperUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class z {
    private static String a;

    public static String a(String str) {
        try {
            if (!a()) {
                return str;
            }
            String strS = com.bytedance.sdk.openadsdk.core.h.b().s();
            if (TextUtils.isEmpty(strS)) {
                return str;
            }
            Log.d("TestHelperUtils", "AnyDoorId=" + strS);
            return Uri.parse(str).buildUpon().appendQueryParameter(b(), strS).appendQueryParameter("aid", "5001121").toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    public static boolean a() {
        return com.bytedance.sdk.component.utils.l.d() && com.bytedance.sdk.openadsdk.core.h.b().q() && com.bytedance.sdk.openadsdk.core.h.b().r();
    }

    public static String b() {
        if (TextUtils.isEmpty(a)) {
            a = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return a;
    }

    public static boolean c() {
        return false;
    }
}
