package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class UH extends AbstractRunnableC1125Jv {
    public final /* synthetic */ C0905Al A00;
    public final /* synthetic */ JG A01;

    public UH(C0905Al c0905Al, JG jg) {
        this.A00 = c0905Al;
        this.A01 = jg;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1125Jv
    public final void A01() {
        this.A00.A01.onError(this.A00.A00, C1135Kf.A00(this.A01));
    }
}
