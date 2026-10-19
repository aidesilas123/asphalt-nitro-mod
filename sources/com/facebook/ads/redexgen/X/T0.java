package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class T0 implements NK {
    public final WeakReference<C9G> A00;

    public T0(C9G c9g) {
        this.A00 = new WeakReference<>(c9g);
    }

    @Override // com.facebook.ads.redexgen.X.NK
    public final void ABX(boolean z) {
        C9G c9g = this.A00.get();
        if (c9g != null) {
            c9g.A04 = z;
            c9g.A04();
        }
    }
}
