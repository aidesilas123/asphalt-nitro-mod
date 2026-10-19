package com.json;

import android.util.Base64;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public class u4 {
    public static String a(String str) {
        try {
            return new String(Base64.decode(str, 0), C.UTF8_NAME);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    static String b(String str) {
        return Base64.encodeToString(str.getBytes(), 10);
    }
}
