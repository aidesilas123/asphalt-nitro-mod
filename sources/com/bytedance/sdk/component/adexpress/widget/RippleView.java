package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: classes.dex */
public class RippleView extends View {
    private float a;
    private float b;
    private ValueAnimator c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ValueAnimator f855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f857f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f858g;
    private float h;
    private Animator.AnimatorListener i;
    private int j;

    public RippleView(Context context, int i) {
        super(context);
        this.f857f = 300L;
        this.f858g = 0.0f;
        this.j = i;
        a();
    }

    public void a() {
        Paint paint = new Paint(1);
        this.f856e = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f856e.setColor(this.j);
    }

    public void b() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.h);
        this.c = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f857f);
        this.c.setInterpolator(new LinearInterpolator());
        this.c.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.RippleView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleView.this.f858g = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RippleView.this.invalidate();
            }
        });
        this.c.start();
    }

    public void c() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.h, 0.0f);
        this.f855d = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f857f);
        this.f855d.setInterpolator(new LinearInterpolator());
        this.f855d.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.RippleView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleView.this.f858g = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RippleView.this.invalidate();
            }
        });
        Animator.AnimatorListener animatorListener = this.i;
        if (animatorListener != null) {
            this.f855d.addListener(animatorListener);
        }
        this.f855d.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.a, this.b, this.f858g, this.f856e);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.a = i / 2.0f;
        this.b = i2 / 2.0f;
        this.h = (float) (Math.hypot(i, i2) / 2.0d);
    }

    public void setAnimationListener(Animator.AnimatorListener animatorListener) {
        this.i = animatorListener;
    }
}
