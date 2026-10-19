package com.bytedance.sdk.openadsdk.core.widget;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class TTCountdownView extends View {
    public static final String a = s.a(o.a(), "tt_count_down_view");
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f1725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f1726f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f1727g;
    private Paint h;
    private Paint i;
    private Paint j;
    private Paint k;
    private float l;
    private float m;
    private RectF n;
    private a o;
    private AnimatorSet p;
    private ValueAnimator q;
    private ValueAnimator r;
    private ValueAnimator s;

    public interface a {
    }

    private void a(Canvas canvas) {
        canvas.save();
        Paint.FontMetrics fontMetrics = this.k.getFontMetrics();
        String str = a;
        String str2 = this.f1727g;
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        canvas.drawText(str, 0.0f, 0.0f - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.k);
        canvas.restore();
    }

    private int b() {
        return (int) ((((this.b / 2.0f) + this.c) * 2.0f) + ad.b(getContext(), 4.0f));
    }

    private void b(Canvas canvas) {
        canvas.save();
        float fA = a(this.l, 360);
        float f2 = this.f1724d;
        canvas.drawCircle(0.0f, 0.0f, this.c, this.i);
        canvas.drawCircle(0.0f, 0.0f, this.c, this.j);
        canvas.drawArc(this.n, f2, fA, false, this.h);
        canvas.restore();
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.r;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.r = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.l, 0.0f);
        this.r = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.r.setDuration((long) (a(this.l, this.f1725e) * 1000.0f));
        this.r.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.TTCountdownView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownView.this.l = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownView.this.postInvalidate();
            }
        });
        return this.r;
    }

    private ValueAnimator getNumAnim() {
        ValueAnimator valueAnimator = this.q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.q = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.m, 0.0f);
        this.q = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.q.setDuration((long) (a(this.m, this.f1726f) * 1000.0f));
        this.q.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.TTCountdownView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownView.this.m = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownView.this.postInvalidate();
            }
        });
        return this.q;
    }

    public float a(float f2, float f3) {
        return f2 * f3;
    }

    public float a(float f2, int i) {
        return i * f2;
    }

    public void a() {
        AnimatorSet animatorSet = this.p;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.p = null;
        }
        ValueAnimator valueAnimator = this.s;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.s = null;
        }
        ValueAnimator valueAnimator2 = this.q;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.q = null;
        }
        ValueAnimator valueAnimator3 = this.r;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.r = null;
        }
        this.l = 1.0f;
        this.m = 1.0f;
        invalidate();
    }

    public a getCountdownListener() {
        return this.o;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        a();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        b(canvas);
        a(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824) {
            size = b();
        }
        if (mode2 != 1073741824) {
            size2 = b();
        }
        setMeasuredDimension(size, size2);
    }

    public void setCountDownTime(int i) {
        float f2 = i;
        this.f1726f = f2;
        this.f1725e = f2;
        a();
    }

    public void setCountdownListener(a aVar) {
        this.o = aVar;
    }
}
