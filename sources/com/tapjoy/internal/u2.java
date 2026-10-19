package com.tapjoy.internal;

import android.animation.Animator;
import com.tapjoy.TJCloseButton;

/* JADX INFO: loaded from: classes4.dex */
public final class u2 implements Animator.AnimatorListener {
    public final /* synthetic */ g3 a;

    public u2(g3 g3Var) {
        this.a = g3Var;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        TJCloseButton tJCloseButton = this.a.a;
        tJCloseButton.setClickable(tJCloseButton.a);
        this.a.a.b = false;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        TJCloseButton tJCloseButton = this.a.a;
        tJCloseButton.setClickable(tJCloseButton.a);
        this.a.a.b = false;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
