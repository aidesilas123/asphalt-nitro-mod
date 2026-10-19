package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class UW implements InterfaceC1104Ix {
    public WeakReference<UJ> A00;

    public UW(UJ uj) {
        this.A00 = new WeakReference<>(uj);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1104Ix
    public final void ACK(boolean z) {
        if (this.A00.get() != null) {
            this.A00.get().A1c(z, false);
        }
    }
}
