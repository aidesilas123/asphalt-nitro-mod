package com.google.zxing.qrcode.encoder;

/* JADX INFO: compiled from: MaskUtil.java */
/* JADX INFO: loaded from: classes3.dex */
final class c {
    static int a(b bVar) {
        return b(bVar, true) + b(bVar, false);
    }

    private static int b(b bVar, boolean z) {
        int iD = z ? bVar.d() : bVar.e();
        int iE = z ? bVar.e() : bVar.d();
        byte[][] bArrC = bVar.c();
        int i = 0;
        for (int i2 = 0; i2 < iD; i2++) {
            byte b = -1;
            int i3 = 0;
            for (int i4 = 0; i4 < iE; i4++) {
                byte b2 = z ? bArrC[i2][i4] : bArrC[i4][i2];
                if (b2 == b) {
                    i3++;
                } else {
                    if (i3 >= 5) {
                        i += (i3 - 5) + 3;
                    }
                    b = b2;
                    i3 = 1;
                }
            }
            if (i3 >= 5) {
                i += (i3 - 5) + 3;
            }
        }
        return i;
    }

    static int c(b bVar) {
        byte[][] bArrC = bVar.c();
        int iE = bVar.e();
        int iD = bVar.d();
        int i = 0;
        for (int i2 = 0; i2 < iD - 1; i2++) {
            byte[] bArr = bArrC[i2];
            int i3 = 0;
            while (i3 < iE - 1) {
                byte b = bArr[i3];
                int i4 = i3 + 1;
                if (b == bArr[i4]) {
                    int i5 = i2 + 1;
                    if (b == bArrC[i5][i3] && b == bArrC[i5][i4]) {
                        i++;
                    }
                }
                i3 = i4;
            }
        }
        return i * 3;
    }

    static int d(b bVar) {
        byte[][] bArrC = bVar.c();
        int iE = bVar.e();
        int iD = bVar.d();
        int i = 0;
        for (int i2 = 0; i2 < iD; i2++) {
            for (int i3 = 0; i3 < iE; i3++) {
                byte[] bArr = bArrC[i2];
                int i4 = i3 + 6;
                if (i4 < iE && bArr[i3] == 1 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 1 && bArr[i3 + 3] == 1 && bArr[i3 + 4] == 1 && bArr[i3 + 5] == 0 && bArr[i4] == 1 && (g(bArr, i3 - 4, i3) || g(bArr, i3 + 7, i3 + 11))) {
                    i++;
                }
                int i5 = i2 + 6;
                if (i5 < iD && bArrC[i2][i3] == 1 && bArrC[i2 + 1][i3] == 0 && bArrC[i2 + 2][i3] == 1 && bArrC[i2 + 3][i3] == 1 && bArrC[i2 + 4][i3] == 1 && bArrC[i2 + 5][i3] == 0 && bArrC[i5][i3] == 1 && (h(bArrC, i3, i2 - 4, i2) || h(bArrC, i3, i2 + 7, i2 + 11))) {
                    i++;
                }
            }
        }
        return i * 40;
    }

    static int e(b bVar) {
        byte[][] bArrC = bVar.c();
        int iE = bVar.e();
        int iD = bVar.d();
        int i = 0;
        for (int i2 = 0; i2 < iD; i2++) {
            byte[] bArr = bArrC[i2];
            for (int i3 = 0; i3 < iE; i3++) {
                if (bArr[i3] == 1) {
                    i++;
                }
            }
        }
        int iD2 = bVar.d() * bVar.e();
        return ((Math.abs((i * 2) - iD2) * 10) / iD2) * 10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0047 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean f(int r1, int r2, int r3) {
        /*
            r0 = 1
            switch(r1) {
                case 0: goto L41;
                case 1: goto L42;
                case 2: goto L3e;
                case 3: goto L3a;
                case 4: goto L35;
                case 5: goto L2d;
                case 6: goto L24;
                case 7: goto L1b;
                default: goto L4;
            }
        L4:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r0 = "Invalid mask pattern: "
            r3.append(r0)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L1b:
            int r1 = r3 * r2
            int r1 = r1 % 3
            int r3 = r3 + r2
            r2 = r3 & 1
            int r1 = r1 + r2
            goto L2b
        L24:
            int r3 = r3 * r2
            r1 = r3 & 1
            int r3 = r3 % 3
            int r1 = r1 + r3
        L2b:
            r1 = r1 & r0
            goto L44
        L2d:
            int r3 = r3 * r2
            r1 = r3 & 1
            int r3 = r3 % 3
            int r1 = r1 + r3
            goto L44
        L35:
            int r3 = r3 / 2
            int r2 = r2 / 3
            goto L41
        L3a:
            int r3 = r3 + r2
            int r1 = r3 % 3
            goto L44
        L3e:
            int r1 = r2 % 3
            goto L44
        L41:
            int r3 = r3 + r2
        L42:
            r1 = r3 & 1
        L44:
            if (r1 != 0) goto L47
            goto L48
        L47:
            r0 = 0
        L48:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.encoder.c.f(int, int, int):boolean");
    }

    private static boolean g(byte[] bArr, int i, int i2) {
        if (i < 0 || bArr.length < i2) {
            return false;
        }
        while (i < i2) {
            if (bArr[i] == 1) {
                return false;
            }
            i++;
        }
        return true;
    }

    private static boolean h(byte[][] bArr, int i, int i2, int i3) {
        if (i2 < 0 || bArr.length < i3) {
            return false;
        }
        while (i2 < i3) {
            if (bArr[i2][i] == 1) {
                return false;
            }
            i2++;
        }
        return true;
    }
}
