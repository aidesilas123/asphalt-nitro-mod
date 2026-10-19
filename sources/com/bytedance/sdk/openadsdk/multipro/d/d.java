package com.bytedance.sdk.openadsdk.multipro.d;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.b;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.o;

/* JADX INFO: compiled from: TTSaveHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static int a(String str, String str2, int i) {
        return a() ? i : com.bytedance.sdk.openadsdk.multipro.b.c() ? a.a(b(str), str2, i) : a.a(o.a(), b(str), str2, i);
    }

    public static long a(String str, String str2, long j) {
        return a() ? j : com.bytedance.sdk.openadsdk.multipro.b.c() ? a.a(b(str), str2, j) : a.a(o.a(), b(str), str2, j);
    }

    public static void a(String str) {
        if (a()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            a.a(b(str));
        } else {
            b.b(o.a(), b(str));
        }
    }

    public static void a(String str, String str2) {
        if (a()) {
            return;
        }
        try {
            if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
                a.b(b(str), str2);
            } else {
                b.b(o.a(), b(str), str2);
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(String str, String str2, Boolean bool) {
        if (a()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            a.a(b(str), str2, bool);
        } else {
            a(b(str), str2, bool);
        }
    }

    public static void a(String str, String str2, Integer num) {
        if (a()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            a.a(b(str), str2, num);
        } else {
            a(b(str), str2, num);
        }
    }

    public static void a(String str, String str2, Long l) {
        if (a()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            a.a(b(str), str2, l);
        } else {
            a(b(str), str2, l);
        }
    }

    private static <T> void a(String str, String str2, T t) {
        String strA = a.a(str, str2);
        if (Build.VERSION.SDK_INT >= 19 && h.e(strA)) {
            b.c cVarB = com.bytedance.sdk.component.b.a(o.a(), b(strA)).b();
            b.a(cVarB, str2, (Object) t);
            cVarB.apply();
        } else {
            SharedPreferences sharedPreferencesA = b.a(o.a(), b(strA));
            if (sharedPreferencesA == null) {
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
            b.a(editorEdit, str2, t);
            editorEdit.apply();
        }
    }

    public static void a(String str, String str2, String str3) {
        if (a()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            a.a(b(str), str2, str3);
        } else {
            a(b(str), str2, str3);
        }
    }

    private static boolean a() {
        return o.a() == null;
    }

    public static boolean a(String str, String str2, boolean z) {
        return a() ? z : com.bytedance.sdk.openadsdk.multipro.b.c() ? a.a(b(str), str2, z) : a.a(o.a(), b(str), str2, z);
    }

    private static String b(String str) {
        return TextUtils.isEmpty(str) ? "tt_sp" : str;
    }

    public static String b(String str, String str2, String str3) {
        return a() ? str3 : com.bytedance.sdk.openadsdk.multipro.b.c() ? a.b(b(str), str2, str3) : a.a(o.a(), b(str), str2, str3);
    }
}
