package com.json.adqualitysdk.sdk.i;

import android.util.TypedValue;
import android.view.View;
import android.widget.ExpandableListView;

/* JADX INFO: loaded from: classes4.dex */
public final class ds extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5567e = 36;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5568f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5569g = 1;
    private ej h;
    private dx i;

    public ds(ej ejVar, dx dxVar, Cdo cdo) {
        super(cdo);
        this.h = ejVar;
        this.i = dxVar;
    }

    private static String c(int i, boolean z, int i2, int i3, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (c.f35) {
            char[] cArr2 = new char[i3];
            c.f36 = 0;
            while (true) {
                int i4 = c.f36;
                if (i4 >= i3) {
                    break;
                }
                c.f37 = cArr[i4];
                cArr2[c.f36] = (char) (c.f37 + i);
                int i5 = c.f36;
                cArr2[i5] = (char) (cArr2[i5] - f5567e);
                c.f36 = i5 + 1;
            }
            if (i2 > 0) {
                c.f38 = i2;
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr2, 0, cArr3, 0, i3);
                int i6 = c.f38;
                System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                int i7 = c.f38;
                System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                c.f36 = 0;
                while (true) {
                    int i8 = c.f36;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr2[(i3 - i8) - 1];
                    c.f36 = i8 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003e, code lost:
    
        if (r0.equals(r7.h) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0048, code lost:
    
        if ((r7.h == null) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004a, code lost:
    
        r0 = r6.i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004e, code lost:
    
        if (r0 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0050, code lost:
    
        r3 = '8';
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0053, code lost:
    
        r3 = 'b';
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0055, code lost:
    
        if (r3 == '8') goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0059, code lost:
    
        if (r7.i != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x005b, code lost:
    
        r7 = com.json.adqualitysdk.sdk.i.ds.f5568f + 125;
        com.json.adqualitysdk.sdk.i.ds.f5569g = r7 % 128;
        r7 = r7 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0065, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0066, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006d, code lost:
    
        return r0.equals(r7.i);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            int r0 = com.json.adqualitysdk.sdk.i.ds.f5569g
            int r1 = r0 + 67
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.ds.f5568f = r2
            int r1 = r1 % 2
            if (r1 != 0) goto L6f
            r1 = 1
            if (r6 != r7) goto L10
            return r1
        L10:
            r2 = 6
            if (r7 == 0) goto L15
            r3 = 6
            goto L17
        L15:
            r3 = 35
        L17:
            r4 = 0
            if (r3 == r2) goto L1b
            goto L6e
        L1b:
            r2 = 17
            int r0 = r0 + r2
            int r3 = r0 % 128
            com.json.adqualitysdk.sdk.i.ds.f5568f = r3
            int r0 = r0 % 2
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.ds> r0 = com.json.adqualitysdk.sdk.i.ds.class
            java.lang.Class r3 = r7.getClass()
            r5 = 73
            if (r0 == r3) goto L30
            r2 = 73
        L30:
            if (r2 == r5) goto L6e
            com.ironsource.adqualitysdk.sdk.i.ds r7 = (com.json.adqualitysdk.sdk.i.ds) r7
            com.ironsource.adqualitysdk.sdk.i.ej r0 = r6.h
            if (r0 == 0) goto L41
            com.ironsource.adqualitysdk.sdk.i.ej r2 = r7.h
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L4a
            goto L6e
        L41:
            com.ironsource.adqualitysdk.sdk.i.ej r0 = r7.h
            if (r0 == 0) goto L47
            r0 = 0
            goto L48
        L47:
            r0 = 1
        L48:
            if (r0 == 0) goto L6e
        L4a:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r6.i
            r2 = 56
            if (r0 == 0) goto L53
            r3 = 56
            goto L55
        L53:
            r3 = 98
        L55:
            if (r3 == r2) goto L67
            com.ironsource.adqualitysdk.sdk.i.dx r7 = r7.i
            if (r7 != 0) goto L66
            int r7 = com.json.adqualitysdk.sdk.i.ds.f5568f
            int r7 = r7 + 125
            int r0 = r7 % 128
            com.json.adqualitysdk.sdk.i.ds.f5569g = r0
            int r7 = r7 % 2
            return r1
        L66:
            return r4
        L67:
            com.ironsource.adqualitysdk.sdk.i.dx r7 = r7.i
            boolean r7 = r0.equals(r7)
            return r7
        L6e:
            return r4
        L6f:
            r7 = 0
            throw r7     // Catch: java.lang.Throwable -> L71
        L71:
            r7 = move-exception
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ds.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i = f5569g + 73;
        f5568f = i % 128;
        int i2 = i % 2;
        ej ejVar = this.h;
        int iHashCode = 0;
        int iHashCode2 = (ejVar != null ? ejVar.hashCode() : 0) * 31;
        dx dxVar = this.i;
        if (!(dxVar == null)) {
            int i3 = f5568f + 57;
            f5569g = i3 % 128;
            if (i3 % 2 == 0) {
                int iHashCode3 = dxVar.hashCode();
                int i4 = 22 / 0;
                iHashCode = iHashCode3;
            } else {
                iHashCode = dxVar.hashCode();
            }
        }
        return iHashCode2 + iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.h);
        sb.append(c((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 77, true, ExpandableListView.getPackedPositionType(0L) + 3, 3 - View.MeasureSpec.makeMeasureSpec(0, 0), "\ufff7\u0014\ufff7").intern());
        sb.append(this.i);
        String string = sb.toString();
        int i = f5569g + 37;
        f5568f = i % 128;
        if (i % 2 == 0) {
            return string;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final dp mo687(dr drVar, cj cjVar) {
        int i = f5569g + 23;
        f5568f = i % 128;
        int i2 = i % 2;
        dp dpVarM702 = this.i.m702(drVar, cjVar);
        drVar.m686(this.h.m712(), dpVarM702.m674());
        int i3 = f5568f + 105;
        f5569g = i3 % 128;
        if ((i3 % 2 == 0 ? 'b' : '`') != 'b') {
            return dpVarM702;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ej m688() {
        int i = f5569g + 31;
        int i2 = i % 128;
        f5568f = i2;
        int i3 = i % 2;
        ej ejVar = this.h;
        int i4 = i2 + 67;
        f5569g = i4 % 128;
        int i5 = i4 % 2;
        return ejVar;
    }
}
