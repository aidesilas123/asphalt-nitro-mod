package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class SN implements InterfaceC1142Km {
    public final /* synthetic */ SM A00;

    public SN(SM sm) {
        this.A00 = sm;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1142Km
    public final void AAv() {
        this.A00.A0F.AB2(this.A00.A0A);
        this.A00.A0F.AAf();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1142Km
    public final void ACZ(float f2) {
        this.A00.A0F.AG6(((this.A00.A0A - f2) + (this.A00.A0V ? 0 : this.A00.A0I.getDuration())) / (this.A00.A0V ? this.A00.A0A : this.A00.A09));
    }
}
