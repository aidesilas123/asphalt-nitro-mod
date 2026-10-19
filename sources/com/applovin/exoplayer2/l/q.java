package com.applovin.exoplayer2.l;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
public final class q {
    private static int aci = 0;
    private static boolean acj = true;

    public static void a(String str, String str2, @Nullable Throwable th) {
        g(str, d(str2, th));
    }

    public static void b(String str, String str2, @Nullable Throwable th) {
        h(str, d(str2, th));
    }

    public static void c(String str, String str2, @Nullable Throwable th) {
        i(str, d(str2, th));
    }

    private static String d(String str, @Nullable Throwable th) {
        String strL = l(th);
        if (TextUtils.isEmpty(strL)) {
            return str;
        }
        return str + "\n  " + strL.replace("\n", "\n  ") + '\n';
    }

    public static void f(String str, String str2) {
        if (aci == 0) {
            Log.d(str, str2);
        }
    }

    public static void g(String str, String str2) {
        if (aci <= 1) {
            Log.i(str, str2);
        }
    }

    public static void h(String str, String str2) {
        if (aci <= 2) {
            Log.w(str, str2);
        }
    }

    public static void i(String str, String str2) {
        if (aci <= 3) {
            Log.e(str, str2);
        }
    }

    @Nullable
    public static String l(@Nullable Throwable th) {
        if (th == null) {
            return null;
        }
        return m(th) ? "UnknownHostException (no network)" : !acj ? th.getMessage() : Log.getStackTraceString(th).trim().replace("\t", "    ");
    }

    private static boolean m(@Nullable Throwable th) {
        while (th != null) {
            if (th instanceof UnknownHostException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }
}
