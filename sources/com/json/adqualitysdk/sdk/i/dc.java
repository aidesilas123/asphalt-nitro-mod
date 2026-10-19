package com.json.adqualitysdk.sdk.i;

import com.json.b4;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class dc extends cx implements cg {
    private static int i = 221;
    private static boolean j = true;
    private static boolean k = true;
    private static int m = 0;
    private static int n = 1;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private String t;
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;
    private String z;
    private static char[] h = {336, 322, 337, 286, 321, 294, 288, 318, 330, 333, 326, 324, 331, 305, 342, 335, 339, 292, 332, 338, 303, 334, 289, 287, 301, 320};
    private static long l = 6042266558984041680L;

    private Object d() {
        int i2 = m + 73;
        int i3 = i2 % 128;
        n = i3;
        int i4 = i2 % 2;
        String str = this.y;
        int i5 = i3 + 123;
        m = i5 % 128;
        if (i5 % 2 == 0) {
            return str;
        }
        throw null;
    }

    private JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(ib.f90, this.o);
            jSONObject.putOpt(ib.f92, this.p);
            jSONObject.putOpt(ib.f96, this.q);
            jSONObject.putOpt(ib.f97, this.s);
            jSONObject.putOpt(ib.f94, this.t);
            jSONObject.putOpt(ib.f89, this.u);
            jSONObject.putOpt(ib.f91, this.v);
            jSONObject.putOpt(ib.f93, this.w);
            jSONObject.putOpt(ib.f86, this.x);
            int i2 = n + 113;
            m = i2 % 128;
            int i3 = i2 % 2;
        } catch (JSONException unused) {
        }
        int i4 = n + 17;
        m = i4 % 128;
        if ((i4 % 2 != 0 ? '_' : (char) 17) != '_') {
            return jSONObject;
        }
        int i5 = 46 / 0;
        return jSONObject;
    }

    private void f(String str) {
        int i2 = m;
        int i3 = i2 + 99;
        n = i3 % 128;
        int i4 = i3 % 2;
        this.z = str;
        int i5 = i2 + 21;
        n = i5 % 128;
        int i6 = i5 % 2;
    }

    private Object g() {
        int i2 = m;
        int i3 = i2 + 107;
        n = i3 % 128;
        int i4 = i3 % 2;
        String str = this.z;
        int i5 = i2 + 93;
        n = i5 % 128;
        if ((i5 % 2 == 0 ? (char) 28 : ']') != 28) {
            return str;
        }
        throw null;
    }

    private void h(String str) {
        int i2 = n + 43;
        m = i2 % 128;
        char c = i2 % 2 != 0 ? 'Q' : 'V';
        this.y = str;
        if (c == 'V') {
        } else {
            throw null;
        }
    }

    private void i(String str) {
        int i2 = m;
        int i3 = i2 + 15;
        n = i3 % 128;
        int i4 = i3 % 2;
        this.x = str;
        int i5 = i2 + 123;
        n = i5 % 128;
        if (i5 % 2 != 0) {
            return;
        }
        int i6 = 4 / 0;
    }

    private String j() {
        int i2 = m + 1;
        int i3 = i2 % 128;
        n = i3;
        int i4 = i2 % 2;
        String str = this.x;
        int i5 = i3 + 59;
        m = i5 % 128;
        if ((i5 % 2 != 0 ? '7' : (char) 29) != '7') {
            return str;
        }
        int i6 = 94 / 0;
        return str;
    }

    private void k(String str) {
        int i2 = n + 79;
        m = i2 % 128;
        char c = i2 % 2 != 0 ? 'U' : 'M';
        this.w = str;
        if (c == 'M') {
        } else {
            throw null;
        }
    }

    private void l(String str) {
        int i2 = m + 63;
        int i3 = i2 % 128;
        n = i3;
        boolean z = i2 % 2 == 0;
        this.u = str;
        if (z) {
            int i4 = 79 / 0;
        }
        int i5 = i3 + 91;
        m = i5 % 128;
        int i6 = i5 % 2;
    }

    private String m() {
        int i2 = m;
        int i3 = i2 + 35;
        n = i3 % 128;
        int i4 = i3 % 2;
        String str = this.t;
        int i5 = i2 + 51;
        n = i5 % 128;
        int i6 = i5 % 2;
        return str;
    }

    private void n(String str) {
        int i2 = n + 63;
        m = i2 % 128;
        boolean z = i2 % 2 == 0;
        this.v = str;
        if (z) {
            return;
        }
        int i3 = 33 / 0;
    }

    private void o(String str) {
        int i2 = n + 43;
        int i3 = i2 % 128;
        m = i3;
        int i4 = i2 % 2;
        this.t = str;
        int i5 = i3 + 13;
        n = i5 % 128;
        if ((i5 % 2 == 0 ? '\'' : '5') != '\'') {
            return;
        }
        int i6 = 83 / 0;
    }

    private String p() {
        int i2 = m + 19;
        n = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return this.q;
        }
        int i3 = 64 / 0;
        return this.q;
    }

    private void q(String str) {
        int i2 = m + 103;
        int i3 = i2 % 128;
        n = i3;
        int i4 = i2 % 2;
        this.q = str;
        int i5 = i3 + 69;
        m = i5 % 128;
        int i6 = i5 % 2;
    }

    private void r(String str) {
        int i2 = n;
        int i3 = i2 + 51;
        m = i3 % 128;
        boolean z = i3 % 2 == 0;
        this.p = str;
        if (!z) {
            throw null;
        }
        int i4 = i2 + 41;
        m = i4 % 128;
        if ((i4 % 2 != 0 ? 'S' : (char) 2) != 2) {
            int i5 = 15 / 0;
        }
    }

    private String s() {
        int i2 = m;
        int i3 = i2 + 103;
        n = i3 % 128;
        int i4 = i3 % 2;
        String str = this.p;
        int i5 = i2 + 79;
        n = i5 % 128;
        int i6 = i5 % 2;
        return str;
    }

    private static String t(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i2;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i3 = h.f65;
                if (i3 < cArr.length) {
                    cArr2[i3] = (char) (((long) (cArr[i3] ^ (h.f64 * i3))) ^ l);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    private Object u() {
        int i2 = m + 103;
        n = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
        return this.r;
    }

    private static String v(int[] iArr, String str, int i2, String str2) throws UnsupportedEncodingException {
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
            char[] cArr2 = h;
            int i3 = i;
            if (k) {
                int length = bArr.length;
                k.f129 = length;
                char[] cArr3 = new char[length];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i4 = k.f130;
                    int i5 = k.f129 - 1;
                    int i6 = k.f130;
                    cArr3[i4] = (char) (cArr2[bArr[i5 - i6] + i2] - i3);
                    k.f130 = i6 + 1;
                }
                return new String(cArr3);
            }
            if (j) {
                int length2 = cArr.length;
                k.f129 = length2;
                char[] cArr4 = new char[length2];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i7 = k.f130;
                    int i8 = k.f129 - 1;
                    int i9 = k.f130;
                    cArr4[i7] = (char) (cArr2[cArr[i8 - i9] - i2] - i3);
                    k.f130 = i9 + 1;
                }
                return new String(cArr4);
            }
            int length3 = iArr.length;
            k.f129 = length3;
            char[] cArr5 = new char[length3];
            k.f130 = 0;
            while (k.f130 < k.f129) {
                int i10 = k.f130;
                int i11 = k.f129 - 1;
                int i12 = k.f130;
                cArr5[i10] = (char) (cArr2[iArr[i11 - i12] - i2] - i3);
                k.f130 = i12 + 1;
            }
            return new String(cArr5);
        }
    }

    private void w(String str) {
        int i2 = m + 77;
        int i3 = i2 % 128;
        n = i3;
        int i4 = i2 % 2;
        this.r = str;
        int i5 = i3 + 121;
        m = i5 % 128;
        if ((i5 % 2 != 0 ? (char) 11 : (char) 22) == 22) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    private String m609() {
        int i2 = m + 119;
        int i3 = i2 % 128;
        n = i3;
        int i4 = i2 % 2;
        String str = this.w;
        int i5 = i3 + 23;
        m = i5 % 128;
        if ((i5 % 2 != 0 ? '_' : b4.R) != '_') {
            return str;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    private String m610() {
        int i2 = n + 113;
        m = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 28 : 'P') != 28) {
            return this.v;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    private String m611() {
        int i2 = n + 77;
        int i3 = i2 % 128;
        m = i3;
        int i4 = i2 % 2;
        String str = this.u;
        int i5 = i3 + 47;
        n = i5 % 128;
        if ((i5 % 2 == 0 ? (char) 11 : (char) 30) != 11) {
            return str;
        }
        int i6 = 90 / 0;
        return str;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private String m612() {
        String str;
        int i2 = n + 53;
        int i3 = i2 % 128;
        m = i3;
        if (i2 % 2 == 0) {
            str = this.o;
        } else {
            str = this.o;
            int i4 = 18 / 0;
        }
        int i5 = i3 + 39;
        n = i5 % 128;
        if (i5 % 2 != 0) {
            return str;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private void m613(String str) {
        int i2 = n;
        int i3 = i2 + 111;
        m = i3 % 128;
        int i4 = i3 % 2;
        this.s = str;
        int i5 = i2 + 87;
        m = i5 % 128;
        if ((i5 % 2 != 0 ? (char) 26 : 'W') != 26) {
            return;
        }
        int i6 = 44 / 0;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private String m614() {
        int i2 = n + 11;
        int i3 = i2 % 128;
        m = i3;
        int i4 = i2 % 2;
        String str = this.s;
        int i5 = i3 + 89;
        n = i5 % 128;
        int i6 = i5 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private void m615(String str) {
        int i2 = m + 59;
        int i3 = i2 % 128;
        n = i3;
        int i4 = i2 % 2;
        this.o = str;
        int i5 = i3 + 85;
        m = i5 % 128;
        if (i5 % 2 == 0) {
        } else {
            throw null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0327  */
    @Override // com.json.adqualitysdk.sdk.i.cg
    /* JADX INFO: renamed from: ﾒ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object mo388(java.lang.String r18, java.util.List<java.lang.Object> r19, com.json.adqualitysdk.sdk.i.ch r20) {
        /*
            Method dump skipped, instruction units count: 1158
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dc.mo388(java.lang.String, java.util.List, com.ironsource.adqualitysdk.sdk.i.ch):java.lang.Object");
    }
}
