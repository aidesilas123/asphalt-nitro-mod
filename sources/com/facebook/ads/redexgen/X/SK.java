package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class SK implements InterfaceC1142Km {
    public final /* synthetic */ int A00;
    public final /* synthetic */ K8 A01;
    public final /* synthetic */ SH A02;

    public SK(SH sh, int i, K8 k8) {
        this.A02 = sh;
        this.A00 = i;
        this.A01 = k8;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1142Km
    public final void AAv() throws Throwable {
        this.A01.run();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1142Km
    public final void ACZ(float f2) {
        this.A02.A07.setProgress(100.0f * (1.0f - (f2 / this.A00)));
    }
}
