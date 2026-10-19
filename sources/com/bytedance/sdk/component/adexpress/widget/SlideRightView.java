package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Build;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.a.b.b;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class SlideRightView extends FrameLayout {
    private Context a;
    private ImageView b;
    private ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AnimatorSet f865f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AnimatorSet f866g;
    private AnimatorSet h;
    private AnimatorSet i;

    public SlideRightView(Context context) {
        super(context);
        this.f865f = new AnimatorSet();
        this.f866g = new AnimatorSet();
        this.h = new AnimatorSet();
        this.i = new AnimatorSet();
        this.a = context;
        b();
    }

    private void b() {
        ImageView imageView = new ImageView(this.a);
        this.f863d = imageView;
        imageView.setBackgroundResource(s.d(this.a, "tt_splash_slide_right_bg"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, -2);
        layoutParams.gravity = 48;
        addView(this.f863d, layoutParams);
        setClipChildren(false);
        setClipToPadding(false);
        ImageView imageView2 = new ImageView(this.a);
        this.c = imageView2;
        imageView2.setImageResource(s.d(this.a, "tt_splash_slide_right_circle"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) e.a(this.a, 50.0f), (int) e.a(this.a, 50.0f));
        layoutParams2.gravity = 48;
        addView(this.c, layoutParams2);
        ImageView imageView3 = new ImageView(this.a);
        this.b = imageView3;
        imageView3.setImageResource(s.d(this.a, "tt_splash_hand2"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) e.a(this.a, 80.0f), (int) e.a(this.a, 80.0f));
        layoutParams3.gravity = 48;
        addView(this.b, layoutParams3);
        TextView textView = new TextView(this.a);
        this.f864e = textView;
        textView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 80;
        addView(this.f864e, layoutParams4);
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) SlideRightView.this.b.getLayoutParams();
                layoutParams5.topMargin = (int) ((SlideRightView.this.c.getMeasuredHeight() / 2.0f) - e.a(SlideRightView.this.getContext(), 7.0f));
                int i = -SlideRightView.this.c.getMeasuredWidth();
                layoutParams5.leftMargin = i;
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 17) {
                    layoutParams5.setMarginStart(i);
                    layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                }
                SlideRightView.this.b.setLayoutParams(layoutParams5);
                FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) SlideRightView.this.f863d.getLayoutParams();
                layoutParams6.topMargin = (int) ((SlideRightView.this.c.getMeasuredHeight() / 2.0f) - e.a(SlideRightView.this.getContext(), 5.0f));
                layoutParams6.leftMargin = (int) (SlideRightView.this.c.getMeasuredWidth() / 2.0f);
                if (i2 >= 17) {
                    layoutParams5.setMarginStart(layoutParams5.leftMargin);
                    layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                }
                SlideRightView.this.f863d.setLayoutParams(layoutParams6);
            }
        });
    }

    private void c() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.b, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.c, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.c, "scaleY", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f863d, "alpha", 0.0f, 1.0f);
        this.h.setDuration(300L);
        this.h.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.b, "translationX", 0.0f, e.a(getContext(), 80.0f));
        objectAnimatorOfFloat5.setInterpolator(b.a(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, (int) e.a(getContext(), 80.0f));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) SlideRightView.this.f863d.getLayoutParams();
                layoutParams.width = num.intValue();
                SlideRightView.this.f863d.setLayoutParams(layoutParams);
            }
        });
        valueAnimatorOfInt.setInterpolator(b.a(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.c, "translationX", 0.0f, e.a(getContext(), 80.0f));
        objectAnimatorOfFloat6.setInterpolator(b.a(0.2f, 0.0f, 0.3f, 1.0f));
        this.i.setDuration(1500L);
        this.i.playTogether(objectAnimatorOfFloat5, valueAnimatorOfInt, objectAnimatorOfFloat6);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.b, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this.f863d, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(this.c, "alpha", 1.0f, 0.0f);
        this.f866g.setDuration(50L);
        this.f866g.playTogether(objectAnimatorOfFloat7, objectAnimatorOfFloat8, objectAnimatorOfFloat9);
        this.f865f.playSequentially(this.h, this.i, this.f866g);
    }

    public void a() {
        c();
        this.f865f.start();
        this.f865f.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                SlideRightView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SlideRightView.this.f865f.start();
                    }
                }, 200L);
            }
        });
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void setGuideText(String str) {
        this.f864e.setText(str);
    }
}
