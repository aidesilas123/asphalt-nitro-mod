package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1446Wk extends C1 {
    public static byte[] A03;
    public final long A00;
    public final List<C1446Wk> A01;
    public final List<C1445Wj> A02;

    static {
        A05();
    }

    public C1446Wk(int i, long j) {
        super(i);
        this.A00 = j;
        this.A02 = new ArrayList();
        this.A01 = new ArrayList();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 42);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{Ascii.FF, 79, 67, 66, 88, 77, 69, 66, 73, 94, 95, Ascii.SYN, Ascii.FF, 79, 3, 10, Ascii.SO, Ascii.EM, 10, Ascii.FS, 85, 79};
    }

    public final C1446Wk A06(int i) {
        int size = this.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1446Wk c1446Wk = this.A01.get(i2);
            if (((C1) c1446Wk).A00 == i) {
                return c1446Wk;
            }
        }
        return null;
    }

    public final C1445Wj A07(int i) {
        int size = this.A02.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1445Wj c1445Wj = this.A02.get(i2);
            if (((C1) c1445Wj).A00 == i) {
                return c1445Wj;
            }
        }
        return null;
    }

    public final void A08(C1446Wk c1446Wk) {
        this.A01.add(c1446Wk);
    }

    public final void A09(C1445Wj c1445Wj) {
        this.A02.add(c1445Wj);
    }

    @Override // com.facebook.ads.redexgen.X.C1
    public final String toString() {
        return C1.A02(super.A00) + A04(13, 9, 69) + Arrays.toString(this.A02.toArray()) + A04(0, 13, 6) + Arrays.toString(this.A01.toArray());
    }
}
