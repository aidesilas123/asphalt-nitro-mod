package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1345Sj implements NK {
    public final WeakReference<AnonymousClass97> A00;

    public C1345Sj(AnonymousClass97 anonymousClass97) {
        this.A00 = new WeakReference<>(anonymousClass97);
    }

    @Override // com.facebook.ads.redexgen.X.NK
    public final void ABX(boolean z) {
        AnonymousClass97 anonymousClass97 = this.A00.get();
        if (anonymousClass97 != null) {
            anonymousClass97.A06 = z;
            anonymousClass97.A03();
        }
    }
}
