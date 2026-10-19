package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class W7 implements InterfaceC0947Co {
    public static String[] A02 = {"KDcVXuz53RpoF9UEOZ96l2VZuhVX9ip0", "CKRJ1Pqx0SMvAzHTc14bPVY1Im6KLWKe", "CZRg2SIX1VWZgfyXTOdEl1", "FcRR7mDk42dnDG0ym1pZJ2", "QPo", "3iSkzhZlTwG2jcdx249ci8whKDsXKTKF", "nuc6nRuUqT3GqwIih", "HhkYvD09GQfRAuSaGWngxJEfFHmtitdD"};
    public final C1061Hg A00 = new C1061Hg(new byte[4]);
    public final /* synthetic */ W5 A01;

    public W7(W5 w5) {
        this.A01 = w5;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0947Co
    public final void A4O(C1062Hh c1062Hh) {
        if (c1062Hh.A0E() != 0) {
            return;
        }
        c1062Hh.A0Z(7);
        int iA04 = c1062Hh.A04() / 4;
        for (int i = 0; i < iA04; i++) {
            c1062Hh.A0a(this.A00, 4);
            int iA042 = this.A00.A04(16);
            this.A00.A08(3);
            if (iA042 == 0) {
                this.A00.A08(13);
            } else {
                int iA043 = this.A00.A04(13);
                this.A01.A06.put(iA043, new WA(new W6(this.A01, iA043)));
                W5.A01(this.A01);
            }
        }
        int i2 = this.A01.A05;
        if (A02[4].length() == 11) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[3] = "4awIAPS5zJKVkKN48BLjJX";
        strArr[2] = "yyhTqQNSKamLuuIUjTGErW";
        if (i2 != 2) {
            this.A01.A06.remove(0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0947Co
    public final void A8g(C1074Ht c1074Ht, InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
    }
}
