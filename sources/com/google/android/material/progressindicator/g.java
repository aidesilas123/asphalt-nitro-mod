package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.color.MaterialColors;

/* JADX INFO: compiled from: LinearDrawingDelegate.java */
/* JADX INFO: loaded from: classes3.dex */
final class g extends e<LinearProgressIndicatorSpec> {
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f3355d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f3356e;

    public g(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.c = 300.0f;
    }

    @Override // com.google.android.material.progressindicator.e
    public void a(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        Rect clipBounds = canvas.getClipBounds();
        this.c = clipBounds.width();
        float f3 = ((LinearProgressIndicatorSpec) this.a).a;
        canvas.translate(clipBounds.left + (clipBounds.width() / 2.0f), clipBounds.top + (clipBounds.height() / 2.0f) + Math.max(0.0f, (clipBounds.height() - ((LinearProgressIndicatorSpec) this.a).a) / 2.0f));
        if (((LinearProgressIndicatorSpec) this.a).h) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.b.i() && ((LinearProgressIndicatorSpec) this.a).f3342e == 1) || (this.b.h() && ((LinearProgressIndicatorSpec) this.a).f3343f == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.b.i() || this.b.h()) {
            canvas.translate(0.0f, (((LinearProgressIndicatorSpec) this.a).a * (f2 - 1.0f)) / 2.0f);
        }
        float f4 = this.c;
        canvas.clipRect((-f4) / 2.0f, (-f3) / 2.0f, f4 / 2.0f, f3 / 2.0f);
        S s = this.a;
        this.f3355d = ((LinearProgressIndicatorSpec) s).a * f2;
        this.f3356e = ((LinearProgressIndicatorSpec) s).b * f2;
    }

    @Override // com.google.android.material.progressindicator.e
    public void b(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f2, @FloatRange(from = 0.0d, to = 1.0d) float f3, @ColorInt int i) {
        if (f2 == f3) {
            return;
        }
        float f4 = this.c;
        float f5 = this.f3356e;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(i);
        float f6 = this.f3355d;
        RectF rectF = new RectF(((-f4) / 2.0f) + (f2 * (f4 - (f5 * 2.0f))), (-f6) / 2.0f, ((-f4) / 2.0f) + (f3 * (f4 - (f5 * 2.0f))) + (f5 * 2.0f), f6 / 2.0f);
        float f7 = this.f3356e;
        canvas.drawRoundRect(rectF, f7, f7, paint);
    }

    @Override // com.google.android.material.progressindicator.e
    void c(@NonNull Canvas canvas, @NonNull Paint paint) {
        int iCompositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(((LinearProgressIndicatorSpec) this.a).f3341d, this.b.getAlpha());
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(iCompositeARGBWithAlpha);
        float f2 = this.c;
        float f3 = this.f3355d;
        RectF rectF = new RectF((-f2) / 2.0f, (-f3) / 2.0f, f2 / 2.0f, f3 / 2.0f);
        float f4 = this.f3356e;
        canvas.drawRoundRect(rectF, f4, f4, paint);
    }

    @Override // com.google.android.material.progressindicator.e
    public int d() {
        return ((LinearProgressIndicatorSpec) this.a).a;
    }

    @Override // com.google.android.material.progressindicator.e
    public int e() {
        return -1;
    }
}
