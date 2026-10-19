package com.json.adqualitysdk.sdk.i;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes4.dex */
public final class dv extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f5578e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5579f = -383674182;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static char f5580g = 0;
    private static int h = 0;
    private static int i = 1;
    private dx j;
    private String k;

    public dv(dx dxVar, String str, Cdo cdo) {
        super(cdo);
        this.j = dxVar;
        this.k = str;
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
                    cArr6[i6] = (char) (((((long) (cArr[i6] ^ cArr4[i5])) ^ f5578e) ^ ((long) f5579f)) ^ ((long) f5580g));
                    j.f125 = i6 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0025, code lost:
    
        if (com.json.adqualitysdk.sdk.i.dv.class != r6.getClass()) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0033, code lost:
    
        if ((com.json.adqualitysdk.sdk.i.dv.class == r6.getClass()) != true) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0036, code lost:
    
        r6 = (com.json.adqualitysdk.sdk.i.dv) r6;
        r0 = r5.j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003a, code lost:
    
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003c, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003e, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x003f, code lost:
    
        if (r2 == true) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0041, code lost:
    
        r2 = com.json.adqualitysdk.sdk.i.dv.i + 5;
        com.json.adqualitysdk.sdk.i.dv.h = r2 % 128;
        r2 = r2 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0051, code lost:
    
        if (r0.equals(r6.j) != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0056, code lost:
    
        if (r6.j == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0058, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0059, code lost:
    
        r0 = r5.k;
        r6 = r6.k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005d, code lost:
    
        if (r0 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005f, code lost:
    
        r6 = r0.equals(r6);
        r0 = com.json.adqualitysdk.sdk.i.dv.h + 61;
        com.json.adqualitysdk.sdk.i.dv.i = r0 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006d, code lost:
    
        if ((r0 % 2) == 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x006f, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0071, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0074, code lost:
    
        if (r6 != null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0076, code lost:
    
        r6 = com.json.adqualitysdk.sdk.i.dv.h + 37;
        com.json.adqualitysdk.sdk.i.dv.i = r6 % 128;
        r6 = r6 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0080, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0081, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.dv> r0 = com.json.adqualitysdk.sdk.i.dv.class
            r1 = 15
            if (r5 != r6) goto L9
            r2 = 64
            goto Lb
        L9:
            r2 = 15
        Lb:
            r3 = 1
            if (r2 == r1) goto Lf
            return r3
        Lf:
            r1 = 0
            if (r6 == 0) goto L82
            int r2 = com.json.adqualitysdk.sdk.i.dv.h
            int r2 = r2 + 101
            int r4 = r2 % 128
            com.json.adqualitysdk.sdk.i.dv.i = r4
            int r2 = r2 % 2
            if (r2 != 0) goto L2a
            java.lang.Class r2 = r6.getClass()
            r4 = 94
            int r4 = r4 / r1
            if (r0 == r2) goto L36
            goto L82
        L28:
            r6 = move-exception
            throw r6
        L2a:
            java.lang.Class r2 = r6.getClass()
            if (r0 == r2) goto L32
            r0 = 0
            goto L33
        L32:
            r0 = 1
        L33:
            if (r0 == r3) goto L36
            goto L82
        L36:
            com.ironsource.adqualitysdk.sdk.i.dv r6 = (com.json.adqualitysdk.sdk.i.dv) r6
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r5.j
            if (r0 == 0) goto L3e
            r2 = 0
            goto L3f
        L3e:
            r2 = 1
        L3f:
            if (r2 == r3) goto L54
            int r2 = com.json.adqualitysdk.sdk.i.dv.i
            int r2 = r2 + 5
            int r4 = r2 % 128
            com.json.adqualitysdk.sdk.i.dv.h = r4
            int r2 = r2 % 2
            com.ironsource.adqualitysdk.sdk.i.dx r2 = r6.j
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L59
            goto L58
        L54:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r6.j
            if (r0 == 0) goto L59
        L58:
            return r1
        L59:
            java.lang.String r0 = r5.k
            java.lang.String r6 = r6.k
            if (r0 == 0) goto L74
            boolean r6 = r0.equals(r6)
            int r0 = com.json.adqualitysdk.sdk.i.dv.h
            int r0 = r0 + 61
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.dv.i = r1
            int r0 = r0 % 2
            if (r0 == 0) goto L70
            return r6
        L70:
            r6 = 0
            throw r6     // Catch: java.lang.Throwable -> L72
        L72:
            r6 = move-exception
            throw r6
        L74:
            if (r6 != 0) goto L81
            int r6 = com.json.adqualitysdk.sdk.i.dv.h
            int r6 = r6 + 37
            int r0 = r6 % 128
            com.json.adqualitysdk.sdk.i.dv.i = r0
            int r6 = r6 % 2
            return r3
        L81:
            return r1
        L82:
            int r6 = com.json.adqualitysdk.sdk.i.dv.h
            int r6 = r6 + 61
            int r0 = r6 % 128
            com.json.adqualitysdk.sdk.i.dv.i = r0
            int r6 = r6 % 2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dv.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int iHashCode;
        dx dxVar = this.j;
        int iHashCode2 = 0;
        if (dxVar != null) {
            int i2 = h + 35;
            i = i2 % 128;
            if ((i2 % 2 == 0 ? (char) 31 : (char) 11) != 11) {
                dxVar.hashCode();
                throw null;
            }
            iHashCode = dxVar.hashCode();
        } else {
            iHashCode = 0;
        }
        int i3 = iHashCode * 31;
        String str = this.k;
        if (str != null) {
            int i4 = i + 57;
            h = i4 % 128;
            if (i4 % 2 != 0) {
                int i5 = 30 / 0;
                iHashCode2 = str.hashCode();
            } else {
                iHashCode2 = str.hashCode();
            }
        } else {
            int i6 = h + 35;
            i = i6 % 128;
            int i7 = i6 % 2;
        }
        return i3 + iHashCode2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.j.toString());
        sb.append(c("\ue9c8\ue4b5蒅흣", "\u0000\u0000\u0000\u0000", (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) - 2048608792, (char) (25477 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), "悈").intern());
        sb.append(this.k);
        String string = sb.toString();
        int i2 = h + 85;
        i = i2 % 128;
        if ((i2 % 2 == 0 ? '@' : '4') != '@') {
            return string;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        int i2 = h + 3;
        i = i2 % 128;
        int i3 = i2 % 2;
        Object objM674 = this.j.m702(drVar, cjVar).m674();
        if (objM674 instanceof cj) {
            return new dp(((cj) objM674).m456(this.k));
        }
        try {
            dp dpVar = new dp(objM674.getClass().getDeclaredField(this.k).get(objM674));
            int i4 = i + 107;
            h = i4 % 128;
            if (i4 % 2 == 0) {
                return dpVar;
            }
            int i5 = 42 / 0;
            return dpVar;
        } catch (Exception unused) {
            return new dp(null);
        }
    }
}
