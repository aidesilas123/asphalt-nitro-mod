package com.json.adqualitysdk.sdk.i;

/* JADX INFO: loaded from: classes4.dex */
public class fk extends fr {
    private static long a = 7455949338072028971L;
    private static int b = 0;
    private static int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private dx f5625d;

    public fk(dx dxVar) {
        this.f5625d = dxVar;
    }

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(a, cArr, i);
            f.f52 = 4;
            while (true) {
                int i2 = f.f52;
                if (i2 < cArrM713.length) {
                    f.f53 = i2 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * a));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    final dx b() {
        int i = c + 41;
        b = i % 128;
        if (!(i % 2 != 0)) {
            return this.f5625d;
        }
        int i2 = 35 / 0;
        return this.f5625d;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r5 != r6) goto Le
            int r6 = com.json.adqualitysdk.sdk.i.fk.b
            int r6 = r6 + 107
            int r1 = r6 % 128
            com.json.adqualitysdk.sdk.i.fk.c = r1
            int r6 = r6 % 2
            return r0
        Le:
            r1 = 74
            if (r6 == 0) goto L15
            r2 = 47
            goto L17
        L15:
            r2 = 74
        L17:
            r3 = 0
            if (r2 == r1) goto L64
            int r1 = com.json.adqualitysdk.sdk.i.fk.b
            int r1 = r1 + 29
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.fk.c = r2
            int r1 = r1 % 2
            if (r1 != 0) goto L3f
            java.lang.Class r1 = r5.getClass()
            java.lang.Class r2 = r6.getClass()
            r4 = 31
            int r4 = r4 / r3
            r4 = 49
            if (r1 == r2) goto L38
            r1 = 49
            goto L3a
        L38:
            r1 = 28
        L3a:
            if (r1 == r4) goto L64
            goto L4a
        L3d:
            r6 = move-exception
            throw r6
        L3f:
            java.lang.Class r1 = r5.getClass()
            java.lang.Class r2 = r6.getClass()
            if (r1 == r2) goto L4a
            goto L64
        L4a:
            com.ironsource.adqualitysdk.sdk.i.fk r6 = (com.json.adqualitysdk.sdk.i.fk) r6
            com.ironsource.adqualitysdk.sdk.i.dx r1 = r5.f5625d
            com.ironsource.adqualitysdk.sdk.i.dx r6 = r6.f5625d
            if (r1 == 0) goto L57
            boolean r6 = r1.equals(r6)
            return r6
        L57:
            if (r6 != 0) goto L64
            int r6 = com.json.adqualitysdk.sdk.i.fk.c
            int r6 = r6 + 115
            int r1 = r6 % 128
            com.json.adqualitysdk.sdk.i.fk.b = r1
            int r6 = r6 % 2
            return r0
        L64:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.fk.equals(java.lang.Object):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        if ((r4.f5625d == null) != true) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0028, code lost:
    
        if ((r4.f5625d != null ? 'T' : 30) != 30) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        return r4.f5625d.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0031, code lost:
    
        r1 = r1 + 23;
        com.json.adqualitysdk.sdk.i.fk.b = r1 % 128;
        r1 = r1 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int hashCode() {
        /*
            r4 = this;
            int r0 = com.json.adqualitysdk.sdk.i.fk.b
            int r0 = r0 + 29
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.fk.c = r1
            int r0 = r0 % 2
            r2 = 0
            if (r0 != 0) goto L1d
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r4.f5625d
            r3 = 97
            int r3 = r3 / r2
            r3 = 1
            if (r0 == 0) goto L17
            r0 = 0
            goto L18
        L17:
            r0 = 1
        L18:
            if (r0 == r3) goto L31
            goto L2a
        L1b:
            r0 = move-exception
            throw r0
        L1d:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r4.f5625d
            r3 = 30
            if (r0 == 0) goto L26
            r0 = 84
            goto L28
        L26:
            r0 = 30
        L28:
            if (r0 == r3) goto L31
        L2a:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r4.f5625d
            int r0 = r0.hashCode()
            return r0
        L31:
            int r1 = r1 + 23
            int r0 = r1 % 128
            com.json.adqualitysdk.sdk.i.fk.b = r0
            int r1 = r1 % 2
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.fk.hashCode():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
    
        if (r5.f5625d != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0025, code lost:
    
        r0 = new java.lang.StringBuilder();
        r0.append(r5.f5625d);
        r0.append(a("\udcc3瀡\udcf8뭰ਇ", (android.view.ViewConfiguration.getPressedStateDuration() >> 16) + 1).intern());
        r0 = r0.toString();
        r1 = com.json.adqualitysdk.sdk.i.fk.b + 47;
        com.json.adqualitysdk.sdk.i.fk.c = r1 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004f, code lost:
    
        if ((r1 % 2) != 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
    
        if (r3 == true) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0056, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0069, code lost:
    
        return a("\udcc3瀡\udcf8뭰ਇ", (android.util.TypedValue.complexToFloat(0) > 0.0f ? 1 : (android.util.TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 1).intern();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        if (r5.f5625d != null) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            r5 = this;
            int r0 = com.json.adqualitysdk.sdk.i.fk.b
            int r0 = r0 + 73
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.fk.c = r1
            int r0 = r0 % 2
            r1 = 35
            if (r0 != 0) goto L11
            r0 = 35
            goto L13
        L11:
            r0 = 62
        L13:
            java.lang.String r2 = "\udcc3瀡\udcf8뭰ਇ"
            r3 = 0
            r4 = 1
            if (r0 == r1) goto L1e
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r5.f5625d
            if (r0 == 0) goto L59
            goto L25
        L1e:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r5.f5625d
            r1 = 88
            int r1 = r1 / r3
            if (r0 == 0) goto L59
        L25:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            com.ironsource.adqualitysdk.sdk.i.dx r1 = r5.f5625d
            r0.append(r1)
            int r1 = android.view.ViewConfiguration.getPressedStateDuration()
            int r1 = r1 >> 16
            int r1 = r1 + r4
            java.lang.String r1 = a(r2, r1)
            java.lang.String r1 = r1.intern()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            int r1 = com.json.adqualitysdk.sdk.i.fk.b
            int r1 = r1 + 47
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.fk.c = r2
            int r1 = r1 % 2
            if (r1 != 0) goto L52
            r3 = 1
        L52:
            if (r3 == r4) goto L55
            return r0
        L55:
            r0 = 0
            throw r0     // Catch: java.lang.Throwable -> L57
        L57:
            r0 = move-exception
            throw r0
        L59:
            float r0 = android.util.TypedValue.complexToFloat(r3)
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            int r0 = r0 + r4
            java.lang.String r0 = a(r2, r0)
            java.lang.String r0 = r0.intern()
            return r0
        L6a:
            r0 = move-exception
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.fk.toString():java.lang.String");
    }

    @Override // com.json.adqualitysdk.sdk.i.fr
    /* JADX INFO: renamed from: ﾇ */
    public dp mo714(dr drVar, cj cjVar) {
        int i = b + 61;
        int i2 = i % 128;
        c = i2;
        int i3 = i % 2;
        dx dxVar = this.f5625d;
        if ((dxVar != null ? 'V' : '>') == '>') {
            return new dp(null);
        }
        int i4 = i2 + 41;
        b = i4 % 128;
        int i5 = i4 % 2;
        return dxVar.m702(drVar, cjVar);
    }
}
