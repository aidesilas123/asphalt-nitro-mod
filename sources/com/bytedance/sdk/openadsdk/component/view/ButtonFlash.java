package com.bytedance.sdk.openadsdk.component.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.widget.TextView;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
public class ButtonFlash extends TextView {
    private int a;
    private int b;
    private Paint c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearGradient f1437d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RectF f1438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Matrix f1439f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ValueAnimator f1440g;
    private boolean h;

    public ButtonFlash(Context context) {
        super(context);
        this.h = true;
        b();
    }

    private void b() {
        this.f1438e = new RectF();
        this.c = new Paint();
        c();
    }

    private void c() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f1440g = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(3000L);
        this.f1440g.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.component.view.ButtonFlash.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((ButtonFlash.this.a * 2) * ((Float) valueAnimator.getAnimatedValue()).floatValue()) - ButtonFlash.this.a;
                if (ButtonFlash.this.f1439f != null) {
                    ButtonFlash.this.f1439f.setTranslate(fFloatValue, ButtonFlash.this.b);
                }
                if (ButtonFlash.this.f1437d != null) {
                    ButtonFlash.this.f1437d.setLocalMatrix(ButtonFlash.this.f1439f);
                }
                ButtonFlash.this.invalidate();
            }
        });
        if (this.h) {
            this.f1440g.setRepeatCount(-1);
            ValueAnimator valueAnimator = this.f1440g;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        }
    }

    public void a() {
        ValueAnimator valueAnimator = this.f1440g;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.f1440g.cancel();
            invalidate();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f1439f != null) {
            canvas.drawRoundRect(this.f1438e, 100.0f, 100.0f, this.c);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.a = i;
        this.b = i2;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, this.a / 2.0f, this.b, new int[]{ViewCompat.MEASURED_SIZE_MASK, 1358954495, ViewCompat.MEASURED_SIZE_MASK}, new float[]{0.1f, 0.3f, 0.5f}, Shader.TileMode.CLAMP);
        this.f1437d = linearGradient;
        this.c.setShader(linearGradient);
        this.c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.LIGHTEN));
        Matrix matrix = new Matrix();
        this.f1439f = matrix;
        matrix.setTranslate(-this.a, this.b);
        this.f1437d.setLocalMatrix(this.f1439f);
        this.f1438e.set(0.0f, 0.0f, this.a, this.b);
    }

    public void setAutoRun(boolean z) {
        this.h = z;
    }
}
