package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Security;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: AESCBCUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private static byte[] a = new byte[32];
    private static byte[] b = new byte[16];

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.tools.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AESCBCUtil.java */
    public static class C0408a extends Provider {
        public C0408a() {
            super("Crypto", 1.0d, "HARMONY (SHA1 digest; SecureRandom; SHA1withDSA signature)");
            put("SecureRandom.SHA1PRNG", "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl");
            put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
        }
    }

    static {
        if (TextUtils.isEmpty("ebmclXzZOhtU2sRlZxGL8A")) {
            return;
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance("sha-384").digest("ebmclXzZOhtU2sRlZxGL8A".getBytes());
            System.arraycopy(bArrDigest, 0, a, 0, 32);
            System.arraycopy(bArrDigest, 32, b, 0, 16);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static String a(String str) {
        return a(str, a, b);
    }

    private static String a(String str, byte[] bArr, byte[] bArr2) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Security.addProvider(new C0408a());
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7PADDING");
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return new String(Base64.encode(cipher.doFinal(str.getBytes()), 0));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
