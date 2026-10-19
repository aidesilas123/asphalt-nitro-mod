package com.json.sdk.controller;

import com.json.c9;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.security.MessageDigest;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
final class u {
    private String a;

    u(String str) {
        this.a = str;
    }

    static String a() {
        return UUID.randomUUID().toString();
    }

    private String b(String str) {
        try {
            return c9.a(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return f(str);
        }
    }

    private String c(byte[] bArr) throws Exception {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                hexString = "0" + hexString;
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    private String f(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            messageDigest.update(str.getBytes());
            return c(messageDigest.digest());
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    boolean d(String str, String str2, String str3) {
        try {
            return str3.equalsIgnoreCase(b(str + str2 + this.a));
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    String e() {
        return this.a;
    }
}
