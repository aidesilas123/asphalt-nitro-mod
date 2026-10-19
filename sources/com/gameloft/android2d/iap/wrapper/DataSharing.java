package com.gameloft.android2d.iap.wrapper;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DataSharing {
    private static ArrayList<String> a = new ArrayList<>();
    private static Context b = null;

    public static void AddOrUpdate(Uri uri, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", str2);
        try {
            if (b.getContentResolver().update(uri, contentValues, "key='" + str + "'", null) < 1) {
                contentValues.put("key", str);
                contentValues.put("value", str2);
                b.getContentResolver().insert(uri, contentValues);
            }
        } catch (Exception unused) {
        }
    }

    public static void deleteSharedValue(String str) {
        int size = a.size();
        for (int i = 0; i < size; i++) {
            Uri uri = Uri.parse("content://" + a.get(i) + "/key/");
            try {
                b.getContentResolver().delete(uri, "key='" + str + "'", null);
            } catch (Exception unused) {
            }
        }
    }

    public static void doNativeInit() {
        nativeInit();
    }

    public static Context getContext() {
        return b;
    }

    public static String getSharedValue(String str) {
        String[] strArr = {"key", "value"};
        String str2 = "";
        Uri uri = Uri.parse("content://" + b.getPackageName() + ".KeyProvider/key/");
        try {
            Cursor cursorQuery = b.getContentResolver().query(uri, strArr, "key='" + str + "'", null, "value ASC ");
            if (cursorQuery != null) {
                if (cursorQuery.moveToFirst()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("value"));
                    try {
                        cursorQuery.close();
                        return string;
                    } catch (Exception unused) {
                        str2 = string;
                    }
                } else {
                    cursorQuery.close();
                }
            }
        } catch (Exception unused2) {
        }
        int size = a.size();
        String string2 = str2;
        for (int i = 0; i < size; i++) {
            Uri uri2 = Uri.parse("content://" + a.get(i) + "/key/");
            try {
                Cursor cursorQuery2 = b.getContentResolver().query(uri2, strArr, "key='" + str + "'", null, "value ASC ");
                if (cursorQuery2 != null && cursorQuery2.moveToFirst()) {
                    string2 = cursorQuery2.getString(cursorQuery2.getColumnIndex("value"));
                    cursorQuery2.close();
                    AddOrUpdate(uri, str, string2);
                    return string2;
                }
            } catch (Exception unused3) {
            }
        }
        return string2;
    }

    public static void init(Context context) {
        b = context;
        List<ProviderInfo> listQueryContentProviders = context.getPackageManager().queryContentProviders((String) null, 0, 0);
        for (int i = 0; i < listQueryContentProviders.size(); i++) {
            String str = listQueryContentProviders.get(i).authority;
            if (str.startsWith("com.gameloft")) {
                a.add(str);
            }
        }
    }

    public static boolean isSharedValue(String str) {
        String sharedValue = getSharedValue(str);
        return (sharedValue == null || sharedValue.equals("")) ? false : true;
    }

    public static native void nativeInit();

    public static void setSharedValue(String str, String str2) {
        int size = a.size();
        for (int i = 0; i < size; i++) {
            AddOrUpdate(Uri.parse("content://" + a.get(i) + "/key/"), str, str2);
        }
    }
}
