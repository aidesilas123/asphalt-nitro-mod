package com.facebook.ads.redexgen.X;

import android.view.animation.Animation;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class S9 extends LU {
    public final /* synthetic */ S8 A00;

    public S9(S8 s8) {
        this.A00 = s8;
    }

    @Override // com.facebook.ads.redexgen.X.LU, android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        LV.A0H(this.A00.A01);
        this.A00.A00.ABk();
    }
}
