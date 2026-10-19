package com.json.adqualitysdk.sdk.i;

import android.view.View;
import android.view.ViewConfiguration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class dy extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f5585e = -4077133954574067667L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5586f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5587g = 1;
    private String h;
    private dx[] i;

    public dy(String str, List<dx> list, Cdo cdo) {
        super(cdo);
        this.h = dq.m680(str);
        dx[] dxVarArr = new dx[list.size()];
        this.i = dxVarArr;
        list.toArray(dxVarArr);
    }

    private static String d(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(f5585e, cArr, i);
            f.f52 = 4;
            while (true) {
                int i2 = f.f52;
                if (i2 < cArrM713.length) {
                    f.f53 = i2 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * f5585e));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    String c(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.h);
        sb.append(d("ᏇᏯ\ue624썊ꛀ", 1 - (ViewConfiguration.getKeyRepeatDelay() >> 16)).intern());
        sb.append(dx.a(objArr));
        sb.append(d("岿岖垧꽊顾", 1 - View.combineMeasuredStates(0, 0)).intern());
        String string = sb.toString();
        int i = f5587g + 49;
        f5586f = i % 128;
        int i2 = i % 2;
        return string;
    }

    final dx[] e() {
        int i = f5587g + 83;
        int i2 = i % 128;
        f5586f = i2;
        if (i % 2 != 0) {
            throw null;
        }
        dx[] dxVarArr = this.i;
        int i3 = i2 + 85;
        f5587g = i3 % 128;
        int i4 = i3 % 2;
        return dxVarArr;
    }

    public boolean equals(Object obj) {
        int i = f5587g + 45;
        int i2 = i % 128;
        f5586f = i2;
        int i3 = i % 2;
        if (this == obj) {
            int i4 = i2 + 77;
            f5587g = i4 % 128;
            if (i4 % 2 == 0) {
            }
            return true;
        }
        if ((obj != null ? (char) 26 : (char) 30) != 30) {
            if ((getClass() != obj.getClass() ? '@' : ']') != '@') {
                dy dyVar = (dy) obj;
                if ((!this.h.equals(dyVar.h) ? '$' : 'C') != '$') {
                    boolean zEquals = Arrays.equals(this.i, dyVar.i);
                    int i5 = f5587g + 3;
                    f5586f = i5 % 128;
                    if (i5 % 2 == 0) {
                        return zEquals;
                    }
                    throw null;
                }
            }
        }
        return false;
    }

    final List<Object> f(dr drVar, cj cjVar) {
        ArrayList arrayList = new ArrayList();
        dx[] dxVarArr = this.i;
        int length = dxVarArr.length;
        int i = 0;
        int i2 = f5587g + 63;
        f5586f = i2 % 128;
        int i3 = i2 % 2;
        while (true) {
            if ((i < length ? 'N' : '&') == '&') {
                return arrayList;
            }
            int i4 = f5586f + 85;
            f5587g = i4 % 128;
            if ((i4 % 2 == 0 ? (char) 27 : '1') != 27) {
                arrayList.add(dxVarArr[i].m702(drVar, cjVar).m674());
                i++;
            } else {
                arrayList.add(dxVarArr[i].m702(drVar, cjVar).m674());
                i += 31;
            }
        }
    }

    public int hashCode() {
        int iHashCode;
        int i = f5586f;
        int i2 = i + 75;
        f5587g = i2 % 128;
        int i3 = i2 % 2;
        String str = this.h;
        if ((str != null ? 'S' : 'V') != 'V') {
            int i4 = i + 7;
            f5587g = i4 % 128;
            int i5 = i4 % 2;
            iHashCode = str.hashCode();
        } else {
            iHashCode = 0;
        }
        int iHashCode2 = (iHashCode * 31) + Arrays.hashCode(this.i);
        int i6 = f5587g + 15;
        f5586f = i6 % 128;
        int i7 = i6 % 2;
        return iHashCode2;
    }

    public String toString() {
        int i = f5586f + 15;
        f5587g = i % 128;
        if (!(i % 2 == 0)) {
            return c(this.i);
        }
        c(this.i);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0052, code lost:
    
        if (m705().equals(d("┅╩畋\ue77f괉ჾ坂", (android.view.ViewConfiguration.getWindowTouchSlop() >> 8) + 1).intern()) != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0054, code lost:
    
        r7 = new java.lang.StringBuilder();
        r7.append(d("郹邪央\uecf7腑쬅峡䎭", (android.view.ViewConfiguration.getDoubleTapTimeout() >> 16) + 1).intern());
        r7.append(r8.m445());
        r7 = r7.toString();
        r8 = new java.lang.StringBuilder();
        r8.append(r0.get(0));
        com.json.adqualitysdk.sdk.i.m.m1031(r7, r8.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0091, code lost:
    
        return new com.json.adqualitysdk.sdk.i.dp(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0092, code lost:
    
        r3 = new com.json.adqualitysdk.sdk.i.dp(((com.json.adqualitysdk.sdk.i.dn) r7.m682(m705())).m667(r7, r8, r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00a5, code lost:
    
        r7 = com.json.adqualitysdk.sdk.i.dy.f5586f + 23;
        com.json.adqualitysdk.sdk.i.dy.f5587g = r7 % 128;
        r7 = r7 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00af, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00bd, code lost:
    
        if (r8.m452().m762(m705()) != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00bf, code lost:
    
        r7 = r8.m452().m762(m705()).m667(r7, r8, r0).m676(false);
        r8 = com.json.adqualitysdk.sdk.i.dy.f5587g + 111;
        com.json.adqualitysdk.sdk.i.dy.f5586f = r8 % 128;
        r8 = r8 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00dd, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00de, code lost:
    
        r2 = r8.m443();
        r3 = m705();
        r8.m447();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00f2, code lost:
    
        return new com.json.adqualitysdk.sdk.i.dp(r2.mo427(r8, r3, r0, r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
    
        if (m705().equals(d("┅╩畋\ue77f괉ჾ坂", 1 >>> (android.view.ViewConfiguration.getWindowTouchSlop() * 113)).intern()) != false) goto L13;
     */
    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.json.adqualitysdk.sdk.i.dp mo687(com.json.adqualitysdk.sdk.i.dr r7, com.json.adqualitysdk.sdk.i.cj r8) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dy.mo687(com.ironsource.adqualitysdk.sdk.i.dr, com.ironsource.adqualitysdk.sdk.i.cj):com.ironsource.adqualitysdk.sdk.i.dp");
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    final String m705() {
        int i = f5586f;
        int i2 = i + 43;
        f5587g = i2 % 128;
        int i3 = i2 % 2;
        String str = this.h;
        int i4 = i + 93;
        f5587g = i4 % 128;
        if (i4 % 2 != 0) {
            return str;
        }
        int i5 = 48 / 0;
        return str;
    }
}
