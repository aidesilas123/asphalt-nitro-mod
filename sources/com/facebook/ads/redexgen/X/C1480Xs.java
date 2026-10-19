package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1480Xs implements InterfaceC1289Qf {
    public static byte[] A01;
    public final Y9 A00;

    static {
        A01();
    }

    public C1480Xs(Y9 y9) {
        this.A00 = y9;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 127);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-2, -45, -20, -24, -45, -10, Ascii.NAK, Ascii.NAK, Ascii.DC2, -45, -8, Ascii.NAK, Ascii.ESC, Ascii.SUB, Ascii.SI, Ascii.DC4, Ascii.CR, -45, -6, Ascii.NAK, 17, Ascii.VT, Ascii.DC4, 102, 100, 86, 99, Ascii.RS, 82, 88, 86, 95, 101};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1289Qf
    public final Map<String, String> A5k(boolean z) {
        HashMap map = new HashMap();
        if (!AnonymousClass62.A00().A04()) {
            map.put(A00(0, 23, 39), C8S.A00().A01(this.A00, true).A0A());
        }
        map.put(A00(23, 10, 114), C8W.A06(new AnonymousClass87(this.A00), this.A00, z));
        return map;
    }
}
