package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WT extends CW {
    public static byte[] A05;
    public static String[] A06 = {"yJHQcBl4f4L", "G0ieIp3rn9VMbRQq", "FaSr", "diNTGhkPk6T4rZ0cbtlCtFUtzgnoDDOW", "ZsfK02RsUHO", "uQbwEIiYvgO", "fIpYaZEOmsgiiOCz2AK4PDqwDhI8GLBw", "t90Xt1PXy7A3GvR50K3KPdbeyD"};
    public int A00;
    public CY A01;
    public C0938Ca A02;
    public C0939Cc A03;
    public boolean A04;

    static {
        A04();
    }

    public static int A00(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    public static int A01(byte b, CY cy) {
        return !cy.A04[A00(b, cy.A00, 1)].A03 ? cy.A02.A03 : cy.A02.A04;
    }

    private final CY A02(C1062Hh c1062Hh) throws IOException {
        if (this.A03 == null) {
            this.A03 = C0940Cd.A04(c1062Hh);
            return null;
        }
        if (this.A02 == null) {
            this.A02 = C0940Cd.A03(c1062Hh);
            return null;
        }
        byte[] bArr = new byte[c1062Hh.A07()];
        System.arraycopy(c1062Hh.A00, 0, bArr, 0, c1062Hh.A07());
        return new CY(this.A03, this.A02, bArr, C0940Cd.A0C(c1062Hh, this.A03.A05), C0940Cd.A00(r4.length - 1));
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 45);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A05 = new byte[]{88, 76, 93, 80, 86, Ascii.SYN, 79, 86, 75, 91, 80, 74};
    }

    public static void A05(C1062Hh c1062Hh, long j) {
        c1062Hh.A0X(c1062Hh.A07() + 4);
        c1062Hh.A00[c1062Hh.A07() - 4] = (byte) (j & 255);
        c1062Hh.A00[c1062Hh.A07() - 3] = (byte) ((j >>> 8) & 255);
        c1062Hh.A00[c1062Hh.A07() - 2] = (byte) ((j >>> 16) & 255);
        c1062Hh.A00[c1062Hh.A07() - 1] = (byte) (255 & (j >>> 24));
    }

    public static boolean A06(C1062Hh c1062Hh) {
        try {
            return C0940Cd.A0A(1, c1062Hh, true);
        } catch (C08729d unused) {
            return false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.CW
    public final long A07(C1062Hh c1062Hh) {
        if ((c1062Hh.A00[0] & 1) == 1) {
            return -1L;
        }
        int iA01 = A01(c1062Hh.A00[0], this.A01);
        int i = this.A04 ? (this.A00 + iA01) / 4 : 0;
        A05(c1062Hh, i);
        this.A04 = true;
        if (A06[2].length() == 7) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[6] = "lV1SPFBYbG5lxAnFlWta4jj5erMHhp00";
        strArr[3] = "grWENQhpkSsLY54DCH6OLJaVWIdWM4Dq";
        this.A00 = iA01;
        return i;
    }

    @Override // com.facebook.ads.redexgen.X.CW
    public final void A08(long j) {
        super.A08(j);
        this.A04 = j != 0;
        C0939Cc c0939Cc = this.A03;
        this.A00 = c0939Cc != null ? c0939Cc.A03 : 0;
    }

    @Override // com.facebook.ads.redexgen.X.CW
    public final void A09(boolean z) {
        super.A09(z);
        if (z) {
            this.A01 = null;
            this.A03 = null;
            this.A02 = null;
        }
        this.A00 = 0;
        this.A04 = false;
    }

    @Override // com.facebook.ads.redexgen.X.CW
    public final boolean A0A(C1062Hh c1062Hh, long j, CV cv) throws InterruptedException, IOException {
        if (this.A01 != null) {
            return false;
        }
        CY cyA02 = A02(c1062Hh);
        this.A01 = cyA02;
        if (cyA02 == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.A01.A02.A09);
        arrayList.add(this.A01.A03);
        cv.A00 = Format.A07(null, A03(0, 12, 20), null, this.A01.A02.A02, -1, this.A01.A02.A05, (int) this.A01.A02.A06, arrayList, null, 0, null);
        return true;
    }
}
