package com.bytedance.sdk.component.f.d;

import android.util.Log;
import com.bytedance.sdk.component.utils.l;

/* JADX INFO: compiled from: NLogger.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static boolean a = false;
    private static int b = 4;

    public static void a(String str) {
        a("NetLog", str);
    }

    public static void a(String str, String str2) {
        if (a && str2 != null && b <= 2) {
            Log.v(l.e(str), str2);
        }
    }

    public static boolean a() {
        return a;
    }

    public static void b(String str, String str2) {
        if (a && str2 != null && b <= 4) {
            Log.i(l.e(str), str2);
        }
    }
}
