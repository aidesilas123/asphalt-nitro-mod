package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyAppSettings {
    public static final String a = "TapjoyAppSettings";
    public static TapjoyAppSettings b;
    public final SharedPreferences c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f7821d;

    public TapjoyAppSettings(Context context) {
        this.c = context.getSharedPreferences("tjcPrefrences", 0);
        a();
    }

    public static TapjoyAppSettings getInstance() {
        return b;
    }

    public static void init(Context context) {
        TapjoyLog.d(a, "initializing app settings");
        b = new TapjoyAppSettings(context);
    }

    public final void a() {
        String string = this.c.getString("tapjoyLogLevel", null);
        this.f7821d = string;
        if (TextUtils.isEmpty(string)) {
            return;
        }
        TapjoyLog.d(a, "restoreLoggingLevel from sharedPref -- loggingLevel=" + this.f7821d);
        TapjoyLog.a(this.f7821d, true);
    }

    public String b(String str, long j) {
        String string = this.c.getString("connectResult", null);
        if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(str) && str.equals(this.c.getString("connectParamsHash", null))) {
            long j2 = this.c.getLong("connectResultExpires", -1L);
            if (j2 < 0 || j2 >= j) {
                return string;
            }
        }
        return null;
    }

    public void c() {
        if (this.c.getString("connectParamsHash", null) != null) {
            SharedPreferences.Editor editorEdit = this.c.edit();
            editorEdit.remove("connectResult");
            editorEdit.remove("connectParamsHash");
            editorEdit.remove("connectResultExpires");
            TapjoyLog.i(a, "Removed connect result");
            editorEdit.apply();
        }
    }

    public void d(String str, String str2, long j) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.c.edit();
        editorEdit.putString("connectResult", str);
        editorEdit.putString("connectParamsHash", str2);
        if (j >= 0) {
            editorEdit.putLong("connectResultExpires", j);
        } else {
            editorEdit.remove("connectResultExpires");
        }
        TapjoyLog.i(a, "Stored connect result");
        editorEdit.apply();
    }
}
