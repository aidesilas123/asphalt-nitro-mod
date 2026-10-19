package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.Format;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Eq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0995Eq {
    public static String[] A0I = {"AXNp2q2PpEahITHLh", "xQEpoEpGgC2eanPxpW7aZYHhG9yms2rq", "3j6TAof", "i8THqobYCLYXuqAnsJGXzeKTVyKCbEfb", "ggw9auSRsP4B09On0iatBfmdaYF861sQ", "10OfiNQ0BRtOqE95ZnYZi1qGxLNxD1sx", "iFzh6NRuyiOyJdjYiPViJ2RhowiTnlD0", "JJpEbWQFS8eJaCoVgzG8fIG9CRI9jzfg"};
    public int A00;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public Format A08;
    public int A01 = 1000;
    public int[] A0D = new int[1000];
    public long[] A0E = new long[1000];
    public long[] A0F = new long[1000];
    public int[] A0B = new int[1000];
    public int[] A0C = new int[1000];
    public C0929Bl[] A0H = new C0929Bl[1000];
    public Format[] A0G = new Format[1000];
    public long A06 = Long.MIN_VALUE;
    public long A07 = Long.MIN_VALUE;
    public boolean A09 = true;
    public boolean A0A = true;

    private int A00(int i) {
        int i2 = this.A04 + i;
        int i3 = this.A01;
        return i2 < i3 ? i2 : i2 - i3;
    }

    private int A01(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2 && this.A0F[i] <= j; i4++) {
            if (!z || (this.A0B[i] & 1) != 0) {
                i3 = i4;
            }
            i++;
            if (i == this.A01) {
                i = 0;
            }
        }
        return i3;
    }

    private long A02(int i) {
        this.A06 = Math.max(this.A06, A03(i));
        int i2 = this.A02 - i;
        this.A02 = i2;
        this.A00 += i;
        int i3 = this.A04 + i;
        this.A04 = i3;
        int i4 = this.A01;
        if (i3 >= i4) {
            this.A04 = i3 - i4;
        }
        int i5 = this.A03 - i;
        this.A03 = i5;
        if (i5 < 0) {
            this.A03 = 0;
        }
        if (i2 != 0) {
            return this.A0E[this.A04];
        }
        int i6 = this.A04;
        if (i6 != 0) {
            i4 = i6;
        }
        int i7 = i4 - 1;
        return this.A0E[i7] + ((long) this.A0C[i7]);
    }

    private long A03(int i) {
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        long jMax = Long.MIN_VALUE;
        int iA00 = A00(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            jMax = Math.max(jMax, this.A0F[iA00]);
            if ((this.A0B[iA00] & 1) != 0) {
                break;
            }
            iA00--;
            if (iA00 == -1) {
                int i3 = this.A01;
                String[] strArr = A0I;
                if (strArr[6].charAt(24) == strArr[3].charAt(24)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0I;
                strArr2[2] = "ogUh654";
                strArr2[5] = "2cGjVSXzBWiJJ6u2fOJU9D000d34dgjx";
                iA00 = i3 - 1;
            }
        }
        return jMax;
    }

    private final synchronized void A04(long j) {
        this.A07 = Math.max(this.A07, j);
    }

    public final int A05() {
        return this.A00 + this.A03;
    }

    public final int A06() {
        return this.A00 + this.A02;
    }

    public final synchronized int A07() {
        int i;
        int i2 = this.A02;
        i = i2 - this.A03;
        this.A03 = i2;
        return i;
    }

    public final synchronized int A08(long j, boolean z, boolean z2) {
        int iA00 = A00(this.A03);
        if (!A0I() || j < this.A0F[iA00] || (j > this.A07 && !z2)) {
            return -1;
        }
        int iA01 = A01(iA00, this.A02 - this.A03, j, z);
        if (iA01 == -1) {
            return -1;
        }
        this.A03 += iA01;
        return iA01;
    }

    public final synchronized int A09(C9X c9x, XE xe, boolean z, boolean z2, Format format, C0994Ep c0994Ep) {
        if (!A0I()) {
            if (z2) {
                xe.A02(4);
                return -4;
            }
            Format format2 = this.A08;
            if (format2 == null || (!z && format2 == format)) {
                return -3;
            }
            c9x.A00 = format2;
            return -5;
        }
        int iA00 = A00(this.A03);
        if (z || this.A0G[iA00] != format) {
            c9x.A00 = this.A0G[iA00];
            return -5;
        }
        if (xe.A0B()) {
            return -3;
        }
        xe.A00 = this.A0F[iA00];
        xe.A02(this.A0B[iA00]);
        c0994Ep.A00 = this.A0C[iA00];
        c0994Ep.A01 = this.A0E[iA00];
        c0994Ep.A02 = this.A0H[iA00];
        this.A03++;
        return -4;
    }

    public final synchronized long A0A() {
        int i = this.A02;
        if (i == 0) {
            return -1L;
        }
        return A02(i);
    }

    public final synchronized long A0B() {
        return this.A07;
    }

    public final long A0C(int i) {
        int iA06 = A06() - i;
        HI.A03(iA06 >= 0 && iA06 <= this.A02 - this.A03);
        int i2 = this.A02 - iA06;
        this.A02 = i2;
        this.A07 = Math.max(this.A06, A03(i2));
        int i3 = this.A02;
        if (i3 == 0) {
            return 0L;
        }
        int iA00 = A00(i3 - 1);
        return this.A0E[iA00] + ((long) this.A0C[iA00]);
    }

    public final synchronized long A0D(long j, boolean z, boolean z2) {
        int i;
        int i2 = this.A02;
        if (i2 != 0) {
            long[] jArr = this.A0F;
            int i3 = this.A04;
            if (j >= jArr[i3]) {
                if (z2 && (i = this.A03) != i2) {
                    i2 = i + 1;
                }
                int iA01 = A01(i3, i2, j, z);
                if (iA01 == -1) {
                    return -1L;
                }
                return A02(iA01);
            }
        }
        return -1L;
    }

    public final synchronized Format A0E() {
        return this.A09 ? null : this.A08;
    }

    public final synchronized void A0F() {
        this.A03 = 0;
    }

    public final synchronized void A0G(long j, int i, long j2, int i2, C0929Bl c0929Bl) {
        if (this.A0A) {
            if ((i & 1) == 0) {
                return;
            } else {
                this.A0A = false;
            }
        }
        HI.A04(!this.A09);
        A04(j);
        int iA00 = A00(this.A02);
        this.A0F[iA00] = j;
        long[] jArr = this.A0E;
        jArr[iA00] = j2;
        this.A0C[iA00] = i2;
        this.A0B[iA00] = i;
        this.A0H[iA00] = c0929Bl;
        this.A0G[iA00] = this.A08;
        this.A0D[iA00] = this.A05;
        int i3 = this.A02 + 1;
        this.A02 = i3;
        int i4 = this.A01;
        if (i3 == i4) {
            int i5 = i4 + 1000;
            int[] iArr = new int[i5];
            long[] jArr2 = new long[i5];
            long[] jArr3 = new long[i5];
            int[] iArr2 = new int[i5];
            int[] iArr3 = new int[i5];
            C0929Bl[] c0929BlArr = new C0929Bl[i5];
            Format[] formatArr = new Format[i5];
            int i6 = this.A04;
            int i7 = i4 - i6;
            System.arraycopy(jArr, i6, jArr2, 0, i7);
            System.arraycopy(this.A0F, this.A04, jArr3, 0, i7);
            System.arraycopy(this.A0B, this.A04, iArr2, 0, i7);
            System.arraycopy(this.A0C, this.A04, iArr3, 0, i7);
            System.arraycopy(this.A0H, this.A04, c0929BlArr, 0, i7);
            System.arraycopy(this.A0G, this.A04, formatArr, 0, i7);
            System.arraycopy(this.A0D, this.A04, iArr, 0, i7);
            int i8 = this.A04;
            System.arraycopy(this.A0E, 0, jArr2, i7, i8);
            System.arraycopy(this.A0F, 0, jArr3, i7, i8);
            System.arraycopy(this.A0B, 0, iArr2, i7, i8);
            System.arraycopy(this.A0C, 0, iArr3, i7, i8);
            System.arraycopy(this.A0H, 0, c0929BlArr, i7, i8);
            System.arraycopy(this.A0G, 0, formatArr, i7, i8);
            System.arraycopy(this.A0D, 0, iArr, i7, i8);
            this.A0E = jArr2;
            this.A0F = jArr3;
            this.A0B = iArr2;
            this.A0C = iArr3;
            this.A0H = c0929BlArr;
            this.A0G = formatArr;
            this.A0D = iArr;
            this.A04 = 0;
            this.A02 = this.A01;
            this.A01 = i5;
        }
    }

    public final void A0H(boolean z) {
        this.A02 = 0;
        this.A00 = 0;
        this.A04 = 0;
        this.A03 = 0;
        this.A0A = true;
        this.A06 = Long.MIN_VALUE;
        this.A07 = Long.MIN_VALUE;
        if (z) {
            this.A08 = null;
            this.A09 = true;
        }
    }

    public final synchronized boolean A0I() {
        return this.A03 != this.A02;
    }

    public final synchronized boolean A0J(long j) {
        if (this.A02 == 0) {
            return j > this.A06;
        }
        if (Math.max(this.A06, A03(this.A03)) >= j) {
            return false;
        }
        int i = this.A02;
        int iA00 = A00(i - 1);
        while (i > this.A03 && this.A0F[iA00] >= j) {
            i--;
            iA00--;
            if (iA00 == -1) {
                iA00 = this.A01 - 1;
            }
        }
        A0C(this.A00 + i);
        return true;
    }

    public final synchronized boolean A0K(Format format) {
        if (format == null) {
            this.A09 = true;
            return false;
        }
        this.A09 = false;
        if (C1078Hx.A0g(format, this.A08)) {
            return false;
        }
        this.A08 = format;
        return true;
    }
}
