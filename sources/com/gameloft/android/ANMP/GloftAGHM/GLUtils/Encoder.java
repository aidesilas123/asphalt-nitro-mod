package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

import com.applovin.exoplayer2.common.base.Ascii;

/* JADX INFO: loaded from: classes2.dex */
public class Encoder {
    public static String Blob2String(String str) {
        if (str == null) {
            return null;
        }
        byte[] bytes = str.getBytes();
        int i = 8;
        int length = ((str.length() * 6) / 8) + 1;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = 0;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < str.length(); i4++) {
            byte bSSEncDec_GetKeyFromChar = SSEncDec_GetKeyFromChar(bytes[i4]);
            bArr[i3] = (byte) (bArr[i3] | (bSSEncDec_GetKeyFromChar << (8 - i)));
            if (i > 6) {
                i -= 6;
            } else if (i3 < length - 2) {
                i3++;
                bArr[i3] = (byte) ((bSSEncDec_GetKeyFromChar >> i) | bArr[i3]);
                i += 2;
            }
        }
        return new String(bArr, 0, length).trim();
    }

    private static byte SSEncDec_GetCharFromKeyByIndex(byte b) {
        int i;
        if (b < 26) {
            i = b + 97;
        } else if (b < 52) {
            i = b + 39;
        } else {
            if (b >= 62) {
                return b == 62 ? (byte) 95 : (byte) 45;
            }
            i = b - 4;
        }
        return (byte) i;
    }

    private static byte SSEncDec_GetKeyFromChar(byte b) {
        if (b == 45) {
            return (byte) 63;
        }
        if (b == 95) {
            return (byte) 62;
        }
        return (byte) (b < 58 ? b + 4 : b < 91 ? b - 39 : b - 97);
    }

    public static String String2Blob(String str) {
        byte[] bytes = str.getBytes();
        int i = 8;
        int length = (str.length() * 8) / 6;
        int i2 = (str.length() * 8) % 6 != 0 ? length + 2 : length + 1;
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i3] = 0;
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < str.length()) {
            byte b = (byte) (((byte) (bytes[i4] & Ascii.DEL)) >> (8 - i));
            if (i < 6) {
                i4++;
                if (i4 < str.length()) {
                    b = (byte) (b | (bytes[i4] << i));
                    i += 2;
                }
            } else {
                i -= 6;
            }
            bArr[i5] = SSEncDec_GetCharFromKeyByIndex((byte) (b & 63));
            i5++;
        }
        return new String(bArr, 0, i5);
    }
}
