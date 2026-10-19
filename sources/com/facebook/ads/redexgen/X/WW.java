package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WW implements InterfaceC0920Ba {
    public static byte[] A03;
    public static final InterfaceC0923Bd A04;
    public InterfaceC0922Bc A00;
    public CW A01;
    public boolean A02;

    static {
        A02();
        A04 = new WX();
    }

    public static C1062Hh A00(C1062Hh c1062Hh) {
        c1062Hh.A0Y(0);
        return c1062Hh;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 37);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{108, -121, -113, -110, -117, -118, 70, -102, -107, 70, -118, -117, -102, -117, -104, -109, -113, -108, -117, 70, -120, -113, -102, -103, -102, -104, -117, -121, -109, 70, -102, -97, -106, -117};
    }

    private boolean A03(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        CS cs = new CS();
        if (!cs.A03(interfaceC0921Bb, true) || (cs.A04 & 2) != 2) {
            return false;
        }
        int iMin = Math.min(cs.A00, 8);
        C1062Hh c1062Hh = new C1062Hh(iMin);
        interfaceC0921Bb.ADl(c1062Hh.A00, 0, iMin);
        if (WY.A04(A00(c1062Hh))) {
            this.A01 = new WY();
        } else if (WT.A06(A00(c1062Hh))) {
            this.A01 = new WT();
        } else {
            if (!WV.A04(A00(c1062Hh))) {
                return false;
            }
            this.A01 = new WV();
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void A8e(InterfaceC0922Bc interfaceC0922Bc) {
        this.A00 = interfaceC0922Bc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final int AE9(InterfaceC0921Bb interfaceC0921Bb, C0925Bh c0925Bh) throws InterruptedException, IOException {
        if (this.A01 == null) {
            if (!A03(interfaceC0921Bb)) {
                throw new C08729d(A01(0, 34, 1));
            }
            interfaceC0921Bb.AEm();
        }
        if (!this.A02) {
            InterfaceC0930Bm interfaceC0930BmAFx = this.A00.AFx(0, 1);
            this.A00.A5T();
            this.A01.A06(this.A00, interfaceC0930BmAFx);
            this.A02 = true;
        }
        return this.A01.A02(interfaceC0921Bb, c0925Bh);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void AEw(long j, long j2) {
        CW cw = this.A01;
        if (cw != null) {
            cw.A05(j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final boolean AFg(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        try {
            return A03(interfaceC0921Bb);
        } catch (C08729d unused) {
            return false;
        }
    }
}
