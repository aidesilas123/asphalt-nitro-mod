package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class VC implements InterfaceC1032Gb {
    public final InterfaceC1053Gy<? super VD> A00;

    public VC() {
        this(null);
    }

    public VC(InterfaceC1053Gy<? super VD> interfaceC1053Gy) {
        this.A00 = interfaceC1053Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1032Gb
    public final InterfaceC1033Gc A4U() {
        return new VD(this.A00);
    }
}
