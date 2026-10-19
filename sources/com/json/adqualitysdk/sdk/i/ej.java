package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.widget.ExpandableListView;

/* JADX INFO: loaded from: classes4.dex */
public final class ej extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f5604e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5605f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static char f5606g = 24630;
    private static int h = 0;
    private static int i = 1;
    private String j;

    public ej(String str, Cdo cdo) {
        super(cdo);
        this.j = dq.m680(str);
    }

    private static String c(String str, String str2, int i2, char c, String str3) {
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
                    cArr6[i6] = (char) (((((long) (cArr[i6] ^ cArr4[i5])) ^ f5604e) ^ ((long) f5605f)) ^ ((long) f5606g));
                    j.f125 = i6 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0029, code lost:
    
        if (com.json.adqualitysdk.sdk.i.ej.class != r6.getClass()) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0036, code lost:
    
        if ((com.json.adqualitysdk.sdk.i.ej.class != r6.getClass()) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0043, code lost:
    
        return r5.j.equals(((com.json.adqualitysdk.sdk.i.ej) r6).j);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.ej> r0 = com.json.adqualitysdk.sdk.i.ej.class
            r1 = 14
            if (r5 != r6) goto L9
            r2 = 14
            goto Lb
        L9:
            r2 = 40
        Lb:
            r3 = 1
            if (r2 == r1) goto L45
            r1 = 0
            if (r6 == 0) goto L13
            r2 = 1
            goto L14
        L13:
            r2 = 0
        L14:
            if (r2 == 0) goto L44
            int r2 = com.json.adqualitysdk.sdk.i.ej.h
            int r2 = r2 + 57
            int r4 = r2 % 128
            com.json.adqualitysdk.sdk.i.ej.i = r4
            int r2 = r2 % 2
            if (r2 != 0) goto L2e
            java.lang.Class r2 = r6.getClass()
            r3 = 61
            int r3 = r3 / r1
            if (r0 == r2) goto L39
            goto L44
        L2c:
            r6 = move-exception
            throw r6
        L2e:
            java.lang.Class r2 = r6.getClass()
            if (r0 == r2) goto L35
            goto L36
        L35:
            r3 = 0
        L36:
            if (r3 == 0) goto L39
            goto L44
        L39:
            com.ironsource.adqualitysdk.sdk.i.ej r6 = (com.json.adqualitysdk.sdk.i.ej) r6
            java.lang.String r0 = r5.j
            java.lang.String r6 = r6.j
            boolean r6 = r0.equals(r6)
            return r6
        L44:
            return r1
        L45:
            int r6 = com.json.adqualitysdk.sdk.i.ej.h
            int r6 = r6 + 125
            int r0 = r6 % 128
            com.json.adqualitysdk.sdk.i.ej.i = r0
            int r6 = r6 % 2
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ej.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i2 = i + 81;
        int i3 = i2 % 128;
        h = i3;
        if (i2 % 2 != 0) {
            throw null;
        }
        String str = this.j;
        if (!(str == null)) {
            return str.hashCode();
        }
        int i4 = i3 + 43;
        i = i4 % 128;
        int i5 = i4 % 2;
        return 0;
    }

    public final String toString() {
        int i2 = h + 45;
        i = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return m712();
        }
        m712();
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        try {
            return new dp(drVar.m682(m712()));
        } catch (Exception e2) {
            dn dnVarM456 = cjVar.m456(m712());
            if (dnVarM456 != null) {
                return new dp(dnVarM456);
            }
            String strM445 = cjVar.m445();
            StringBuilder sb = new StringBuilder();
            sb.append(c("\uf065뫼묒튑", "\u0000\u0000\u0000\u0000", (-1) - ExpandableListView.getPackedPositionChild(0L), (char) (TextUtils.lastIndexOf("", '0', 0) + 37308), "珳℅擹\uf84f弃Ｙ\ud867♖摯\ue13fꉪ\ueb76ﶞ靘맄몗慽媨䶯옵\ue5e1쇹๐\udf20烄\u19ca껑\ue0ef").intern());
            sb.append(this);
            sb.append(m703());
            cn.m519(strM445, sb.toString(), e2);
            dp dpVar = new dp(null);
            int i2 = h + 7;
            i = i2 % 128;
            int i3 = i2 % 2;
            return dpVar;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m712() {
        int i2 = i + 5;
        h = i2 % 128;
        if ((i2 % 2 != 0 ? 'T' : (char) 16) == 16) {
            return this.j;
        }
        int i3 = 65 / 0;
        return this.j;
    }
}
