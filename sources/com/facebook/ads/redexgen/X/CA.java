package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class CA {
    public static C9 A00(int i, long[] jArr, int[] iArr, long j) {
        int i2 = 8192 / i;
        int iA04 = 0;
        for (int i3 : iArr) {
            iA04 += C1078Hx.A04(i3, i2);
        }
        long[] jArr2 = new long[iA04];
        int[] iArr2 = new int[iA04];
        int iMax = 0;
        long[] jArr3 = new long[iA04];
        int[] iArr3 = new int[iA04];
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < iArr.length; i6++) {
            int i7 = iArr[i6];
            long j2 = jArr[i6];
            while (i7 > 0) {
                int iMin = Math.min(i2, i7);
                jArr2[i5] = j2;
                iArr2[i5] = i * iMin;
                iMax = Math.max(iMax, iArr2[i5]);
                jArr3[i5] = ((long) i4) * j;
                iArr3[i5] = 1;
                j2 += (long) iArr2[i5];
                i4 += iMin;
                i7 -= iMin;
                i5++;
            }
        }
        return new C9(jArr2, iArr2, iMax, jArr3, iArr3, j * ((long) i4));
    }
}
