package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1063Hi {
    public static String[] A04 = {"BtHKr", "GAfuq", "1TcIbYyYGpE6Ekv4glvvfZz9bC", "q9fmd3d0ImW5Daxca", "ooOXUvpeMSptobOLnq6qd7gNdq", "VwsWXVZM3brBJlmy9", "pSziVAe", "zUHU2CyO73eexnRwL2LOOWJW4Jr0bcWv"};
    public int A00;
    public int A01;
    public int A02;
    public byte[] A03;

    public C1063Hi(byte[] bArr, int i, int i2) {
        A08(bArr, i, i2);
    }

    private int A00() {
        int i = 0;
        while (!A0A()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? A05(i) : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A01() {
        /*
            r5 = this;
            int r4 = r5.A02
            if (r4 < 0) goto L2c
            int r3 = r5.A01
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1063Hi.A04
            r0 = 1
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 29
            if (r1 == r0) goto L2e
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1063Hi.A04
            java.lang.String r1 = "f06qvbC"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "HuIz9"
            r0 = 0
            r2[r0] = r1
            if (r4 < r3) goto L27
            if (r4 != r3) goto L2c
            int r0 = r5.A00
            if (r0 != 0) goto L2c
        L27:
            r0 = 1
        L28:
            com.facebook.ads.redexgen.X.HI.A04(r0)
            return
        L2c:
            r0 = 0
            goto L28
        L2e:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1063Hi.A01():void");
    }

    private boolean A02(int i) {
        if (2 <= i && i < this.A01) {
            byte[] bArr = this.A03;
            byte b = bArr[i];
            String[] strArr = A04;
            if (strArr[6].length() != strArr[0].length()) {
                String[] strArr2 = A04;
                strArr2[5] = "Jod3dkhqFQ8qWj2s5";
                strArr2[3] = "0zxF2BZpdiUX5xaGz";
                if (b == 3 && bArr[i - 2] == 0) {
                    byte b2 = bArr[i - 1];
                    String[] strArr3 = A04;
                    if (strArr3[6].length() != strArr3[0].length()) {
                        String[] strArr4 = A04;
                        strArr4[6] = "lQKXp2Z";
                        strArr4[0] = "Kosug";
                        if (b2 == 0) {
                            return true;
                        }
                    }
                }
            }
            throw new RuntimeException();
        }
        return false;
    }

    public final int A03() {
        int iA00 = A00();
        return (iA00 % 2 == 0 ? -1 : 1) * ((iA00 + 1) / 2);
    }

    public final int A04() {
        return A00();
    }

    public final int A05(int i) {
        int i2;
        int i3 = 0;
        this.A00 += i;
        while (true) {
            i2 = this.A00;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.A00 = i4;
            byte[] bArr = this.A03;
            int i5 = this.A02;
            i3 |= (bArr[i5] & 255) << i4;
            if (!A02(i5 + 1)) {
                i = 1;
            }
            this.A02 = i5 + i;
        }
        byte[] bArr2 = this.A03;
        int i6 = this.A02;
        int i7 = bArr2[i6] & 255;
        String[] strArr = A04;
        if (strArr[5].length() != strArr[3].length()) {
            throw new RuntimeException();
        }
        A04[7] = "CI85ryy9UuGcWp4q0bXmx78DrLL4QG6i";
        int i8 = (i3 | (i7 >> (8 - i2))) & ((-1) >>> (32 - i));
        if (i2 == 8) {
            this.A00 = 0;
            this.A02 = i6 + (A02(i6 + 1) ? 2 : 1);
        }
        A01();
        return i8;
    }

    public final void A06() {
        int i = this.A00 + 1;
        this.A00 = i;
        if (i == 8) {
            this.A00 = 0;
            int i2 = this.A02;
            this.A02 = i2 + (A02(i2 + 1) ? 2 : 1);
        }
        A01();
    }

    public final void A07(int i) {
        int i2 = this.A02;
        int i3 = i / 8;
        int i4 = this.A02 + i3;
        this.A02 = i4;
        int i5 = this.A00 + (i - (i3 * 8));
        this.A00 = i5;
        if (i5 > 7) {
            int i6 = i4 + 1;
            String[] strArr = A04;
            if (strArr[2].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[2] = "WKnUhbHg5PXpVOXLjQbslPOixC";
            strArr2[4] = "5elOCNAU3UTje1WUqtoqjArHkZ";
            this.A02 = i6;
            this.A00 = i5 - 8;
        }
        int i7 = i2 + 1;
        while (i7 <= this.A02) {
            if (A02(i7)) {
                this.A02++;
                i7 += 2;
            }
            i7++;
        }
        A01();
    }

    public final void A08(byte[] bArr, int i, int i2) {
        this.A03 = bArr;
        this.A02 = i;
        this.A01 = i2;
        this.A00 = 0;
        A01();
    }

    public final boolean A09() {
        int i = this.A02;
        int i2 = this.A00;
        int i3 = 0;
        while (this.A02 < this.A01 && !A0A()) {
            i3++;
        }
        boolean z = this.A02 == this.A01;
        this.A02 = i;
        this.A00 = i2;
        return !z && A0B((i3 * 2) + 1);
    }

    public final boolean A0A() {
        boolean z = (this.A03[this.A02] & (128 >> this.A00)) != 0;
        A06();
        return z;
    }

    public final boolean A0B(int i) {
        int i2 = this.A02;
        int i3 = i / 8;
        int i4 = this.A02 + i3;
        int i5 = (this.A00 + i) - (i3 * 8);
        if (i5 > 7) {
            i4++;
            i5 -= 8;
        }
        int i6 = i2 + 1;
        while (i6 <= i4 && i4 < this.A01) {
            if (A02(i6)) {
                i4++;
                i6 += 2;
            }
            i6++;
        }
        int i7 = this.A01;
        if (i4 >= i7) {
            return i4 == i7 && i5 == 0;
        }
        return true;
    }
}
