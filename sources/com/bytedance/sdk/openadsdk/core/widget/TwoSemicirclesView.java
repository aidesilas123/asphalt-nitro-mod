package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class TwoSemicirclesView extends View {
    private final RectF a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f1735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f1736e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f1737f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f1738g;
    private final int h;
    private final int i;

    public TwoSemicirclesView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1737f = -90.0f;
        this.f1738g = 220.0f;
        this.h = Color.parseColor("#FFFFFF");
        this.i = Color.parseColor("#C4C4C4");
        a();
        float f2 = this.f1738g;
        this.a = new RectF(-f2, -f2, f2, f2);
    }

    private void a() {
        Paint paint = new Paint();
        this.f1735d = paint;
        paint.setColor(this.h);
        this.f1735d.setStyle(Paint.Style.STROKE);
        this.f1735d.setStrokeWidth(4.0f);
        this.f1735d.setAlpha(20);
        Paint paint2 = new Paint(this.f1735d);
        this.f1736e = paint2;
        paint2.setColor(this.i);
        this.f1736e.setAlpha(255);
    }

    public Paint getPaintOne() {
        return this.f1735d;
    }

    public Paint getPaintTwo() {
        return this.f1736e;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.a;
        float f2 = this.f1738g;
        rectF.set(-f2, -f2, f2, f2);
        canvas.translate(this.b / 2, this.c / 2);
        canvas.drawArc(this.a, this.f1737f, 180.0f, false, this.f1735d);
        canvas.drawArc(this.a, this.f1737f + 180.0f, 180.0f, false, this.f1736e);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.b = i;
        this.c = i2;
    }

    public void setCurrentStartAngle(float f2) {
        this.f1737f = f2;
        postInvalidate();
    }

    public void setPaintOne(Paint paint) {
        this.f1735d = paint;
        postInvalidate();
    }

    public void setPaintTwo(Paint paint) {
        this.f1736e = paint;
        postInvalidate();
    }

    public void setRadius(float f2) {
        this.f1738g = f2;
        postInvalidate();
    }
}
