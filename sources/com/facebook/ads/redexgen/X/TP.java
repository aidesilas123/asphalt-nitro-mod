package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.text.TextUtils;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class TP implements MT {
    public static byte[] A01;
    public static String[] A02 = {"nV", "0i4Wqrqqd8V", "SjjlSsHq4luZ", "UY2G1G5tdkkQRCLDawUW8PMELrtkam", "x8YzSsjyce", "sMLSYBAewXVAxhh2DbXf8YHA5QSbjC", "Z41BjwW", "WlPnbv1jMaDivlCQdRIz8mOz1GWjjHLQ"};
    public final /* synthetic */ MR A00;

    static {
        A01();
    }

    public TP(MR mr) {
        this.A00 = mr;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 111);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-29, -17, -19, -82, -26, -31, -29, -27, -30, -17, -17, -21, -82, -31, -28, -13, -82, -31, -28, -14, -27, -16, -17, -14, -12, -23, -18, -25, -82, -58, -55, -50, -55, -45, -56, -33, -63, -60, -33, -46, -59, -48, -49, -46, -44, -55, -50, -57, -33, -58, -52, -49, -41};
        String[] strArr = A02;
        if (strArr[4].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        A02[7] = "41BFLxMtpa8zSeOoPh8lyezFWRN0z1Os";
    }

    @Override // com.facebook.ads.redexgen.X.MT
    public final void A4I() {
        if (this.A00.A07 != null) {
            this.A00.A07.A3z(A00(0, 53, 17));
        }
    }

    @Override // com.facebook.ads.redexgen.X.MT
    public final void A4J() {
        this.A00.A0M();
        if (this.A00.A08 != null) {
            this.A00.A08.ACj(true);
        }
        this.A00.A0B();
    }

    @Override // com.facebook.ads.redexgen.X.MT
    public final void A8F() {
        if (this.A00.A03 == null) {
            A4J();
            return;
        }
        MR.A01(this.A00);
        if (this.A00.A03.A02() == null) {
            MR mr = this.A00;
            if (A02[6].length() != 7) {
                throw new RuntimeException();
            }
            A02[7] = "M7aB9yPR9altU9X1FYnvgfaKEANBwcUB";
            mr.A0C();
        } else {
            MR mr2 = this.A00;
            mr2.A0E(mr2.A03.A02());
        }
        if (Build.VERSION.SDK_INT < 16 || !IP.A1z(this.A00.A05)) {
            return;
        }
        this.A00.performAccessibilityAction(128, null);
    }

    @Override // com.facebook.ads.redexgen.X.MT
    public final void A99() {
        if (!TextUtils.isEmpty(this.A00.A04.A0I())) {
            KZ.A0L(new KZ(), this.A00.A05, C1132Kc.A00(this.A00.A04.A0I()), this.A00.A09);
        }
        this.A00.A02.A04();
    }

    @Override // com.facebook.ads.redexgen.X.MT
    public final void A9A() {
        this.A00.A0M();
        if (this.A00.A08 != null) {
            this.A00.A08.ACj(true);
        }
        if (!TextUtils.isEmpty(this.A00.A04.A0C())) {
            KZ.A0L(new KZ(), this.A00.A05, C1132Kc.A00(this.A00.A04.A0C()), this.A00.A09);
        }
        this.A00.A02.A06();
        this.A00.A0B();
    }

    @Override // com.facebook.ads.redexgen.X.MT
    public final void AC6(C2I c2i) {
        MR.A00(this.A00);
        this.A00.A01 = c2i;
        this.A00.A0E(this.A00.A01 == C2I.A03 ? this.A00.A04.A0A() : this.A00.A04.A0B());
    }

    @Override // com.facebook.ads.redexgen.X.MT
    public final void ACF(C2K c2k) {
        MR.A00(this.A00);
        this.A00.A02.A07(c2k.A01());
        if (c2k.A05().isEmpty()) {
            this.A00.A0D(c2k);
        } else {
            this.A00.A0E(c2k);
        }
    }
}
