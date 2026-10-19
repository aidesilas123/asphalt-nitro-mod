package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class OB implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ C1347Sl A00;

    public OB(C1347Sl c1347Sl) {
        this.A00 = c1347Sl;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        this.A00.A0A.getLayoutParams().height = num.intValue();
        this.A00.A0A.requestLayout();
    }
}
