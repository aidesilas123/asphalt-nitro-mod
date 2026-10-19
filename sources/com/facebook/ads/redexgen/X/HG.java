package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class HG implements RH {
    @Override // com.facebook.ads.redexgen.X.RH
    public final long A4v() {
        return System.nanoTime();
    }

    @Override // com.facebook.ads.redexgen.X.RH
    public final void AFf(Object obj, long j) throws InterruptedException {
        obj.wait(j);
    }
}
