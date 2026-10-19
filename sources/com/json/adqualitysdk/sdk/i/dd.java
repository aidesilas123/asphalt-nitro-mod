package com.json.adqualitysdk.sdk.i;

import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ExpandableListView;
import com.json.b4;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class dd extends cx implements cg {
    private static long h = 0;
    private static int i = 0;
    private static char j = 51978;
    private static char[] k = {'s', 16196, 32310, 48430, 64737, 15297, 31407, 47494, 63868, 14412, 30510, 46629, 62953, 13529, 29625, 45696, 62050, 12634, 28700, 44818, 61177, 11728, 16360, 223, 16813, 33465, 50043, 1132, 17720, 34314, 50934, 2012, 18596, 35221, 19341, 29870, 13788, 63168, 46877, 28681, 12633, 62049, 45710, 29616, 15555, 65011, 48643, 32546, 14410, 63812, 47518, 's', 16196, 32310, 48435, 64744, 15300, 31397, 47490, 63845, 14412, 30500, 46623, 62917, 13513, 'g', 16196, 32310, 48435, 64744, 15300, 31397, 47490, 63845, 14412, 30500, 46623, 62917, 13513, 37490, 44360, 60430, 12054, 28397, 43469};
    private static long l = -1784467456536527071L;
    private static int m = 0;
    private static int n = 1;
    private String o;
    private boolean r;
    private String s;
    private String p = "";
    private double q = -1.0d;
    private boolean t = false;

    private String d() {
        int i2 = m;
        int i3 = i2 + 95;
        n = i3 % 128;
        int i4 = i3 % 2;
        String str = this.p;
        int i5 = i2 + 77;
        n = i5 % 128;
        if (i5 % 2 == 0) {
            throw null;
        }
        return str;
    }

    private static String e(String str, String str2, int i2, char c, String str3) {
        String str4;
        Object charArray = str3;
        if (str3 != null) {
            charArray = str3.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        Object charArray2 = str2;
        if (str2 != null) {
            charArray2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) charArray2;
        Object charArray3 = str;
        if (str != null) {
            charArray3 = str.toCharArray();
        }
        char[] cArr3 = (char[]) charArray3;
        synchronized (j.f124) {
            char[] cArr4 = (char[]) cArr3.clone();
            char[] cArr5 = (char[]) cArr2.clone();
            cArr4[0] = (char) (c ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i2));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            j.f125 = 0;
            while (true) {
                int i3 = j.f125;
                if (i3 < length) {
                    int i4 = (i3 + 2) % 4;
                    int i5 = (i3 + 3) % 4;
                    char c2 = (char) (((cArr4[i3 % 4] * 32718) + cArr5[i4]) % 65535);
                    j.f126 = c2;
                    cArr5[i5] = (char) (((cArr4[i5] * 32718) + cArr5[i4]) / 65535);
                    cArr4[i5] = c2;
                    int i6 = j.f125;
                    cArr6[i6] = (char) (((((long) (cArr[i6] ^ cArr4[i5])) ^ h) ^ ((long) i)) ^ ((long) j));
                    j.f125 = i6 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    private void f(String str) {
        int i2 = n;
        int i3 = i2 + 3;
        m = i3 % 128;
        int i4 = i3 % 2;
        this.p = str;
        int i5 = i2 + 5;
        m = i5 % 128;
        int i6 = i5 % 2;
    }

    private Double g() {
        int i2 = n + 87;
        m = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
        Double dValueOf = Double.valueOf(this.q);
        int i3 = n + 91;
        m = i3 % 128;
        int i4 = i3 % 2;
        return dValueOf;
    }

    private static String h(int i2, int i3, char c) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i2];
            e.f51 = 0;
            while (true) {
                int i4 = e.f51;
                if (i4 < i2) {
                    cArr[i4] = (char) ((((long) k[i3 + i4]) ^ (((long) i4) * l)) ^ ((long) c));
                    e.f51 = i4 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    private void i(boolean z) {
        int i2 = n;
        int i3 = i2 + 33;
        m = i3 % 128;
        int i4 = i3 % 2;
        this.r = z;
        int i5 = i2 + 89;
        m = i5 % 128;
        if ((i5 % 2 != 0 ? (char) 25 : '\t') != 25) {
        } else {
            throw null;
        }
    }

    private boolean j() {
        int i2 = m;
        int i3 = i2 + 101;
        n = i3 % 128;
        int i4 = i3 % 2;
        boolean z = this.t;
        int i5 = i2 + 55;
        n = i5 % 128;
        int i6 = i5 % 2;
        return z;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    private String m616() {
        int i2 = m + 113;
        int i3 = i2 % 128;
        n = i3;
        if (i2 % 2 == 0) {
            throw null;
        }
        String str = this.s;
        int i4 = i3 + 41;
        m = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    private boolean m617() {
        int i2 = n + 57;
        m = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 20 : '\'') != 20) {
            return this.r;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    private String m618() {
        String strIntern;
        int i2 = n + 103;
        m = i2 % 128;
        int i3 = i2 % 2;
        if (!m617()) {
            strIntern = e("㒑\uf4a3\uf375螅", "\u0000\u0000\u0000\u0000", '0' - AndroidCharacter.getMirror('0'), (char) (34291 - KeyEvent.normalizeMetaState(0)), "砂뺟๛ɤ憩绅").intern();
        } else {
            int i4 = n + 101;
            m = i4 % 128;
            if (i4 % 2 != 0) {
            }
            strIntern = e("\ue0b4钉\ue6ba\udff5", "\u0000\u0000\u0000\u0000", ExpandableListView.getPackedPositionGroup(0L), (char) ((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) - 1), "䙪ﱊᡬ츂负벹\udbc1ߺ\u1c8e갸").intern();
            int i5 = n + 83;
            m = i5 % 128;
            int i6 = i5 % 2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(e("鋸❟ꋬ諄", "\u0000\u0000\u0000\u0000", View.combineMeasuredStates(0, 0), (char) Drawable.resolveOpacity(0, 0), "很\ue30eϳష짦㒦䈠꺆\u2069㶒").intern());
        sb.append(this.p);
        sb.append(e("賋믾控疲", "\u0000\u0000\u0000\u0000", ((byte) KeyEvent.getModifierMetaStateMask()) - 1480851827, (char) (View.MeasureSpec.makeMeasureSpec(0, 0) + 45667), "⨠").intern());
        sb.append(strIntern);
        return sb.toString();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    private String m619() {
        int i2 = m + 13;
        int i3 = i2 % 128;
        n = i3;
        int i4 = i2 % 2;
        String str = this.o;
        int i5 = i3 + 3;
        m = i5 % 128;
        int i6 = i5 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m620(Double d2) {
        int i2 = m + 91;
        n = i2 % 128;
        int i3 = i2 % 2;
        this.q = d2.doubleValue();
        int i4 = m + 67;
        n = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final JSONObject m621() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(ib.f122, this.o);
            double d2 = this.q;
            if (!(d2 <= -1.0d)) {
                jSONObject2.put(ib.f70, d2);
            }
            jSONObject2.put(ib.f71, this.s);
        } catch (JSONException unused) {
        }
        try {
            if (jSONObject2.length() > 0) {
                int i2 = n;
                int i3 = i2 + 65;
                m = i3 % 128;
                int i4 = i3 % 2;
                if (!(this.t ? false : true)) {
                    int i5 = i2 + 95;
                    m = i5 % 128;
                    int i6 = i5 % 2;
                    jSONObject2.put(ib.f73, true);
                }
                jSONObject.put(ib.f72, jSONObject2);
            }
            int i7 = m + 65;
            n = i7 % 128;
            int i8 = i7 % 2;
        } catch (JSONException unused2) {
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m622(String str) {
        int i2 = n + 123;
        m = i2 % 128;
        char c = i2 % 2 != 0 ? '\\' : (char) 7;
        this.s = str;
        if (c != '\\') {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m623(boolean z) {
        int i2 = m + 89;
        int i3 = i2 % 128;
        n = i3;
        int i4 = i2 % 2;
        this.t = z;
        int i5 = i3 + 41;
        m = i5 % 128;
        int i6 = i5 % 2;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m624(String str) {
        int i2 = n + 85;
        int i3 = i2 % 128;
        m = i3;
        char c = i2 % 2 != 0 ? 'M' : b4.R;
        this.o = str;
        if (c == 'M') {
            throw null;
        }
        int i4 = i3 + 23;
        n = i4 % 128;
        if (i4 % 2 != 0) {
        } else {
            throw null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0287  */
    @Override // com.json.adqualitysdk.sdk.i.cg
    /* JADX INFO: renamed from: ﾒ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object mo388(java.lang.String r18, java.util.List<java.lang.Object> r19, com.json.adqualitysdk.sdk.i.ch r20) {
        /*
            Method dump skipped, instruction units count: 870
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dd.mo388(java.lang.String, java.util.List, com.ironsource.adqualitysdk.sdk.i.ch):java.lang.Object");
    }
}
