package com.nearme.plugin.framework;

import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes4.dex */
public class LogUtils {
    public static String a = "PluginDebug";
    public static boolean b = true;

    public static void error(String str, String str2) {
        error(str, str2, null);
    }

    public static void error(String str, String str2, Throwable th) {
        if (b) {
            Log.e(a, str + CertificateUtil.DELIMITER + str2, th);
        }
    }

    public static String getExceptionInfo(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter((Writer) stringWriter, true));
        return stringWriter.getBuffer().toString();
    }

    public static void log(String str, String str2) {
        log(str, str2, null);
    }

    public static void log(String str, String str2, Throwable th) {
        if (b) {
            Log.d(a, str + CertificateUtil.DELIMITER + str2, th);
        }
    }

    public static void logInit(boolean z, String str) {
        b = z;
        if (!TextUtils.isEmpty(str)) {
            a = str;
        }
        try {
            if (new File(Environment.getExternalStorageDirectory().getPath() + File.separator + "super_key_debug").exists()) {
                b = true;
            }
        } catch (Exception unused) {
        }
    }
}
