package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class Z6 implements InterfaceC07483w {
    public final /* synthetic */ ED A00;

    public Z6(ED ed) {
        this.A00 = ed;
    }

    private final void A00(C07493x c07493x) {
        switch (c07493x.A00) {
            case 1:
                this.A00.A06.A1Q(this.A00, c07493x.A02, c07493x.A01);
                break;
            case 2:
                this.A00.A06.A1R(this.A00, c07493x.A02, c07493x.A01);
                break;
            case 4:
                this.A00.A06.A1T(this.A00, c07493x.A02, c07493x.A01, c07493x.A03);
                break;
            case 8:
                this.A00.A06.A1S(this.A00, c07493x.A02, c07493x.A01, 1);
                break;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07483w
    public final AbstractC07714u A5e(int i) {
        AbstractC07714u abstractC07714uA1G = this.A00.A1G(i, true);
        if (abstractC07714uA1G == null || this.A00.A01.A0K(abstractC07714uA1G.A0H)) {
            return null;
        }
        return abstractC07714uA1G;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07483w
    public final void A9z(int i, int i2, Object obj) {
        this.A00.A1g(i, i2, obj);
        this.A00.A0H = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07483w
    public final void AAJ(int i, int i2) {
        this.A00.A1d(i, i2);
        this.A00.A0G = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07483w
    public final void AAK(int i, int i2) {
        this.A00.A1e(i, i2);
        this.A00.A0G = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07483w
    public final void AAL(int i, int i2) {
        this.A00.A1h(i, i2, true);
        this.A00.A0G = true;
        this.A00.A0s.A00 += i2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07483w
    public final void AAM(int i, int i2) {
        this.A00.A1h(i, i2, false);
        this.A00.A0G = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07483w
    public final void AB4(C07493x c07493x) {
        A00(c07493x);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07483w
    public final void AB6(C07493x c07493x) {
        A00(c07493x);
    }
}
