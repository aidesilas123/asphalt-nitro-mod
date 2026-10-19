package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggPageHeader;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class CR {
    public static String[] A05 = {"lKy0YI5EGjXv2", "kqfQDU0iwDhqaMHC0BsTfGE6FjC2jeup", "jv6iVn6YCI", "Kbod1kIlqRm2x7YGttwPvO3kKDdBerP9", "AKxPCvcOfBY8Sui08oZDK8EPANpoB5ev", "JY0GDhLNZiQYBqJ9WzpbNW6VWiMf19In", "nhad57ygvI1TjLq62wNjXmGRomNY9pWS", "x2lvOIXYuZTotm1szSwJqESRclSL2a8b"};
    public int A01;
    public boolean A02;
    public final CS A03 = new CS();
    public final C1062Hh A04 = new C1062Hh(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);
    public int A00 = -1;

    private int A00(int i) {
        int i2;
        this.A01 = 0;
        int i3 = 0;
        do {
            int i4 = this.A01 + i;
            CS cs = this.A03;
            if (A05[0].length() == 13) {
                A05[5] = "SgZ2PRj4NlkJ3BHKSnaMRED72QUEdulA";
                if (i4 >= cs.A02) {
                    break;
                }
                int[] iArr = this.A03.A09;
                int i5 = this.A01;
                this.A01 = i5 + 1;
                i2 = iArr[i5 + i];
                i3 += i2;
            } else {
                throw new RuntimeException();
            }
        } while (i2 == 255);
        return i3;
    }

    public final CS A01() {
        return this.A03;
    }

    public final C1062Hh A02() {
        return this.A04;
    }

    public final void A03() {
        this.A03.A02();
        this.A04.A0V();
        this.A00 = -1;
        this.A02 = false;
    }

    public final void A04() {
        if (this.A04.A00.length == 65025) {
            return;
        }
        C1062Hh c1062Hh = this.A04;
        byte[] bArr = c1062Hh.A00;
        C1062Hh c1062Hh2 = this.A04;
        if (A05[2].length() == 26) {
            throw new RuntimeException();
        }
        A05[0] = "HnsfJzdopseCo";
        c1062Hh.A00 = Arrays.copyOf(bArr, Math.max(OggPageHeader.MAX_PAGE_PAYLOAD, c1062Hh2.A07()));
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0097 A[PHI: r3
      0x0097: PHI (r3v5 int) = (r3v1 int), (r3v6 int) binds: [B:46:0x0108, B:30:0x0095] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A05(com.facebook.ads.redexgen.X.InterfaceC0921Bb r11) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.CR.A05(com.facebook.ads.redexgen.X.Bb):boolean");
    }
}
