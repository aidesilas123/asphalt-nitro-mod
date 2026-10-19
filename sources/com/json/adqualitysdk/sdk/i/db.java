package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class db extends cx implements cg {
    private static char h = 22515;
    private static char i = 32118;
    private static char j = 37797;
    private static char k = 28342;
    private static long l = 3480840968187105098L;
    private static int m = 0;
    private static int n = 1;
    private String o;
    private hf p;
    private String q;
    private String r;
    private final JSONObject s = new JSONObject();
    private final List<String> t = new ArrayList();

    private JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.o;
            if ((str != null) && this.p != null) {
                jSONObject.putOpt(ib.f111, str);
                jSONObject.putOpt(ib.f112, Integer.valueOf(this.p.m723()));
                int i2 = m + 119;
                n = i2 % 128;
                int i3 = i2 % 2;
            }
            jSONObject.putOpt(ib.f108, this.q);
            jSONObject.putOpt(ib.f107, this.r);
            if (this.t.size() > 0) {
                jSONObject.putOpt(ib.f100, new JSONArray((Collection) this.t));
            }
            if (this.s.length() > 0) {
                jSONObject.putOpt(ib.f110, this.s.toString());
                int i4 = m + 105;
                n = i4 % 128;
                int i5 = i4 % 2;
            }
            int i6 = n + 51;
            m = i6 % 128;
            int i7 = i6 % 2;
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.Object e() {
        /*
            r4 = this;
            int r0 = com.json.adqualitysdk.sdk.i.db.m
            int r0 = r0 + 117
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.db.n = r1
            int r0 = r0 % 2
            java.lang.String r0 = r4.o
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L3b
            java.lang.String r0 = r4.q
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r3 = 19
            if (r0 == 0) goto L21
            r0 = 19
            goto L23
        L21:
            r0 = 71
        L23:
            if (r0 == r3) goto L26
            goto L3b
        L26:
            java.lang.String r0 = r4.r
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L3b
            java.util.List<java.lang.String> r0 = r4.t
            int r0 = r0.size()
            if (r0 <= 0) goto L38
            r0 = 1
            goto L39
        L38:
            r0 = 0
        L39:
            if (r0 == 0) goto L3c
        L3b:
            r1 = 1
        L3c:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r1)
            int r1 = com.json.adqualitysdk.sdk.i.db.n
            int r1 = r1 + 125
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.db.m = r2
            int r1 = r1 % 2
            if (r1 != 0) goto L4d
            return r0
        L4d:
            r0 = 0
            throw r0     // Catch: java.lang.Throwable -> L4f
        L4f:
            r0 = move-exception
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.db.e():java.lang.Object");
    }

    private String f() {
        int i2 = n + 87;
        m = i2 % 128;
        int i3 = i2 % 2;
        String strOptString = this.s.optString(ib.f111);
        int i4 = n + 3;
        m = i4 % 128;
        int i5 = i4 % 2;
        return strOptString;
    }

    private Object g() {
        int i2 = m + 87;
        n = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 1 : ';') == ';') {
            return this.s.optString(ib.f107);
        }
        this.s.optString(ib.f107);
        throw null;
    }

    private void h(String str) {
        int i2 = n + 103;
        m = i2 % 128;
        try {
            if (!(i2 % 2 != 0)) {
                this.s.put(ib.f108, str);
            } else {
                this.s.put(ib.f108, str);
                int i3 = 1 / 0;
            }
            int i4 = n + 63;
            m = i4 % 128;
            if (i4 % 2 == 0) {
            } else {
                throw null;
            }
        } catch (JSONException unused) {
        }
    }

    private String i() {
        int i2 = m + 123;
        n = i2 % 128;
        int i3 = i2 % 2;
        String strOptString = this.s.optString(ib.f100);
        int i4 = m + 123;
        n = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 27 : 'J') != 27) {
            return strOptString;
        }
        int i5 = 82 / 0;
        return strOptString;
    }

    private void j(String str) {
        int i2 = m + 31;
        n = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.s.put(ib.f100, str);
            int i4 = n + 95;
            m = i4 % 128;
            if ((i4 % 2 != 0 ? ';' : 'W') != 'W') {
                int i5 = 40 / 0;
            }
        } catch (JSONException unused) {
        }
    }

    private JSONObject k() {
        int i2 = n + 73;
        int i3 = i2 % 128;
        m = i3;
        int i4 = i2 % 2;
        JSONObject jSONObject = this.s;
        int i5 = i3 + 11;
        n = i5 % 128;
        if ((i5 % 2 == 0 ? '/' : '-') == '-') {
            return jSONObject;
        }
        throw null;
    }

    private void l(String str) {
        int i2 = n + 121;
        m = i2 % 128;
        try {
            if ((i2 % 2 != 0 ? (char) 21 : 'Z') != 'Z') {
                this.s.put(ib.f107, str);
                int i3 = 71 / 0;
            } else {
                this.s.put(ib.f107, str);
            }
        } catch (JSONException unused) {
        }
    }

    private List<String> m() {
        int i2 = n + 37;
        m = i2 % 128;
        if ((i2 % 2 != 0 ? '>' : '\r') != '>') {
            return this.t;
        }
        throw null;
    }

    private void n(String str) {
        int i2 = m + 105;
        n = i2 % 128;
        int i3 = i2 % 2;
        if ((!TextUtils.isEmpty(str) ? '.' : (char) 29) != 29) {
            if (!this.t.contains(str)) {
                this.t.add(str);
                int i4 = m + 119;
                n = i4 % 128;
                int i5 = i4 % 2;
            }
        }
    }

    private static String o(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (o.f139) {
            char[] cArr2 = new char[cArr.length];
            o.f138 = 0;
            char[] cArr3 = new char[2];
            while (true) {
                int i3 = o.f138;
                if (i3 < cArr.length) {
                    cArr3[0] = cArr[i3];
                    cArr3[1] = cArr[i3 + 1];
                    int i4 = 58224;
                    for (int i5 = 0; i5 < 16; i5++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i4) ^ ((cArr3[0] << 4) + j)) ^ ((cArr3[0] >>> 5) + k)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i4) ^ ((cArr3[1] << 4) + h)) ^ ((cArr3[1] >>> 5) + i)));
                        i4 -= 40503;
                    }
                    int i6 = o.f138;
                    cArr2[i6] = cArr3[0];
                    cArr2[i6 + 1] = cArr3[1];
                    o.f138 = i6 + 2;
                } else {
                    str2 = new String(cArr2, 0, i2);
                }
            }
        }
        return str2;
    }

    private void p(String str) {
        int i2 = m + 101;
        n = i2 % 128;
        boolean z = i2 % 2 != 0;
        this.o = str;
        if (z) {
            return;
        }
        int i3 = 56 / 0;
    }

    private hf q() {
        int i2 = n + 49;
        m = i2 % 128;
        if ((i2 % 2 != 0 ? 'T' : (char) 23) == 23) {
            return this.p;
        }
        int i3 = 34 / 0;
        return this.p;
    }

    private static String r(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(l, cArr, i2);
            f.f52 = 4;
            while (true) {
                int i3 = f.f52;
                if (i3 < cArrM713.length) {
                    f.f53 = i3 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * l));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    private void s(List<String> list) {
        int i2 = m + 65;
        n = i2 % 128;
        if (i2 % 2 == 0) {
            list.iterator();
            throw null;
        }
        Iterator<String> it = list.iterator();
        while (true) {
            if (!(it.hasNext())) {
                return;
            }
            n(it.next());
            int i3 = m + 45;
            n = i3 % 128;
            int i4 = i3 % 2;
        }
    }

    private void t(hf hfVar) {
        int i2 = m + 83;
        n = i2 % 128;
        boolean z = i2 % 2 == 0;
        this.p = hfVar;
        if (z) {
            throw null;
        }
    }

    private String u() {
        int i2 = m + 5;
        int i3 = i2 % 128;
        n = i3;
        if (i2 % 2 == 0) {
            throw null;
        }
        String str = this.q;
        int i4 = i3 + 67;
        m = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 22 : (char) 17) == 17) {
            return str;
        }
        int i5 = 87 / 0;
        return str;
    }

    private void v(String str) {
        int i2 = n;
        int i3 = i2 + 73;
        m = i3 % 128;
        int i4 = i3 % 2;
        this.q = str;
        int i5 = i2 + 9;
        m = i5 % 128;
        if (i5 % 2 == 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    private String m604() {
        int i2 = n + 21;
        m = i2 % 128;
        int i3 = i2 % 2;
        String strOptString = this.s.optString(ib.f108);
        int i4 = n + 67;
        m = i4 % 128;
        if ((i4 % 2 != 0 ? '%' : (char) 29) == 29) {
            return strOptString;
        }
        int i5 = 17 / 0;
        return strOptString;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private String m605() {
        int i2 = n;
        int i3 = i2 + 45;
        m = i3 % 128;
        int i4 = i3 % 2;
        String str = this.o;
        int i5 = i2 + 113;
        m = i5 % 128;
        if ((i5 % 2 != 0 ? (char) 11 : '<') == '<') {
            return str;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private void m606(String str) {
        int i2 = n;
        int i3 = i2 + 75;
        m = i3 % 128;
        int i4 = i3 % 2;
        this.r = str;
        int i5 = i2 + 13;
        m = i5 % 128;
        if (!(i5 % 2 != 0)) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private String m607() {
        int i2 = m + 33;
        int i3 = i2 % 128;
        n = i3;
        int i4 = i2 % 2;
        String str = this.r;
        int i5 = i3 + 125;
        m = i5 % 128;
        if ((i5 % 2 != 0 ? 'E' : '<') == '<') {
            return str;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private void m608(String str) {
        int i2 = m + 91;
        n = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.s.put(ib.f111, str);
            int i4 = m + 71;
            n = i4 % 128;
            int i5 = i4 % 2;
        } catch (JSONException unused) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002f  */
    @Override // com.json.adqualitysdk.sdk.i.cg
    /* JADX INFO: renamed from: ﾒ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object mo388(java.lang.String r19, java.util.List<java.lang.Object> r20, com.json.adqualitysdk.sdk.i.ch r21) {
        /*
            Method dump skipped, instruction units count: 1084
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.db.mo388(java.lang.String, java.util.List, com.ironsource.adqualitysdk.sdk.i.ch):java.lang.Object");
    }
}
