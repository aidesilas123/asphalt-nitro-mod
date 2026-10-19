package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class W9 implements InterfaceC0947Co {
    public static byte[] A03;
    public InterfaceC0930Bm A00;
    public C1074Ht A01;
    public boolean A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 88);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{90, 75, 75, 87, 82, 88, 90, 79, 82, 84, 85, Ascii.DC4, 67, Ascii.SYN, 72, 88, 79, 94, 8, Ascii.SO};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0947Co
    public final void A4O(C1062Hh c1062Hh) {
        if (!this.A02) {
            if (this.A01.A05() == C.TIME_UNSET) {
                return;
            }
            this.A00.A5j(Format.A02(null, A00(0, 20, 99), this.A01.A05()));
            this.A02 = true;
        }
        int iA04 = c1062Hh.A04();
        this.A00.AEr(c1062Hh, iA04);
        this.A00.AEs(this.A01.A04(), 1, iA04, 0, null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0947Co
    public final void A8g(C1074Ht c1074Ht, InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
        this.A01 = c1074Ht;
        c0952Cu.A05();
        InterfaceC0930Bm interfaceC0930BmAFx = interfaceC0922Bc.AFx(c0952Cu.A03(), 4);
        this.A00 = interfaceC0930BmAFx;
        interfaceC0930BmAFx.A5j(Format.A0B(c0952Cu.A04(), A00(0, 20, 99), null, -1, null));
    }
}
