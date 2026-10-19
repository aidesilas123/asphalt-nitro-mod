package com.json.adqualitysdk.sdk.i;

import android.graphics.ImageFormat;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;

/* JADX INFO: loaded from: classes4.dex */
public final class fl extends fr {
    private static long a = 1667191144176824488L;
    private static int b = 0;
    private static int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private dx f5626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private fr f5627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private fr f5628f;

    public fl(dx dxVar, fr frVar, fr frVar2) {
        this.f5626d = dxVar;
        this.f5627e = frVar;
        this.f5628f = frVar2;
    }

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i2 = h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ a);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
    
        if (r6.f5626d != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0059, code lost:
    
        if (r2.equals(r6.f5627e) == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0063, code lost:
    
        if ((r6.f5627e != null) != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0065, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0066, code lost:
    
        r2 = r5.f5628f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006a, code lost:
    
        if (r2 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006c, code lost:
    
        r4 = '[';
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006f, code lost:
    
        r4 = 'K';
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0071, code lost:
    
        if (r4 == 'K') goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0073, code lost:
    
        r0 = com.json.adqualitysdk.sdk.i.fl.c + 77;
        com.json.adqualitysdk.sdk.i.fl.b = r0 % 128;
        r0 = r0 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0083, code lost:
    
        return r2.equals(r6.f5628f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0086, code lost:
    
        if (r6.f5628f != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0088, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008a, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008b, code lost:
    
        if (r6 == true) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008d, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008e, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r5 != r6) goto Le
            int r6 = com.json.adqualitysdk.sdk.i.fl.c
            int r6 = r6 + 123
            int r1 = r6 % 128
            com.json.adqualitysdk.sdk.i.fl.b = r1
            int r6 = r6 % 2
            return r0
        Le:
            r1 = 0
            if (r6 == 0) goto L93
            int r2 = com.json.adqualitysdk.sdk.i.fl.b
            int r2 = r2 + 23
            int r3 = r2 % 128
            com.json.adqualitysdk.sdk.i.fl.c = r3
            int r2 = r2 % 2
            if (r2 == 0) goto L8f
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.fl> r2 = com.json.adqualitysdk.sdk.i.fl.class
            java.lang.Class r3 = r6.getClass()
            if (r2 == r3) goto L27
            goto L93
        L27:
            com.ironsource.adqualitysdk.sdk.i.fl r6 = (com.json.adqualitysdk.sdk.i.fl) r6
            com.ironsource.adqualitysdk.sdk.i.dx r2 = r5.f5626d
            if (r2 == 0) goto L4a
            int r3 = com.json.adqualitysdk.sdk.i.fl.c
            int r3 = r3 + 83
            int r4 = r3 % 128
            com.json.adqualitysdk.sdk.i.fl.b = r4
            int r3 = r3 % 2
            com.ironsource.adqualitysdk.sdk.i.dx r3 = r6.f5626d
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L4f
            int r6 = com.json.adqualitysdk.sdk.i.fl.c
            int r6 = r6 + 125
            int r0 = r6 % 128
            com.json.adqualitysdk.sdk.i.fl.b = r0
            int r6 = r6 % 2
            goto L4e
        L4a:
            com.ironsource.adqualitysdk.sdk.i.dx r2 = r6.f5626d
            if (r2 == 0) goto L4f
        L4e:
            return r1
        L4f:
            com.ironsource.adqualitysdk.sdk.i.fr r2 = r5.f5627e
            if (r2 == 0) goto L5c
            com.ironsource.adqualitysdk.sdk.i.fr r3 = r6.f5627e
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L66
            goto L65
        L5c:
            com.ironsource.adqualitysdk.sdk.i.fr r2 = r6.f5627e
            if (r2 == 0) goto L62
            r2 = 1
            goto L63
        L62:
            r2 = 0
        L63:
            if (r2 == 0) goto L66
        L65:
            return r1
        L66:
            com.ironsource.adqualitysdk.sdk.i.fr r2 = r5.f5628f
            r3 = 75
            if (r2 == 0) goto L6f
            r4 = 91
            goto L71
        L6f:
            r4 = 75
        L71:
            if (r4 == r3) goto L84
            int r0 = com.json.adqualitysdk.sdk.i.fl.c
            int r0 = r0 + 77
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.fl.b = r1
            int r0 = r0 % 2
            com.ironsource.adqualitysdk.sdk.i.fr r6 = r6.f5628f
            boolean r6 = r2.equals(r6)
            return r6
        L84:
            com.ironsource.adqualitysdk.sdk.i.fr r6 = r6.f5628f
            if (r6 != 0) goto L8a
            r6 = 1
            goto L8b
        L8a:
            r6 = 0
        L8b:
            if (r6 == r0) goto L8e
            return r1
        L8e:
            return r0
        L8f:
            r6 = 0
            throw r6     // Catch: java.lang.Throwable -> L91
        L91:
            r6 = move-exception
            throw r6
        L93:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.fl.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int iHashCode;
        dx dxVar = this.f5626d;
        int iHashCode2 = 0;
        int iHashCode3 = (!(dxVar != null) ? 0 : dxVar.hashCode()) * 31;
        fr frVar = this.f5627e;
        if (frVar != null) {
            iHashCode = frVar.hashCode();
            int i = c + 111;
            b = i % 128;
            int i2 = i % 2;
        } else {
            iHashCode = 0;
        }
        int i3 = (iHashCode3 + iHashCode) * 31;
        fr frVar2 = this.f5628f;
        if ((frVar2 != null ? 'I' : '_') != 'I') {
            int i4 = c + 125;
            b = i4 % 128;
            int i5 = i4 % 2;
        } else {
            iHashCode2 = frVar2.hashCode();
        }
        return i3 + iHashCode2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(a("チ齑澶㹝", 44959 - (ViewConfiguration.getLongPressTimeout() >> 16)).intern());
        sb.append(this.f5626d);
        sb.append(a("め", ExpandableListView.getPackedPositionGroup(0L) + 63277).intern());
        if ((this.f5627e instanceof fg ? (char) 0 : 'T') != 'T') {
            sb.append(a("よ", 10613 - KeyEvent.normalizeMetaState(0)).intern());
        } else {
            sb.append(a("ア", KeyEvent.getDeadChar(0, 0) + 7717).intern());
        }
        sb.append(this.f5627e);
        fr frVar = this.f5628f;
        if (frVar != null) {
            if (!(frVar instanceof fg)) {
                sb.append(a("ア", TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 7718).intern());
            } else {
                int i = c + 57;
                b = i % 128;
                sb.append(a("よ", i % 2 != 0 ? 11214 << ExpandableListView.getPackedPositionChild(1L) : ExpandableListView.getPackedPositionChild(0L) + 10614).intern());
            }
            sb.append(a("ネ뮓♵鋈", 35671 - (ViewConfiguration.getDoubleTapTimeout() >> 16)).intern());
            if (!(this.f5628f instanceof fg)) {
                sb.append(a("ア", 7716 - ImageFormat.getBitsPerPixel(0)).intern());
            } else {
                int i2 = b + 99;
                c = i2 % 128;
                sb.append(a("よ", i2 % 2 == 0 ? 8040 / (ViewConfiguration.getWindowTouchSlop() * 26) : 10613 - (ViewConfiguration.getWindowTouchSlop() >> 8)).intern());
            }
            sb.append(this.f5628f);
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
    
        if ((r3.f5626d.m702(r4, r5).m678() ? false : true) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
    
        if (r3.f5626d.m702(r4, r5).m678() != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
    
        r0 = com.json.adqualitysdk.sdk.i.fl.c + 61;
        com.json.adqualitysdk.sdk.i.fl.b = r0 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        if ((r0 % 2) == 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
    
        r0 = '[';
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
    
        r0 = '5';
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
    
        if (r0 != '5') goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
    
        return r3.f5627e.mo714(r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004e, code lost:
    
        r3.f5627e.mo714(r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0057, code lost:
    
        r0 = r3.f5628f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0059, code lost:
    
        if (r0 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005f, code lost:
    
        return r0.mo714(r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0067, code lost:
    
        return new com.json.adqualitysdk.sdk.i.dp(java.lang.Boolean.FALSE);
     */
    @Override // com.json.adqualitysdk.sdk.i.fr
    /* JADX INFO: renamed from: ﾇ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.json.adqualitysdk.sdk.i.dp mo714(com.json.adqualitysdk.sdk.i.dr r4, com.json.adqualitysdk.sdk.i.cj r5) {
        /*
            r3 = this;
            int r0 = com.json.adqualitysdk.sdk.i.fl.b
            int r0 = r0 + 93
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.fl.c = r1
            int r0 = r0 % 2
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L10
            r0 = 0
            goto L11
        L10:
            r0 = 1
        L11:
            if (r0 == 0) goto L23
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r3.f5626d
            com.ironsource.adqualitysdk.sdk.i.dp r0 = r0.m702(r4, r5)
            boolean r0 = r0.m678()
            if (r0 == 0) goto L20
            r1 = 0
        L20:
            if (r1 == 0) goto L32
            goto L57
        L23:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r3.f5626d
            com.ironsource.adqualitysdk.sdk.i.dp r0 = r0.m702(r4, r5)
            boolean r0 = r0.m678()
            r1 = 42
            int r1 = r1 / r2
            if (r0 == 0) goto L57
        L32:
            int r0 = com.json.adqualitysdk.sdk.i.fl.c
            int r0 = r0 + 61
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.fl.b = r1
            int r0 = r0 % 2
            r1 = 53
            if (r0 == 0) goto L43
            r0 = 91
            goto L45
        L43:
            r0 = 53
        L45:
            if (r0 != r1) goto L4e
            com.ironsource.adqualitysdk.sdk.i.fr r0 = r3.f5627e
            com.ironsource.adqualitysdk.sdk.i.dp r4 = r0.mo714(r4, r5)
            return r4
        L4e:
            com.ironsource.adqualitysdk.sdk.i.fr r0 = r3.f5627e
            r0.mo714(r4, r5)
            r4 = 0
            throw r4     // Catch: java.lang.Throwable -> L55
        L55:
            r4 = move-exception
            throw r4
        L57:
            com.ironsource.adqualitysdk.sdk.i.fr r0 = r3.f5628f
            if (r0 == 0) goto L60
            com.ironsource.adqualitysdk.sdk.i.dp r4 = r0.mo714(r4, r5)
            return r4
        L60:
            com.ironsource.adqualitysdk.sdk.i.dp r4 = new com.ironsource.adqualitysdk.sdk.i.dp
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            r4.<init>(r5)
            return r4
        L68:
            r4 = move-exception
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.fl.mo714(com.ironsource.adqualitysdk.sdk.i.dr, com.ironsource.adqualitysdk.sdk.i.cj):com.ironsource.adqualitysdk.sdk.i.dp");
    }
}
