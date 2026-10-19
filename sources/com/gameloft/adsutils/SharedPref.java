package com.gameloft.adsutils;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes2.dex */
public class SharedPref {
    public static String Read(String str, String str2, String str3) {
        try {
            return AdsUtils.GetApplicationContext().getSharedPreferences(str2, 0).getString(str, str3);
        } catch (Exception unused) {
            return str3;
        }
    }

    public static boolean Remove(String str, String str2) {
        try {
            SharedPreferences sharedPreferences = AdsUtils.GetApplicationContext().getSharedPreferences(str2, 0);
            if (!sharedPreferences.contains(str)) {
                return true;
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.remove(str);
            editorEdit.apply();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    static boolean Save(String str, String str2, String str3) {
        try {
            SharedPreferences.Editor editorEdit = AdsUtils.GetApplicationContext().getSharedPreferences(str2, 0).edit();
            editorEdit.putString(str, str3);
            editorEdit.apply();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
