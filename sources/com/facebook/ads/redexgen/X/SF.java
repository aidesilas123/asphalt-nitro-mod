package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class SF implements P0 {
    public final /* synthetic */ int A00;
    public final /* synthetic */ SD A01;

    public SF(SD sd, int i) {
        this.A01 = sd;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.P0
    public final void AAf() {
        this.A01.A0Q(false, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.P0
    public final void AB2(int i) {
        SD.A01(this.A01, i);
    }

    @Override // com.facebook.ads.redexgen.X.P0
    public final void ABO(float f2) {
        if (this.A01.A08) {
            return;
        }
        this.A01.A0F(f2);
    }

    @Override // com.facebook.ads.redexgen.X.P0
    public final void ACw(boolean z) {
        this.A01.A0P(z);
    }

    @Override // com.facebook.ads.redexgen.X.P0
    public final void ADN(String str) {
        this.A01.A0D.A0E().A2v(str);
        this.A01.A0H.A3z(this.A01.A0J.A6r());
        this.A01.A0G(3);
    }

    @Override // com.facebook.ads.redexgen.X.P0
    public final void AG5() {
        this.A01.A09 = false;
        this.A01.A0I.setProgressImmediate(0.0f);
        this.A01.A0I.setToolbarActionMode(2);
    }

    @Override // com.facebook.ads.redexgen.X.P0
    public final void AG6(float f2) {
        this.A01.A0I.setProgress(100.0f * f2);
    }
}
