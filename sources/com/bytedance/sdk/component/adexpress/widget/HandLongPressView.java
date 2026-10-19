package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Build;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class HandLongPressView extends FrameLayout {
    private Context a;
    private ImageView b;
    private CircleRippleView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AnimatorSet f843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f845f;

    public HandLongPressView(Context context) {
        super(context);
        this.f844e = true;
        this.a = context;
        this.f843d = new AnimatorSet();
        c();
        d();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.HandLongPressView.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) HandLongPressView.this.b.getLayoutParams();
                layoutParams.topMargin = ((int) ((HandLongPressView.this.c.getMeasuredHeight() / 2.0f) - e.a(HandLongPressView.this.getContext(), 5.0f))) + ((int) e.a(HandLongPressView.this.a, 20.0f));
                layoutParams.leftMargin = ((int) ((HandLongPressView.this.c.getMeasuredWidth() / 2.0f) - e.a(HandLongPressView.this.getContext(), 5.0f))) + ((int) e.a(HandLongPressView.this.a, 20.0f));
                layoutParams.bottomMargin = (int) (((-HandLongPressView.this.c.getMeasuredHeight()) / 2.0f) + e.a(HandLongPressView.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-HandLongPressView.this.c.getMeasuredWidth()) / 2.0f) + e.a(HandLongPressView.this.getContext(), 5.0f));
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.setMarginStart(layoutParams.leftMargin);
                    layoutParams.setMarginEnd(layoutParams.rightMargin);
                }
                HandLongPressView.this.b.setLayoutParams(layoutParams);
            }
        });
    }

    private void c() {
        this.c = new CircleRippleView(this.a);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) e.a(this.a, 80.0f), (int) e.a(this.a, 80.0f));
        layoutParams.gravity = 8388659;
        layoutParams.topMargin = (int) e.a(this.a, 20.0f);
        int iA = (int) e.a(this.a, 20.0f);
        layoutParams.leftMargin = iA;
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(iA);
            layoutParams.setMarginEnd(layoutParams.rightMargin);
        }
        addView(this.c, layoutParams);
        this.c.a();
        this.b = new ImageView(this.a);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) e.a(this.a, 80.0f), (int) e.a(this.a, 80.0f));
        this.b.setImageResource(s.d(this.a, "tt_splash_hand"));
        addView(this.b, layoutParams2);
        TextView textView = new TextView(this.a);
        this.f845f = textView;
        textView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) e.a(this.a, 10.0f);
        addView(this.f845f, layoutParams3);
    }

    private void d() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.b, "scaleX", 1.0f, 0.8f);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.widget.HandLongPressView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (HandLongPressView.this.f844e) {
                    HandLongPressView.this.c.a();
                    HandLongPressView.this.c.setAlpha(1.0f);
                } else {
                    HandLongPressView.this.c.b();
                    HandLongPressView.this.c.setAlpha(0.0f);
                }
                HandLongPressView.this.f844e = !r2.f844e;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(HandLongPressView.this.b, "alpha", 0.0f, 1.0f);
                objectAnimatorOfFloat2.setDuration(200L);
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
                objectAnimatorOfFloat2.start();
                HandLongPressView.this.b.setVisibility(0);
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.b, "scaleY", 1.0f, 0.8f);
        objectAnimatorOfFloat2.setDuration(1000L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.f843d.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    public void a() {
        this.f843d.start();
    }

    public void b() {
        AnimatorSet animatorSet = this.f843d;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        CircleRippleView circleRippleView = this.c;
        if (circleRippleView != null) {
            circleRippleView.b();
        }
    }

    public void setGuideText(String str) {
        this.f845f.setText(str);
    }

    public void setGuideTextColor(int i) {
        this.f845f.setTextColor(i);
    }
}
