package com.gameloft.android2d.iap.wrapper;

import com.gameloft.android2d.iap.billings.google.util.Base64;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class DefReader {
    private static DefReader a;
    private final String b = "AES";

    private byte[] b(String str) throws Exception {
        return c(str).getBytes();
    }

    private String c(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.reset();
            messageDigest.update(str.getBytes(C.UTF8_NAME));
            byte[] bArrDigest = messageDigest.digest();
            for (byte b : bArrDigest) {
                stringBuffer.append(Integer.toString((b & 255) + 256, 16).substring(1));
            }
        } catch (Exception unused) {
        }
        return stringBuffer.toString().substring(0, 16);
    }

    public static DefReader getInstance() {
        if (a == null) {
            a = new DefReader();
        }
        return a;
    }

    public String a(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(b(str2), "AES");
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(Base64.decode(str)));
        } catch (Exception unused) {
            return null;
        }
    }
}
