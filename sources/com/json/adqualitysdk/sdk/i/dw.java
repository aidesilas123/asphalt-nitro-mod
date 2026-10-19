package com.json.adqualitysdk.sdk.i;

import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public final class dw extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char f5581e = 12171;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static char f5582f = 58473;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static char f5583g = 14433;
    private static char h = 62518;
    private static int i = 0;
    private static int j = 1;
    private String k;

    public dw(String str, Cdo cdo) {
        super(cdo);
        this.k = dq.m680(str);
    }

    private static String c(String str, int i2) {
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
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i4) ^ ((cArr3[0] << 4) + f5583g)) ^ ((cArr3[0] >>> 5) + h)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i4) ^ ((cArr3[1] << 4) + f5581e)) ^ ((cArr3[1] >>> 5) + f5582f)));
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

    public final boolean equals(Object obj) {
        int i2 = j + 41;
        i = i2 % 128;
        int i3 = i2 % 2;
        if ((this == obj ? '\b' : (char) 14) != 14) {
            return true;
        }
        if (obj == null || dw.class != obj.getClass()) {
            int i4 = j + 89;
            i = i4 % 128;
            int i5 = i4 % 2;
            return false;
        }
        dw dwVar = (dw) obj;
        String str = this.k;
        if ((str != null ? '\n' : 'C') != '\n') {
            if (dwVar.k != null) {
                return false;
            }
            int i6 = j + 79;
            i = i6 % 128;
            int i7 = i6 % 2;
            return true;
        }
        int i8 = i + 71;
        j = i8 % 128;
        char c = i8 % 2 == 0 ? '/' : '\\';
        boolean zEquals = str.equals(dwVar.k);
        if (c != '\\') {
            int i9 = 62 / 0;
        }
        return zEquals;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0021, code lost:
    
        if ((r3.k != null ? com.json.b4.R : '4') != '4') goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002c, code lost:
    
        if ((r3.k != null) != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002e, code lost:
    
        r0 = r3.k.hashCode();
        r1 = com.json.adqualitysdk.sdk.i.dw.j + 83;
        com.json.adqualitysdk.sdk.i.dw.i = r1 % 128;
        r1 = r1 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003f, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int hashCode() {
        /*
            r3 = this;
            int r0 = com.json.adqualitysdk.sdk.i.dw.j
            int r0 = r0 + 85
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.dw.i = r1
            int r0 = r0 % 2
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            if (r0 == 0) goto L26
            java.lang.String r0 = r3.k
            r1 = 47
            int r1 = r1 / r2
            r1 = 52
            if (r0 == 0) goto L1f
            r0 = 61
            goto L21
        L1f:
            r0 = 52
        L21:
            if (r0 == r1) goto L3f
            goto L2e
        L24:
            r0 = move-exception
            throw r0
        L26:
            java.lang.String r0 = r3.k
            if (r0 == 0) goto L2b
            goto L2c
        L2b:
            r1 = 0
        L2c:
            if (r1 == 0) goto L3f
        L2e:
            java.lang.String r0 = r3.k
            int r0 = r0.hashCode()
            int r1 = com.json.adqualitysdk.sdk.i.dw.j
            int r1 = r1 + 83
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.dw.i = r2
            int r1 = r1 % 2
            return r0
        L3f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dw.hashCode():int");
    }

    public final String toString() {
        int i2 = i + 69;
        int i3 = i2 % 128;
        j = i3;
        int i4 = i2 % 2;
        String str = this.k;
        int i5 = i3 + 1;
        i = i5 % 128;
        if (i5 % 2 == 0) {
            return str;
        }
        int i6 = 53 / 0;
        return str;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        dp dpVar = new dp(cjVar.m450().m383(jz.m994(this.k, c("䅏큿꜅\ue223빍⡖", View.combineMeasuredStates(0, 0) + 6).intern())));
        int i2 = j + 25;
        i = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 20 : 'Z') == 'Z') {
            return dpVar;
        }
        int i3 = 45 / 0;
        return dpVar;
    }
}
