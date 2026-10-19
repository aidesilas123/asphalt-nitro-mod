package com.bytedance.sdk.component.adexpress.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class RingProgressView extends View {
    private Context a;
    private Paint b;
    private RectF c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f851d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ValueAnimator f852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f853f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f854g;

    public RingProgressView(Context context) {
        super(context);
        this.f853f = 1500;
        this.a = context;
        Paint paint = new Paint();
        this.b = paint;
        paint.setAntiAlias(true);
        this.b.setStyle(Paint.Style.STROKE);
        this.b.setStrokeWidth(10.0f);
        this.b.setColor(Color.parseColor("#80FFFFFF"));
        this.c = new RectF();
    }

    public void a() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
        this.f852e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f853f);
        this.f852e.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.RingProgressView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RingProgressView.this.f851d = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RingProgressView.this.requestLayout();
            }
        });
        this.f852e.start();
    }

    public void b() {
        ValueAnimator valueAnimator = this.f852e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void c() {
        this.f854g = true;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f854g) {
            return;
        }
        canvas.drawArc(this.c, 270.0f, this.f851d, false, this.b);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.c.set(5.0f, 5.0f, i - 5, i2 - 5);
    }

    public void setDuration(int i) {
        this.f853f = i;
    }
}
