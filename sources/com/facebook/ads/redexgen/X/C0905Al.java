package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Al, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0905Al implements UI {
    public NativeAdBase A00;
    public NativeAdListener A01;

    public C0905Al(NativeAdListener nativeAdListener, NativeAdBase nativeAdBase) {
        this.A01 = nativeAdListener;
        this.A00 = nativeAdBase;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1101Iu
    public final void AAN() {
        C1129Jz.A00(new UE(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1101Iu
    public final void AAR() {
        C1129Jz.A00(new UF(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1101Iu
    public final void ABH(JG jg) {
        C1129Jz.A00(new UH(this, jg));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1101Iu
    public final void ABy() {
        C1129Jz.A00(new UD(this));
    }

    @Override // com.facebook.ads.redexgen.X.UI
    public final void AC3() {
        C1129Jz.A00(new UG(this));
    }
}
