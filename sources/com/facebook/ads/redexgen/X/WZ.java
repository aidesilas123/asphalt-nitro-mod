package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class WZ implements CT, InterfaceC0927Bj {
    public static String[] A05 = {"RxrevBHwZunvWtoC5v6V", "BM7NoIYIDKALVkWYBFUm4mgKfD4surZT", "wT545zonAETVeqcNIpSLQKDSBA4psZtT", "O6YerNOVuBIV8g4cn8DH", "f7xxxnJira03VIlY2bxNtwSQeXyrwxct", "8kRv9b0m26r6Uh6XKMOB9WasCMU5o07v", "0W8GSaK37PxtOyOV4bIEUVoiYe2UqjRN", "TYUMHNguvpgJeUJ5Wme9D9z4"};
    public long A00 = -1;
    public long A01 = -1;
    public long[] A02;
    public long[] A03;
    public final /* synthetic */ WY A04;

    public WZ(WY wy) {
        this.A04 = wy;
    }

    public final void A00(long j) {
        this.A00 = j;
    }

    public final void A01(C1062Hh c1062Hh) {
        c1062Hh.A0Z(1);
        int iA0G = c1062Hh.A0G() / 18;
        this.A02 = new long[iA0G];
        this.A03 = new long[iA0G];
        for (int i = 0; i < iA0G; i++) {
            this.A02[i] = c1062Hh.A0L();
            this.A03[i] = c1062Hh.A0L();
            c1062Hh.A0Z(2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.CT
    public final InterfaceC0927Bj A4i() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final long A6k() {
        return this.A04.A01.A01();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final C0926Bi A7l(long j) {
        int iA0B = C1078Hx.A0B(this.A02, this.A04.A04(j), true, true);
        long jA03 = this.A04.A03(this.A02[iA0B]);
        C0928Bk c0928Bk = new C0928Bk(jA03, this.A00 + this.A03[iA0B]);
        if (jA03 < j) {
            long[] jArr = this.A02;
            if (iA0B != jArr.length - 1) {
                return new C0926Bi(c0928Bk, new C0928Bk(this.A04.A03(jArr[iA0B + 1]), this.A00 + this.A03[iA0B + 1]));
            }
        }
        return new C0926Bi(c0928Bk);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final boolean A95() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.CT
    public final long AEA(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        long j = this.A01;
        if (j < 0) {
            return -1L;
        }
        long j2 = -(j + 2);
        this.A01 = -1L;
        if (A05[5].charAt(9) != '6') {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[0] = "MeEp95NFLxRX8bxkfA2m";
        strArr[3] = "RwTpOb1Sie1PnKrI5U9E";
        return j2;
    }

    @Override // com.facebook.ads.redexgen.X.CT
    public final long AFm(long j) {
        long jA04 = this.A04.A04(j);
        this.A01 = this.A02[C1078Hx.A0B(this.A02, jA04, true, true)];
        return jA04;
    }
}
