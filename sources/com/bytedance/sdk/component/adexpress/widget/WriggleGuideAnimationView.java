package com.bytedance.sdk.component.adexpress.widget;

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
import com.bytedance.sdk.component.adexpress.layout.TTHandWriggleGuide;
import com.bytedance.sdk.component.utils.t;

/* JADX INFO: loaded from: classes.dex */
public class WriggleGuideAnimationView extends LinearLayout {
    private TextView a;
    private ImageView b;
    private t c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f879d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f880e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LinearLayout f881f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WriggleGuideView f882g;
    private int h;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (WriggleGuideAnimationView.this.b != null) {
                final RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -35.0f, 1, 0.5f, 1, 0.5f);
                rotateAnimation.setInterpolator(new b(null));
                rotateAnimation.setDuration(1500L);
                rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        WriggleGuideAnimationView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                WriggleGuideAnimationView.this.b.startAnimation(rotateAnimation);
                            }
                        }, 300L);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                WriggleGuideAnimationView.this.b.startAnimation(rotateAnimation);
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
            return f2 <= 0.4f ? f2 * 2.5f : f2 <= 0.8f ? (f2 * (-2.2f)) + 1.86f : (f2 * (-0.7f)) + 0.7f;
        }
    }

    public WriggleGuideAnimationView(Context context, View view, int i) {
        super(context);
        this.h = i;
        a(context, view);
    }

    private void a(Context context, View view) {
        setClipChildren(false);
        addView(view);
        if (view instanceof TTHandWriggleGuide) {
            TTHandWriggleGuide tTHandWriggleGuide = (TTHandWriggleGuide) view;
            this.f881f = tTHandWriggleGuide.getWriggleLayout();
            this.b = tTHandWriggleGuide.getTopImage();
            this.f882g = tTHandWriggleGuide.getProgressImg();
            this.a = tTHandWriggleGuide.getTopText();
            this.f879d = tTHandWriggleGuide.getBarText();
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.f881f.setBackground(gradientDrawable);
    }

    public void a() {
        postDelayed(new AnonymousClass1(), 500L);
    }

    public TextView getTopTextView() {
        return this.a;
    }

    public LinearLayout getWriggleLayout() {
        return this.f881f;
    }

    public WriggleGuideView getWriggleProgressIv() {
        return this.f882g;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.c == null) {
                this.c = new t(getContext().getApplicationContext());
            }
            this.c.a(new t.a() { // from class: com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.2
            });
            this.c.b(this.h);
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
        this.f880e = aVar;
    }

    public void setShakeText(String str) {
        this.f879d.setText(str);
    }
}
