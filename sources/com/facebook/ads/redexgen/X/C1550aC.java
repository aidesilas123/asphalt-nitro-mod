package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1550aC extends K8 {
    public static byte[] A03;
    public final /* synthetic */ C1584ak A00;
    public final /* synthetic */ C06941s A01;
    public final /* synthetic */ C1002Ex A02;

    static {
        A02();
    }

    public C1550aC(C1002Ex c1002Ex, C06941s c06941s, C1584ak c1584ak) {
        this.A02 = c1002Ex;
        this.A01 = c06941s;
        this.A00 = c1584ak;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{32, 5, 0, 17, Ascii.NAK, 4, 19, 65, Ascii.NAK, 8, Ascii.FF, 4, Ascii.SO, Ascii.DC4, Ascii.NAK, 79};
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        this.A02.A0P(this.A01);
        this.A02.A0M(this.A00);
        this.A02.ABH(new JG(AdErrorType.NETWORK_ERROR, A00(0, 16, 43)));
    }
}
