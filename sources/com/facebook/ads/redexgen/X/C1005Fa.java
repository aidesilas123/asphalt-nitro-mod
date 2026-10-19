package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1005Fa implements InterfaceC1634bf {
    public final C1626bX A00;

    public C1005Fa(C1626bX c1626bX) {
        this.A00 = c1626bX;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1634bf
    public final void onStart() {
        this.A00.A08();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1634bf
    public final void onStop() {
        this.A00.A07();
    }
}
