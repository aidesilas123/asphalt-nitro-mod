package com.tapjoy;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.internal.p3;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyLog {
    public static boolean a = false;
    public static int b = 6;

    public static void a(String str, String str2, int i) {
        String str3 = "TapjoyLog:" + str;
        if (b <= i) {
            if (str2.length() <= 4096) {
                Log.println(i, str3, str2);
                return;
            }
            int i2 = 0;
            while (i2 <= str2.length() / 4096) {
                int i3 = i2 * 4096;
                i2++;
                int length = i2 * 4096;
                if (length > str2.length()) {
                    length = str2.length();
                }
                Log.println(i, str3, str2.substring(i3, length));
            }
        }
    }

    public static void a(String str, boolean z) {
        if (!z && TapjoyAppSettings.getInstance() != null && TapjoyAppSettings.getInstance().f7821d != null) {
            d("TapjoyLog", "setLoggingLevel -- log setting already persisted");
            return;
        }
        if (str.equals("internal")) {
            b = 2;
            new Handler(Looper.getMainLooper()).post(new p3());
        } else if (str.equals("debug_on")) {
            b = 4;
        } else if (str.equals("debug_off")) {
            b = 6;
        } else {
            d("TapjoyLog", "unrecognized loggingLevel: ".concat(str));
            b = 6;
        }
        d("TapjoyLog", "logThreshold=" + b);
    }

    public static void d(String str, String str2) {
        a(str, str2, 3);
    }

    public static void e(String str, TapjoyErrorMessage tapjoyErrorMessage) {
        if (tapjoyErrorMessage != null) {
            if (b == 2 || tapjoyErrorMessage.a() != TapjoyErrorMessage.ErrorType.a) {
                a(str, tapjoyErrorMessage.toString(), 6);
            }
        }
    }

    public static void e(String str, String str2) {
        e(str, new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.a, str2));
    }

    public static void i(String str, String str2) {
        a(str, str2, 4);
    }

    public static boolean isLoggingEnabled() {
        return a;
    }

    public static void setDebugEnabled(boolean z) {
        a = z;
        if (z) {
            a("debug_on", false);
        } else {
            a("debug_off", false);
        }
    }

    public static void setInternalLogging(boolean z) {
        if (z) {
            a("internal", true);
        }
    }

    public static void v(String str, String str2) {
        a(str, str2, 2);
    }

    public static void w(String str, String str2) {
        a(str, str2, 5);
    }
}
