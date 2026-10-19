package com.google.android.material.shadow;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: ShadowRenderer.java */
/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class a {
    private static final int[] a = new int[3];
    private static final float[] b = {0.0f, 0.5f, 1.0f};
    private static final int[] c = new int[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final float[] f3375d = {0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final Paint f3376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final Paint f3377f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final Paint f3378g;
    private int h;
    private int i;
    private int j;
    private final Path k;
    private Paint l;

    public a() {
        this(ViewCompat.MEASURED_STATE_MASK);
    }

    public a(int i) {
        this.k = new Path();
        this.l = new Paint();
        this.f3376e = new Paint();
        d(i);
        this.l.setColor(0);
        Paint paint = new Paint(4);
        this.f3377f = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f3378g = new Paint(paint);
    }

    public void a(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i, float f2, float f3) {
        boolean z = f3 < 0.0f;
        Path path = this.k;
        if (z) {
            int[] iArr = c;
            iArr[0] = 0;
            iArr[1] = this.j;
            iArr[2] = this.i;
            iArr[3] = this.h;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f2, f3);
            path.close();
            float f4 = -i;
            rectF.inset(f4, f4);
            int[] iArr2 = c;
            iArr2[0] = 0;
            iArr2[1] = this.h;
            iArr2[2] = this.i;
            iArr2[3] = this.j;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f5 = 1.0f - (i / fWidth);
        float[] fArr = f3375d;
        fArr[1] = f5;
        fArr[2] = ((1.0f - f5) / 2.0f) + f5;
        this.f3377f.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, c, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.l);
        }
        canvas.drawArc(rectF, f2, f3, true, this.f3377f);
        canvas.restore();
    }

    public void b(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i) {
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        int[] iArr = a;
        iArr[0] = this.j;
        iArr[1] = this.i;
        iArr[2] = this.h;
        Paint paint = this.f3378g;
        float f2 = rectF.left;
        paint.setShader(new LinearGradient(f2, rectF.top, f2, rectF.bottom, iArr, b, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f3378g);
        canvas.restore();
    }

    @NonNull
    public Paint c() {
        return this.f3376e;
    }

    public void d(int i) {
        this.h = ColorUtils.setAlphaComponent(i, 68);
        this.i = ColorUtils.setAlphaComponent(i, 20);
        this.j = ColorUtils.setAlphaComponent(i, 0);
        this.f3376e.setColor(this.h);
    }
}
