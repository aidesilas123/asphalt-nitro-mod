package com.facebook.ads.redexgen.X;

import com.facebook.ads.MediaViewListener;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1493Yf implements M2 {
    public final /* synthetic */ MediaViewListener A00;
    public final /* synthetic */ C1492Ye A01;

    public C1493Yf(C1492Ye c1492Ye, MediaViewListener mediaViewListener) {
        this.A01 = c1492Ye;
        this.A00 = mediaViewListener;
    }

    @Override // com.facebook.ads.redexgen.X.M2
    public final void AAt() {
        this.A00.onComplete(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.M2
    public final void ABF() {
        this.A00.onEnterFullscreen(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.M2
    public final void ABL() {
        this.A00.onExitFullscreen(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.M2
    public final void ABS() {
        this.A00.onFullscreenBackground(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.M2
    public final void ABU() {
        this.A00.onFullscreenForeground(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.M2
    public final void ACL() {
        this.A00.onPlay(this.A01.A03);
    }

    @Override // com.facebook.ads.redexgen.X.M2
    public final void ADY() {
        this.A00.onVolumeChange(this.A01.A03, this.A01.A05.getVolume());
    }

    @Override // com.facebook.ads.redexgen.X.M2
    public final void onPause() {
        this.A00.onPause(this.A01.A03);
    }
}
