package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.animation.Animation;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class M1 implements Animation.AnimationListener {
    public final /* synthetic */ C5J A00;
    public final /* synthetic */ AbstractC1365Td A01;
    public final /* synthetic */ AbstractC1365Td A02;

    public M1(AbstractC1365Td abstractC1365Td, AbstractC1365Td abstractC1365Td2, C5J c5j) {
        this.A01 = abstractC1365Td;
        this.A02 = abstractC1365Td2;
        this.A00 = c5j;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.A01.A04 = false;
        LV.A0H(this.A02);
        new Handler().postDelayed(new C1368Tg(this), 200L);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
