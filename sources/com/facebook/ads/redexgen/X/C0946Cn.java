package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0946Cn {
    public int A00;
    public long A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public final InterfaceC0941Cg A05;
    public final C1061Hg A06 = new C1061Hg(new byte[64]);
    public final C1074Ht A07;

    public C0946Cn(InterfaceC0941Cg interfaceC0941Cg, C1074Ht c1074Ht) {
        this.A05 = interfaceC0941Cg;
        this.A07 = c1074Ht;
    }

    private void A00() {
        this.A06.A08(8);
        this.A03 = this.A06.A0F();
        this.A02 = this.A06.A0F();
        this.A06.A08(6);
        this.A00 = this.A06.A04(8);
    }

    private void A01() {
        this.A01 = 0L;
        if (this.A03) {
            this.A06.A08(4);
            long jA04 = ((long) this.A06.A04(3)) << 30;
            this.A06.A08(1);
            long jA042 = jA04 | ((long) (this.A06.A04(15) << 15));
            this.A06.A08(1);
            long jA043 = jA042 | ((long) this.A06.A04(15));
            this.A06.A08(1);
            if (!this.A04 && this.A02) {
                this.A06.A08(4);
                long jA044 = ((long) this.A06.A04(3)) << 30;
                this.A06.A08(1);
                long jA045 = jA044 | ((long) (this.A06.A04(15) << 15));
                this.A06.A08(1);
                long jA046 = jA045 | ((long) this.A06.A04(15));
                this.A06.A08(1);
                this.A07.A07(jA046);
                this.A04 = true;
            }
            this.A01 = this.A07.A07(jA043);
        }
    }

    public final void A02() {
        this.A04 = false;
        this.A05.AEv();
    }

    public final void A03(C1062Hh c1062Hh) throws C08729d {
        c1062Hh.A0c(this.A06.A00, 0, 3);
        this.A06.A07(0);
        A00();
        c1062Hh.A0c(this.A06.A00, 0, this.A00);
        this.A06.A07(0);
        A01();
        this.A05.ADj(this.A01, true);
        this.A05.A4O(c1062Hh);
        this.A05.ADi();
    }
}
