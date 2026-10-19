package com.nearme.platform.opensdk.pay;

import android.annotation.SuppressLint;
import android.util.Base64;
import com.json.b4;
import com.json.e8;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes4.dex */
public class NearMeRsa {
    private static byte[] a(byte[] bArr, Cipher cipher) throws GeneralSecurityException, IOException {
        int blockSize = cipher.getBlockSize();
        int outputSize = cipher.getOutputSize(blockSize);
        int length = bArr.length;
        byte[] bArr2 = new byte[(length % blockSize == 0 ? length / blockSize : (length / blockSize) + 1) * outputSize];
        int i = length;
        int i2 = 0;
        while (i >= blockSize) {
            cipher.doFinal(bArr, i2 * blockSize, blockSize, bArr2, i2 * outputSize);
            i -= blockSize;
            i2++;
        }
        if (i > 0) {
            cipher.doFinal(bArr, i2 * blockSize, i, bArr2, i2 * outputSize);
        }
        return bArr2;
    }

    private static PrivateKey b(String str, String str2) throws Exception {
        return KeyFactory.getInstance(str, "BC").generatePrivate(new PKCS8EncodedKeySpec(Base64.decode(str2, 0)));
    }

    private static PublicKey c(String str, String str2) throws Exception {
        return KeyFactory.getInstance(str, "BC").generatePublic(new X509EncodedKeySpec(Base64.decode(str2, 0)));
    }

    public static String decrypt(String str, String str2, boolean z) {
        if (str == null) {
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance(e8.b);
            if (z) {
                cipher.init(2, c("RSA", str2));
            } else {
                cipher.init(2, b("RSA", str2));
            }
            return new String(a(Base64.decode(str, 0), cipher)).trim();
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean doCheck(String str, String str2, String str3) {
        try {
            PublicKey publicKeyC = c("RSA", str3);
            Signature signature = Signature.getInstance("SHA1WithRSA");
            signature.initVerify(publicKeyC);
            signature.update(str.getBytes(b4.L));
            return signature.verify(Base64.decode(str2, 0));
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @SuppressLint({"TrulyRandom"})
    public static String encrypt(String str, String str2, boolean z) {
        try {
            Cipher cipher = Cipher.getInstance(e8.b);
            if (z) {
                cipher.init(1, c("RSA", str2));
            } else {
                cipher.init(1, b("RSA", str2));
            }
            return Base64.encodeToString(a(str.getBytes(C.UTF8_NAME), cipher), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getKeyString(Key key) throws Exception {
        return Base64.encodeToString(key.getEncoded(), 0);
    }

    public static String getSignContent(String str, String str2, String str3, String str4, String str5, String str6, float f2, int i) {
        int iYuanToFen = Utils.yuanToFen(f2);
        StringBuilder sb = new StringBuilder();
        sb.append("token=\"" + str + "\"&");
        sb.append("appPackage=\"" + str2 + "\"&");
        sb.append("partnerId=\"" + str3 + "\"&");
        sb.append("partnerOrder=\"" + str4 + "\"&");
        sb.append("productName=\"" + str5 + "\"&");
        sb.append("productDesc=\"" + str6 + "\"&");
        sb.append("price=\"" + iYuanToFen + "\"&");
        sb.append("count=\"" + i + "\"");
        return sb.toString();
    }

    public static String sign(String str, String str2) {
        try {
            PrivateKey privateKeyGeneratePrivate = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(Base64.decode(str2, 0)));
            Signature signature = Signature.getInstance("SHA1WithRSA");
            signature.initSign(privateKeyGeneratePrivate);
            signature.update(str.getBytes(b4.L));
            return Base64.encodeToString(signature.sign(), 0);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
