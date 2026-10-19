package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.b4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class df extends cx implements cg {
    private static int h = -1675601124;
    private static int i = 86;
    private static int j = -1394397116;
    private static short[] l = null;
    private static int n = 0;
    private static int o = 1;
    private hk u;
    private hk v;
    private static byte[] k = {7, -6, Ascii.GS, -16, 2, -15, -3, 6, Ascii.FS, -33, Ascii.SI, -2, 7, -6, Ascii.GS, -26, 10, 1, -5, 19, -30, Ascii.SI, -2, 7, -6, Ascii.GS, -15, -14, 17, Ascii.RS, -33, -10, 41, -47, Ascii.SI, -2, 7, -6, Ascii.GS, -16, 2, -15, -3, 6, Ascii.FS, -17, 0, 3, -6, Ascii.GS, -15, -14, 17, Ascii.RS, -33, -10, 41, -31, 0, 3, 7, -6, Ascii.GS, -15, -14, 17, Ascii.RS, -33, -10, 41, -31, 0, 3, -6, Ascii.GS, -25, -1, Ascii.FF, Ascii.SUB, -27, 0, 3, -6, Ascii.GS, -26, 10, 1, -5, 19, -14, 0, 3, -11, -9, 37, -17, -17, Ascii.CR, -11, 19, -4, -13, 47, -33, -14, 17, Ascii.RS, -33, -10, 41, -47, Ascii.SI, -14, 2, -15, -3, 6, Ascii.FS, -25, -6, Ascii.GS, -16, 2, -15, -3, 6, Ascii.FS, -33, Ascii.SI, -2, 2, -15, -3, 6, Ascii.FS, -25, -6, Ascii.GS, -26, 10, 1, -5, 19, -30, Ascii.SI, -2, 2, -15, -3, 6, Ascii.FS, -25, -6, Ascii.GS, -25, -1, Ascii.FF, Ascii.SUB, -43, Ascii.SI, -14, 2, -15, -3, 6, Ascii.FS, -25, -6, Ascii.GS, -25, -1, Ascii.FF, Ascii.SUB, -43, Ascii.SI, -2, 2, -15, -3, 6, Ascii.FS, -25, -6, Ascii.GS, -15, -14, 17, Ascii.RS, -33, -10, 41, -47, Ascii.SI, -14, 2, -15, -3, 6, Ascii.FS, -25, -6, Ascii.GS, -15, -14, 17, Ascii.RS, -33, -10, 41, -47, Ascii.SI, -2, -1, -4, 41, -27, 2, -15, -3, 6, Ascii.FS, -18, -17, Ascii.CR, -11, 19, -4, -13, 47, -49, Ascii.SI, -2, -3, 47, -48, Ascii.SI, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    private static long m = -6037987865921611219L;
    private final List<String> p = new ArrayList();
    private final List<String> q = new ArrayList();
    private final List<String> r = new ArrayList();
    private final List<String> s = new ArrayList();
    private final List<String> t = new ArrayList();
    private JSONObject w = new JSONObject();

    private void A(List<String> list) {
        int i2 = o + 115;
        n = i2 % 128;
        if (i2 % 2 == 0) {
            H(list, this.r);
        } else {
            H(list, this.r);
            throw null;
        }
    }

    private List<String> B() {
        int i2 = o + 63;
        n = i2 % 128;
        if (i2 % 2 == 0) {
            return this.q;
        }
        throw null;
    }

    private void C(hk hkVar) {
        if (!(hkVar == null)) {
            int i2 = n + 73;
            o = i2 % 128;
            int i3 = i2 % 2;
            this.u = hkVar;
        }
        int i4 = o + 25;
        n = i4 % 128;
        if (!(i4 % 2 != 0)) {
        } else {
            throw null;
        }
    }

    private void D(List<String> list) {
        int i2 = n + 103;
        o = i2 % 128;
        int i3 = i2 % 2;
        H(list, this.p);
        int i4 = n + 37;
        o = i4 % 128;
        if ((i4 % 2 == 0 ? 'F' : '.') == '.') {
        } else {
            throw null;
        }
    }

    private void E(JSONObject jSONObject) {
        int i2 = o + 33;
        n = i2 % 128;
        char c = i2 % 2 != 0 ? 'A' : '0';
        this.w = ju.m962(jSONObject);
        if (c == 'A') {
            int i3 = 13 / 0;
        }
        int i4 = n + 105;
        o = i4 % 128;
        if (i4 % 2 != 0) {
        } else {
            throw null;
        }
    }

    private List<String> F() {
        int i2 = n;
        int i3 = i2 + 7;
        o = i3 % 128;
        if ((i3 % 2 == 0 ? 'b' : (char) 15) != 15) {
            throw null;
        }
        List<String> list = this.r;
        int i4 = i2 + 33;
        o = i4 % 128;
        if (i4 % 2 != 0) {
            return list;
        }
        int i5 = 83 / 0;
        return list;
    }

    private void G(List<String> list) {
        int i2 = o + 45;
        n = i2 % 128;
        if ((i2 % 2 != 0 ? 'L' : (char) 29) == 'L') {
            H(list, this.q);
            throw null;
        }
        H(list, this.q);
        int i3 = n + 21;
        o = i3 % 128;
        int i4 = i3 % 2;
    }

    private static void H(List<String> list, List<String> list2) {
        int i2 = n + 49;
        o = i2 % 128;
        int i3 = i2 % 2;
        if (!(list != null)) {
            return;
        }
        Iterator<String> it = list.iterator();
        int i4 = n + 87;
        o = i4 % 128;
        int i5 = i4 % 2;
        while (it.hasNext()) {
            int i6 = n + 29;
            o = i6 % 128;
            int i7 = i6 % 2;
            u(it.next(), list2);
        }
    }

    private static String I(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(m, cArr, i2);
            f.f52 = 4;
            while (true) {
                int i3 = f.f52;
                if (i3 < cArrM713.length) {
                    f.f53 = i3 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * m));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    private List<String> J() {
        int i2 = o;
        int i3 = i2 + 17;
        n = i3 % 128;
        int i4 = i3 % 2;
        List<String> list = this.s;
        int i5 = i2 + 67;
        n = i5 % 128;
        int i6 = i5 % 2;
        return list;
    }

    private void K(String str) {
        int i2 = o + 33;
        n = i2 % 128;
        if ((i2 % 2 != 0 ? '\n' : 'a') != '\n') {
            u(str, this.s);
        } else {
            u(str, this.s);
            int i3 = 93 / 0;
        }
    }

    private void L(List<String> list) {
        int i2 = n + 79;
        o = i2 % 128;
        int i3 = i2 % 2;
        H(list, this.s);
        int i4 = n + 45;
        o = i4 % 128;
        if ((i4 % 2 == 0 ? 'V' : '5') != '5') {
            int i5 = 48 / 0;
        }
    }

    private JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            hk hkVar = this.u;
            if (hkVar != null) {
                jSONObject.put(ib.f104, hkVar.m739());
                int i2 = n + 25;
                o = i2 % 128;
                int i3 = i2 % 2;
            }
            hk hkVar2 = this.v;
            if (!(hkVar2 == null)) {
                int i4 = n + 11;
                o = i4 % 128;
                int i5 = i4 % 2;
                jSONObject.put(ib.f102, hkVar2.m739());
            }
            if (this.p.size() > 0) {
                jSONObject.put(ib.f100, new JSONArray((Collection) this.p));
            }
            if (this.q.size() > 0) {
                jSONObject.put(ib.f95, new JSONArray((Collection) this.q));
            }
            if (this.r.size() > 0) {
                jSONObject.put(ib.f98, new JSONArray((Collection) this.r));
            }
            if (this.s.size() > 0) {
                jSONObject.put(ib.f99, new JSONArray((Collection) this.s));
            }
            if (this.t.size() > 0) {
                jSONObject.put(ib.f103, new JSONArray((Collection) this.t));
            }
            if (!(this.w.length() <= 0)) {
                int i6 = n + 63;
                o = i6 % 128;
                int i7 = i6 % 2;
                jSONObject.putOpt(ib.f101, this.w.toString());
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    private String e() {
        int i2 = o + 71;
        n = i2 % 128;
        if (i2 % 2 == 0) {
            return this.w.optString(ib.f99);
        }
        this.w.optString(ib.f99);
        throw null;
    }

    private String f() {
        int i2 = o + 97;
        n = i2 % 128;
        if (i2 % 2 != 0) {
            this.w.optString(ib.f98);
            throw null;
        }
        String strOptString = this.w.optString(ib.f98);
        int i3 = o + 63;
        n = i3 % 128;
        if ((i3 % 2 != 0 ? 'W' : (char) 5) != 'W') {
            return strOptString;
        }
        throw null;
    }

    private void g(String str) {
        int i2 = n + 63;
        o = i2 % 128;
        try {
            if ((i2 % 2 == 0 ? '6' : '*') != '6') {
                this.w.put(ib.f91, str);
            } else {
                this.w.put(ib.f91, str);
                throw null;
            }
        } catch (JSONException unused) {
        }
    }

    private JSONObject h() {
        int i2 = n + 43;
        int i3 = i2 % 128;
        o = i3;
        int i4 = i2 % 2;
        JSONObject jSONObject = this.w;
        int i5 = i3 + 33;
        n = i5 % 128;
        if (!(i5 % 2 != 0)) {
            return jSONObject;
        }
        throw null;
    }

    private Object i() {
        int i2 = o + 39;
        n = i2 % 128;
        if (i2 % 2 != 0) {
            this.p.size();
            throw null;
        }
        boolean z = true;
        if (this.p.size() <= 0 && this.q.size() <= 0) {
            int i3 = n + 1;
            o = i3 % 128;
            int i4 = i3 % 2;
            if ((this.t.size() > 0 ? '6' : '&') != '6') {
                z = false;
                int i5 = o + 57;
                n = i5 % 128;
                int i6 = i5 % 2;
            }
        }
        return Boolean.valueOf(z);
    }

    private String j() {
        String strOptString;
        int i2 = n + 113;
        o = i2 % 128;
        if (i2 % 2 == 0) {
            strOptString = this.w.optString(ib.f91);
            int i3 = 44 / 0;
        } else {
            strOptString = this.w.optString(ib.f91);
        }
        int i4 = o + 83;
        n = i4 % 128;
        if (i4 % 2 == 0) {
            return strOptString;
        }
        int i5 = 49 / 0;
        return strOptString;
    }

    private hk k() {
        int i2 = o;
        int i3 = i2 + 119;
        n = i3 % 128;
        int i4 = i3 % 2;
        hk hkVar = this.u;
        int i5 = i2 + 61;
        n = i5 % 128;
        int i6 = i5 % 2;
        return hkVar;
    }

    private void l(String str) {
        int i2 = n + 103;
        o = i2 % 128;
        try {
            if ((i2 % 2 == 0 ? (char) 6 : 'W') == 'W') {
                this.w.put(ib.f95, str);
            } else {
                this.w.put(ib.f95, str);
                throw null;
            }
        } catch (JSONException unused) {
        }
    }

    private String m() {
        String strOptString;
        int i2 = o + 111;
        n = i2 % 128;
        if (i2 % 2 != 0) {
            strOptString = this.w.optString(ib.f95);
            int i3 = 73 / 0;
        } else {
            strOptString = this.w.optString(ib.f95);
        }
        int i4 = n + 21;
        o = i4 % 128;
        int i5 = i4 % 2;
        return strOptString;
    }

    private void n(String str) {
        int i2 = o + 117;
        n = i2 % 128;
        try {
            if ((i2 % 2 != 0 ? (char) 6 : (char) 5) != 5) {
                this.w.put(ib.f103, str);
                int i3 = 88 / 0;
            } else {
                this.w.put(ib.f103, str);
            }
            int i4 = n + 47;
            o = i4 % 128;
            if (!(i4 % 2 != 0)) {
                int i5 = 66 / 0;
            }
        } catch (JSONException unused) {
        }
    }

    private void o(String str) {
        int i2 = n + 89;
        o = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.w.put(ib.f98, str);
            int i4 = o + 47;
            n = i4 % 128;
            int i5 = i4 % 2;
        } catch (JSONException unused) {
        }
    }

    private hk p() {
        int i2 = o;
        int i3 = i2 + 77;
        n = i3 % 128;
        if ((i3 % 2 != 0 ? 'V' : (char) 26) != 26) {
            throw null;
        }
        hk hkVar = this.v;
        int i4 = i2 + 125;
        n = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return hkVar;
        }
        throw null;
    }

    private void q(String str) {
        int i2 = n + 91;
        o = i2 % 128;
        try {
            if ((i2 % 2 == 0 ? (char) 25 : (char) 18) != 18) {
                this.w.put(ib.f100, str);
                int i3 = 50 / 0;
            } else {
                this.w.put(ib.f100, str);
            }
        } catch (JSONException unused) {
        }
    }

    private void r(String str) {
        int i2 = o + 93;
        n = i2 % 128;
        try {
            if (i2 % 2 != 0) {
                this.w.put(ib.f99, str);
                throw null;
            }
            this.w.put(ib.f99, str);
            int i3 = n + 41;
            o = i3 % 128;
            if (i3 % 2 == 0) {
                throw null;
            }
        } catch (JSONException unused) {
        }
    }

    private List<String> s() {
        List<String> list;
        int i2 = n;
        int i3 = i2 + 57;
        o = i3 % 128;
        if ((i3 % 2 == 0 ? '\"' : '>') != '>') {
            list = this.t;
            int i4 = 24 / 0;
        } else {
            list = this.t;
        }
        int i5 = i2 + 111;
        o = i5 % 128;
        if ((i5 % 2 == 0 ? '5' : '\r') != '5') {
            return list;
        }
        throw null;
    }

    private void t(String str) {
        int i2 = o + 13;
        n = i2 % 128;
        int i3 = i2 % 2;
        u(str, this.r);
        int i4 = o + 113;
        n = i4 % 128;
        int i5 = i4 % 2;
    }

    private static void u(String str, List<String> list) {
        if ((list != null ? (char) 25 : (char) 0) != 25) {
            return;
        }
        int i2 = n + 121;
        o = i2 % 128;
        if (i2 % 2 == 0) {
            TextUtils.isEmpty(str);
            throw null;
        }
        if (!(TextUtils.isEmpty(str))) {
            if ((!list.contains(str) ? '1' : '\"') != '1') {
                return;
            }
            int i3 = n + 63;
            o = i3 % 128;
            char c = i3 % 2 == 0 ? 'R' : b4.R;
            list.add(str);
            if (c != 'R') {
                return;
            }
            int i4 = 63 / 0;
        }
    }

    private void v(List<String> list) {
        int i2 = o + 19;
        n = i2 % 128;
        if ((i2 % 2 != 0 ? '[' : b4.R) == '=') {
            H(list, this.t);
        } else {
            H(list, this.t);
            throw null;
        }
    }

    private static String w(int i2, int i3, byte b, short s, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = i;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = k;
                i6 = bArr != null ? (byte) (bArr[h + i4] + i5) : (short) (l[h + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + h + (z ? 1 : 0);
                n.f135 = b;
                char c = (char) (i3 + j);
                n.f133 = c;
                sb.append(c);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = k;
                    if (bArr2 != null) {
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                    } else {
                        short[] sArr = l;
                        int i8 = n.f136;
                        n.f136 = i8 - 1;
                        n.f133 = (char) (n.f134 + (((short) (sArr[i8] + s)) ^ n.f135));
                    }
                    sb.append(n.f133);
                    n.f134 = n.f133;
                    n.f137++;
                }
            }
            string = sb.toString();
        }
        return string;
    }

    private List<String> x() {
        List<String> list;
        int i2 = n + 75;
        int i3 = i2 % 128;
        o = i3;
        if (!(i2 % 2 != 0)) {
            list = this.p;
            int i4 = 69 / 0;
        } else {
            list = this.p;
        }
        int i5 = i3 + 65;
        n = i5 % 128;
        if (i5 % 2 == 0) {
            return list;
        }
        throw null;
    }

    private void y(hk hkVar) {
        if (!(hkVar == null)) {
            int i2 = n + 119;
            o = i2 % 128;
            int i3 = i2 % 2;
            this.v = hkVar;
        }
        int i4 = o + 95;
        n = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 15 : 'L') != 15) {
        } else {
            throw null;
        }
    }

    private void z(String str) {
        int i2 = n + 43;
        o = i2 % 128;
        int i3 = i2 % 2;
        u(str, this.q);
        int i4 = n + 65;
        o = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    private String m629() {
        int i2 = o + 83;
        n = i2 % 128;
        int i3 = i2 % 2;
        String strOptString = this.w.optString(ib.f103);
        int i4 = n + 49;
        o = i4 % 128;
        if (i4 % 2 != 0) {
            return strOptString;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    private String m630() {
        int i2 = n + 33;
        o = i2 % 128;
        if (i2 % 2 != 0) {
            return this.w.optString(ib.f100);
        }
        int i3 = 35 / 0;
        return this.w.optString(ib.f100);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private void m631(String str) {
        int i2 = n + 47;
        o = i2 % 128;
        int i3 = i2 % 2;
        u(str, this.p);
        int i4 = n + 75;
        o = i4 % 128;
        if ((i4 % 2 == 0 ? '1' : '2') != '1') {
            return;
        }
        int i5 = 45 / 0;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private void m632(String str) {
        int i2 = n + 109;
        o = i2 % 128;
        int i3 = i2 % 2;
        u(str, this.t);
        int i4 = n + 113;
        o = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x04f0  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0545  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x055e  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0595  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x05ae  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x05fa  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x061d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0382  */
    @Override // com.json.adqualitysdk.sdk.i.cg
    /* JADX INFO: renamed from: ﾒ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object mo388(java.lang.String r23, java.util.List<java.lang.Object> r24, com.json.adqualitysdk.sdk.i.ch r25) {
        /*
            Method dump skipped, instruction units count: 2294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.df.mo388(java.lang.String, java.util.List, com.ironsource.adqualitysdk.sdk.i.ch):java.lang.Object");
    }
}
