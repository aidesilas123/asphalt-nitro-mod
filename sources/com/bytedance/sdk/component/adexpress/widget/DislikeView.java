package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class DislikeView extends View {
    private int a;
    private int b;
    private RectF c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f830d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f832f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f833g;
    private int h;

    public DislikeView(Context context) {
        super(context);
        a();
    }

    private void a() {
        Paint paint = new Paint();
        this.f830d = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f833g = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f831e = paint3;
        paint3.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.c;
        int i = this.f832f;
        canvas.drawRoundRect(rectF, i, i, this.f831e);
        RectF rectF2 = this.c;
        int i2 = this.f832f;
        canvas.drawRoundRect(rectF2, i2, i2, this.f830d);
        int i3 = this.a;
        int i4 = this.b;
        canvas.drawLine(i3 * 0.3f, i4 * 0.3f, i3 * 0.7f, i4 * 0.7f, this.f833g);
        int i5 = this.a;
        int i6 = this.b;
        canvas.drawLine(i5 * 0.7f, i6 * 0.3f, i5 * 0.3f, i6 * 0.7f, this.f833g);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.a = i;
        this.b = i2;
        int i5 = this.h;
        this.c = new RectF(i5, i5, this.a - i5, this.b - i5);
    }

    public void setBgColor(int i) {
        this.f831e.setStyle(Paint.Style.FILL);
        this.f831e.setColor(i);
    }

    public void setDislikeColor(int i) {
        this.f833g.setColor(i);
    }

    public void setDislikeWidth(int i) {
        this.f833g.setStrokeWidth(i);
    }

    public void setRadius(int i) {
        this.f832f = i;
    }

    public void setStrokeColor(int i) {
        this.f830d.setStyle(Paint.Style.STROKE);
        this.f830d.setColor(i);
    }

    public void setStrokeWidth(int i) {
        this.f830d.setStrokeWidth(i);
        this.h = i;
    }
}
