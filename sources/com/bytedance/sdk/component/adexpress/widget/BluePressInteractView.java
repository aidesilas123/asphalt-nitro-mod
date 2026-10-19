package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.motion.widget.Key;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class BluePressInteractView extends FrameLayout {
    private AnimatorSet a;
    private ObjectAnimator b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f814f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f815g;
    private int h;
    private int i;
    private Context j;

    public BluePressInteractView(Context context, int i, int i2) {
        super(context);
        this.c = false;
        this.a = new AnimatorSet();
        this.h = i;
        this.i = i2;
        this.j = context;
        c();
        d();
    }

    private GradientDrawable a(String str, String str2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setStroke(1, Color.parseColor(str2));
        return gradientDrawable;
    }

    private void c() {
        View view = new View(this.j);
        this.f812d = view;
        view.setBackground(a("#1A7BBEFF", "#337BBEFF"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (((double) this.h) * 0.45d), (int) (((double) this.i) * 0.45d));
        layoutParams.gravity = 17;
        this.f812d.setLayoutParams(layoutParams);
        addView(this.f812d);
        View view2 = new View(this.j);
        this.f813e = view2;
        view2.setBackground(a("#337BBEFF", "#807BBEFF"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (((double) this.h) * 0.25d), (int) (((double) this.i) * 0.25d));
        layoutParams2.gravity = 17;
        this.f813e.setLayoutParams(layoutParams2);
        addView(this.f813e);
        View view3 = new View(this.j);
        this.f814f = view3;
        view3.setBackground(a("#807BBEFF", "#FF7BBEFF"));
        int i = this.h;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) (((double) i) * 0.25d), (int) (((double) i) * 0.25d));
        layoutParams3.gravity = 17;
        this.f814f.setLayoutParams(layoutParams3);
        addView(this.f814f);
        ImageView imageView = new ImageView(this.j);
        this.f815g = imageView;
        imageView.setImageResource(s.d(getContext(), "tt_blue_hand"));
        this.f815g.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams((int) (((double) this.h) * 0.62d), (int) (((double) this.i) * 0.53d));
        layoutParams4.gravity = 17;
        layoutParams4.topMargin = (layoutParams4.width / 2) - 5;
        layoutParams4.leftMargin = (layoutParams4.height / 2) - 5;
        this.f815g.setLayoutParams(layoutParams4);
        addView(this.f815g);
    }

    private void d() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f812d, "scaleX", 1.0f, 2.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f812d, "scaleY", 1.0f, 2.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f813e, "scaleX", 1.0f, 2.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f813e, "scaleY", 1.0f, 2.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f814f, "scaleX", 1.0f, 1.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.f814f, "scaleY", 1.0f, 1.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.f815g, Key.ROTATION, 0.0f, -20.0f, 0.0f);
        this.b = objectAnimatorOfFloat7;
        objectAnimatorOfFloat7.setDuration(1000L);
        this.a.setDuration(1500L);
        this.a.setInterpolator(new AccelerateDecelerateInterpolator());
        this.a.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2).with(objectAnimatorOfFloat3).with(objectAnimatorOfFloat4).with(objectAnimatorOfFloat5).with(objectAnimatorOfFloat6);
        this.a.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.widget.BluePressInteractView.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                BluePressInteractView.this.c = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (BluePressInteractView.this.c) {
                    return;
                }
                BluePressInteractView.this.b.start();
                BluePressInteractView.this.a.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    public void a() {
        this.c = false;
        ObjectAnimator objectAnimator = this.b;
        if (objectAnimator == null || this.a == null) {
            return;
        }
        objectAnimator.start();
        this.a.start();
    }

    public void b() {
        this.c = true;
        ObjectAnimator objectAnimator = this.b;
        if (objectAnimator == null || this.a == null) {
            return;
        }
        objectAnimator.cancel();
        this.a.cancel();
    }
}
