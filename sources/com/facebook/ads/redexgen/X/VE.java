package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class VE implements InterfaceC1033Gc {
    public static byte[] A00;
    public static final InterfaceC1032Gb A01;
    public static final VE A02;

    static {
        A01();
        A02 = new VE();
        A01 = new VF();
    }

    public VE() {
    }

    public /* synthetic */ VE(VF vf) {
        this();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 107);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{51, 2, Ascii.SUB, Ascii.SUB, Ascii.SO, 87, 4, Ascii.CAN, 2, 5, Ascii.DC4, Ascii.DC2};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final Uri A85() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final long ADb(C1037Gg c1037Gg) throws IOException {
        throw new IOException(A00(0, 12, 28));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final void close() throws IOException {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        throw new UnsupportedOperationException();
    }
}
