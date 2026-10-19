package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Qo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1298Qo {
    public static byte[] A07;
    public InterfaceC1289Qf A05;
    public int A04 = 60000;
    public int A03 = 100;
    public int A00 = 10000;
    public int A02 = 8000;
    public int A01 = 3;
    public Map<String, String> A06 = new HashMap();

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 68);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{49, Ascii.GS, 4, Ascii.NAK, 17, 9, 17, 92, Ascii.SO, Ascii.EM, 8, Ascii.SO, Ascii.NAK, Ascii.EM, Ascii.SI, 92, 17, 9, Ascii.SI, 8, 92, Ascii.RS, Ascii.EM, 92, Ascii.RS, Ascii.EM, 8, Ascii.VT, Ascii.EM, Ascii.EM, Ascii.DC2, 92, 77, 92, Ascii.GS, Ascii.DC2, Ascii.CAN, 92, 77, 68};
    }

    public final C1298Qo A02(int i) {
        this.A00 = i;
        return this;
    }

    public final C1298Qo A03(int i) {
        if (i < 1 || i > 18) {
            throw new IllegalArgumentException(A00(0, 40, 56));
        }
        this.A01 = i;
        return this;
    }

    public final C1298Qo A04(int i) {
        this.A02 = i;
        return this;
    }

    public final C1298Qo A05(int i) {
        this.A03 = i;
        return this;
    }

    public final C1298Qo A06(int i) {
        this.A04 = i;
        return this;
    }

    public final C1298Qo A07(InterfaceC1289Qf interfaceC1289Qf) {
        this.A05 = interfaceC1289Qf;
        return this;
    }

    public final C1298Qo A08(Map<String, String> map) {
        this.A06 = map;
        return this;
    }

    public final C1299Qp A09() {
        return new C1299Qp(this.A04, this.A00, this.A02, this.A03, this.A01, this.A06, this.A05);
    }
}
