package com.json.adqualitysdk.sdk.i;

import android.view.Gravity;
import android.view.KeyEvent;
import java.io.UnsupportedEncodingException;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class iv {
    private static char[] a = {159, 158, 162, 163, 's', 144, 164, 152, 147};
    private static int b = 47;
    private static boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5811d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5812e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5813f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private JSONObject f5814g;
    private String h;

    iv(JSONObject jSONObject) {
        this(jSONObject, UUID.randomUUID().toString());
    }

    iv(JSONObject jSONObject, String str) {
        this.f5814g = jSONObject;
        this.h = str;
    }

    private static String a(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
        Object bytes = str2;
        if (str2 != null) {
            bytes = str2.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (k.f131) {
            char[] cArr2 = a;
            int i2 = b;
            if (f5811d) {
                int length = bArr.length;
                k.f129 = length;
                char[] cArr3 = new char[length];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i3 = k.f130;
                    int i4 = k.f129 - 1;
                    int i5 = k.f130;
                    cArr3[i3] = (char) (cArr2[bArr[i4 - i5] + i] - i2);
                    k.f130 = i5 + 1;
                }
                return new String(cArr3);
            }
            if (c) {
                int length2 = cArr.length;
                k.f129 = length2;
                char[] cArr4 = new char[length2];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i6 = k.f130;
                    int i7 = k.f129 - 1;
                    int i8 = k.f130;
                    cArr4[i6] = (char) (cArr2[cArr[i7 - i8] - i] - i2);
                    k.f130 = i8 + 1;
                }
                return new String(cArr4);
            }
            int length3 = iArr.length;
            k.f129 = length3;
            char[] cArr5 = new char[length3];
            k.f130 = 0;
            while (k.f130 < k.f129) {
                int i9 = k.f130;
                int i10 = k.f129 - 1;
                int i11 = k.f130;
                cArr5[i9] = (char) (cArr2[iArr[i10 - i11] - i] - i2);
                k.f130 = i11 + 1;
            }
            return new String(cArr5);
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m864() {
        int i = f5812e + 61;
        f5813f = i % 128;
        if ((i % 2 == 0 ? '6' : 'K') == 'K') {
            return this.h;
        }
        int i2 = 77 / 0;
        return this.h;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final JSONObject m865() {
        int i = f5813f + 119;
        f5812e = i % 128;
        if (i % 2 == 0) {
            return this.f5814g;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m866() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(a(null, null, 127 - Gravity.getAbsoluteGravity(0, 0), "\u0086\u0084\u0086\u0085\u0084\u0083\u0082\u0081").intern(), this.f5814g);
        jSONObject.put(a(null, null, 127 - KeyEvent.normalizeMetaState(0), "\u0089\u0088\u0087\u0087").intern(), this.h);
        int i = f5813f + 93;
        f5812e = i % 128;
        int i2 = i % 2;
        return jSONObject;
    }
}
