package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;

/* JADX INFO: loaded from: classes.dex */
public class DynamicVerticalScrollWidgetImp extends DynamicBaseWidgetImp implements e {
    ObjectAnimator a;
    ObjectAnimator b;
    private int t;
    private boolean u;
    private Runnable v;

    public DynamicVerticalScrollWidgetImp(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        this.t = 0;
        this.u = false;
        this.v = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicVerticalScrollWidgetImp.1
            @Override // java.lang.Runnable
            public void run() {
                DynamicVerticalScrollWidgetImp.this.a();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        final View childAt;
        final View childAt2 = getChildAt(this.t);
        int i = this.t;
        if (i == 0) {
            this.u = false;
        }
        boolean z = i + 1 >= getChildCount() || ((ViewGroup) getChildAt(this.t + 1)).getChildCount() <= 0;
        if (this.m.j().e().a() || !z) {
            View childAt3 = z ? getChildAt((this.t + 2) % getChildCount()) : getChildAt((this.t + 1) % getChildCount());
            this.a = ObjectAnimator.ofFloat(childAt2, "translationY", 0.0f, (-(this.h + getChildAt(this.t).getHeight())) / 2);
            if (z) {
                this.t++;
            }
            childAt = childAt3;
        } else {
            this.u = true;
            childAt = getChildAt(this.t - 1);
            this.a = ObjectAnimator.ofFloat(childAt2, "translationY", 0.0f, (this.h + getChildAt(this.t).getHeight()) / 2);
        }
        this.a.setInterpolator(new LinearInterpolator());
        this.a.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicVerticalScrollWidgetImp.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                childAt2.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        if (this.u) {
            this.b = ObjectAnimator.ofFloat(childAt, "translationY", (-(this.h + childAt.getHeight())) / 2, 0.0f);
        } else {
            this.b = ObjectAnimator.ofFloat(childAt, "translationY", (this.h + childAt.getHeight()) / 2, 0.0f);
        }
        this.b.setInterpolator(new LinearInterpolator());
        this.b.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicVerticalScrollWidgetImp.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                childAt.setVisibility(0);
            }
        });
        this.a.setDuration(500L);
        this.b.setDuration(500L);
        this.a.start();
        this.b.start();
        if (this.u) {
            this.t--;
        } else {
            int i2 = this.t + 1;
            this.t = i2;
            this.t = i2 % getChildCount();
        }
        postDelayed(this.v, 3000L);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.e
    public void b() {
        removeCallbacks(this.v);
        ObjectAnimator objectAnimator = this.a;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.a.cancel();
        }
        ObjectAnimator objectAnimator2 = this.b;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllUpdateListeners();
            this.b.cancel();
        }
        super.b();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            layoutParams.topMargin = (this.h - layoutParams.height) / 2;
            childAt.setLayoutParams(layoutParams);
            if (i != 0) {
                childAt.setVisibility(8);
            }
        }
        postDelayed(this.v, 2500L);
    }
}
