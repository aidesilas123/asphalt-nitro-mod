package com.bytedance.sdk.openadsdk.multipro.d;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.component.e.a.g;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.o;
import com.json.v4;
import java.util.HashSet;

/* JADX INFO: compiled from: SPMultiHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static HashSet<String> a = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.multipro.d.a.1
        {
            add("did");
            add("app_id");
            add("global_coppa");
            add("tt_gdpr");
            add("global_ccpa");
            add("keywords");
            add("extra_data");
            add(v4.w0);
            add("sdk_app_sha1");
            add("uuid");
            add("android_system_ua");
            add("sdk_local_web_ua");
            add("sdk_local_rom_info");
        }
    };

    protected static float a(Context context, String str, String str2, float f2) {
        String strA = a(str, str2);
        if (Build.VERSION.SDK_INT >= 19 && h.e(strA)) {
            return com.bytedance.sdk.component.b.a(context, strA).a(str2, f2);
        }
        SharedPreferences sharedPreferencesA = b.a(context, strA);
        return sharedPreferencesA == null ? f2 : sharedPreferencesA.getFloat(str2, f2);
    }

    protected static int a(Context context, String str, String str2, int i) {
        String strA = a(str, str2);
        if (Build.VERSION.SDK_INT >= 19 && h.e(strA)) {
            return com.bytedance.sdk.component.b.a(context, strA).a(str2, i);
        }
        SharedPreferences sharedPreferencesA = b.a(context, strA);
        return sharedPreferencesA == null ? i : sharedPreferencesA.getInt(str2, i);
    }

    public static int a(String str, String str2, int i) {
        if (!a()) {
            return i;
        }
        if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
            return a(c(), str, str2, i);
        }
        g gVarB = b();
        if (gVarB != null) {
            String strA = gVarB.a(Uri.parse(d() + "int/" + str2 + b(str)));
            if (strA != null && !strA.equals("null")) {
                return Integer.parseInt(strA);
            }
        }
        return i;
    }

    protected static long a(Context context, String str, String str2, long j) {
        String strA = a(str, str2);
        if (Build.VERSION.SDK_INT >= 19 && h.e(strA)) {
            return com.bytedance.sdk.component.b.a(context, strA).a(str2, j);
        }
        SharedPreferences sharedPreferencesA = b.a(context, strA);
        return sharedPreferencesA == null ? j : sharedPreferencesA.getLong(str2, j);
    }

    public static long a(String str, String str2, long j) {
        if (!a()) {
            return j;
        }
        if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
            return a(c(), str, str2, j);
        }
        g gVarB = b();
        if (gVarB != null) {
            String strA = gVarB.a(Uri.parse(d() + "long/" + str2 + b(str)));
            if (strA != null && !strA.equals("null")) {
                return Long.parseLong(strA);
            }
        }
        return j;
    }

    protected static String a(Context context, String str, String str2, String str3) {
        String strA = a(str, str2);
        if (Build.VERSION.SDK_INT >= 19 && h.e(strA)) {
            return com.bytedance.sdk.component.b.a(context, strA).a(str2, str3);
        }
        SharedPreferences sharedPreferencesA = b.a(context, strA);
        return sharedPreferencesA == null ? str3 : sharedPreferencesA.getString(str2, str3);
    }

    public static String a(String str, String str2) {
        return a.contains(str2) ? "pag_sp_bad_par" : str;
    }

    public static void a(String str) {
        if (a()) {
            try {
                if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                    b.b(c(), str);
                    return;
                }
                g gVarB = b();
                if (gVarB != null) {
                    gVarB.a(Uri.parse(d() + "clean" + b(str)), null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void a(String str, String str2, Boolean bool) {
        if (a()) {
            if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                b.a(c(), str, str2, bool);
                return;
            }
            g gVarB = b();
            if (gVarB != null) {
                Uri uri = Uri.parse(d() + TypedValues.Custom.S_BOOLEAN + "/" + str2 + b(str));
                ContentValues contentValues = new ContentValues();
                contentValues.put("value", bool);
                gVarB.a(uri, contentValues, null, null);
            }
        }
    }

    public static synchronized void a(String str, String str2, Float f2) {
        if (a()) {
            if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                b.a(c(), str, str2, f2);
                return;
            }
            g gVarB = b();
            if (gVarB != null) {
                Uri uri = Uri.parse(d() + TypedValues.Custom.S_FLOAT + "/" + str2 + b(str));
                ContentValues contentValues = new ContentValues();
                contentValues.put("value", f2);
                gVarB.a(uri, contentValues, null, null);
            }
        }
    }

    public static synchronized void a(String str, String str2, Integer num) {
        if (a()) {
            if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                b.a(c(), str, str2, num);
                return;
            }
            g gVarB = b();
            if (gVarB != null) {
                Uri uri = Uri.parse(d() + "int/" + str2 + b(str));
                ContentValues contentValues = new ContentValues();
                contentValues.put("value", num);
                gVarB.a(uri, contentValues, null, null);
            }
        }
    }

    public static synchronized void a(String str, String str2, Long l) {
        if (a()) {
            if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                b.a(c(), str, str2, l);
                return;
            }
            g gVarB = b();
            if (gVarB != null) {
                Uri uri = Uri.parse(d() + "long/" + str2 + b(str));
                ContentValues contentValues = new ContentValues();
                contentValues.put("value", l);
                gVarB.a(uri, contentValues, null, null);
            }
        }
    }

    public static synchronized void a(String str, String str2, String str3) {
        if (a()) {
            if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                b.a(c(), str, str2, str3);
                return;
            }
            g gVarB = b();
            if (gVarB != null) {
                Uri uri = Uri.parse(d() + TypedValues.Custom.S_STRING + "/" + str2 + b(str));
                ContentValues contentValues = new ContentValues();
                contentValues.put("value", str3);
                gVarB.a(uri, contentValues, null, null);
            }
        }
    }

    public static boolean a() {
        if (o.a() != null) {
            return true;
        }
        l.d("The context of SPHelper is null, please initialize sdk in main process");
        return false;
    }

    protected static boolean a(Context context, String str, String str2, boolean z) {
        String strA = a(str, str2);
        if (Build.VERSION.SDK_INT >= 19 && h.e(strA)) {
            return com.bytedance.sdk.component.b.a(context, strA).a(str2, z);
        }
        SharedPreferences sharedPreferencesA = b.a(context, strA);
        return sharedPreferencesA == null ? z : sharedPreferencesA.getBoolean(str2, z);
    }

    public static boolean a(String str, String str2, boolean z) {
        if (!a()) {
            return z;
        }
        if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
            return a(c(), str, str2, z);
        }
        g gVarB = b();
        if (gVarB != null) {
            String strA = gVarB.a(Uri.parse(d() + TypedValues.Custom.S_BOOLEAN + "/" + str2 + b(str)));
            if (strA != null && !strA.equals("null")) {
                return Boolean.parseBoolean(strA);
            }
        }
        return z;
    }

    private static g b() {
        try {
            if (a()) {
                return com.bytedance.sdk.openadsdk.multipro.a.a.a(o.a());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return "?sp_file_name=" + str;
    }

    public static String b(String str, String str2, String str3) {
        if (!a()) {
            return str3;
        }
        if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
            return a(c(), str, str2, str3);
        }
        g gVarB = b();
        if (gVarB != null) {
            String strA = gVarB.a(Uri.parse(d() + TypedValues.Custom.S_STRING + "/" + str2 + b(str)));
            if (strA != null && !strA.equals("null")) {
                return strA;
            }
        }
        return str3;
    }

    public static void b(String str, String str2) {
        if (a()) {
            try {
                if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                    b.b(c(), str, str2);
                    return;
                }
                g gVarB = b();
                if (gVarB != null) {
                    gVarB.a(Uri.parse(d() + "long/" + str2 + b(str)), null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static Context c() {
        return o.a();
    }

    private static String d() {
        return com.bytedance.sdk.openadsdk.multipro.d.b + "/t_sp/";
    }
}
