package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.a.b.b;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.adexpress.d;
import com.bytedance.sdk.component.adexpress.dynamic.a;
import com.bytedance.sdk.component.adexpress.layout.TTDynamicSplashSlideUp;
import com.bytedance.sdk.component.adexpress.layout.TTDynamicSplashSlideUp5;
import com.bytedance.sdk.component.utils.l;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes.dex */
public class SlideUpView extends RelativeLayout {
    private ImageView a;
    private ImageView b;
    private ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f869d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f870e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AnimatorSet f871f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AnimatorSet f872g;
    private AnimatorSet h;
    private AnimatorSet i;
    private String j;
    private int k;

    public SlideUpView(Context context) {
        super(context);
        this.f871f = new AnimatorSet();
        this.f872g = new AnimatorSet();
        this.h = new AnimatorSet();
        this.i = new AnimatorSet();
        this.k = 100;
        a(context);
    }

    public SlideUpView(Context context, String str) {
        super(context);
        this.f871f = new AnimatorSet();
        this.f872g = new AnimatorSet();
        this.h = new AnimatorSet();
        this.i = new AnimatorSet();
        this.k = 100;
        setClipChildren(false);
        this.j = str;
        a(context);
    }

    public void a() {
        c();
        this.f871f.start();
        this.f871f.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideUpView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                SlideUpView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideUpView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SlideUpView.this.f871f.start();
                    }
                }, 200L);
            }
        });
    }

    protected void a(Context context) {
        if (context == null) {
            context = d.a();
        }
        if (CampaignEx.CLICKMODE_ON.equals(this.j)) {
            addView(new TTDynamicSplashSlideUp5(context));
            this.k = (int) (((double) this.k) * 1.25d);
        } else {
            addView(new TTDynamicSplashSlideUp(context));
        }
        this.a = (ImageView) findViewById(a.o);
        this.b = (ImageView) findViewById(a.n);
        this.f869d = (TextView) findViewById(a.s);
        this.c = (ImageView) findViewById(a.p);
        this.f870e = (TextView) findViewById(a.r);
    }

    public void b() {
        try {
            AnimatorSet animatorSet = this.f871f;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.h;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.f872g;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.i;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Exception e2) {
            l.d(e2.getMessage());
        }
    }

    public void c() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.a, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.a, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.a, "translationY", 0.0f, e.a(getContext(), -this.k));
        objectAnimatorOfFloat3.setInterpolator(b.a(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, (int) e.a(getContext(), this.k));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideUpView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) SlideUpView.this.c.getLayoutParams();
                layoutParams.height = num.intValue();
                SlideUpView.this.c.setLayoutParams(layoutParams);
            }
        });
        valueAnimatorOfInt.setInterpolator(b.a(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.c, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.c, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.b, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.b, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this.b, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(this.b, "scaleY", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat10 = ObjectAnimator.ofFloat(this.b, "translationY", 0.0f, e.a(getContext(), -this.k));
        objectAnimatorOfFloat10.setInterpolator(b.a(0.2f, 0.0f, 0.3f, 1.0f));
        this.f872g.setDuration(50L);
        this.i.setDuration(1500L);
        this.h.setDuration(50L);
        this.f872g.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat7, objectAnimatorOfFloat5);
        this.h.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat6, objectAnimatorOfFloat8, objectAnimatorOfFloat9, objectAnimatorOfFloat4);
        this.i.playTogether(objectAnimatorOfFloat3, valueAnimatorOfInt, objectAnimatorOfFloat10);
        this.f871f.playSequentially(this.h, this.i, this.f872g);
    }

    public AnimatorSet getSlideUpAnimatorSet() {
        return this.f871f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    public void setGuideText(String str) {
        TextView textView = this.f869d;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setSlideText(String str) {
        if (this.f870e != null) {
            if (TextUtils.isEmpty(str)) {
                this.f870e.setText("");
            } else {
                this.f870e.setText(str);
            }
        }
    }
}
