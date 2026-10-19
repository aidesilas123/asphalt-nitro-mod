package com.bytedance.sdk.openadsdk.core.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.o;

/* JADX INFO: compiled from: TTCustomShadowBackground.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends Drawable {

    @ColorInt
    private final int a;

    @ColorInt
    private final int b;

    @Nullable
    private final int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final float[] f1752d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final LinearGradient f1753e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f1754f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f1755g;
    private final int h;
    private final int i;

    @Nullable
    private RectF j;

    @Nullable
    private Paint k;

    /* JADX INFO: compiled from: TTCustomShadowBackground.java */
    public static class a {
        private int[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        private float[] f1756d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private LinearGradient f1757e;
        private int h;
        private int i;

        @ColorInt
        private int a = s.i(o.a(), "tt_ssxinmian8");

        @ColorInt
        private int b = s.i(o.a(), "tt_ssxinxian3");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f1758f = 10;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f1759g = 16;

        public a() {
            this.h = 0;
            this.i = 0;
            this.h = 0;
            this.i = 0;
        }

        public a a(@ColorInt int i) {
            this.a = i;
            return this;
        }

        public a a(@Nullable int[] iArr) {
            this.c = iArr;
            return this;
        }

        public c a() {
            return new c(this.a, this.c, this.f1756d, this.b, this.f1757e, this.f1758f, this.f1759g, this.h, this.i);
        }

        public a b(@ColorInt int i) {
            this.b = i;
            return this;
        }

        public a c(int i) {
            this.f1758f = i;
            return this;
        }

        public a d(int i) {
            this.h = i;
            return this;
        }

        public a e(int i) {
            this.i = i;
            return this;
        }
    }

    public c(@ColorInt int i, @Nullable int[] iArr, @Nullable float[] fArr, @ColorInt int i2, @Nullable LinearGradient linearGradient, int i3, int i4, int i5, int i6) {
        this.a = i;
        this.c = iArr;
        this.f1752d = fArr;
        this.b = i2;
        this.f1753e = linearGradient;
        this.f1754f = i3;
        this.f1755g = i4;
        this.h = i5;
        this.i = i6;
    }

    private void a() {
        int[] iArr;
        Paint paint = new Paint();
        this.k = paint;
        paint.setAntiAlias(true);
        this.k.setShadowLayer(this.f1755g, this.h, this.i, this.b);
        if (this.j == null || (iArr = this.c) == null || iArr.length <= 1) {
            this.k.setColor(this.a);
            return;
        }
        float[] fArr = this.f1752d;
        boolean z = fArr != null && fArr.length > 0 && fArr.length == iArr.length;
        Paint paint2 = this.k;
        LinearGradient linearGradient = this.f1753e;
        if (linearGradient == null) {
            RectF rectF = this.j;
            linearGradient = new LinearGradient(rectF.left, 0.0f, rectF.right, 0.0f, this.c, z ? this.f1752d : null, Shader.TileMode.CLAMP);
        }
        paint2.setShader(linearGradient);
    }

    public static void a(View view, a aVar) {
        if (view == null || aVar == null) {
            return;
        }
        view.setLayerType(1, null);
        ViewCompat.setBackground(view, aVar.a());
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.j == null) {
            Rect bounds = getBounds();
            int i = bounds.left;
            int i2 = this.f1755g;
            int i3 = this.h;
            int i4 = bounds.top + i2;
            int i5 = this.i;
            this.j = new RectF((i + i2) - i3, i4 - i5, (bounds.right - i2) - i3, (bounds.bottom - i2) - i5);
        }
        if (this.k == null) {
            a();
        }
        RectF rectF = this.j;
        int i6 = this.f1754f;
        canvas.drawRoundRect(rectF, i6, i6, this.k);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Paint paint = this.k;
        if (paint != null) {
            paint.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        Paint paint = this.k;
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
    }
}
