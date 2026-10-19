package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1021Fq {
    public static String[] A09 = {"Ae51WtdtbsQ7oHVSUK2kH2lkhYtCD", "qx7lDBYo1odo5Y55vJBjPuPd0SCIUsyA", "8Fm6CMM7j8ObWzEih", "Wlrw6QUG7RBgeIlzL5kKGv4h4BsSo73q", "KMN6ZJtdLdMqvcVUA0dmI7c1fz02SP9b", "8oEfNfnBPUmBxW5HI", "jCL3JtrXJCo63I6Hw50xrAvVkRQtnXEj", "6zRYHFDNSsaLRa7ASpeJIQcC6Xopjreo"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public boolean A06;
    public final C1062Hh A07 = new C1062Hh();
    public final int[] A08 = new int[256];

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(C1062Hh c1062Hh, int i) {
        int iA06;
        int iA07;
        int iA0G;
        if (i < 4) {
            return;
        }
        c1062Hh.A0Z(3);
        int i2 = i - 4;
        if (!((c1062Hh.A0E() & 128) != 0)) {
            iA06 = this.A07.A06();
            iA07 = this.A07.A07();
            if (iA06 < iA07) {
                return;
            } else {
                return;
            }
        }
        String[] strArr = A09;
        if (strArr[4].charAt(22) == strArr[7].charAt(22)) {
            String[] strArr2 = A09;
            strArr2[2] = "m4TsyqBzkyxUuct48";
            strArr2[5] = "zfIYrv7wq9TBAE9Jz";
            if (i2 < 7 || (iA0G = c1062Hh.A0G()) < 4) {
                return;
            }
            this.A01 = c1062Hh.A0I();
            this.A00 = c1062Hh.A0I();
            this.A07.A0W(iA0G - 4);
            i2 -= 7;
            iA06 = this.A07.A06();
            iA07 = this.A07.A07();
            if (iA06 < iA07 || i2 <= 0) {
                return;
            }
            int iMin = Math.min(i2, iA07 - iA06);
            C1062Hh c1062Hh2 = this.A07;
            String[] strArr3 = A09;
            if (strArr3[4].charAt(22) == strArr3[7].charAt(22)) {
                A09[6] = "1YWr3OwQ0jPjYWbciqj9BosGRiIvHZyi";
                c1062Hh.A0c(c1062Hh2.A00, iA06, iMin);
                this.A07.A0Y(iA06 + iMin);
                return;
            }
        }
        throw new RuntimeException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(C1062Hh c1062Hh, int i) {
        if (i < 19) {
            return;
        }
        this.A05 = c1062Hh.A0I();
        this.A04 = c1062Hh.A0I();
        c1062Hh.A0Z(11);
        this.A02 = c1062Hh.A0I();
        this.A03 = c1062Hh.A0I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05(C1062Hh c1062Hh, int i) {
        if (i % 5 != 2) {
            return;
        }
        c1062Hh.A0Z(2);
        Arrays.fill(this.A08, 0);
        int i2 = i / 5;
        for (int i3 = 0; i3 < i2; i3++) {
            int iA0E = c1062Hh.A0E();
            int iA0E2 = c1062Hh.A0E();
            int iA0E3 = c1062Hh.A0E();
            int iA0E4 = c1062Hh.A0E();
            this.A08[iA0E] = (c1062Hh.A0E() << 24) | (C1078Hx.A06((int) (((double) iA0E2) + (((double) (iA0E3 - 128)) * 1.402d)), 0, 255) << 16) | (C1078Hx.A06((int) ((((double) iA0E2) - (((double) (iA0E4 - 128)) * 0.34414d)) - (((double) (iA0E3 - 128)) * 0.71414d)), 0, 255) << 8) | C1078Hx.A06((int) (((double) iA0E2) + (((double) (iA0E4 - 128)) * 1.772d)), 0, 255);
        }
        this.A06 = true;
    }

    public final FV A06() {
        if (this.A05 == 0 || this.A04 == 0 || this.A01 == 0 || this.A00 == 0 || this.A07.A07() == 0 || this.A07.A06() != this.A07.A07()) {
            return null;
        }
        boolean z = this.A06;
        if (A09[6].charAt(24) == 'V') {
            throw new RuntimeException();
        }
        A09[1] = "nq70zeHujM7cnH9A4IhpB5iOObfNW5He";
        if (!z) {
            return null;
        }
        this.A07.A0Y(0);
        int[] iArr = new int[this.A01 * this.A00];
        int i = 0;
        while (i < iArr.length) {
            int iA0E = this.A07.A0E();
            if (iA0E != 0) {
                iArr[i] = this.A08[iA0E];
                i++;
            } else {
                int iA0E2 = this.A07.A0E();
                if (iA0E2 != 0) {
                    int iA0E3 = (iA0E2 & 64) == 0 ? iA0E2 & 63 : ((iA0E2 & 63) << 8) | this.A07.A0E();
                    Arrays.fill(iArr, i, i + iA0E3, (iA0E2 & 128) == 0 ? 0 : this.A08[this.A07.A0E()]);
                    i += iA0E3;
                }
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, this.A01, this.A00, Bitmap.Config.ARGB_8888);
        float f2 = this.A02;
        int i2 = this.A05;
        float f3 = f2 / i2;
        float f4 = this.A03;
        int i3 = this.A04;
        return new FV(bitmapCreateBitmap, f3, 0, f4 / i3, 0, this.A01 / i2, this.A00 / i3);
    }

    public final void A07() {
        this.A05 = 0;
        this.A04 = 0;
        this.A02 = 0;
        this.A03 = 0;
        this.A01 = 0;
        this.A00 = 0;
        this.A07.A0W(0);
        this.A06 = false;
    }
}
