package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class TL implements N6 {
    public final /* synthetic */ C1202Mw A00;

    public TL(C1202Mw c1202Mw) {
        this.A00 = c1202Mw;
    }

    @Override // com.facebook.ads.redexgen.X.N6
    public final void AAg(boolean z) {
        if (!this.A00.A07 || this.A00.A00 == null) {
            return;
        }
        this.A00.A00.setEnabled(z);
        this.A00.A00.setAlpha(z ? 1.0f : 0.3f);
    }

    @Override // com.facebook.ads.redexgen.X.N6
    public final void ABP(boolean z) {
        if (!this.A00.A07 || this.A00.A02 == null) {
            return;
        }
        this.A00.A02.setEnabled(z);
        this.A00.A02.setAlpha(z ? 1.0f : 0.3f);
    }
}
