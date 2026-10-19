package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class v {
    public static SharedPreferences a;

    public v(Context context, String str) {
        a = context.getSharedPreferences(str, 0);
    }

    public boolean a(String str) {
        return a.contains(str);
    }

    public boolean b(String str, boolean z) {
        return a.getBoolean(str, z);
    }

    public int c(String str, int i) {
        return a.getInt(str, i);
    }

    public String d(String str, String str2) {
        return a.getString(str, str2);
    }

    public Object e(String str) {
        Object obj = a.getAll().get(str);
        if (obj == null) {
            return null;
        }
        return obj.getClass();
    }

    public void f(String str) {
        a.edit().remove(str).apply();
    }

    public void g(String str, Object obj) {
        if (obj == JSONObject.NULL) {
            a.edit().remove(str).apply();
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls == String.class) {
            a.edit().putString(str, ((String) obj).replace("\"", "\\\"")).apply();
            return;
        }
        if (cls == Integer.class) {
            a.edit().putInt(str, ((Integer) obj).intValue()).apply();
            return;
        }
        if (cls == JSONObject.class) {
            a.edit().putString(str, "tjJSON@" + obj).apply();
            return;
        }
        if (cls == JSONArray.class) {
            a.edit().putString(str, "tjJSONArray@" + obj).apply();
            return;
        }
        if (cls == Double.class) {
            a.edit().putLong(str, Double.doubleToRawLongBits(((Double) obj).doubleValue())).apply();
        } else {
            if (cls != Boolean.class) {
                throw new IllegalArgumentException("Unknown value type.");
            }
            a.edit().putBoolean(str, ((Boolean) obj).booleanValue()).apply();
        }
    }
}
