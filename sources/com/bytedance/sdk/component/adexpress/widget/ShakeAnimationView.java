package com.bytedance.sdk.component.adexpress.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.t;

/* JADX INFO: loaded from: classes.dex */
public class ShakeAnimationView extends LinearLayout {
    private TextView a;
    private ImageView b;
    private t c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f860e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LinearLayout f861f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f862g;
    private int h;
    private int i;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ShakeAnimationView.this.b != null) {
                final RotateAnimation rotateAnimation = new RotateAnimation(-14.0f, 14.0f, 1, 0.9f, 1, 0.9f);
                rotateAnimation.setInterpolator(new b(null));
                rotateAnimation.setDuration(1000L);
                rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        ShakeAnimationView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ShakeAnimationView.this.b.startAnimation(rotateAnimation);
                            }
                        }, 250L);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                ShakeAnimationView.this.b.startAnimation(rotateAnimation);
            }
        }
    }

    public interface a {
    }

    private static class b implements Interpolator {
        private b() {
        }

        /* synthetic */ b(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return f2 <= 0.25f ? (f2 * (-2.0f)) + 0.5f : f2 <= 0.5f ? (f2 * 4.0f) - 1.0f : f2 <= 0.75f ? (f2 * (-4.0f)) + 3.0f : (f2 * 2.0f) - 1.5f;
        }
    }

    public ShakeAnimationView(Context context, View view, int i, int i2, int i3) {
        super(context);
        this.f862g = i;
        this.h = i2;
        this.i = i3;
        a(context, view);
    }

    public void a() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.start();
        postDelayed(new AnonymousClass1(), 500L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void a(Context context, View view) {
        addView(view);
        if (view instanceof com.bytedance.sdk.component.adexpress.layout.a) {
            com.bytedance.sdk.component.adexpress.layout.a aVar = (com.bytedance.sdk.component.adexpress.layout.a) view;
            this.f861f = aVar.getHandContainer();
            this.b = aVar.getRockImg();
            this.a = aVar.getRockTopText();
            this.f859d = aVar.getRockText();
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.f861f.setBackground(gradientDrawable);
    }

    public LinearLayout getShakeLayout() {
        return this.f861f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.c == null) {
                this.c = new t(getContext().getApplicationContext());
            }
            this.c.a(new t.a() { // from class: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView.2
            });
            this.c.a(this.f862g);
            this.c.c(this.h);
            this.c.a(this.i);
            this.c.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        t tVar = this.c;
        if (tVar != null) {
            tVar.b();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        t tVar = this.c;
        if (tVar != null) {
            if (z) {
                tVar.a();
            } else {
                tVar.b();
            }
        }
    }

    public void setOnShakeViewListener(a aVar) {
        this.f860e = aVar;
    }

    public void setShakeText(String str) {
        this.f859d.setText(str);
    }
}
