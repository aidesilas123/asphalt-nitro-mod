package com.bytedance.sdk.openadsdk.multipro.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.component.b;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.core.h;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: SPMultiHelperImpl.java */
/* JADX INFO: loaded from: classes2.dex */
class b {
    private static SoftReference<ConcurrentHashMap<String, Map<String, Object>>> a;

    @Nullable
    public static SharedPreferences a(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            return context.getSharedPreferences(a(str), 0);
        } catch (Throwable th) {
            l.d("SPMultiHelperImpl", "getSharedPreferences error ", th.getMessage());
            return null;
        }
    }

    private static Object a(String str, String str2) {
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap;
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = a;
        if (softReference == null || (concurrentHashMap = softReference.get()) == null || (map = concurrentHashMap.get(a(str))) == null) {
            return null;
        }
        return map.get(str2);
    }

    static String a(Context context, String str, String str2, String str3) {
        Object objA = a(str, str2);
        if (objA != null) {
            return String.valueOf(objA);
        }
        Object objB = b(context, str, str2, str3);
        a(str, str2, objB);
        return String.valueOf(objB);
    }

    private static String a(String str) {
        return TextUtils.isEmpty(str) ? "sphelper_ttopenadsdk" : str;
    }

    static synchronized <T> void a(Context context, String str, String str2, T t) {
        String strA = a.a(str, str2);
        if (Build.VERSION.SDK_INT >= 19 && h.e(strA)) {
            com.bytedance.sdk.component.b bVarA = com.bytedance.sdk.component.b.a(context, strA);
            if (t.equals(a(strA, str2))) {
                return;
            }
            b.c cVarB = bVarA.b();
            a(cVarB, str2, (Object) t);
            cVarB.apply();
            return;
        }
        SharedPreferences sharedPreferencesA = a(context, strA);
        if (sharedPreferencesA == null) {
            return;
        }
        if (t.equals(a(strA, str2))) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
        a(editorEdit, str2, t);
        editorEdit.apply();
        a(strA, str2, t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected static <T> void a(SharedPreferences.Editor editor, String str, T t) {
        if (t instanceof Integer) {
            editor.putInt(str, ((Integer) t).intValue());
        }
        if (t instanceof Long) {
            editor.putLong(str, ((Long) t).longValue());
        }
        if (t instanceof Float) {
            editor.putFloat(str, ((Float) t).floatValue());
        }
        if (t instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) t).booleanValue());
        }
        if (t instanceof String) {
            editor.putString(str, (String) t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected static <T> void a(b.c cVar, String str, T t) {
        if (t instanceof Integer) {
            cVar.putInt(str, ((Integer) t).intValue());
        }
        if (t instanceof Long) {
            cVar.putLong(str, ((Long) t).longValue());
        }
        if (t instanceof Float) {
            cVar.putFloat(str, ((Float) t).floatValue());
        }
        if (t instanceof Boolean) {
            cVar.putBoolean(str, ((Boolean) t).booleanValue());
        }
        if (t instanceof String) {
            cVar.putString(str, (String) t);
        }
    }

    private static void a(String str, String str2, Object obj) {
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = a;
        if (softReference == null || softReference.get() == null) {
            a = new SoftReference<>(new ConcurrentHashMap());
        }
        String strA = a(str);
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap = a.get();
        if (concurrentHashMap.get(strA) == null) {
            concurrentHashMap.put(strA, new HashMap());
        }
        concurrentHashMap.get(strA).put(str2, obj);
    }

    static boolean a(Context context, String str, String str2) {
        String strA = a.a(str, str2);
        if (Build.VERSION.SDK_INT >= 19 && h.e(strA)) {
            return com.bytedance.sdk.component.b.a(context, strA).a(str2);
        }
        SharedPreferences sharedPreferencesA = a(context, strA);
        return sharedPreferencesA != null && sharedPreferencesA.contains(str2);
    }

    private static Object b(Context context, String str, String str2, String str3) {
        String strA = a(str);
        if (!a(context, strA, str2)) {
            return null;
        }
        if (str3.equalsIgnoreCase(TypedValues.Custom.S_STRING)) {
            return a.a(context, strA, str2, (String) null);
        }
        if (str3.equalsIgnoreCase(TypedValues.Custom.S_BOOLEAN)) {
            return Boolean.valueOf(a.a(context, strA, str2, false));
        }
        if (str3.equalsIgnoreCase("int")) {
            return Integer.valueOf(a.a(context, strA, str2, 0));
        }
        if (str3.equalsIgnoreCase("long")) {
            return Long.valueOf(a.a(context, strA, str2, 0L));
        }
        if (str3.equalsIgnoreCase(TypedValues.Custom.S_FLOAT)) {
            return Float.valueOf(a.a(context, strA, str2, 0.0f));
        }
        if (str3.equalsIgnoreCase("string_set")) {
            return a.a(context, strA, str2, (String) null);
        }
        return null;
    }

    static void b(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 19 && h.e(str)) {
            com.bytedance.sdk.component.b.a(context, str).b().clear().apply();
            b(str);
            return;
        }
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
        editorEdit.clear();
        editorEdit.apply();
        b(str);
    }

    public static void b(Context context, String str, String str2) {
        try {
            String strA = a.a(str, str2);
            if (Build.VERSION.SDK_INT >= 19 && h.e(strA)) {
                com.bytedance.sdk.component.b.a(context, strA).b().remove(str2).apply();
                return;
            }
            SharedPreferences sharedPreferencesA = a(context, strA);
            if (sharedPreferencesA == null) {
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
            editorEdit.remove(str2);
            editorEdit.apply();
            SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = a;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            Map<String, Object> map = a.get().get(a(strA));
            if (map != null && map.size() != 0) {
                map.remove(str2);
            }
        } catch (Throwable unused) {
        }
    }

    private static void b(String str) {
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = a;
        if (softReference == null || softReference.get() == null || (map = a.get().get(a(str))) == null) {
            return;
        }
        map.clear();
    }

    static Map<String, ?> c(Context context, String str) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA == null) {
            return null;
        }
        return sharedPreferencesA.getAll();
    }
}
