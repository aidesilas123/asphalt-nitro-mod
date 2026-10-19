package com.bytedance.sdk.openadsdk.adapter;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class NiceImageView extends PAGImageView {
    private final Context a;
    private boolean b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1134d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1135e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1136f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1137g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private final Xfermode n;
    private int o;
    private int p;
    private float q;
    private final float[] r;
    private final float[] s;
    private RectF t;
    private final RectF u;
    private final Paint v;
    private final Path w;
    private Path x;

    public NiceImageView(Context context) {
        this(context, null);
    }

    public NiceImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NiceImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1135e = -1;
        this.f1137g = -1;
        this.a = context;
        this.h = ad.b(context, 10.0f);
        this.r = new float[8];
        this.s = new float[8];
        this.u = new RectF();
        this.t = new RectF();
        this.v = new Paint();
        this.w = new Path();
        if (Build.VERSION.SDK_INT <= 27) {
            this.n = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        } else {
            this.n = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
            this.x = new Path();
        }
        c();
        d();
    }

    private void a() {
        if (this.b) {
            return;
        }
        RectF rectF = this.u;
        int i = this.f1134d;
        rectF.set(i / 2.0f, i / 2.0f, this.o - (i / 2.0f), this.p - (i / 2.0f));
    }

    private void a(int i, int i2) {
        this.w.reset();
        this.v.setStrokeWidth(i);
        this.v.setColor(i2);
        this.v.setStyle(Paint.Style.STROKE);
    }

    private void a(Canvas canvas) {
        if (!this.b) {
            int i = this.f1134d;
            if (i > 0) {
                a(canvas, i, this.f1135e, this.u, this.r);
                return;
            }
            return;
        }
        int i2 = this.f1134d;
        if (i2 > 0) {
            a(canvas, i2, this.f1135e, this.q - (i2 / 2.0f));
        }
        int i3 = this.f1136f;
        if (i3 > 0) {
            a(canvas, i3, this.f1137g, (this.q - this.f1134d) - (i3 / 2.0f));
        }
    }

    private void a(Canvas canvas, int i, int i2, float f2) {
        a(i, i2);
        this.w.addCircle(this.o / 2.0f, this.p / 2.0f, f2, Path.Direction.CCW);
        canvas.drawPath(this.w, this.v);
    }

    private void a(Canvas canvas, int i, int i2, RectF rectF, float[] fArr) {
        a(i, i2);
        this.w.addRoundRect(rectF, fArr, Path.Direction.CCW);
        canvas.drawPath(this.w, this.v);
    }

    private void a(boolean z) {
        if (z) {
            this.h = 0;
        }
        c();
        a();
        invalidate();
    }

    private void b() {
        if (!this.b) {
            this.t.set(0.0f, 0.0f, this.o, this.p);
            if (this.c) {
                this.t = this.u;
                return;
            }
            return;
        }
        float fMin = Math.min(this.o, this.p) / 2.0f;
        this.q = fMin;
        RectF rectF = this.t;
        int i = this.o;
        int i2 = this.p;
        rectF.set((i / 2.0f) - fMin, (i2 / 2.0f) - fMin, (i / 2.0f) + fMin, (i2 / 2.0f) + fMin);
    }

    private void c() {
        if (this.b) {
            return;
        }
        int i = 0;
        if (this.h <= 0) {
            float[] fArr = this.r;
            int i2 = this.i;
            float f2 = i2;
            fArr[1] = f2;
            fArr[0] = f2;
            int i3 = this.j;
            float f3 = i3;
            fArr[3] = f3;
            fArr[2] = f3;
            int i4 = this.l;
            float f4 = i4;
            fArr[5] = f4;
            fArr[4] = f4;
            int i5 = this.k;
            float f5 = i5;
            fArr[7] = f5;
            fArr[6] = f5;
            float[] fArr2 = this.s;
            int i6 = this.f1134d;
            float f6 = i2 - (i6 / 2.0f);
            fArr2[1] = f6;
            fArr2[0] = f6;
            float f7 = i3 - (i6 / 2.0f);
            fArr2[3] = f7;
            fArr2[2] = f7;
            float f8 = i4 - (i6 / 2.0f);
            fArr2[5] = f8;
            fArr2[4] = f8;
            float f9 = i5 - (i6 / 2.0f);
            fArr2[7] = f9;
            fArr2[6] = f9;
            return;
        }
        while (true) {
            float[] fArr3 = this.r;
            if (i >= fArr3.length) {
                return;
            }
            int i7 = this.h;
            fArr3[i] = i7;
            this.s[i] = i7 - (this.f1134d / 2.0f);
            i++;
        }
    }

    private void d() {
        if (this.b) {
            return;
        }
        this.f1136f = 0;
    }

    public void isCircle(boolean z) {
        this.b = z;
        d();
        b();
        invalidate();
    }

    public void isCoverSrc(boolean z) {
        this.c = z;
        b();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.saveLayer(this.t, null, 31);
        if (!this.c) {
            int i = this.o;
            int i2 = this.f1134d;
            int i3 = this.f1136f;
            int i4 = this.p;
            canvas.scale((((i - (i2 * 2)) - (i3 * 2)) * 1.0f) / i, (((i4 - (i2 * 2)) - (i3 * 2)) * 1.0f) / i4, i / 2.0f, i4 / 2.0f);
        }
        super.onDraw(canvas);
        this.v.reset();
        this.w.reset();
        if (this.b) {
            this.w.addCircle(this.o / 2.0f, this.p / 2.0f, this.q, Path.Direction.CCW);
        } else {
            this.w.addRoundRect(this.t, this.s, Path.Direction.CCW);
        }
        this.v.setAntiAlias(true);
        this.v.setStyle(Paint.Style.FILL);
        this.v.setXfermode(this.n);
        if (Build.VERSION.SDK_INT <= 27) {
            canvas.drawPath(this.w, this.v);
        } else {
            this.x.addRect(this.t, Path.Direction.CCW);
            this.x.op(this.w, Path.Op.DIFFERENCE);
            canvas.drawPath(this.x, this.v);
        }
        this.v.setXfermode(null);
        int i5 = this.m;
        if (i5 != 0) {
            this.v.setColor(i5);
            canvas.drawPath(this.w, this.v);
        }
        canvas.restore();
        a(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.o = i;
        this.p = i2;
        a();
        b();
    }

    public void setBorderColor(@ColorInt int i) {
        this.f1135e = i;
        invalidate();
    }

    public void setBorderWidth(int i) {
        this.f1134d = ad.b(this.a, i);
        a(false);
    }

    public void setCornerBottomLeftRadius(int i) {
        this.k = ad.b(this.a, i);
        a(true);
    }

    public void setCornerBottomRightRadius(int i) {
        this.l = ad.b(this.a, i);
        a(true);
    }

    public void setCornerRadius(int i) {
        this.h = ad.b(this.a, i);
        a(false);
    }

    public void setCornerTopLeftRadius(int i) {
        this.i = ad.b(this.a, i);
        a(true);
    }

    public void setCornerTopRightRadius(int i) {
        this.j = ad.b(this.a, i);
        a(true);
    }

    public void setInnerBorderColor(@ColorInt int i) {
        this.f1137g = i;
        invalidate();
    }

    public void setInnerBorderWidth(int i) {
        this.f1136f = ad.b(this.a, i);
        d();
        invalidate();
    }

    public void setMaskColor(@ColorInt int i) {
        this.m = i;
        invalidate();
    }
}
