package com.json.adqualitysdk.sdk.i;

import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class jq {
    private static char[] a = {'t', 225, '5', 't', '}', 'w', 'o', '2', 'f', 'o', 'r', 't', 231, 232, 225, 224, 226, 224, 224, 205, 212, 232, 224, 228, 212, 191, 190, 194, 221, 237, 229, 225, 221, 226, 218, 209, 201, 161, 222, 222, 211, 230, 229, 224, 219, 146, 230, 229, 228, 219, 216, 146, 217, 224, 219, 214, 214, 211, 146, 228, 225, 228, 228, 183, 224, 225, 229, 220, 146, 225, 230, 146, 215, 223, 219, 230, 146, 215, 230, 211, 214, 226, 231, 146, 230, 229, 211, 222};
    private static int b = 0;
    private static int c = 1;

    private static String a(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
        String str2;
        Object bytes = str;
        if (str != null) {
            bytes = str.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        synchronized (i.f67) {
            int i = iArr[0];
            int i2 = iArr[1];
            int i3 = iArr[2];
            int i4 = iArr[3];
            char[] cArr = new char[i2];
            System.arraycopy(a, i, cArr, 0, i2);
            if (bArr != null) {
                char[] cArr2 = new char[i2];
                i.f68 = 0;
                char c2 = 0;
                while (true) {
                    int i5 = i.f68;
                    if (i5 >= i2) {
                        break;
                    }
                    if (bArr[i5] == 1) {
                        cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c2);
                    } else {
                        cArr2[i5] = (char) ((cArr[i5] << 1) - c2);
                    }
                    c2 = cArr2[i5];
                    i.f68 = i5 + 1;
                }
                cArr = cArr2;
            }
            if (i4 > 0) {
                char[] cArr3 = new char[i2];
                System.arraycopy(cArr, 0, cArr3, 0, i2);
                int i6 = i2 - i4;
                System.arraycopy(cArr3, 0, cArr, i6, i4);
                System.arraycopy(cArr3, i4, cArr, 0, i6);
            }
            if (z) {
                char[] cArr4 = new char[i2];
                i.f68 = 0;
                while (true) {
                    int i7 = i.f68;
                    if (i7 >= i2) {
                        break;
                    }
                    cArr4[i7] = cArr[(i2 - i7) - 1];
                    i.f68 = i7 + 1;
                }
                cArr = cArr4;
            }
            if (i3 > 0) {
                i.f68 = 0;
                while (true) {
                    int i8 = i.f68;
                    if (i8 >= i2) {
                        break;
                    }
                    cArr[i8] = (char) (cArr[i8] - iArr[2]);
                    i.f68 = i8 + 1;
                }
            }
            str2 = new String(cArr);
        }
        return str2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static JSONObject m942(String str, ax axVar, boolean z, ak akVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (z) {
                int i = b + 5;
                c = i % 128;
                if (i % 2 == 0) {
                    jSONObject.put(a(false, new int[]{0, 2, 117, 0}, "\u0000\u0001").intern(), false);
                } else {
                    jSONObject.put(a(true, new int[]{0, 2, 117, 0}, "\u0000\u0001").intern(), true);
                }
            }
            if (akVar.m284()) {
                jSONObject.put(a(false, new int[]{2, 5, 9, 0}, "\u0000\u0000\u0001\u0001\u0001").intern(), true);
            }
            jSONObject.put(a(true, new int[]{7, 4, 0, 4}, "\u0000\u0001\u0000\u0001").intern(), str);
        } catch (JSONException e2) {
            m.m1032(a(true, new int[]{11, 26, 119, 0}, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001").intern(), a(true, new int[]{37, 51, 114, 27}, null).intern(), e2);
        }
        ju.m960(jSONObject, axVar.m372());
        ju.m960(jSONObject, axVar.m371());
        int i2 = b + 41;
        c = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
        return jSONObject;
    }
}
