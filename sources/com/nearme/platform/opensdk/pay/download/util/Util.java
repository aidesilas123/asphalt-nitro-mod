package com.nearme.platform.opensdk.pay.download.util;

import android.content.Context;
import android.os.Environment;
import android.widget.Toast;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class Util {
    public static String Utf8URLencode(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 0 || cCharAt > 255) {
                byte[] bytes = new byte[0];
                try {
                    bytes = Character.toString(cCharAt).getBytes(C.UTF8_NAME);
                } catch (Exception unused) {
                }
                for (int i2 : bytes) {
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    stringBuffer.append("%" + Integer.toHexString(i2).toUpperCase());
                }
            } else {
                stringBuffer.append(cCharAt);
            }
        }
        return stringBuffer.toString();
    }

    public static String getDownloadDir(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append(".");
        sb.append(str);
        sb.append("com.nearme.atlas");
        return sb.toString();
    }

    public static String getDownloadPath(Context context) {
        return getDownloadDir(context) + File.separator + "temp.apk";
    }

    public static String getPackageName(Context context) {
        return context.getPackageName();
    }

    public static void shortToast(Context context, int i) {
        Toast.makeText(context, context.getString(i), 0).show();
    }
}
