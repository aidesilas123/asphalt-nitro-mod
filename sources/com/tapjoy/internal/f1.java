package com.tapjoy.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.text.TextUtils;
import com.tapjoy.TapjoyLog;
import com.tapjoy.TapjoyUtil;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f1 {
    public static String a(Context context) {
        File file;
        SharedPreferences sharedPreferences = context.getSharedPreferences("tjcPrefrences", 0);
        synchronized (v1.class) {
            if (v1.c == null) {
                v1.c = context.getDir("fiverocks", 0);
            }
            file = v1.c;
        }
        File file2 = new File(file, "deviceid");
        String strA = null;
        String string = sharedPreferences.getString("tapjoyAnalyticsId", null);
        if (TextUtils.isEmpty(string)) {
            if (file2.exists()) {
                try {
                    strA = g7.a(file2);
                } catch (IOException unused) {
                }
                strA = r9.a(strA);
            }
            string = strA == null ? UUID.randomUUID().toString() : strA;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("tapjoyAnalyticsId", string);
            editorEdit.apply();
        }
        return string;
    }

    public static String b(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if ("9774d56d682e549c".equals(string)) {
            return null;
        }
        return r9.a(string);
    }

    public static String c(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("tjcPrefrences", 0);
        String string = sharedPreferences.getString("tapjoyInstallId", "");
        if (string != null && string.length() != 0) {
            return string;
        }
        try {
            string = TapjoyUtil.SHA256(UUID.randomUUID().toString() + System.currentTimeMillis());
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("tapjoyInstallId", string);
            editorEdit.apply();
            return string;
        } catch (Exception e2) {
            TapjoyLog.e(f1.class.getSimpleName(), "Error generating install id: " + e2);
            return string;
        }
    }

    public static String d(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("tjcPrefrences", 0);
        String string = sharedPreferences.getString("tapjoyTestId", "");
        if (string != null && string.length() != 0) {
            return string;
        }
        try {
            string = UUID.randomUUID().toString();
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("tapjoyTestId", string);
            editorEdit.apply();
            return string;
        } catch (Exception e2) {
            TapjoyLog.e(f1.class.getSimpleName(), "Error generating test id: " + e2);
            return string;
        }
    }
}
