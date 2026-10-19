package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.view.KeyEvent;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public final class dt {
    private static int a = -73692178;
    private static int b = 72;
    private static int c = 901644616;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static byte[] f5570d = {-71};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static short[] f5571e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5572f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5573g = 1;
    private a h;
    private String i;
    private int j;

    public enum a {
        f48,
        f45,
        f46,
        f49,
        f47,
        f42,
        f44,
        f43;

        private static int[] b = null;
        private static int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5574d = 1;

        static {
            e();
            int i = c + 69;
            f5574d = i % 128;
            int i2 = i % 2;
        }

        private static String a(int[] iArr, int i) {
            String str;
            synchronized (b.f33) {
                char[] cArr = new char[4];
                char[] cArr2 = new char[iArr.length << 1];
                int[] iArr2 = (int[]) b.clone();
                b.f34 = 0;
                while (true) {
                    int i2 = b.f34;
                    if (i2 < iArr.length) {
                        cArr[0] = (char) (iArr[i2] >> 16);
                        cArr[1] = (char) iArr[i2];
                        cArr[2] = (char) (iArr[i2 + 1] >> 16);
                        cArr[3] = (char) iArr[i2 + 1];
                        b.f31 = (cArr[0] << 16) + cArr[1];
                        b.f32 = (cArr[2] << 16) + cArr[3];
                        b.m390(iArr2);
                        for (int i3 = 0; i3 < 16; i3++) {
                            int i4 = b.f31 ^ iArr2[i3];
                            b.f31 = i4;
                            b.f32 = b.m391(i4) ^ b.f32;
                            int i5 = b.f31;
                            b.f31 = b.f32;
                            b.f32 = i5;
                        }
                        int i6 = b.f31;
                        b.f31 = b.f32;
                        b.f32 = i6;
                        b.f32 = i6 ^ iArr2[16];
                        b.f31 ^= iArr2[17];
                        int i7 = b.f32;
                        int i8 = b.f31;
                        cArr[0] = (char) (i8 >>> 16);
                        cArr[1] = (char) i8;
                        int i9 = b.f32;
                        cArr[2] = (char) (i9 >>> 16);
                        cArr[3] = (char) i9;
                        b.m390(iArr2);
                        int i10 = b.f34;
                        cArr2[i10 << 1] = cArr[0];
                        cArr2[(i10 << 1) + 1] = cArr[1];
                        cArr2[(i10 << 1) + 2] = cArr[2];
                        cArr2[(i10 << 1) + 3] = cArr[3];
                        b.f34 = i10 + 2;
                    } else {
                        str = new String(cArr2, 0, i);
                    }
                }
            }
            return str;
        }

        static void e() {
            b = new int[]{-634046779, -142230447, 223332222, 1381153914, -882897457, 922832825, -762873762, -1134467577, 1059120511, -1569822292, -610097143, 167943379, 494724062, -127034288, -995625544, 258227185, 489575753, -795888050};
        }

        public static a valueOf(String str) {
            int i = c + 97;
            f5574d = i % 128;
            int i2 = i % 2;
            a aVar = (a) Enum.valueOf(a.class, str);
            int i3 = f5574d + 107;
            c = i3 % 128;
            int i4 = i3 % 2;
            return aVar;
        }

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static a[] valuesCustom() {
            int i = f5574d + 89;
            c = i % 128;
            if (!(i % 2 != 0)) {
                return (a[]) values().clone();
            }
            int i2 = 97 / 0;
            return (a[]) values().clone();
        }
    }

    public dt(a aVar, String str, int i) {
        this.h = aVar;
        this.i = str;
        this.j = i;
    }

    private static String a(int i, int i2, byte b2, short s, int i3) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i4 = b;
            int i5 = i + i4;
            boolean z = i5 == -1;
            if (z) {
                byte[] bArr = f5570d;
                i5 = bArr != null ? (byte) (bArr[a + i3] + i4) : (short) (f5571e[a + i3] + i4);
            }
            if (i5 > 0) {
                n.f136 = ((i3 + i5) - 2) + a + (z ? 1 : 0);
                n.f135 = b2;
                char c2 = (char) (i2 + c);
                n.f133 = c2;
                sb.append(c2);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i5) {
                    byte[] bArr2 = f5570d;
                    if (bArr2 != null) {
                        int i6 = n.f136;
                        n.f136 = i6 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i6] + s)) ^ n.f135));
                    } else {
                        short[] sArr = f5571e;
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((short) (sArr[i7] + s)) ^ n.f135));
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

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.h);
        sb.append(a((-73) - Color.green(0), (-901644558) - (ViewConfiguration.getMinimumFlingVelocity() >> 16), (byte) ((-125) - (ViewConfiguration.getLongPressTimeout() >> 16)), (short) ((ViewConfiguration.getEdgeSlop() >> 16) + 100), 73692178 - KeyEvent.keyCodeFromString("")).intern());
        sb.append(this.i);
        String string = sb.toString();
        int i = f5572f + 63;
        f5573g = i % 128;
        int i2 = i % 2;
        return string;
    }

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public final boolean m689() {
        int i = f5572f + 125;
        f5573g = i % 128;
        if (!(i % 2 != 0)) {
            m696();
            a aVar = a.f48;
            throw null;
        }
        if (m696() != a.f48) {
            int i2 = f5573g + 75;
            f5572f = i2 % 128;
            int i3 = i2 % 2;
            return false;
        }
        int i4 = f5573g + 63;
        f5572f = i4 % 128;
        if ((i4 % 2 != 0 ? '\'' : (char) 20) != '\'') {
            return true;
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        if ((m696() == com.ironsource.adqualitysdk.sdk.i.dt.a.f45 ? 17 : '\b') != 17) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
        if ((m696() != com.ironsource.adqualitysdk.sdk.i.dt.a.f45) != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0037, code lost:
    
        r0 = com.json.adqualitysdk.sdk.i.dt.f5573g + 107;
        com.json.adqualitysdk.sdk.i.dt.f5572f = r0 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0043, code lost:
    
        if ((r0 % 2) == 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0045, code lost:
    
        r0 = 'R';
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
    
        r0 = '!';
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004a, code lost:
    
        if (r0 == 'R') goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004c, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004e, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0051, code lost:
    
        return true;
     */
    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean m690() {
        /*
            r5 = this;
            int r0 = com.json.adqualitysdk.sdk.i.dt.f5572f
            int r0 = r0 + 97
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.dt.f5573g = r1
            int r0 = r0 % 2
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L10
            r0 = 0
            goto L11
        L10:
            r0 = 1
        L11:
            if (r0 == r2) goto L2a
            com.ironsource.adqualitysdk.sdk.i.dt$a r0 = r5.m696()
            com.ironsource.adqualitysdk.sdk.i.dt$a r3 = com.ironsource.adqualitysdk.sdk.i.dt.a.f45
            r4 = 99
            int r4 = r4 / r1
            r4 = 17
            if (r0 != r3) goto L23
            r0 = 17
            goto L25
        L23:
            r0 = 8
        L25:
            if (r0 == r4) goto L51
            goto L37
        L28:
            r0 = move-exception
            throw r0
        L2a:
            com.ironsource.adqualitysdk.sdk.i.dt$a r0 = r5.m696()
            com.ironsource.adqualitysdk.sdk.i.dt$a r3 = com.ironsource.adqualitysdk.sdk.i.dt.a.f45
            if (r0 != r3) goto L34
            r0 = 0
            goto L35
        L34:
            r0 = 1
        L35:
            if (r0 == 0) goto L51
        L37:
            int r0 = com.json.adqualitysdk.sdk.i.dt.f5573g
            int r0 = r0 + 107
            int r2 = r0 % 128
            com.json.adqualitysdk.sdk.i.dt.f5572f = r2
            int r0 = r0 % 2
            r2 = 82
            if (r0 == 0) goto L48
            r0 = 82
            goto L4a
        L48:
            r0 = 33
        L4a:
            if (r0 == r2) goto L4d
            return r1
        L4d:
            r0 = 0
            throw r0     // Catch: java.lang.Throwable -> L4f
        L4f:
            r0 = move-exception
            throw r0
        L51:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dt.m690():boolean");
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final boolean m691() {
        int i = f5573g + 29;
        f5572f = i % 128;
        int i2 = i % 2;
        if (!(m696() != a.f43)) {
            int i3 = f5572f + 115;
            f5573g = i3 % 128;
            if ((i3 % 2 == 0 ? '#' : (char) 3) != '#') {
                return true;
            }
            throw null;
        }
        int i4 = f5572f + 29;
        f5573g = i4 % 128;
        if (i4 % 2 != 0) {
            return false;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final boolean m692() {
        if (m696() == a.f42) {
            int i = f5573g + 77;
            f5572f = i % 128;
            int i2 = i % 2;
            return true;
        }
        int i3 = f5573g + 73;
        f5572f = i3 % 128;
        if ((i3 % 2 != 0 ? '^' : '#') != '^') {
            return false;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final boolean m693() {
        int i = f5572f + 107;
        f5573g = i % 128;
        int i2 = i % 2;
        if ((m696() == a.f46 ? 'H' : (char) 31) == 31) {
            return false;
        }
        int i3 = f5573g + 93;
        f5572f = i3 % 128;
        return !(i3 % 2 != 0);
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final boolean m694() {
        if ((m696() == a.f47 ? 'L' : 'O') == 'O') {
            return false;
        }
        int i = f5572f;
        int i2 = i + 91;
        f5573g = i2 % 128;
        int i3 = i2 % 2;
        int i4 = i + 63;
        f5573g = i4 % 128;
        if ((i4 % 2 == 0 ? 'Z' : '5') != 'Z') {
            return true;
        }
        int i5 = 65 / 0;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
    
        if ((m696() == com.ironsource.adqualitysdk.sdk.i.dt.a.f44 ? '2' : 'Z') != 'Z') goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0032, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0033, code lost:
    
        r0 = com.json.adqualitysdk.sdk.i.dt.f5573g + 47;
        com.json.adqualitysdk.sdk.i.dt.f5572f = r0 % 128;
        r0 = r0 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
    
        if ((m696() != com.ironsource.adqualitysdk.sdk.i.dt.a.f44) != true) goto L18;
     */
    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean m695() {
        /*
            r5 = this;
            int r0 = com.json.adqualitysdk.sdk.i.dt.f5573g
            int r0 = r0 + 55
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.dt.f5572f = r1
            int r0 = r0 % 2
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L21
            com.ironsource.adqualitysdk.sdk.i.dt$a r0 = r5.m696()
            com.ironsource.adqualitysdk.sdk.i.dt$a r3 = com.ironsource.adqualitysdk.sdk.i.dt.a.f44
            r4 = 55
            int r4 = r4 / r2
            if (r0 != r3) goto L1b
            r0 = 0
            goto L1c
        L1b:
            r0 = 1
        L1c:
            if (r0 == r1) goto L33
            goto L32
        L1f:
            r0 = move-exception
            throw r0
        L21:
            com.ironsource.adqualitysdk.sdk.i.dt$a r0 = r5.m696()
            com.ironsource.adqualitysdk.sdk.i.dt$a r3 = com.ironsource.adqualitysdk.sdk.i.dt.a.f44
            r4 = 90
            if (r0 != r3) goto L2e
            r0 = 50
            goto L30
        L2e:
            r0 = 90
        L30:
            if (r0 == r4) goto L33
        L32:
            return r1
        L33:
            int r0 = com.json.adqualitysdk.sdk.i.dt.f5573g
            int r0 = r0 + 47
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.dt.f5572f = r1
            int r0 = r0 % 2
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dt.m695():boolean");
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final a m696() {
        int i = f5572f + 91;
        f5573g = i % 128;
        if (!(i % 2 == 0)) {
            return this.h;
        }
        int i2 = 51 / 0;
        return this.h;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m697() {
        int i = f5572f + 45;
        f5573g = i % 128;
        int i2 = i % 2;
        if (!m699()) {
            if ((!m694() ? '_' : (char) 4) == '_') {
                if ((!m692() ? '%' : ',') == '%' && !m695()) {
                    return false;
                }
            }
        }
        int i3 = f5572f + 85;
        f5573g = i3 % 128;
        int i4 = i3 % 2;
        return true;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m698(String str) {
        boolean zEquals;
        int i = f5573g + 17;
        f5572f = i % 128;
        if (i % 2 == 0) {
            zEquals = this.i.equals(str);
        } else {
            zEquals = this.i.equals(str);
            int i2 = 45 / 0;
        }
        int i3 = f5572f + 93;
        f5573g = i3 % 128;
        int i4 = i3 % 2;
        return zEquals;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final boolean m699() {
        if (m696() != a.f49) {
            return false;
        }
        int i = f5573g;
        int i2 = i + 91;
        f5572f = i2 % 128;
        int i3 = i2 % 2;
        int i4 = i + 113;
        f5572f = i4 % 128;
        int i5 = i4 % 2;
        return true;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final int m700() {
        int i = f5572f;
        int i2 = i + 69;
        f5573g = i2 % 128;
        if (!(i2 % 2 != 0)) {
            throw null;
        }
        int i3 = this.j;
        int i4 = i + 77;
        f5573g = i4 % 128;
        int i5 = i4 % 2;
        return i3;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m701() {
        int i = f5572f + 67;
        f5573g = i % 128;
        if ((i % 2 == 0 ? 'I' : '1') == '1') {
            return this.i;
        }
        throw null;
    }
}
