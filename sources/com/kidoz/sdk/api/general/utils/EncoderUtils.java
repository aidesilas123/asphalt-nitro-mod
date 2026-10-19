package com.kidoz.sdk.api.general.utils;

import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes4.dex */
public class EncoderUtils {
    private static final int BYTE_MSK = 255;
    private static final String HEX_DIGITS = "0123456789ABCDEF";
    private static final int HEX_DIGIT_BITS = 4;
    private static final int HEX_DIGIT_MASK = 15;
    public static final String TAG = "EncoderUtils";

    public static String SHA1(String str) {
        try {
            return computeSha1OfByteArray(str.getBytes(C.UTF8_NAME));
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to convert string to SHA1: " + e2.getMessage());
            return null;
        }
    }

    private static String computeSha1OfByteArray(byte[] bArr) throws UnsupportedOperationException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
            messageDigest.update(bArr);
            return toHexString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e2) {
            throw new UnsupportedOperationException(e2);
        }
    }

    public static String encryptWithMD5(String str) {
        if (str != null) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
                messageDigest.reset();
                messageDigest.update(str.getBytes());
                String string = new BigInteger(1, messageDigest.digest()).toString(16);
                while (string.length() < 32) {
                    string = "0" + string;
                }
                return string;
            } catch (Exception e2) {
                SDKLogger.printErrorLog("Can't create MD5: " + e2.getMessage());
            }
        }
        return null;
    }

    private static String toHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            int i = b & 255;
            sb.append(HEX_DIGITS.charAt(i >>> 4));
            sb.append(HEX_DIGITS.charAt(i & 15));
        }
        return sb.toString();
    }

    public static String toMD5(String str) {
        if (str != null) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
                messageDigest.reset();
                messageDigest.update(str.getBytes());
                String string = new BigInteger(1, messageDigest.digest()).toString(16);
                while (string.length() < 32) {
                    string = "0" + string;
                }
                return string;
            } catch (Exception e2) {
                SDKLogger.printErrorLog(TAG, "Can't create MD5: " + e2.getMessage());
            }
        }
        return null;
    }
}
