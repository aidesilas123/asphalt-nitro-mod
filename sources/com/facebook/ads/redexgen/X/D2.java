package com.facebook.ads.redexgen.X;

import android.util.Log;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class D2 implements InterfaceC1448Wm {
    public static byte[] A05;
    public static String[] A06 = {"ilqNaxLa84KwPxLclQkuXaDAjXKjVBay", "YYRGnxFlW9XodSzMr5d0AgWnEUGN8SAb", "TFjL0s25LaCBEteV0vZTEC31LOIwZtzx", "GUmZTVO9tTTKl3Mpcsedxo5lbewk1Lj3", "rxyeYW6RMQKKTnfalukPqNZ2KBfsB6S5", "mDRU4t7MoPNm7z5QI5KjgmazMAxk28NE", "eki8tF0EBXj6l5GM9f5RfEnwS82fHKRK", "1REkWmsZMDj0bgzORsQu3VEtsLn99tZ6"};
    public final int A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long[] A04;

    static {
        A03();
    }

    public D2(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    public D2(long j, int i, long j2, long j3, long[] jArr) {
        this.A02 = j;
        this.A00 = i;
        this.A03 = j2;
        this.A01 = j3;
        this.A04 = jArr;
    }

    private long A00(int i) {
        return (this.A03 * ((long) i)) / 100;
    }

    public static D2 A01(long j, long j2, Bg bg, C1062Hh c1062Hh) {
        int iA0H;
        int i = bg.A04;
        int i2 = bg.A03;
        int iA08 = c1062Hh.A08();
        if ((iA08 & 1) != 1 || (iA0H = c1062Hh.A0H()) == 0) {
            return null;
        }
        long jA0F = C1078Hx.A0F(iA0H, ((long) i) * 1000000, i2);
        if ((iA08 & 6) != 6) {
            return new D2(j2, bg.A02, jA0F);
        }
        long jA0H = c1062Hh.A0H();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = c1062Hh.A0E();
        }
        if (j != -1 && j != j2 + jA0H) {
            Log.w(A02(27, 10, 25), A02(2, 25, 119) + j + A02(0, 2, 77) + (j2 + jA0H));
        }
        return new D2(j2, bg.A02, jA0F, jA0H, jArr);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 111);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A05 = new byte[]{-24, -36, 62, 47, 52, 45, 6, 74, 71, 90, 71, 6, 89, 79, 96, 75, 6, 83, 79, 89, 83, 71, 90, 73, 78, 32, 6, -32, -15, -10, -17, -37, -19, -19, -13, -19, -6};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final long A6k() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final C0926Bi A7l(long j) {
        double d2;
        if (!A95()) {
            return new C0926Bi(new C0928Bk(0L, this.A02 + ((long) this.A00)));
        }
        long jA0E = C1078Hx.A0E(j, 0L, this.A03);
        double d3 = (jA0E * 100.0d) / this.A03;
        if (d3 <= 0.0d) {
            d2 = 0.0d;
        } else if (d3 >= 100.0d) {
            d2 = 256.0d;
        } else {
            int i = (int) d3;
            double d4 = this.A04[i];
            double d5 = i == 99 ? 256.0d : r5[i + 1];
            double d6 = i;
            String[] strArr = A06;
            if (strArr[1].charAt(15) != strArr[6].charAt(15)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[5] = "OMtgh7AGIO6dejZGwnLWpymQ4IFINQQk";
            strArr2[2] = "IsjlGA9bpSadN6h09kE1zH4HNrdroVjr";
            d2 = ((d5 - d4) * (d3 - d6)) + d4;
        }
        return new C0926Bi(new C0928Bk(jA0E, this.A02 + C1078Hx.A0E(Math.round((d2 / 256.0d) * this.A01), this.A00, this.A01 - 1)));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1448Wm
    public final long A7z(long j) {
        long j2 = j - this.A02;
        if (!A95()) {
            return 0L;
        }
        int i = this.A00;
        String[] strArr = A06;
        if (strArr[5].charAt(8) == strArr[2].charAt(8)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[5] = "W8nk4dNFk5UYs2ixe7nvUw2jVo0XpVlf";
        strArr2[2] = "94Ku6bJ3HPlMD7WZMvisRyq3A9jYmrd2";
        if (j2 <= i) {
            return 0L;
        }
        double d2 = (j2 * 256.0d) / this.A01;
        int iA0B = C1078Hx.A0B(this.A04, (long) d2, true, true);
        long jA00 = A00(iA0B);
        long j3 = this.A04[iA0B];
        long jA002 = A00(iA0B + 1);
        return Math.round((jA002 - jA00) * (j3 == (iA0B == 99 ? 256L : this.A04[iA0B + 1]) ? 0.0d : (d2 - j3) / (r8 - j3))) + jA00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final boolean A95() {
        return this.A04 != null;
    }
}
