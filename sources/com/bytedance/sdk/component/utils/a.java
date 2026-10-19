package com.bytedance.sdk.component.utils;

import android.os.Build;
import android.text.TextUtils;
import java.security.SecureRandom;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: compiled from: AESUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: com.bytedance.sdk.component.utils.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AESUtils.java */
    static class C0122a {
        static final Random a = a.c();
    }

    public static String a() {
        String strA = a(16);
        if (strA == null || strA.length() != 32) {
            return null;
        }
        return strA;
    }

    public static String a(int i) {
        try {
            byte[] bArr = new byte[i];
            C0122a.a.nextBytes(bArr);
            return e.a(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a(String str, int i) {
        if (str == null || str.length() != i) {
            return null;
        }
        int i2 = i / 2;
        return str.substring(i2, i) + str.substring(0, i2);
    }

    public static JSONObject a(String str) {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        try {
            try {
                String strB = b(str);
                if (TextUtils.isEmpty(strB)) {
                    jSONObject.put("message", str);
                    jSONObject.put("cypher", 0);
                } else {
                    jSONObject.put("message", strB);
                    jSONObject.put("cypher", 3);
                }
            } catch (Throwable th) {
                l.b(th.getMessage());
            }
        } catch (Throwable unused) {
            jSONObject.put("message", str);
            jSONObject.put("cypher", 0);
        }
        return jSONObject;
    }

    public static JSONObject a(JSONObject jSONObject) {
        return jSONObject == null ? new JSONObject() : a(jSONObject.toString());
    }

    public static String b() {
        String strA = a(8);
        if (strA == null || strA.length() != 16) {
            return null;
        }
        return strA;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strA = a();
        String strA2 = a(strA, 32);
        String strB = b();
        String strA3 = null;
        if (strA2 != null && strB != null) {
            strA3 = com.bytedance.sdk.component.c.a.a(str, strB, strA2);
        }
        return 3 + strA + strB + strA3;
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 49) {
            return str;
        }
        String strA = a(str.substring(1, 33), 32);
        String strSubstring = str.substring(33, 49);
        return (strSubstring == null || strA == null) ? str : com.bytedance.sdk.component.c.a.b(str.substring(49), strSubstring, strA);
    }

    public static Random c() {
        if (Build.VERSION.SDK_INT < 26) {
            return new SecureRandom();
        }
        try {
            return SecureRandom.getInstanceStrong();
        } catch (Throwable unused) {
            return new SecureRandom();
        }
    }
}
