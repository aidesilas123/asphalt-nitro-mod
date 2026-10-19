package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public enum EnumC1267Pj {
    A03,
    A04,
    A02;

    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{10, Ascii.RS, Ascii.US, 4, Ascii.DC4, Ascii.CAN, Ascii.US, 10, Ascii.EM, Ascii.US, Ascii.SO, Ascii.SI, 66, 67, 88, 83, 95, 88, 77, 94, 88, 73, 72, Ascii.DC2, Ascii.DC4, 2, Ascii.NAK, Ascii.CAN, Ascii.DC4, 19, 6, Ascii.NAK, 19, 2, 3};
    }
}
