package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

import com.applovin.exoplayer2.common.base.Ascii;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class Encrypter {
    private static String a = getValue();

    private Encrypter() {
    }

    public static String PadString(String str) {
        int length = 16 - (str.length() % 16);
        if (length <= 0 || length >= 16) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(str.length() + length);
        stringBuffer.insert(0, str);
        while (length > 0) {
            stringBuffer.append(" ");
            length--;
        }
        return stringBuffer.toString();
    }

    public static String crypt(String str) {
        byte[] bArrDoFinal;
        try {
            String strPadString = PadString(str);
            SecretKeySpec secretKeySpec = new SecretKeySpec(Base64Coder.decodeLines(a), "AES");
            Cipher cipher = Cipher.getInstance(getAlgorithm());
            cipher.init(1, secretKeySpec);
            bArrDoFinal = cipher.doFinal(strPadString.getBytes());
        } catch (Exception unused) {
            bArrDoFinal = null;
        }
        return new String(Base64Coder.encode(bArrDoFinal));
    }

    public static String decrypt(String str) {
        byte[] bArrDoFinal;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(Base64Coder.decodeLines(a), "AES");
            Cipher cipher = Cipher.getInstance(getAlgorithm());
            cipher.init(2, secretKeySpec);
            bArrDoFinal = cipher.doFinal(Base64Coder.decodeLines(str));
        } catch (Exception unused) {
            bArrDoFinal = null;
        }
        return new String(bArrDoFinal);
    }

    private static String getAlgorithm() {
        byte[] bArr = {65, 4, Ascii.SO, -36, Ascii.SYN, -2, -1, -19, 33, -5, -8, Ascii.DLE, -30, Ascii.ESC, 17, 3, 0, 5, 5, -7};
        for (int i = 0; i < 20; i++) {
            if (i != 0) {
                bArr[i] = (byte) (bArr[i - 1] + bArr[i]);
            }
        }
        return new String(bArr);
    }

    private static String getValue() {
        byte[] bArr = new byte[25];
        byte[] bArr2 = {-48, -37, 4, Ascii.US, -39, -27, 52, -36, 41, Ascii.CR, -32, 32, -35, Ascii.DC4, 5, Ascii.VT, -8, -33, -5, -9, 5, -6, -4, 0, 0};
        bArr[0] = 118;
        for (int i = 1; i < 24; i++) {
            bArr[i] = (byte) (bArr[i - 1] + bArr2[i]);
        }
        return new String(bArr, 0, 24);
    }
}
