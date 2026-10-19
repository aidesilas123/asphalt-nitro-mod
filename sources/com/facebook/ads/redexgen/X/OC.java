package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class OC extends AnimatorListenerAdapter {
    public final /* synthetic */ C1347Sl A00;
    public final /* synthetic */ boolean A01;

    public OC(C1347Sl c1347Sl, boolean z) {
        this.A00 = c1347Sl;
        this.A01 = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.A00.A0M.setTranslationY(0.0f);
        this.A00.A0T();
        if (!this.A01 && this.A00.A0J != null) {
            this.A00.A0J.destroy();
        }
        if (this.A00.A0h != null) {
            this.A00.A0h.setVisibility(this.A01 ? 8 : 0);
        }
    }
}
