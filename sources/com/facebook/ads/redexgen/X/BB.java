package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class BB extends Exception {
    public static byte[] A00;

    static {
        A01();
    }

    public BB(UUID uuid) {
        super(A00(0, 29, 29) + uuid);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 127);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{47, 7, 6, Ascii.VT, 3, 66, 6, Ascii.CR, 7, 17, 66, Ascii.FF, Ascii.CR, Ascii.SYN, 66, 17, Ascii.ETB, Ascii.DC2, Ascii.DC2, Ascii.CR, Ascii.DLE, Ascii.SYN, 66, Ascii.ETB, Ascii.ETB, Ascii.VT, 6, 88, 66};
    }
}
