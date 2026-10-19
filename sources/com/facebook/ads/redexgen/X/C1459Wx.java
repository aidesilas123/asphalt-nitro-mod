package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.Arrays;
import java.util.Collections;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1459Wx extends AbstractC0931Bo {
    public static byte[] A03;
    public static String[] A04 = {"NGxGYCc4p5LcUzQMJWyw5DiDSRjOQe9F", "UCFVtk8FFiQwlTHXhlKlMorjx3xQRwUs", "gTYsvz0mqVjOzoMK", "3KonftsBU2Jf7i08alR6FL8DBvSTG56H", "D2cphfoCJeCyY12qt8LourkPjJ4neP20", "nKjfLlw2BnKut4cvipNa", "Z1RdCfwuszFRU44UcECPMtJ2BxVCI0wR", ""};
    public static final int[] A05;
    public int A00;
    public boolean A01;
    public boolean A02;

    static {
        A01();
        A05 = new int[]{5512, 11025, 22050, 44100};
    }

    public C1459Wx(InterfaceC0930Bm interfaceC0930Bm) {
        super(interfaceC0930Bm);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A04[6].charAt(5) != 'f') {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[0] = "nNsRewLEUEMjLhcIGLcqJY6DWywwxHcp";
            strArr[3] = "fafmuFk897DEXRggqTinAcDDyPNFBZka";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 126);
            i4++;
        }
    }

    public static void A01() {
        A03 = new byte[]{39, 91, 74, 79, 85, 6, 76, 85, 88, 83, 71, 90, 6, 84, 85, 90, 6, 89, 91, 86, 86, 85, 88, 90, 75, 74, 32, 6, 48, 68, 51, 56, 62, -2, 54, 6, 0, 0, -4, 48, 59, 48, 70, -33, -13, -30, -25, -19, -83, -27, -75, -81, -81, -85, -21, -22, -33, -11, -24, -4, -21, -16, -10, -74, -12, -9, -69, -24, -76, -13, -24, -5, -12, 41, 61, 44, 49, 55, -9, 53, 56, 45, 47};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0931Bo
    public final void A0B(C1062Hh c1062Hh, long j) throws C08729d {
        if (this.A00 == 2) {
            int iA04 = c1062Hh.A04();
            super.A00.AEr(c1062Hh, iA04);
            super.A00.AEs(j, 1, iA04, 0, null);
            return;
        }
        int iA0E = c1062Hh.A0E();
        if (A04[2].length() != 16) {
            throw new RuntimeException();
        }
        A04[7] = "";
        if (iA0E != 0 || this.A01) {
            if (this.A00 != 10 || iA0E == 1) {
                int iA042 = c1062Hh.A04();
                super.A00.AEr(c1062Hh, iA042);
                super.A00.AEs(j, 1, iA042, 0, null);
                return;
            }
            return;
        }
        byte[] bArr = new byte[c1062Hh.A04()];
        c1062Hh.A0c(bArr, 0, bArr.length);
        Pair<Integer, Integer> pairA03 = HM.A03(bArr);
        super.A00.A5j(Format.A07(null, A00(58, 15, 9), null, -1, -1, ((Integer) pairA03.second).intValue(), ((Integer) pairA03.first).intValue(), Collections.singletonList(bArr), null, 0, null));
        this.A01 = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bd  */
    @Override // com.facebook.ads.redexgen.X.AbstractC0931Bo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A0C(com.facebook.ads.redexgen.X.C1062Hh r19) throws com.facebook.ads.redexgen.X.C1455Wt {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1459Wx.A0C(com.facebook.ads.redexgen.X.Hh):boolean");
    }
}
