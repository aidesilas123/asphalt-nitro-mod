package com.json.adqualitysdk.sdk.i;

/* JADX INFO: loaded from: classes4.dex */
public enum hk {
    a(-1),
    b(0),
    c(1),
    f5730d(2),
    f5731e(3),
    f5732f(4),
    f5733g(5),
    h(6);

    private static char[] j = null;
    private static char k = 0;
    private static int l = 0;
    private static int m = 1;
    private final int n;

    static {
        e();
        int i2 = m + 55;
        l = i2 % 128;
        if (i2 % 2 == 0) {
            return;
        }
        int i3 = 26 / 0;
    }

    hk(int i2) {
        this.n = i2;
    }

    private static String a(byte b2, String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = j;
            char c2 = k;
            char[] cArr3 = new char[i2];
            if (i2 % 2 != 0) {
                i2--;
                cArr3[i2] = (char) (cArr[i2] - b2);
            }
            if (i2 > 1) {
                g.f60 = 0;
                while (true) {
                    int i3 = g.f60;
                    if (i3 >= i2) {
                        break;
                    }
                    g.f58 = cArr[i3];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b2);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b2);
                    } else {
                        g.f59 = g.f58 / c2;
                        g.f55 = g.f58 % c2;
                        g.f61 = g.f62 / c2;
                        g.f57 = g.f62 % c2;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c2) - 1) % c2;
                            g.f61 = ((g.f61 + c2) - 1) % c2;
                            int i4 = (g.f59 * c2) + g.f55;
                            int i5 = (g.f61 * c2) + g.f57;
                            int i6 = g.f60;
                            cArr3[i6] = cArr2[i4];
                            cArr3[i6 + 1] = cArr2[i5];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c2) - 1) % c2;
                            g.f57 = ((g.f57 + c2) - 1) % c2;
                            int i7 = (g.f59 * c2) + g.f55;
                            int i8 = (g.f61 * c2) + g.f57;
                            int i9 = g.f60;
                            cArr3[i9] = cArr2[i7];
                            cArr3[i9 + 1] = cArr2[i8];
                        } else {
                            int i10 = (g.f59 * c2) + g.f57;
                            int i11 = (g.f61 * c2) + g.f55;
                            int i12 = g.f60;
                            cArr3[i12] = cArr2[i10];
                            cArr3[i12 + 1] = cArr2[i11];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    static void e() {
        k = (char) 5;
        j = new char[]{'U', 'N', 'K', 'O', 'W', 'I', 'M', 'A', 'G', 'E', 'H', 'T', 'L', 'V', 'D', 'P', 'Y', 'B', 'S', 'C', 'R', 'X', 'Z', '[', '\\'};
    }

    public static hk valueOf(String str) {
        int i2 = l + 75;
        m = i2 % 128;
        if ((i2 % 2 == 0 ? 'K' : (char) 25) != 'K') {
            return (hk) Enum.valueOf(hk.class, str);
        }
        Enum.valueOf(hk.class, str);
        throw null;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static hk[] valuesCustom() {
        int i2 = m + 81;
        l = i2 % 128;
        int i3 = i2 % 2;
        hk[] hkVarArr = (hk[]) values().clone();
        int i4 = l + 111;
        m = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 16 : 'J') == 'J') {
            return hkVarArr;
        }
        int i5 = 75 / 0;
        return hkVarArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003e  */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.json.adqualitysdk.sdk.i.hk m738(int r3) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.hk.l
            int r1 = r0 + 17
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.hk.m = r2
            int r1 = r1 % 2
            r2 = 68
            if (r1 != 0) goto L11
            r1 = 68
            goto L13
        L11:
            r1 = 9
        L13:
            if (r1 == r2) goto L19
            switch(r3) {
                case -1: goto L3e;
                case 0: goto L3b;
                case 1: goto L38;
                case 2: goto L35;
                case 3: goto L32;
                case 4: goto L2f;
                case 5: goto L24;
                case 6: goto L21;
                default: goto L18;
            }
        L18:
            goto L41
        L19:
            r1 = 24
            int r1 = r1 / 0
            switch(r3) {
                case -1: goto L3e;
                case 0: goto L3b;
                case 1: goto L38;
                case 2: goto L35;
                case 3: goto L32;
                case 4: goto L2f;
                case 5: goto L24;
                case 6: goto L21;
                default: goto L20;
            }
        L20:
            goto L41
        L21:
            com.ironsource.adqualitysdk.sdk.i.hk r3 = com.json.adqualitysdk.sdk.i.hk.h
            return r3
        L24:
            com.ironsource.adqualitysdk.sdk.i.hk r3 = com.json.adqualitysdk.sdk.i.hk.f5733g
            int r0 = r0 + 33
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.hk.m = r1
            int r0 = r0 % 2
            return r3
        L2f:
            com.ironsource.adqualitysdk.sdk.i.hk r3 = com.json.adqualitysdk.sdk.i.hk.f5732f
            return r3
        L32:
            com.ironsource.adqualitysdk.sdk.i.hk r3 = com.json.adqualitysdk.sdk.i.hk.f5731e
            return r3
        L35:
            com.ironsource.adqualitysdk.sdk.i.hk r3 = com.json.adqualitysdk.sdk.i.hk.f5730d
            return r3
        L38:
            com.ironsource.adqualitysdk.sdk.i.hk r3 = com.json.adqualitysdk.sdk.i.hk.c
            return r3
        L3b:
            com.ironsource.adqualitysdk.sdk.i.hk r3 = com.json.adqualitysdk.sdk.i.hk.b
            return r3
        L3e:
            com.ironsource.adqualitysdk.sdk.i.hk r3 = com.json.adqualitysdk.sdk.i.hk.a
            return r3
        L41:
            r3 = 0
            return r3
        L43:
            r3 = move-exception
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.hk.m738(int):com.ironsource.adqualitysdk.sdk.i.hk");
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final int m739() {
        int i2 = m;
        int i3 = i2 + 95;
        l = i3 % 128;
        int i4 = i3 % 2;
        int i5 = this.n;
        int i6 = i2 + 9;
        l = i6 % 128;
        if ((i6 % 2 != 0 ? 'T' : '(') != 'T') {
            return i5;
        }
        throw null;
    }
}
