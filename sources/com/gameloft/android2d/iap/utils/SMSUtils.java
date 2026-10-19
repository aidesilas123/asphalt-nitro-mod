package com.gameloft.android2d.iap.utils;

/* JADX INFO: loaded from: classes2.dex */
public class SMSUtils {
    public static int a;
    public static int b;

    public static byte[] BinaryStringToByteArray(String str) {
        int length = str.length() / 8;
        byte[] bArr = new byte[length];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i * 8;
            bArr[i] = (byte) (Integer.parseInt(str.substring(i3, i3 + 8), 2) & 255);
            i++;
        }
        return bArr;
    }

    public static String addPaddingToByte(String str, int i) {
        StringBuilder sb = new StringBuilder(str);
        for (int i2 = 0; str.length() + i2 < i; i2++) {
            sb.insert(0, "0");
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x02b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String generateBinaryString(java.lang.String r13, java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 718
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gameloft.android2d.iap.utils.SMSUtils.generateBinaryString(java.lang.String, java.lang.String):java.lang.String");
    }

    public static String getIMEIType(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return isInteger(str) ? str.length() == 15 ? "000110" : "010010" : isHexadecimal(str) ? str.length() == 14 ? "010001" : "010011" : "010100";
    }

    public static boolean isHexadecimal(String str) {
        return str.matches("^[\\da-fA-F]+$");
    }

    public static boolean isInteger(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return length > 0;
    }
}
