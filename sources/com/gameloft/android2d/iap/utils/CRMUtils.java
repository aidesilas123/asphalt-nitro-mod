package com.gameloft.android2d.iap.utils;

import com.gameloft.android2d.iap.billings.google.util.Base64;
import com.json.b4;
import com.json.e8;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Random;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes2.dex */
public class CRMUtils {
    public static boolean CheckMD5Hash(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return SUtils.getMD5String(sb.toString()).equals(DecryptData(str3, str4));
    }

    public static String DecryptData(String str, String str2) {
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str2.trim().getBytes(b4.L))));
            byte[] bArrDecode = Base64.decode(str);
            Cipher cipher = Cipher.getInstance(e8.b);
            cipher.init(2, publicKeyGeneratePublic);
            return new String(cipher.doFinal(bArrDecode));
        } catch (Exception unused) {
            return null;
        }
    }

    public static char[] EncUrl_GetKeysFromChar(char c) {
        char[] cArr = {(char) ((c & 240) >> 4), (char) (c & 15)};
        if (cArr[0] >= 0 && cArr[0] <= '\t') {
            cArr[0] = (char) (cArr[0] + '0');
        }
        if ('\n' <= cArr[0] && cArr[0] <= 15) {
            cArr[0] = (char) (cArr[0] + '7');
        }
        if (cArr[1] >= 0 && cArr[1] <= '\t') {
            cArr[1] = (char) (cArr[1] + '0');
        }
        if ('\n' <= cArr[1] && cArr[1] <= 15) {
            cArr[1] = (char) (cArr[1] + '7');
        }
        return cArr;
    }

    public static String EncodeUrlRFC3986(String str) {
        String str2 = new String();
        if (str == null) {
            return "";
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (('0' > cCharAt || cCharAt > '9') && (('A' > cCharAt || cCharAt > 'Z') && !(('a' <= cCharAt && cCharAt <= 'z') || cCharAt == '-' || cCharAt == '.' || cCharAt == '_' || cCharAt == '~'))) {
                char[] cArrEncUrl_GetKeysFromChar = EncUrl_GetKeysFromChar(cCharAt);
                str2 = ((str2 + "%") + cArrEncUrl_GetKeysFromChar[0]) + cArrEncUrl_GetKeysFromChar[1];
            } else {
                str2 = str2 + cCharAt;
            }
        }
        return str2;
    }

    public static String NounceGenerator() {
        Random random = new Random();
        String str = "";
        for (int i = 0; i < 64; i++) {
            str = str + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-._~".charAt(Math.abs(random.nextInt()) % 66);
        }
        return str;
    }
}
