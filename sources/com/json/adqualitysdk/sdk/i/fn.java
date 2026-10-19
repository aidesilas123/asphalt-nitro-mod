package com.json.adqualitysdk.sdk.i;

import android.graphics.ImageFormat;
import android.os.Process;
import android.view.KeyEvent;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes4.dex */
public final class fn extends fr {
    private static char a = 2772;
    private static char b = 49119;
    private static char c = 1902;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5632d = 20923;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5633e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5634f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private dx f5635g;
    private dx h;
    private dx i;
    private fr j;

    public fn(dx dxVar, dx dxVar2, dx dxVar3, fr frVar) {
        this.f5635g = dxVar;
        this.h = dxVar2;
        this.i = dxVar3;
        this.j = frVar;
    }

    private static String a(String str, int i) {
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
                int i2 = o.f138;
                if (i2 < cArr.length) {
                    cArr3[0] = cArr[i2];
                    cArr3[1] = cArr[i2 + 1];
                    int i3 = 58224;
                    for (int i4 = 0; i4 < 16; i4++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + c)) ^ ((cArr3[0] >>> 5) + f5632d)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i3) ^ ((cArr3[1] << 4) + a)) ^ ((cArr3[1] >>> 5) + b)));
                        i3 -= 40503;
                    }
                    int i5 = o.f138;
                    cArr2[i5] = cArr3[0];
                    cArr2[i5 + 1] = cArr3[1];
                    o.f138 = i5 + 2;
                } else {
                    str2 = new String(cArr2, 0, i);
                }
            }
        }
        return str2;
    }

    private static dp b(dx dxVar, dr drVar, cj cjVar) {
        int i = f5633e + 61;
        f5634f = i % 128;
        if (i % 2 == 0) {
            throw null;
        }
        if (dxVar == null) {
            return new dp(null);
        }
        dp dpVarM702 = dxVar.m702(drVar, cjVar);
        int i2 = f5634f + 55;
        f5633e = i2 % 128;
        if ((i2 % 2 != 0 ? '`' : 'D') == 'D') {
            return dpVarM702;
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x006e, code lost:
    
        if (r0.equals(r6.h) == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0073, code lost:
    
        if (r6.h != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0075, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0076, code lost:
    
        r0 = r5.i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0078, code lost:
    
        if (r0 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007a, code lost:
    
        r3 = com.json.adqualitysdk.sdk.i.fn.f5633e + 55;
        com.json.adqualitysdk.sdk.i.fn.f5634f = r3 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0084, code lost:
    
        if ((r3 % 2) == 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x008c, code lost:
    
        if (r0.equals(r6.i) != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008f, code lost:
    
        r0.equals(r6.i);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0095, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x009a, code lost:
    
        if (r6.i == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x009c, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x009e, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x009f, code lost:
    
        if (r0 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00a1, code lost:
    
        r0 = r5.j;
        r6 = r6.j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00a5, code lost:
    
        if (r0 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ab, code lost:
    
        return r0.equals(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ac, code lost:
    
        if (r6 != null) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ae, code lost:
    
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.fn> r0 = com.json.adqualitysdk.sdk.i.fn.class
            r1 = 1
            if (r5 != r6) goto L10
            int r6 = com.json.adqualitysdk.sdk.i.fn.f5634f
            int r6 = r6 + 17
            int r0 = r6 % 128
            com.json.adqualitysdk.sdk.i.fn.f5633e = r0
            int r6 = r6 % 2
            return r1
        L10:
            r2 = 0
            if (r6 == 0) goto Laf
            int r3 = com.json.adqualitysdk.sdk.i.fn.f5633e
            int r3 = r3 + 71
            int r4 = r3 % 128
            com.json.adqualitysdk.sdk.i.fn.f5634f = r4
            int r3 = r3 % 2
            if (r3 != 0) goto L35
            java.lang.Class r3 = r6.getClass()
            r4 = 93
            int r4 = r4 / r2
            r4 = 56
            if (r0 == r3) goto L2d
            r0 = 11
            goto L2f
        L2d:
            r0 = 56
        L2f:
            if (r0 == r4) goto L3d
            goto Laf
        L33:
            r6 = move-exception
            throw r6
        L35:
            java.lang.Class r3 = r6.getClass()
            if (r0 == r3) goto L3d
            goto Laf
        L3d:
            com.ironsource.adqualitysdk.sdk.i.fn r6 = (com.json.adqualitysdk.sdk.i.fn) r6
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r5.f5635g
            r3 = 73
            if (r0 == 0) goto L48
            r4 = 73
            goto L4a
        L48:
            r4 = 52
        L4a:
            if (r4 == r3) goto L51
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r6.f5635g
            if (r0 == 0) goto L5a
            goto L59
        L51:
            com.ironsource.adqualitysdk.sdk.i.dx r3 = r6.f5635g
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L5a
        L59:
            return r2
        L5a:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r5.h
            if (r0 == 0) goto L71
            int r3 = com.json.adqualitysdk.sdk.i.fn.f5633e
            int r3 = r3 + 37
            int r4 = r3 % 128
            com.json.adqualitysdk.sdk.i.fn.f5634f = r4
            int r3 = r3 % 2
            com.ironsource.adqualitysdk.sdk.i.dx r3 = r6.h
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L76
            goto L75
        L71:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r6.h
            if (r0 == 0) goto L76
        L75:
            return r2
        L76:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r5.i
            if (r0 == 0) goto L98
            int r3 = com.json.adqualitysdk.sdk.i.fn.f5633e
            int r3 = r3 + 55
            int r4 = r3 % 128
            com.json.adqualitysdk.sdk.i.fn.f5634f = r4
            int r3 = r3 % 2
            if (r3 == 0) goto L8f
            com.ironsource.adqualitysdk.sdk.i.dx r3 = r6.i
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto La1
            goto Laf
        L8f:
            com.ironsource.adqualitysdk.sdk.i.dx r6 = r6.i
            r0.equals(r6)
            r6 = 0
            throw r6     // Catch: java.lang.Throwable -> L96
        L96:
            r6 = move-exception
            throw r6
        L98:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r6.i
            if (r0 == 0) goto L9e
            r0 = 0
            goto L9f
        L9e:
            r0 = 1
        L9f:
            if (r0 == 0) goto Laf
        La1:
            com.ironsource.adqualitysdk.sdk.i.fr r0 = r5.j
            com.ironsource.adqualitysdk.sdk.i.fr r6 = r6.j
            if (r0 == 0) goto Lac
            boolean r6 = r0.equals(r6)
            return r6
        Lac:
            if (r6 != 0) goto Laf
            return r1
        Laf:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.fn.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int iHashCode;
        int iHashCode2;
        dx dxVar = this.f5635g;
        int iHashCode3 = (dxVar != null ? dxVar.hashCode() : 0) * 31;
        dx dxVar2 = this.h;
        int iHashCode4 = (iHashCode3 + (dxVar2 != null ? dxVar2.hashCode() : 0)) * 31;
        dx dxVar3 = this.i;
        if (dxVar3 != null) {
            int i = f5633e + 11;
            f5634f = i % 128;
            if (i % 2 == 0) {
                dxVar3.hashCode();
                throw null;
            }
            iHashCode = dxVar3.hashCode();
        } else {
            iHashCode = 0;
        }
        int i2 = (iHashCode4 + iHashCode) * 31;
        fr frVar = this.j;
        if (!(frVar != null)) {
            iHashCode2 = 0;
        } else {
            int i3 = f5633e + 3;
            f5634f = i3 % 128;
            int i4 = i3 % 2;
            iHashCode2 = frVar.hashCode();
        }
        int i5 = i2 + iHashCode2;
        int i6 = f5633e + 67;
        f5634f = i6 % 128;
        if ((i6 % 2 == 0 ? (char) 6 : 'S') == 'S') {
            return i5;
        }
        int i7 = 48 / 0;
        return i5;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(a("쪹菾쫫\udce4琂⤁", 4 - Process.getGidForName("")).intern());
        dx dxVar = this.f5635g;
        if ((dxVar != null ? (char) 11 : 'X') != 'X') {
            int i = f5633e + 47;
            f5634f = i % 128;
            int i2 = i % 2;
            sb.append(dxVar);
        }
        sb.append(a("\uf377ތ", MotionEvent.axisFromString("") + 3).intern());
        sb.append(this.h);
        sb.append(a("\uf377ތ", ImageFormat.getBitsPerPixel(0) + 3).intern());
        dx dxVar2 = this.i;
        if (!(dxVar2 == null)) {
            sb.append(dxVar2);
            int i3 = f5633e + 49;
            f5634f = i3 % 128;
            int i4 = i3 % 2;
        }
        sb.append(a("뇥ௌ", KeyEvent.getDeadChar(0, 0) + 2).intern());
        sb.append(this.j);
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        return new com.json.adqualitysdk.sdk.i.dp(null);
     */
    @Override // com.json.adqualitysdk.sdk.i.fr
    /* JADX INFO: renamed from: ﾇ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.json.adqualitysdk.sdk.i.dp mo714(com.json.adqualitysdk.sdk.i.dr r5, com.json.adqualitysdk.sdk.i.cj r6) {
        /*
            r4 = this;
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r4.f5635g
            b(r0, r5, r6)
            int r0 = com.json.adqualitysdk.sdk.i.fn.f5633e
            int r0 = r0 + 35
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.fn.f5634f = r1
            int r0 = r0 % 2
        Lf:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r4.h
            com.ironsource.adqualitysdk.sdk.i.dp r0 = r0.m702(r5, r6)
            boolean r0 = r0.m678()
            r1 = 46
            if (r0 == 0) goto L20
            r0 = 31
            goto L22
        L20:
            r0 = 46
        L22:
            if (r0 == r1) goto L5d
            int r0 = com.json.adqualitysdk.sdk.i.fn.f5634f
            int r0 = r0 + 23
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.fn.f5633e = r1
            int r0 = r0 % 2
            com.ironsource.adqualitysdk.sdk.i.fr r0 = r4.j
            com.ironsource.adqualitysdk.sdk.i.dp r0 = r0.mo714(r5, r6)
            boolean r1 = r0.m675()
            r2 = 0
            r3 = 1
            if (r1 != 0) goto L3e
            r1 = 1
            goto L3f
        L3e:
            r1 = 0
        L3f:
            if (r1 == r3) goto L42
            goto L5d
        L42:
            boolean r1 = r0.m677()
            if (r1 == 0) goto L49
            goto L4a
        L49:
            r2 = 1
        L4a:
            if (r2 == 0) goto L52
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r4.i
            b(r0, r5, r6)
            goto Lf
        L52:
            int r5 = com.json.adqualitysdk.sdk.i.fn.f5634f
            int r5 = r5 + 123
            int r6 = r5 % 128
            com.json.adqualitysdk.sdk.i.fn.f5633e = r6
            int r5 = r5 % 2
            return r0
        L5d:
            com.ironsource.adqualitysdk.sdk.i.dp r5 = new com.ironsource.adqualitysdk.sdk.i.dp
            r6 = 0
            r5.<init>(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.fn.mo714(com.ironsource.adqualitysdk.sdk.i.dr, com.ironsource.adqualitysdk.sdk.i.cj):com.ironsource.adqualitysdk.sdk.i.dp");
    }
}
