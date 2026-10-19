package com.kidoz.sdk.api.general.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public class SharedPreferencesUtils {
    private static final String SDK_SHARED_PREFERENCES_FILE_NAME = "SDK_SHARED_PREFERENCES_FILE_NAME";

    private static SharedPreferences getSharedPreferences(Context context) {
        return context.getSharedPreferences(SDK_SHARED_PREFERENCES_FILE_NAME, 0);
    }

    public static boolean hasBooleanSharedPreferencesData(Context context, String str) {
        if (context == null || str == null) {
            return false;
        }
        try {
            return getSharedPreferences(context).contains(str);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean loadBooleanValue(Context context, String str) {
        if (context == null || str == null) {
            return false;
        }
        try {
            return getSharedPreferences(context).getBoolean(str, false);
        } catch (Exception unused) {
            return false;
        }
    }

    public static long loadLongValue(Context context, String str, long j) {
        return getSharedPreferences(context).getLong(str, j);
    }

    public static String loadStringValue(Context context, String str) {
        if (context == null || str == null) {
            return null;
        }
        try {
            return getSharedPreferences(context).getString(str, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void removeSharedPreferencesData(Context context, String str) {
        if (context == null || str == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = getSharedPreferences(context).edit();
        editorEdit.remove(str);
        editorEdit.apply();
    }

    public static void saveBooleanValue(Context context, String str, boolean z) {
        if (context != null) {
            try {
                SharedPreferences sharedPreferences = getSharedPreferences(context);
                if (str != null) {
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putBoolean(str, z);
                    editorEdit.apply();
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void saveLongValue(Context context, String str, long j) {
        SharedPreferences.Editor editorEdit = getSharedPreferences(context).edit();
        editorEdit.putLong(str, j);
        editorEdit.apply();
    }

    public static void saveStringValue(Context context, String str, String str2) {
        if (context != null) {
            SharedPreferences sharedPreferences = getSharedPreferences(context);
            if (str != null) {
                try {
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString(str, str2);
                    editorEdit.apply();
                } catch (Exception unused) {
                }
            }
        }
    }
}
