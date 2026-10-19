package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.color.MaterialColors;

/* JADX INFO: compiled from: CircularDrawingDelegate.java */
/* JADX INFO: loaded from: classes3.dex */
final class b extends e<CircularProgressIndicatorSpec> {
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f3344d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f3345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f3346f;

    public b(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
        this.c = 1;
    }

    private void h(Canvas canvas, Paint paint, float f2, float f3, float f4) {
        canvas.save();
        canvas.rotate(f4);
        float f5 = this.f3346f;
        float f6 = f2 / 2.0f;
        canvas.drawRoundRect(new RectF(f5 - f6, f3, f5 + f6, -f3), f3, f3, paint);
        canvas.restore();
    }

    private int i() {
        S s = this.a;
        return ((CircularProgressIndicatorSpec) s).f3339g + (((CircularProgressIndicatorSpec) s).h * 2);
    }

    @Override // com.google.android.material.progressindicator.e
    public void a(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        S s = this.a;
        float f3 = (((CircularProgressIndicatorSpec) s).f3339g / 2.0f) + ((CircularProgressIndicatorSpec) s).h;
        canvas.translate(f3, f3);
        canvas.rotate(-90.0f);
        float f4 = -f3;
        canvas.clipRect(f4, f4, f3, f3);
        this.c = ((CircularProgressIndicatorSpec) this.a).i == 0 ? 1 : -1;
        this.f3344d = ((CircularProgressIndicatorSpec) r5).a * f2;
        this.f3345e = ((CircularProgressIndicatorSpec) r5).b * f2;
        this.f3346f = (((CircularProgressIndicatorSpec) r5).f3339g - ((CircularProgressIndicatorSpec) r5).a) / 2.0f;
        if ((this.b.i() && ((CircularProgressIndicatorSpec) this.a).f3342e == 2) || (this.b.h() && ((CircularProgressIndicatorSpec) this.a).f3343f == 1)) {
            this.f3346f += ((1.0f - f2) * ((CircularProgressIndicatorSpec) this.a).a) / 2.0f;
        } else if ((this.b.i() && ((CircularProgressIndicatorSpec) this.a).f3342e == 1) || (this.b.h() && ((CircularProgressIndicatorSpec) this.a).f3343f == 2)) {
            this.f3346f -= ((1.0f - f2) * ((CircularProgressIndicatorSpec) this.a).a) / 2.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.e
    void b(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f2, @FloatRange(from = 0.0d, to = 1.0d) float f3, @ColorInt int i) {
        if (f2 == f3) {
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(this.f3344d);
        int i2 = this.c;
        float f4 = f2 * 360.0f * i2;
        float f5 = (f3 >= f2 ? f3 - f2 : (1.0f + f3) - f2) * 360.0f * i2;
        float f6 = this.f3346f;
        canvas.drawArc(new RectF(-f6, -f6, f6, f6), f4, f5, false, paint);
        if (this.f3345e <= 0.0f || Math.abs(f5) >= 360.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        h(canvas, paint, this.f3344d, this.f3345e, f4);
        h(canvas, paint, this.f3344d, this.f3345e, f4 + f5);
    }

    @Override // com.google.android.material.progressindicator.e
    void c(@NonNull Canvas canvas, @NonNull Paint paint) {
        int iCompositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(((CircularProgressIndicatorSpec) this.a).f3341d, this.b.getAlpha());
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(iCompositeARGBWithAlpha);
        paint.setStrokeWidth(this.f3344d);
        float f2 = this.f3346f;
        canvas.drawArc(new RectF(-f2, -f2, f2, f2), 0.0f, 360.0f, false, paint);
    }

    @Override // com.google.android.material.progressindicator.e
    public int d() {
        return i();
    }

    @Override // com.google.android.material.progressindicator.e
    public int e() {
        return i();
    }
}
