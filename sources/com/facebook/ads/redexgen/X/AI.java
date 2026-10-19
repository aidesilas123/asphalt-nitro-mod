package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class AI extends Exception {
    public static byte[] A00;

    static {
        A01();
    }

    public AI(int i, int i2, int i3) {
        super(A00(27, 18, 32) + i + A00(0, 5, 100) + i2 + A00(5, 22, 3) + i3);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 103);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{35, 75, 121, 47, 35, 68, 7, Ascii.FF, 5, 10, 10, 1, 8, Ascii.ETB, 68, Ascii.CR, 10, 68, 1, 10, 7, Ascii.VT, 0, Ascii.CR, 10, 3, 68, Ascii.DC2, 41, 47, 38, 41, 35, 43, 34, 35, 103, 33, 40, 53, 42, 38, 51, 125, 103};
    }
}
