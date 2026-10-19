package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1551aD implements C6I {
    public final boolean A00;

    public AbstractC1551aD(boolean z) {
        this.A00 = z;
    }

    public abstract void A00();

    public abstract void A01(boolean z);

    @Override // com.facebook.ads.redexgen.X.C6I
    public final void AAn() {
        if (this.A00) {
            A00();
        } else {
            A01(false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C6I
    public final void AAw() {
        A01(true);
    }
}
