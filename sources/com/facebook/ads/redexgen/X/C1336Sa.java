package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1336Sa extends FrameLayout implements InterfaceC1174Lu {
    public String A00;
    public final InterfaceC1173Lt A01;
    public final C1239Oh A02;

    public C1336Sa(YA ya, InterfaceC1173Lt interfaceC1173Lt, C1239Oh c1239Oh, String str) {
        super(ya);
        this.A02 = c1239Oh;
        this.A01 = interfaceC1173Lt;
        this.A00 = str;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void A9C(Intent intent, Bundle bundle, C5J c5j) {
        C1239Oh.A0B().incrementAndGet();
        this.A02.A0V();
        LV.A0J(this.A02.A0O());
        addView(this.A02.A0O(), new FrameLayout.LayoutParams(-1, -1));
        this.A01.A3Q(this, new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACJ(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACj(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void AEt(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public String getCurrentClientToken() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void onDestroy() {
        this.A02.A0U();
        if (this.A02.A0N() != null) {
            this.A02.A0N().ABT();
        }
        C1239Oh.A0B().decrementAndGet();
    }

    public void setListener(InterfaceC1173Lt interfaceC1173Lt) {
    }
}
