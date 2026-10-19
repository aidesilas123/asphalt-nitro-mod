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
public class PressInteractView extends FrameLayout {
    private Context a;
    private ImageView b;
    private SplashDiffuseView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AnimatorSet f848d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f849e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f850f;

    public PressInteractView(Context context) {
        super(context);
        this.f849e = true;
        this.a = context;
        this.f848d = new AnimatorSet();
        c();
        d();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.PressInteractView.1
            @Override // java.lang.Runnable
            public void run() {
                int iA = (int) e.a(PressInteractView.this.a, 50.0f);
                int iA2 = (int) e.a(PressInteractView.this.a, 50.0f);
                if (PressInteractView.this.c.getMeasuredHeight() > 0) {
                    iA = PressInteractView.this.c.getMeasuredHeight();
                }
                if (PressInteractView.this.c.getMeasuredWidth() > 0) {
                    iA2 = PressInteractView.this.c.getMeasuredWidth();
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) PressInteractView.this.b.getLayoutParams();
                layoutParams.topMargin = ((int) ((iA / 2.0f) - e.a(PressInteractView.this.getContext(), 5.0f))) + ((int) e.a(PressInteractView.this.a, 40.0f));
                layoutParams.leftMargin = ((int) ((iA2 / 2.0f) - e.a(PressInteractView.this.getContext(), 5.0f))) + ((int) e.a(PressInteractView.this.a, 20.0f));
                layoutParams.bottomMargin = (int) (((-iA) / 2.0f) + e.a(PressInteractView.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-iA2) / 2.0f) + e.a(PressInteractView.this.getContext(), 5.0f));
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.setMarginStart(layoutParams.leftMargin);
                    layoutParams.setMarginEnd(layoutParams.rightMargin);
                }
                PressInteractView.this.b.setLayoutParams(layoutParams);
            }
        });
    }

    private void c() {
        this.c = new SplashDiffuseView(this.a);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) e.a(this.a, 50.0f), (int) e.a(this.a, 50.0f));
        layoutParams.gravity = 8388659;
        layoutParams.topMargin = (int) e.a(this.a, 40.0f);
        int iA = (int) e.a(this.a, 20.0f);
        layoutParams.leftMargin = iA;
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(iA);
            layoutParams.setMarginEnd(layoutParams.rightMargin);
        }
        addView(this.c, layoutParams);
        this.b = new ImageView(this.a);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) e.a(this.a, 78.0f), (int) e.a(this.a, 78.0f));
        this.b.setImageResource(s.d(this.a, "tt_splash_hand"));
        addView(this.b, layoutParams2);
        TextView textView = new TextView(this.a);
        this.f850f = textView;
        textView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) e.a(this.a, 10.0f);
        addView(this.f850f, layoutParams3);
        this.f850f.setVisibility(8);
    }

    private void d() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.b, "scaleX", 1.0f, 1.0f, 1.0f, 0.9f);
        objectAnimatorOfFloat.setDuration(600L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.widget.PressInteractView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (PressInteractView.this.f849e) {
                    PressInteractView.this.c.a();
                }
                PressInteractView.this.f849e = !r2.f849e;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(PressInteractView.this.b, "alpha", 0.0f, 1.0f);
                objectAnimatorOfFloat2.setDuration(200L);
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
                objectAnimatorOfFloat2.start();
                PressInteractView.this.b.setVisibility(0);
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.b, "scaleY", 1.0f, 1.0f, 1.0f, 0.9f);
        objectAnimatorOfFloat2.setDuration(600L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.f848d.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    public void a() {
        this.f848d.start();
    }

    public void b() {
        AnimatorSet animatorSet = this.f848d;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public void setGuideText(String str) {
        this.f850f.setVisibility(0);
        this.f850f.setText(str);
    }

    public void setGuideTextColor(int i) {
        this.f850f.setTextColor(i);
    }
}
