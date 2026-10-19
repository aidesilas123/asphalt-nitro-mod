package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;

/* JADX INFO: loaded from: classes.dex */
public class DynamicBaseInternalScrollWidgetImp extends DynamicBaseWidgetImp implements e {
    ObjectAnimator a;
    ObjectAnimator b;
    private int t;
    private boolean u;
    private Runnable v;

    public DynamicBaseInternalScrollWidgetImp(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        this.t = 0;
        this.u = false;
        this.v = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseInternalScrollWidgetImp.1
            @Override // java.lang.Runnable
            public void run() {
                DynamicBaseInternalScrollWidgetImp.this.a();
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
        if (i + 1 >= getChildCount() || ((ViewGroup) getChildAt(this.t + 1)).getChildCount() <= 0) {
            this.u = true;
            childAt = getChildAt(this.t - 1);
            this.a = ObjectAnimator.ofFloat(childAt2, "translationX", 0.0f, (this.f753g + getChildAt(this.t).getWidth()) / 2);
        } else {
            childAt = getChildAt(this.t + 1);
            this.a = ObjectAnimator.ofFloat(childAt2, "translationX", 0.0f, (-(this.f753g + getChildAt(this.t).getWidth())) / 2);
        }
        this.a.setInterpolator(new LinearInterpolator());
        this.a.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseInternalScrollWidgetImp.2
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
            this.b = ObjectAnimator.ofFloat(childAt, "translationX", (-(this.f753g + childAt.getWidth())) / 2, 0.0f);
        } else {
            this.b = ObjectAnimator.ofFloat(childAt, "translationX", (this.f753g + childAt.getWidth()) / 2, 0.0f);
        }
        this.b.setInterpolator(new LinearInterpolator());
        this.b.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseInternalScrollWidgetImp.3
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
            this.t++;
        }
        postDelayed(this.v, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
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
