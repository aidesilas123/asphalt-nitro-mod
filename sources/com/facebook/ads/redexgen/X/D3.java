package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class D3 implements InterfaceC1448Wm {
    public static byte[] A03;
    public final long A00;
    public final long[] A01;
    public final long[] A02;

    static {
        A02();
    }

    public D3(long[] jArr, long[] jArr2, long j) {
        this.A02 = jArr;
        this.A01 = jArr2;
        this.A00 = j;
    }

    public static D3 A00(long j, long j2, Bg bg, C1062Hh c1062Hh) {
        int iA0H;
        long j3 = j2;
        c1062Hh.A0Z(10);
        int iA08 = c1062Hh.A08();
        if (iA08 <= 0) {
            return null;
        }
        int i = bg.A03;
        long jA0F = C1078Hx.A0F(iA08, ((long) (i >= 32000 ? 1152 : 576)) * 1000000, i);
        int iA0I = c1062Hh.A0I();
        int iA0I2 = c1062Hh.A0I();
        int iA0I3 = c1062Hh.A0I();
        c1062Hh.A0Z(2);
        long j4 = j3 + ((long) bg.A02);
        long[] jArr = new long[iA0I];
        long[] jArr2 = new long[iA0I];
        for (int i2 = 0; i2 < iA0I; i2++) {
            jArr[i2] = (((long) i2) * jA0F) / ((long) iA0I);
            jArr2[i2] = Math.max(j3, j4);
            switch (iA0I3) {
                case 1:
                    iA0H = c1062Hh.A0E();
                    break;
                case 2:
                    iA0H = c1062Hh.A0I();
                    break;
                case 3:
                    iA0H = c1062Hh.A0G();
                    break;
                case 4:
                    iA0H = c1062Hh.A0H();
                    break;
                default:
                    return null;
            }
            j3 += (long) (iA0H * iA0I2);
        }
        if (j != -1 && j != j3) {
            Log.w(A01(27, 10, 87), A01(2, 25, 74) + j + A01(0, 2, 106) + j3);
        }
        return new D3(jArr, jArr2, jA0F);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{71, 75, Ascii.GS, 9, Ascii.EM, 2, 107, 47, 42, 63, 42, 107, 56, 34, 49, 46, 107, 38, 34, 56, 38, 42, 63, 40, 35, 113, 107, 0, 52, 36, 63, 5, 51, 51, 61, 51, 36};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final long A6k() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final C0926Bi A7l(long j) {
        int iA0B = C1078Hx.A0B(this.A02, j, true, true);
        C0928Bk c0928Bk = new C0928Bk(this.A02[iA0B], this.A01[iA0B]);
        return (c0928Bk.A01 >= j || iA0B == this.A02.length - 1) ? new C0926Bi(c0928Bk) : new C0926Bi(c0928Bk, new C0928Bk(this.A02[iA0B + 1], this.A01[iA0B + 1]));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1448Wm
    public final long A7z(long j) {
        return this.A02[C1078Hx.A0B(this.A01, j, true, true)];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final boolean A95() {
        return true;
    }
}
