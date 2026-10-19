package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class TC extends K8 {
    public final WeakReference<C1285Qb> A00;

    public TC(C1285Qb c1285Qb) {
        this.A00 = new WeakReference<>(c1285Qb);
    }

    public TC(WeakReference<C1285Qb> weakReference) {
        this.A00 = weakReference;
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        C1285Qb c1285Qb = this.A00.get();
        if (c1285Qb != null) {
            c1285Qb.A0U();
        }
    }
}
