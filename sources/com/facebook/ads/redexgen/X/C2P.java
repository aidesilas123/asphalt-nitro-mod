package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2P, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C2P extends AbstractC0907An {
    public final int A00;
    public final int A01;
    public final InterfaceC1053Gy<? super InterfaceC1033Gc> A02;
    public final String A03;
    public final boolean A04;

    public C2P(String str, InterfaceC1053Gy<? super InterfaceC1033Gc> interfaceC1053Gy) {
        this(str, interfaceC1053Gy, 8000, 8000, false);
    }

    public C2P(String str, InterfaceC1053Gy<? super InterfaceC1033Gc> interfaceC1053Gy, int i, int i2, boolean z) {
        this.A03 = str;
        this.A02 = interfaceC1053Gy;
        this.A00 = i;
        this.A01 = i2;
        this.A04 = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC0907An
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C0915Av A01(C1042Gn c1042Gn) {
        return new C0915Av(this.A03, null, this.A02, this.A00, this.A01, this.A04, c1042Gn);
    }
}
