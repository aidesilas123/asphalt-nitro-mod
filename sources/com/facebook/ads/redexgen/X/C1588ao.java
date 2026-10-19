package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ao, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1588ao extends K8 {
    public final /* synthetic */ C1587an A00;
    public final /* synthetic */ AnonymousClass95 A01;

    public C1588ao(C1587an c1587an, AnonymousClass95 anonymousClass95) {
        this.A00 = c1587an;
        this.A01 = anonymousClass95;
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        this.A00.A00.A09();
        if (this.A00.A00.A0A != null) {
            this.A01.setAdViewabilityChecker(this.A00.A00.A0A);
            this.A00.A00.A0A.A0U();
        }
    }
}
