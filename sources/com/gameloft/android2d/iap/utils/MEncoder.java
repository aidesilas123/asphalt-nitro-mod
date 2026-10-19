package com.gameloft.android2d.iap.utils;

/* JADX INFO: loaded from: classes2.dex */
public class MEncoder {
    public static String bytesToHex(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        String str = "";
        for (int i = 0; i < length; i++) {
            str = (bArr[i] & 255) < 16 ? str + "0" + Integer.toHexString(bArr[i] & 255) : str + Integer.toHexString(bArr[i] & 255);
        }
        return str;
    }

    public static byte[] hexToBytes(String str) {
        if (str == null || str.length() < 2) {
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return bArr;
    }

    private static String padString(String str) {
        int length = 16 - (str.length() % 16);
        for (int i = 0; i < length; i++) {
            str = str + ' ';
        }
        return str;
    }
}
