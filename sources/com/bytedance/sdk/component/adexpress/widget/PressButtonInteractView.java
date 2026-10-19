package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Build;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class PressButtonInteractView extends FrameLayout {
    private Context a;
    private ImageView b;
    private SplashDiffuseView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AnimatorSet f846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f847e;

    public PressButtonInteractView(Context context) {
        super(context);
        this.f847e = true;
        this.a = context;
        this.f846d = new AnimatorSet();
        c();
        d();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.PressButtonInteractView.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) PressButtonInteractView.this.b.getLayoutParams();
                layoutParams.topMargin = (int) ((PressButtonInteractView.this.c.getMeasuredHeight() / 2.0f) - e.a(PressButtonInteractView.this.getContext(), 5.0f));
                layoutParams.leftMargin = (int) ((PressButtonInteractView.this.c.getMeasuredWidth() / 2.0f) - e.a(PressButtonInteractView.this.getContext(), 5.0f));
                layoutParams.bottomMargin = (int) (((-PressButtonInteractView.this.c.getMeasuredHeight()) / 2.0f) + e.a(PressButtonInteractView.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-PressButtonInteractView.this.c.getMeasuredWidth()) / 2.0f) + e.a(PressButtonInteractView.this.getContext(), 5.0f));
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.setMarginStart(layoutParams.leftMargin);
                    layoutParams.setMarginEnd(layoutParams.rightMargin);
                }
                PressButtonInteractView.this.b.setLayoutParams(layoutParams);
            }
        });
    }

    private void c() {
        this.c = new SplashDiffuseView(this.a);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) e.a(this.a, 40.0f), (int) e.a(this.a, 40.0f));
        layoutParams.gravity = 8388627;
        addView(this.c, layoutParams);
        this.b = new ImageView(this.a);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) e.a(this.a, 62.0f), (int) e.a(this.a, 62.0f));
        layoutParams2.gravity = 16;
        this.b.setImageResource(s.d(this.a, "tt_splash_hand"));
        addView(this.b, layoutParams2);
    }

    private void d() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.b, "scaleX", 1.0f, 0.9f);
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.widget.PressButtonInteractView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (PressButtonInteractView.this.f847e) {
                    PressButtonInteractView.this.c.a();
                }
                PressButtonInteractView.this.f847e = !r2.f847e;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(PressButtonInteractView.this.b, "alpha", 0.0f, 1.0f);
                objectAnimatorOfFloat2.setDuration(200L);
                objectAnimatorOfFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
                objectAnimatorOfFloat2.start();
                PressButtonInteractView.this.b.setVisibility(0);
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.b, "scaleY", 1.0f, 0.9f);
        objectAnimatorOfFloat2.setDuration(800L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f846d.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    public void a() {
        this.f846d.start();
    }

    public void b() {
        AnimatorSet animatorSet = this.f846d;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }
}
