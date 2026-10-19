package com.json.mediationsdk.utils;

import android.text.TextUtils;
import android.util.Base64;
import com.json.mediationsdk.logger.IronLog;
import com.json.w3;
import com.json.w7;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes4.dex */
public class IronSourceAES {
    private static SecretKeySpec a(String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[32];
        Arrays.fill(bArr, (byte) 0);
        byte[] bytes = str.getBytes(C.UTF8_NAME);
        System.arraycopy(bytes, 0, bArr, 0, bytes.length < 32 ? bytes.length : 32);
        return new SecretKeySpec(bArr, "AES");
    }

    public static synchronized String compressAndEncrypt(String str) {
        return compressAndEncrypt(w3.b().c(), str);
    }

    public static synchronized String compressAndEncrypt(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            byte[] bArrA = w7.a(str2);
            if (bArrA != null) {
                return encodeFromBytes(str, bArrA);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return "";
    }

    public static synchronized String decode(String str, String str2) {
        byte[] bArrDecodeToBytes = decodeToBytes(str, str2);
        if (bArrDecodeToBytes == null) {
            return "";
        }
        return new String(bArrDecodeToBytes);
    }

    public static synchronized byte[] decodeToBytes(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            SecretKeySpec secretKeySpecA = a(str);
            byte[] bArr = new byte[16];
            Arrays.fill(bArr, (byte) 0);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr);
            byte[] bArrDecode = Base64.decode(str2, 0);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(2, secretKeySpecA, ivParameterSpec);
            return cipher.doFinal(bArrDecode);
        } catch (Exception e2) {
            IronLog.INTERNAL.error("exception on decryption error: " + e2.getMessage());
            e2.printStackTrace();
            return null;
        }
    }

    public static synchronized String decryptAndDecompress(String str) {
        return decryptAndDecompress(w3.b().c(), str);
    }

    public static synchronized String decryptAndDecompress(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            byte[] bArrDecodeToBytes = decodeToBytes(str, str2);
            if (bArrDecodeToBytes != null) {
                return w7.a(bArrDecodeToBytes);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return "";
    }

    public static synchronized String encode(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            return encodeFromBytes(str, str2.getBytes("UTF8"));
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static synchronized String encodeFromBytes(String str, byte[] bArr) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (bArr == null) {
            return "";
        }
        try {
            SecretKeySpec secretKeySpecA = a(str);
            byte[] bArr2 = new byte[16];
            Arrays.fill(bArr2, (byte) 0);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(1, secretKeySpecA, ivParameterSpec);
            return Base64.encodeToString(cipher.doFinal(bArr), 0).replaceAll(System.getProperty("line.separator"), "");
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static synchronized String encrypt(String str) {
        return encode(w3.b().c(), str);
    }
}
