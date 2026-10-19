package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1554aG implements InterfaceC07925p {
    public final /* synthetic */ C06811f A00;

    public C1554aG(C06811f c06811f) {
        this.A00 = c06811f;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07925p
    public final void AAW() {
        this.A00.A04.AAQ();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07925p
    public final void AAX() {
        this.A00.A04.AAP(AdError.CACHE_ERROR);
    }
}
