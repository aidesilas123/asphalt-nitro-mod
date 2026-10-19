package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.resources.TypefaceUtils;
import com.google.android.material.resources.a;

/* JADX INFO: compiled from: CollapsingTextHelper.java */
/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class b {
    private static final boolean a;

    @NonNull
    private static final Paint b;
    private Typeface A;
    private Typeface B;
    private Typeface C;
    private Typeface D;
    private Typeface E;
    private Typeface F;
    private com.google.android.material.resources.a G;
    private com.google.android.material.resources.a H;

    @Nullable
    private CharSequence I;

    @Nullable
    private CharSequence J;
    private boolean K;
    private boolean M;

    @Nullable
    private Bitmap N;
    private Paint O;
    private float P;
    private float Q;
    private float R;
    private float S;
    private float T;
    private int U;
    private int[] V;
    private boolean W;

    @NonNull
    private final TextPaint X;

    @NonNull
    private final TextPaint Y;
    private TimeInterpolator Z;
    private TimeInterpolator a0;
    private float b0;
    private final View c;
    private float c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3329d;
    private float d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f3330e;
    private ColorStateList e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3331f;
    private float f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f3332g;
    private float g0;
    private float h;
    private float h0;
    private int i;
    private ColorStateList i0;

    @NonNull
    private final Rect j;
    private float j0;

    @NonNull
    private final Rect k;
    private float k0;

    @NonNull
    private final RectF l;
    private float l0;
    private StaticLayout m0;
    private float n0;
    private float o0;
    private float p0;
    private ColorStateList q;
    private CharSequence q0;
    private ColorStateList r;
    private int s;
    private float t;
    private float u;
    private float v;
    private float w;
    private float x;
    private float y;
    private Typeface z;
    private int m = 16;
    private int n = 16;
    private float o = 15.0f;
    private float p = 15.0f;
    private boolean L = true;
    private int r0 = 1;
    private float s0 = 0.0f;
    private float t0 = 1.0f;
    private int u0 = StaticLayoutBuilderCompat.a;

    /* JADX INFO: compiled from: CollapsingTextHelper.java */
    class a implements a.InterfaceC0233a {
        a() {
        }

        @Override // com.google.android.material.resources.a.InterfaceC0233a
        public void a(Typeface typeface) {
            b.this.T(typeface);
        }
    }

    static {
        a = Build.VERSION.SDK_INT < 18;
        Paint paint = null;
        b = null;
        if (0 != 0) {
            paint.setAntiAlias(true);
            paint.setColor(-65281);
        }
    }

    public b(View view) {
        this.c = view;
        TextPaint textPaint = new TextPaint(129);
        this.X = textPaint;
        this.Y = new TextPaint(textPaint);
        this.k = new Rect();
        this.j = new Rect();
        this.l = new RectF();
        this.h = e();
        H(view.getContext().getResources().getConfiguration());
    }

    private void A(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.o);
        textPaint.setTypeface(this.C);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.k0);
        }
    }

    private void B(float f2) {
        if (this.f3331f) {
            this.l.set(f2 < this.h ? this.j : this.k);
            return;
        }
        this.l.left = G(this.j.left, this.k.left, f2, this.Z);
        this.l.top = G(this.t, this.u, f2, this.Z);
        this.l.right = G(this.j.right, this.k.right, f2, this.Z);
        this.l.bottom = G(this.j.bottom, this.k.bottom, f2, this.Z);
    }

    private static boolean C(float f2, float f3) {
        return Math.abs(f2 - f3) < 1.0E-5f;
    }

    private boolean D() {
        return ViewCompat.getLayoutDirection(this.c) == 1;
    }

    private boolean F(@NonNull CharSequence charSequence, boolean z) {
        return (z ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    private static float G(float f2, float f3, float f4, @Nullable TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f4);
        }
        return AnimationUtils.lerp(f2, f3, f4);
    }

    private float I(TextPaint textPaint, CharSequence charSequence) {
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    private static boolean M(@NonNull Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    private void Q(float f2) {
        this.o0 = f2;
        ViewCompat.postInvalidateOnAnimation(this.c);
    }

    private boolean U(Typeface typeface) {
        com.google.android.material.resources.a aVar = this.H;
        if (aVar != null) {
            aVar.c();
        }
        if (this.B == typeface) {
            return false;
        }
        this.B = typeface;
        Typeface typefaceMaybeCopyWithFontWeightAdjustment = TypefaceUtils.maybeCopyWithFontWeightAdjustment(this.c.getContext().getResources().getConfiguration(), typeface);
        this.A = typefaceMaybeCopyWithFontWeightAdjustment;
        if (typefaceMaybeCopyWithFontWeightAdjustment == null) {
            typefaceMaybeCopyWithFontWeightAdjustment = this.B;
        }
        this.z = typefaceMaybeCopyWithFontWeightAdjustment;
        return true;
    }

    private void Y(float f2) {
        this.p0 = f2;
        ViewCompat.postInvalidateOnAnimation(this.c);
    }

    @ColorInt
    private static int a(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        float f3 = 1.0f - f2;
        return Color.argb(Math.round((Color.alpha(i) * f3) + (Color.alpha(i2) * f2)), Math.round((Color.red(i) * f3) + (Color.red(i2) * f2)), Math.round((Color.green(i) * f3) + (Color.green(i2) * f2)), Math.round((Color.blue(i) * f3) + (Color.blue(i2) * f2)));
    }

    private void b(boolean z) {
        StaticLayout staticLayout;
        i(1.0f, z);
        CharSequence charSequence = this.J;
        if (charSequence != null && (staticLayout = this.m0) != null) {
            this.q0 = TextUtils.ellipsize(charSequence, this.X, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.q0;
        float fI = 0.0f;
        if (charSequence2 != null) {
            this.n0 = I(this.X, charSequence2);
        } else {
            this.n0 = 0.0f;
        }
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.n, this.K ? 1 : 0);
        int i = absoluteGravity & 112;
        if (i == 48) {
            this.u = this.k.top;
        } else if (i != 80) {
            this.u = this.k.centerY() - ((this.X.descent() - this.X.ascent()) / 2.0f);
        } else {
            this.u = this.k.bottom + this.X.ascent();
        }
        int i2 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i2 == 1) {
            this.w = this.k.centerX() - (this.n0 / 2.0f);
        } else if (i2 != 5) {
            this.w = this.k.left;
        } else {
            this.w = this.k.right - this.n0;
        }
        i(0.0f, z);
        float height = this.m0 != null ? r10.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.m0;
        if (staticLayout2 == null || this.r0 <= 1) {
            CharSequence charSequence3 = this.J;
            if (charSequence3 != null) {
                fI = I(this.X, charSequence3);
            }
        } else {
            fI = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.m0;
        this.s = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.m, this.K ? 1 : 0);
        int i3 = absoluteGravity2 & 112;
        if (i3 == 48) {
            this.t = this.j.top;
        } else if (i3 != 80) {
            this.t = this.j.centerY() - (height / 2.0f);
        } else {
            this.t = (this.j.bottom - height) + this.X.descent();
        }
        int i4 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i4 == 1) {
            this.v = this.j.centerX() - (fI / 2.0f);
        } else if (i4 != 5) {
            this.v = this.j.left;
        } else {
            this.v = this.j.right - fI;
        }
        j();
        e0(this.f3330e);
    }

    private void c() {
        g(this.f3330e);
    }

    private boolean c0(Typeface typeface) {
        com.google.android.material.resources.a aVar = this.G;
        if (aVar != null) {
            aVar.c();
        }
        if (this.E == typeface) {
            return false;
        }
        this.E = typeface;
        Typeface typefaceMaybeCopyWithFontWeightAdjustment = TypefaceUtils.maybeCopyWithFontWeightAdjustment(this.c.getContext().getResources().getConfiguration(), typeface);
        this.D = typefaceMaybeCopyWithFontWeightAdjustment;
        if (typefaceMaybeCopyWithFontWeightAdjustment == null) {
            typefaceMaybeCopyWithFontWeightAdjustment = this.E;
        }
        this.C = typefaceMaybeCopyWithFontWeightAdjustment;
        return true;
    }

    private float d(@FloatRange(from = 0.0d, to = 1.0d) float f2) {
        float f3 = this.h;
        return f2 <= f3 ? AnimationUtils.lerp(1.0f, 0.0f, this.f3332g, f3, f2) : AnimationUtils.lerp(0.0f, 1.0f, f3, 1.0f, f2);
    }

    private float e() {
        float f2 = this.f3332g;
        return f2 + ((1.0f - f2) * 0.5f);
    }

    private void e0(float f2) {
        h(f2);
        boolean z = a && this.P != 1.0f;
        this.M = z;
        if (z) {
            n();
        }
        ViewCompat.postInvalidateOnAnimation(this.c);
    }

    private boolean f(@NonNull CharSequence charSequence) {
        boolean zD = D();
        return this.L ? F(charSequence, zD) : zD;
    }

    private void g(float f2) {
        float f3;
        B(f2);
        if (!this.f3331f) {
            this.x = G(this.v, this.w, f2, this.Z);
            this.y = G(this.t, this.u, f2, this.Z);
            e0(f2);
            f3 = f2;
        } else if (f2 < this.h) {
            this.x = this.v;
            this.y = this.t;
            e0(0.0f);
            f3 = 0.0f;
        } else {
            this.x = this.w;
            this.y = this.u - Math.max(0, this.i);
            e0(1.0f);
            f3 = 1.0f;
        }
        TimeInterpolator timeInterpolator = AnimationUtils.b;
        Q(1.0f - G(0.0f, 1.0f, 1.0f - f2, timeInterpolator));
        Y(G(1.0f, 0.0f, f2, timeInterpolator));
        if (this.r != this.q) {
            this.X.setColor(a(v(), t(), f3));
        } else {
            this.X.setColor(t());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            float f4 = this.j0;
            float f5 = this.k0;
            if (f4 != f5) {
                this.X.setLetterSpacing(G(f5, f4, f2, timeInterpolator));
            } else {
                this.X.setLetterSpacing(f4);
            }
        }
        this.R = G(this.f0, this.b0, f2, null);
        this.S = G(this.g0, this.c0, f2, null);
        this.T = G(this.h0, this.d0, f2, null);
        int iA = a(u(this.i0), u(this.e0), f2);
        this.U = iA;
        this.X.setShadowLayer(this.R, this.S, this.T, iA);
        if (this.f3331f) {
            this.X.setAlpha((int) (d(f2) * this.X.getAlpha()));
        }
        ViewCompat.postInvalidateOnAnimation(this.c);
    }

    private void h(float f2) {
        i(f2, false);
    }

    private void i(float f2, boolean z) {
        boolean z2;
        float f3;
        float f4;
        boolean z3;
        if (this.I == null) {
            return;
        }
        float fWidth = this.k.width();
        float fWidth2 = this.j.width();
        if (C(f2, 1.0f)) {
            f3 = this.p;
            f4 = this.j0;
            this.P = 1.0f;
            Typeface typeface = this.F;
            Typeface typeface2 = this.z;
            if (typeface != typeface2) {
                this.F = typeface2;
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            float f5 = this.o;
            float f6 = this.k0;
            Typeface typeface3 = this.F;
            Typeface typeface4 = this.C;
            if (typeface3 != typeface4) {
                this.F = typeface4;
                z2 = true;
            } else {
                z2 = false;
            }
            if (C(f2, 0.0f)) {
                this.P = 1.0f;
            } else {
                this.P = G(this.o, this.p, f2, this.a0) / this.o;
            }
            float f7 = this.p / this.o;
            fWidth = (!z && fWidth2 * f7 > fWidth) ? Math.min(fWidth / f7, fWidth2) : fWidth2;
            f3 = f5;
            f4 = f6;
            z3 = z2;
        }
        if (fWidth > 0.0f) {
            z3 = ((this.Q > f3 ? 1 : (this.Q == f3 ? 0 : -1)) != 0) || ((this.l0 > f4 ? 1 : (this.l0 == f4 ? 0 : -1)) != 0) || this.W || z3;
            this.Q = f3;
            this.l0 = f4;
            this.W = false;
        }
        if (this.J == null || z3) {
            this.X.setTextSize(this.Q);
            this.X.setTypeface(this.F);
            if (Build.VERSION.SDK_INT >= 21) {
                this.X.setLetterSpacing(this.l0);
            }
            this.X.setLinearText(this.P != 1.0f);
            this.K = f(this.I);
            StaticLayout staticLayoutK = k(k0() ? this.r0 : 1, fWidth, this.K);
            this.m0 = staticLayoutK;
            this.J = staticLayoutK.getText();
        }
    }

    private void j() {
        Bitmap bitmap = this.N;
        if (bitmap != null) {
            bitmap.recycle();
            this.N = null;
        }
    }

    private StaticLayout k(int i, float f2, boolean z) {
        StaticLayout staticLayoutA;
        try {
            staticLayoutA = StaticLayoutBuilderCompat.obtain(this.I, this.X, (int) f2).d(TextUtils.TruncateAt.END).g(z).c(i == 1 ? Layout.Alignment.ALIGN_NORMAL : y()).f(false).i(i).h(this.s0, this.t0).e(this.u0).a();
        } catch (StaticLayoutBuilderCompat.a e2) {
            Log.e("CollapsingTextHelper", e2.getCause().getMessage(), e2);
            staticLayoutA = null;
        }
        return (StaticLayout) Preconditions.checkNotNull(staticLayoutA);
    }

    private boolean k0() {
        return this.r0 > 1 && (!this.K || this.f3331f) && !this.M;
    }

    private void m(@NonNull Canvas canvas, float f2, float f3) {
        int alpha = this.X.getAlpha();
        canvas.translate(f2, f3);
        float f4 = alpha;
        this.X.setAlpha((int) (this.p0 * f4));
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            TextPaint textPaint = this.X;
            textPaint.setShadowLayer(this.R, this.S, this.T, MaterialColors.compositeARGBWithAlpha(this.U, textPaint.getAlpha()));
        }
        this.m0.draw(canvas);
        this.X.setAlpha((int) (this.o0 * f4));
        if (i >= 31) {
            TextPaint textPaint2 = this.X;
            textPaint2.setShadowLayer(this.R, this.S, this.T, MaterialColors.compositeARGBWithAlpha(this.U, textPaint2.getAlpha()));
        }
        int lineBaseline = this.m0.getLineBaseline(0);
        CharSequence charSequence = this.q0;
        float f5 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f5, this.X);
        if (i >= 31) {
            this.X.setShadowLayer(this.R, this.S, this.T, this.U);
        }
        if (this.f3331f) {
            return;
        }
        String strTrim = this.q0.toString().trim();
        if (strTrim.endsWith("…")) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        String str = strTrim;
        this.X.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.m0.getLineEnd(0), str.length()), 0.0f, f5, (Paint) this.X);
    }

    private void n() {
        if (this.N != null || this.j.isEmpty() || TextUtils.isEmpty(this.J)) {
            return;
        }
        g(0.0f);
        int width = this.m0.getWidth();
        int height = this.m0.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.N = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.m0.draw(new Canvas(this.N));
        if (this.O == null) {
            this.O = new Paint(3);
        }
    }

    private float r(int i, int i2) {
        return (i2 == 17 || (i2 & 7) == 1) ? (i / 2.0f) - (this.n0 / 2.0f) : ((i2 & GravityCompat.END) == 8388613 || (i2 & 5) == 5) ? this.K ? this.k.left : this.k.right - this.n0 : this.K ? this.k.right - this.n0 : this.k.left;
    }

    private float s(@NonNull RectF rectF, int i, int i2) {
        return (i2 == 17 || (i2 & 7) == 1) ? (i / 2.0f) + (this.n0 / 2.0f) : ((i2 & GravityCompat.END) == 8388613 || (i2 & 5) == 5) ? this.K ? rectF.left + this.n0 : this.k.right : this.K ? this.k.right : rectF.left + this.n0;
    }

    @ColorInt
    private int u(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.V;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    @ColorInt
    private int v() {
        return u(this.q);
    }

    private Layout.Alignment y() {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.m, this.K ? 1 : 0) & 7;
        return absoluteGravity != 1 ? absoluteGravity != 5 ? this.K ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : this.K ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
    }

    private void z(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.p);
        textPaint.setTypeface(this.z);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.j0);
        }
    }

    public final boolean E() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.r;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.q) != null && colorStateList.isStateful());
    }

    public void H(@NonNull Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.B;
            if (typeface != null) {
                this.A = TypefaceUtils.maybeCopyWithFontWeightAdjustment(configuration, typeface);
            }
            Typeface typeface2 = this.E;
            if (typeface2 != null) {
                this.D = TypefaceUtils.maybeCopyWithFontWeightAdjustment(configuration, typeface2);
            }
            Typeface typeface3 = this.A;
            if (typeface3 == null) {
                typeface3 = this.B;
            }
            this.z = typeface3;
            Typeface typeface4 = this.D;
            if (typeface4 == null) {
                typeface4 = this.E;
            }
            this.C = typeface4;
            L(true);
        }
    }

    void J() {
        this.f3329d = this.k.width() > 0 && this.k.height() > 0 && this.j.width() > 0 && this.j.height() > 0;
    }

    public void K() {
        L(false);
    }

    public void L(boolean z) {
        if ((this.c.getHeight() <= 0 || this.c.getWidth() <= 0) && !z) {
            return;
        }
        b(z);
        c();
    }

    public void N(int i, int i2, int i3, int i4) {
        if (M(this.k, i, i2, i3, i4)) {
            return;
        }
        this.k.set(i, i2, i3, i4);
        this.W = true;
        J();
    }

    public void O(@NonNull Rect rect) {
        N(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void P(int i) {
        com.google.android.material.resources.b bVar = new com.google.android.material.resources.b(this.c.getContext(), i);
        if (bVar.i() != null) {
            this.r = bVar.i();
        }
        if (bVar.j() != 0.0f) {
            this.p = bVar.j();
        }
        ColorStateList colorStateList = bVar.c;
        if (colorStateList != null) {
            this.e0 = colorStateList;
        }
        this.c0 = bVar.h;
        this.d0 = bVar.i;
        this.b0 = bVar.j;
        this.j0 = bVar.l;
        com.google.android.material.resources.a aVar = this.H;
        if (aVar != null) {
            aVar.c();
        }
        this.H = new com.google.android.material.resources.a(new a(), bVar.e());
        bVar.h(this.c.getContext(), this.H);
        K();
    }

    public void R(ColorStateList colorStateList) {
        if (this.r != colorStateList) {
            this.r = colorStateList;
            K();
        }
    }

    public void S(int i) {
        if (this.n != i) {
            this.n = i;
            K();
        }
    }

    public void T(Typeface typeface) {
        if (U(typeface)) {
            K();
        }
    }

    public void V(int i, int i2, int i3, int i4) {
        if (M(this.j, i, i2, i3, i4)) {
            return;
        }
        this.j.set(i, i2, i3, i4);
        this.W = true;
        J();
    }

    public void W(@NonNull Rect rect) {
        V(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void X(float f2) {
        if (this.k0 != f2) {
            this.k0 = f2;
            K();
        }
    }

    public void Z(ColorStateList colorStateList) {
        if (this.q != colorStateList) {
            this.q = colorStateList;
            K();
        }
    }

    public void a0(int i) {
        if (this.m != i) {
            this.m = i;
            K();
        }
    }

    public void b0(float f2) {
        if (this.o != f2) {
            this.o = f2;
            K();
        }
    }

    public void d0(float f2) {
        float fClamp = MathUtils.clamp(f2, 0.0f, 1.0f);
        if (fClamp != this.f3330e) {
            this.f3330e = fClamp;
            c();
        }
    }

    public void f0(TimeInterpolator timeInterpolator) {
        this.Z = timeInterpolator;
        K();
    }

    public final boolean g0(int[] iArr) {
        this.V = iArr;
        if (!E()) {
            return false;
        }
        K();
        return true;
    }

    public void h0(@Nullable CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.I, charSequence)) {
            this.I = charSequence;
            this.J = null;
            j();
            K();
        }
    }

    public void i0(TimeInterpolator timeInterpolator) {
        this.a0 = timeInterpolator;
        K();
    }

    public void j0(Typeface typeface) {
        boolean zU = U(typeface);
        boolean zC0 = c0(typeface);
        if (zU || zC0) {
            K();
        }
    }

    public void l(@NonNull Canvas canvas) {
        int iSave = canvas.save();
        if (this.J == null || !this.f3329d) {
            return;
        }
        this.X.setTextSize(this.Q);
        float f2 = this.x;
        float f3 = this.y;
        boolean z = this.M && this.N != null;
        float f4 = this.P;
        if (f4 != 1.0f && !this.f3331f) {
            canvas.scale(f4, f4, f2, f3);
        }
        if (z) {
            canvas.drawBitmap(this.N, f2, f3, this.O);
            canvas.restoreToCount(iSave);
            return;
        }
        if (!k0() || (this.f3331f && this.f3330e <= this.h)) {
            canvas.translate(f2, f3);
            this.m0.draw(canvas);
        } else {
            m(canvas, this.x - this.m0.getLineStart(0), f3);
        }
        canvas.restoreToCount(iSave);
    }

    public void o(@NonNull RectF rectF, int i, int i2) {
        this.K = f(this.I);
        rectF.left = r(i, i2);
        rectF.top = this.k.top;
        rectF.right = s(rectF, i, i2);
        rectF.bottom = this.k.top + q();
    }

    public ColorStateList p() {
        return this.r;
    }

    public float q() {
        z(this.Y);
        return -this.Y.ascent();
    }

    @ColorInt
    public int t() {
        return u(this.r);
    }

    public float w() {
        A(this.Y);
        return -this.Y.ascent();
    }

    public float x() {
        return this.f3330e;
    }
}
