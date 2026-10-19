package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1555aH implements InterfaceC06891n {
    public final /* synthetic */ C06811f A00;

    public C1555aH(C06811f c06811f) {
        this.A00 = c06811f;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06891n
    public final void ACM(AdError adError) {
        this.A00.A04.AAP(AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06891n
    public final void ACN() {
        this.A00.A04.AAQ();
    }
}
