package com.nearme.platform.opensdk.pay.download.util;

import android.os.Environment;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class LogUtil {
    private static int a = 3;
    private static String b;

    private LogUtil() {
    }

    private static String a() {
        String simpleName;
        StringBuffer stringBuffer = new StringBuffer();
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        if (stackTrace.length >= 3) {
            StackTraceElement stackTraceElement = stackTrace[3];
            try {
                simpleName = Class.forName(stackTraceElement.getClassName()).getSimpleName();
            } catch (ClassNotFoundException unused) {
                simpleName = "";
            }
            stringBuffer.append(simpleName);
            stringBuffer.append("-> ");
            stringBuffer.append(stackTraceElement.getMethodName());
            stringBuffer.append(" : ");
            stringBuffer.append(stackTraceElement.getLineNumber());
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }

    private static void b(int i, String str) {
        if (i == 2) {
            if (a <= 2) {
                Log.v("PayApkDownLoad", a() + str);
                return;
            }
            return;
        }
        if (i == 3) {
            if (a <= 3) {
                Log.d("PayApkDownLoad", a() + str);
                return;
            }
            return;
        }
        if (i == 4) {
            if (a <= 4) {
                Log.i("PayApkDownLoad", a() + str);
                return;
            }
            return;
        }
        if (i == 5) {
            if (a <= 5) {
                Log.w("PayApkDownLoad", a() + str);
                return;
            }
            return;
        }
        if (i == 6 && a <= 6) {
            Log.e("PayApkDownLoad", a() + str);
        }
    }

    public static void d(String str) {
        b(3, str);
    }

    public static void e(String str) {
        b(6, str);
    }

    public static void i(String str) {
        b(4, str);
    }

    public static void startLog(String str) {
        startLog("PayApkDownLoad", str);
    }

    public static void startLog(String str, String str2) {
        if (str == null) {
            str = str2;
        }
        startLog(null, str, str2);
    }

    public static void startLog(String str, String str2, String str3) {
        if (str == null) {
            startLog(Environment.getExternalStorageDirectory().getPath() + "/", str2, str3, "V");
            return;
        }
        startLog(Environment.getExternalStorageDirectory().getPath() + "/" + str + "/", str2, str3, "V");
    }

    public static void startLog(String str, String str2, String str3, String str4) {
        new File(str).mkdirs();
        b = "logcat -d -v time -f " + str + str2 + ".log -s " + str3 + CertificateUtil.DELIMITER + str4;
        try {
            Runtime.getRuntime().exec("rm " + str + str2 + ".log");
            Runtime.getRuntime().exec(b);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static void v(String str) {
        b(2, str);
    }

    public static void w(String str) {
        b(5, str);
    }
}
