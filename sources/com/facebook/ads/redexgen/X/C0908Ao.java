package com.facebook.ads.redexgen.X;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ao, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0908Ao {
    public static String[] A0M = {"OjKCpSHRaQgRVuqtUlgsb9O8", "00OaDgM7p4igg1vHbesCR74DVTlAeC7z", "TzmlGabo8AOjcKFjChfq2OdnE6jP", "eUJX5SGKEEZf9vIFl", "j2zFnhkJHUredpBjDjfUiogYLN6sD6KJ", "gWZYAfYL2BaqEY2VQTncveV2", "fwiYKc5SQMrWihGSp5I7vQU09P9mYkrS", "9p8sUcgEmhCbeCaZ4cFvJcsv2VoCKNVu"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public short[] A0A;
    public short[] A0B;
    public short[] A0C;
    public final float A0D;
    public final float A0E;
    public final float A0F;
    public final int A0G;
    public final int A0H;
    public final int A0I;
    public final int A0J;
    public final int A0K;
    public final short[] A0L;

    public C0908Ao(int i, int i2, float f2, float f3, int i3) {
        this.A0H = i;
        this.A0G = i2;
        this.A0F = f2;
        this.A0D = f3;
        this.A0E = i / i3;
        this.A0K = i / 400;
        int i4 = i / 65;
        this.A0I = i4;
        int i5 = i4 * 2;
        this.A0J = i5;
        this.A0L = new short[i5];
        this.A0A = new short[i5 * i2];
        this.A0B = new short[i5 * i2];
        this.A0C = new short[i5 * i2];
    }

    private int A00(int i) {
        int iMin = Math.min(this.A0J, this.A09);
        A0D(this.A0A, i, iMin);
        this.A09 -= iMin;
        return iMin;
    }

    private int A01(short[] sArr, int i) {
        int iA04;
        int i2 = this.A0H;
        int i3 = i2 > 4000 ? i2 / 4000 : 1;
        if (this.A0G == 1 && i3 == 1) {
            iA04 = A04(sArr, i, this.A0K, this.A0I);
        } else {
            A0E(sArr, i, i3);
            iA04 = A04(this.A0L, 0, this.A0K / i3, this.A0I / i3);
            if (i3 != 1) {
                int i4 = iA04 * i3;
                int i5 = i4 - (i3 * 4);
                int i6 = (i3 * 4) + i4;
                if (i5 < this.A0K) {
                    i5 = this.A0K;
                }
                if (i6 > this.A0I) {
                    i6 = this.A0I;
                }
                if (this.A0G == 1) {
                    iA04 = A04(sArr, i, i5, i6);
                } else {
                    A0E(sArr, i, 1);
                    iA04 = A04(this.A0L, 0, i5, i6);
                }
            }
        }
        int i7 = this.A02;
        int i8 = this.A01;
        String[] strArr = A0M;
        if (strArr[5].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        A0M[1] = "8bhQeTnLevaZP1Rdp3IHUAHszuXZY5fw";
        int i9 = A0F(i7, i8) ? this.A08 : iA04;
        this.A07 = this.A02;
        this.A08 = iA04;
        return i9;
    }

    private int A02(short[] sArr, int i, float f2, int i2) {
        int i3;
        if (f2 < 0.5f) {
            i3 = (int) ((i2 * f2) / (1.0f - f2));
        } else {
            i3 = i2;
            this.A09 = (int) ((i2 * ((2.0f * f2) - 1.0f)) / (1.0f - f2));
        }
        short[] sArrA0G = A0G(this.A0B, this.A05, i2 + i3);
        this.A0B = sArrA0G;
        int i4 = this.A0G;
        System.arraycopy(sArr, i * i4, sArrA0G, this.A05 * i4, i4 * i2);
        A0C(i3, this.A0G, this.A0B, this.A05 + i2, sArr, i + i2, sArr, i);
        this.A05 += i2 + i3;
        return i3;
    }

    private int A03(short[] sArr, int i, float f2, int i2) {
        int i3;
        if (f2 >= 2.0f) {
            i3 = (int) (i2 / (f2 - 1.0f));
        } else {
            this.A09 = (int) ((i2 * (2.0f - f2)) / (f2 - 1.0f));
            i3 = i2;
        }
        short[] sArrA0G = A0G(this.A0B, this.A05, i3);
        this.A0B = sArrA0G;
        A0C(i3, this.A0G, sArrA0G, this.A05, sArr, i, sArr, i + i2);
        this.A05 += i3;
        return i3;
    }

    private int A04(short[] sArr, int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 255;
        int i6 = 1;
        int i7 = 0;
        int i8 = i * this.A0G;
        while (i2 <= i3) {
            int iAbs = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                iAbs += Math.abs(sArr[i8 + i9] - sArr[(i8 + i2) + i9]);
            }
            if (iAbs * i4 < i6 * i2) {
                i6 = iAbs;
                i4 = i2;
            }
            if (iAbs * i5 > i7 * i2) {
                i7 = iAbs;
                i5 = i2;
            }
            i2++;
        }
        this.A02 = i6 / i4;
        this.A01 = i7 / i5;
        return i4;
    }

    private short A05(short[] sArr, int i, int i2, int i3) {
        short s = sArr[i];
        short s2 = sArr[this.A0G + i];
        int i4 = this.A03 * i2;
        int i5 = this.A04;
        int i6 = i5 * i3;
        int i7 = (i5 + 1) * i3;
        int i8 = i7 - i4;
        int i9 = i7 - i6;
        return (short) (((i8 * s) + ((i9 - i8) * s2)) / i9);
    }

    private void A06() {
        int i = this.A05;
        float f2 = this.A0F;
        float f3 = this.A0D;
        float f4 = f2 / f3;
        float f5 = this.A0E * f3;
        if (f4 > 1.00001d || f4 < 0.99999d) {
            A07(f4);
        } else {
            A0D(this.A0A, 0, this.A00);
            this.A00 = 0;
        }
        if (f5 != 1.0f) {
            A08(f5, i);
        }
    }

    private void A07(float f2) {
        if (this.A00 < this.A0J) {
            return;
        }
        int i = this.A00;
        int iA03 = 0;
        do {
            if (this.A09 > 0) {
                iA03 += A00(iA03);
            } else {
                int iA01 = A01(this.A0A, iA03);
                iA03 = ((double) f2) > 1.0d ? iA03 + A03(this.A0A, iA03, f2, iA01) + iA01 : iA03 + A02(this.A0A, iA03, f2, iA01);
            }
        } while (this.A0J + iA03 <= i);
        A0B(iA03);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x009b, code lost:
    
        r0 = r3 + 1;
        r9.A04 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009f, code lost:
    
        if (r0 != r6) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a1, code lost:
    
        r2 = com.facebook.ads.redexgen.X.C0908Ao.A0M;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b2, code lost:
    
        if (r2[5].length() == r2[0].length()) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b9, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ba, code lost:
    
        com.facebook.ads.redexgen.X.C0908Ao.A0M[6] = "dm69MZtNxJx8v5BsJDIKlnc92CG6PQ3Q";
        r9.A04 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c3, code lost:
    
        if (r4 != r7) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c5, code lost:
    
        com.facebook.ads.redexgen.X.HI.A04(r5);
        r9.A03 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ce, code lost:
    
        r5 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A08(float r10, int r11) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0908Ao.A08(float, int):void");
    }

    private void A09(int i) {
        int i2 = this.A05 - i;
        short[] sArrA0G = A0G(this.A0C, this.A06, i2);
        this.A0C = sArrA0G;
        short[] sArr = this.A0B;
        int i3 = this.A0G;
        System.arraycopy(sArr, i * i3, sArrA0G, this.A06 * i3, i3 * i2);
        this.A05 = i;
        this.A06 += i2;
    }

    private void A0A(int i) {
        if (i == 0) {
            return;
        }
        short[] sArr = this.A0C;
        int i2 = this.A0G;
        System.arraycopy(sArr, i * i2, sArr, 0, (this.A06 - i) * i2);
        this.A06 -= i;
    }

    private void A0B(int i) {
        int i2 = this.A00 - i;
        short[] sArr = this.A0A;
        int i3 = this.A0G;
        System.arraycopy(sArr, i * i3, sArr, 0, i3 * i2);
        this.A00 = i2;
    }

    public static void A0C(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    private void A0D(short[] sArr, int i, int i2) {
        short[] sArrA0G = A0G(this.A0B, this.A05, i2);
        this.A0B = sArrA0G;
        int i3 = this.A0G;
        System.arraycopy(sArr, i * i3, sArrA0G, this.A05 * i3, i3 * i2);
        this.A05 += i2;
    }

    private void A0E(short[] sArr, int i, int i2) {
        int i3 = this.A0J / i2;
        int i4 = this.A0G;
        int i5 = i4 * i2;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.A0L[i7] = (short) (i8 / i5);
        }
    }

    private boolean A0F(int i, int i2) {
        return i != 0 && this.A08 != 0 && i2 <= i * 3 && i * 2 > this.A07 * 3;
    }

    private short[] A0G(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.A0G;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, i3 * (((i4 * 3) / 2) + i2));
    }

    public final int A0H() {
        return this.A05;
    }

    public final void A0I() {
        this.A00 = 0;
        this.A05 = 0;
        this.A06 = 0;
        this.A04 = 0;
        this.A03 = 0;
        this.A09 = 0;
        this.A08 = 0;
        this.A07 = 0;
        this.A02 = 0;
        this.A01 = 0;
    }

    public final void A0J() {
        int i;
        int i2 = this.A00;
        float f2 = this.A0F;
        float f3 = this.A0D;
        int i3 = this.A05 + ((int) ((((i2 / (f2 / f3)) + this.A06) / (this.A0E * f3)) + 0.5f));
        this.A0A = A0G(this.A0A, this.A00, (this.A0J * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.A0J;
            int i5 = this.A0G;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.A0A[(i5 * i2) + i4] = 0;
            i4++;
        }
        this.A00 += i * 2;
        A06();
        if (this.A05 > i3) {
            this.A05 = i3;
        }
        this.A00 = 0;
        this.A09 = 0;
        this.A06 = 0;
    }

    public final void A0K(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.A0G, this.A05);
        shortBuffer.put(this.A0B, 0, this.A0G * iMin);
        int i = this.A05 - iMin;
        this.A05 = i;
        short[] sArr = this.A0B;
        int i2 = this.A0G;
        System.arraycopy(sArr, iMin * i2, sArr, 0, i * i2);
    }

    public final void A0L(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i = this.A0G;
        int i2 = iRemaining / i;
        short[] sArrA0G = A0G(this.A0A, this.A00, i2);
        this.A0A = sArrA0G;
        shortBuffer.get(sArrA0G, this.A00 * this.A0G, ((i * i2) * 2) / 2);
        this.A00 += i2;
        A06();
    }
}
