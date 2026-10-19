package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.text.BidiFormatter;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.internal.e;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.b;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class ChipDrawable extends MaterialShapeDrawable implements TintAwareDrawable, Drawable.Callback, e.b {

    @ColorInt
    private int A0;

    @Nullable
    private ColorStateList B;
    private boolean B0;

    @Nullable
    private ColorStateList C;

    @ColorInt
    private int C0;
    private float D;
    private int D0;
    private float E;

    @Nullable
    private ColorFilter E0;

    @Nullable
    private ColorStateList F;

    @Nullable
    private PorterDuffColorFilter F0;
    private float G;

    @Nullable
    private ColorStateList G0;

    @Nullable
    private ColorStateList H;

    @Nullable
    private PorterDuff.Mode H0;

    @Nullable
    private CharSequence I;
    private int[] I0;
    private boolean J;
    private boolean J0;

    @Nullable
    private Drawable K;

    @Nullable
    private ColorStateList K0;

    @Nullable
    private ColorStateList L;

    @NonNull
    private WeakReference<a> L0;
    private float M;
    private TextUtils.TruncateAt M0;
    private boolean N;
    private boolean N0;
    private boolean O;
    private int O0;

    @Nullable
    private Drawable P;
    private boolean P0;

    @Nullable
    private Drawable Q;

    @Nullable
    private ColorStateList R;
    private float S;

    @Nullable
    private CharSequence T;
    private boolean U;
    private boolean V;

    @Nullable
    private Drawable W;

    @Nullable
    private ColorStateList X;

    @Nullable
    private MotionSpec Y;

    @Nullable
    private MotionSpec Z;
    private float a0;
    private float b0;
    private float c0;
    private float i0;
    private float j0;
    private float k0;
    private float l0;
    private float m0;

    @NonNull
    private final Context n0;
    private final Paint o0;

    @Nullable
    private final Paint p0;
    private final Paint.FontMetrics q0;
    private final RectF r0;
    private final PointF s0;
    private final Path t0;

    @NonNull
    private final e u0;

    @ColorInt
    private int v0;

    @ColorInt
    private int w0;

    @ColorInt
    private int x0;

    @ColorInt
    private int y0;

    @ColorInt
    private int z0;
    private static final int[] z = {R.attr.state_enabled};
    private static final ShapeDrawable A = new ShapeDrawable(new OvalShape());

    public interface a {
        void a();
    }

    private ChipDrawable(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        this.E = -1.0f;
        this.o0 = new Paint(1);
        this.q0 = new Paint.FontMetrics();
        this.r0 = new RectF();
        this.s0 = new PointF();
        this.t0 = new Path();
        this.D0 = 255;
        this.H0 = PorterDuff.Mode.SRC_IN;
        this.L0 = new WeakReference<>(null);
        M(context);
        this.n0 = context;
        e eVar = new e(this);
        this.u0 = eVar;
        this.I = "";
        eVar.e().density = context.getResources().getDisplayMetrics().density;
        this.p0 = null;
        int[] iArr = z;
        setState(iArr);
        j2(iArr);
        this.N0 = true;
        if (RippleUtils.a) {
            A.setTint(-1);
        }
    }

    private void A0(@NonNull Canvas canvas, @NonNull Rect rect) {
        this.o0.setColor(this.z0);
        this.o0.setStyle(Paint.Style.FILL);
        this.r0.set(rect);
        if (!this.P0) {
            canvas.drawRoundRect(this.r0, G0(), G0(), this.o0);
        } else {
            h(new RectF(rect), this.t0);
            super.o(canvas, this.o0, this.t0, t());
        }
    }

    private void B0(@NonNull Canvas canvas, @NonNull Rect rect) {
        Paint paint = this.p0;
        if (paint != null) {
            paint.setColor(ColorUtils.setAlphaComponent(ViewCompat.MEASURED_STATE_MASK, 127));
            canvas.drawRect(rect, this.p0);
            if (L2() || K2()) {
                k0(rect, this.r0);
                canvas.drawRect(this.r0, this.p0);
            }
            if (this.I != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.p0);
            }
            if (M2()) {
                n0(rect, this.r0);
                canvas.drawRect(this.r0, this.p0);
            }
            this.p0.setColor(ColorUtils.setAlphaComponent(SupportMenu.CATEGORY_MASK, 127));
            m0(rect, this.r0);
            canvas.drawRect(this.r0, this.p0);
            this.p0.setColor(ColorUtils.setAlphaComponent(-16711936, 127));
            o0(rect, this.r0);
            canvas.drawRect(this.r0, this.p0);
        }
    }

    private void C0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.I != null) {
            Paint.Align alignS0 = s0(rect, this.s0);
            q0(rect, this.r0);
            if (this.u0.d() != null) {
                this.u0.e().drawableState = getState();
                this.u0.j(this.n0);
            }
            this.u0.e().setTextAlign(alignS0);
            int iSave = 0;
            boolean z2 = Math.round(this.u0.f(f1().toString())) > Math.round(this.r0.width());
            if (z2) {
                iSave = canvas.save();
                canvas.clipRect(this.r0);
            }
            CharSequence charSequenceEllipsize = this.I;
            if (z2 && this.M0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.u0.e(), this.r0.width(), this.M0);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF = this.s0;
            canvas.drawText(charSequence, 0, length, pointF.x, pointF.y, this.u0.e());
            if (z2) {
                canvas.restoreToCount(iSave);
            }
        }
    }

    private boolean K2() {
        return this.V && this.W != null && this.B0;
    }

    private boolean L2() {
        return this.J && this.K != null;
    }

    private boolean M2() {
        return this.O && this.P != null;
    }

    private void N2(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void O2() {
        this.K0 = this.J0 ? RippleUtils.sanitizeRippleDrawableColor(this.H) : null;
    }

    @TargetApi(21)
    private void P2() {
        this.Q = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(d1()), this.P, A);
    }

    private float X0() {
        Drawable drawable = this.B0 ? this.W : this.K;
        float fCeil = this.M;
        if (fCeil <= 0.0f && drawable != null) {
            fCeil = (float) Math.ceil(ViewUtils.dpToPx(this.n0, 24));
            if (drawable.getIntrinsicHeight() <= fCeil) {
                return drawable.getIntrinsicHeight();
            }
        }
        return fCeil;
    }

    private float Y0() {
        Drawable drawable = this.B0 ? this.W : this.K;
        float f2 = this.M;
        return (f2 > 0.0f || drawable == null) ? f2 : drawable.getIntrinsicWidth();
    }

    private void Z1(@Nullable ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            onStateChange(getState());
        }
    }

    @NonNull
    public static ChipDrawable createFromAttributes(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        ChipDrawable chipDrawable = new ChipDrawable(context, attributeSet, i, i2);
        chipDrawable.s1(attributeSet, i, i2);
        return chipDrawable;
    }

    @NonNull
    public static ChipDrawable createFromResource(@NonNull Context context, @XmlRes int i) {
        AttributeSet drawableXml = DrawableUtils.parseDrawableXml(context, i, "chip");
        int styleAttribute = drawableXml.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = R$style.r;
        }
        return createFromAttributes(context, drawableXml, R$attr.f3086g, styleAttribute);
    }

    private void j0(@Nullable Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.P) {
            if (drawable.isStateful()) {
                drawable.setState(U0());
            }
            DrawableCompat.setTintList(drawable, this.R);
            return;
        }
        Drawable drawable2 = this.K;
        if (drawable == drawable2 && this.N) {
            DrawableCompat.setTintList(drawable2, this.L);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    @Nullable
    private ColorFilter j1() {
        ColorFilter colorFilter = this.E0;
        return colorFilter != null ? colorFilter : this.F0;
    }

    private void k0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (L2() || K2()) {
            float f2 = this.a0 + this.b0;
            float fY0 = Y0();
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f3 = rect.left + f2;
                rectF.left = f3;
                rectF.right = f3 + fY0;
            } else {
                float f4 = rect.right - f2;
                rectF.right = f4;
                rectF.left = f4 - fY0;
            }
            float fX0 = X0();
            float fExactCenterY = rect.exactCenterY() - (fX0 / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fX0;
        }
    }

    private static boolean l1(@Nullable int[] iArr, @AttrRes int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private void m0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.set(rect);
        if (M2()) {
            float f2 = this.m0 + this.l0 + this.S + this.k0 + this.j0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = rect.right - f2;
            } else {
                rectF.left = rect.left + f2;
            }
        }
    }

    private void n0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (M2()) {
            float f2 = this.m0 + this.l0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f3 = rect.right - f2;
                rectF.right = f3;
                rectF.left = f3 - this.S;
            } else {
                float f4 = rect.left + f2;
                rectF.left = f4;
                rectF.right = f4 + this.S;
            }
            float fExactCenterY = rect.exactCenterY();
            float f5 = this.S;
            float f6 = fExactCenterY - (f5 / 2.0f);
            rectF.top = f6;
            rectF.bottom = f6 + f5;
        }
    }

    private void o0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (M2()) {
            float f2 = this.m0 + this.l0 + this.S + this.k0 + this.j0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f3 = rect.right;
                rectF.right = f3;
                rectF.left = f3 - f2;
            } else {
                int i = rect.left;
                rectF.left = i;
                rectF.right = i + f2;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private static boolean p1(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private void q0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (this.I != null) {
            float fL0 = this.a0 + l0() + this.i0;
            float fP0 = this.m0 + p0() + this.j0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.left = rect.left + fL0;
                rectF.right = rect.right - fP0;
            } else {
                rectF.left = rect.left + fP0;
                rectF.right = rect.right - fL0;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private static boolean q1(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    private float r0() {
        this.u0.e().getFontMetrics(this.q0);
        Paint.FontMetrics fontMetrics = this.q0;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private static boolean r1(@Nullable b bVar) {
        return (bVar == null || bVar.i() == null || !bVar.i().isStateful()) ? false : true;
    }

    private void s1(@Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(this.n0, attributeSet, R$styleable.j0, i, i2, new int[0]);
        this.P0 = typedArrayObtainStyledAttributes.hasValue(R$styleable.V0);
        Z1(MaterialResources.getColorStateList(this.n0, typedArrayObtainStyledAttributes, R$styleable.I0));
        D1(MaterialResources.getColorStateList(this.n0, typedArrayObtainStyledAttributes, R$styleable.v0));
        R1(typedArrayObtainStyledAttributes.getDimension(R$styleable.D0, 0.0f));
        int i3 = R$styleable.w0;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            F1(typedArrayObtainStyledAttributes.getDimension(i3, 0.0f));
        }
        V1(MaterialResources.getColorStateList(this.n0, typedArrayObtainStyledAttributes, R$styleable.G0));
        X1(typedArrayObtainStyledAttributes.getDimension(R$styleable.H0, 0.0f));
        w2(MaterialResources.getColorStateList(this.n0, typedArrayObtainStyledAttributes, R$styleable.U0));
        B2(typedArrayObtainStyledAttributes.getText(R$styleable.p0));
        b textAppearance = MaterialResources.getTextAppearance(this.n0, typedArrayObtainStyledAttributes, R$styleable.k0);
        textAppearance.l(typedArrayObtainStyledAttributes.getDimension(R$styleable.l0, textAppearance.j()));
        if (Build.VERSION.SDK_INT < 23) {
            textAppearance.k(MaterialResources.getColorStateList(this.n0, typedArrayObtainStyledAttributes, R$styleable.m0));
        }
        C2(textAppearance);
        int i4 = typedArrayObtainStyledAttributes.getInt(R$styleable.n0, 0);
        if (i4 == 1) {
            o2(TextUtils.TruncateAt.START);
        } else if (i4 == 2) {
            o2(TextUtils.TruncateAt.MIDDLE);
        } else if (i4 == 3) {
            o2(TextUtils.TruncateAt.END);
        }
        Q1(typedArrayObtainStyledAttributes.getBoolean(R$styleable.C0, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            Q1(typedArrayObtainStyledAttributes.getBoolean(R$styleable.z0, false));
        }
        J1(MaterialResources.getDrawable(this.n0, typedArrayObtainStyledAttributes, R$styleable.y0));
        int i5 = R$styleable.B0;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            N1(MaterialResources.getColorStateList(this.n0, typedArrayObtainStyledAttributes, i5));
        }
        L1(typedArrayObtainStyledAttributes.getDimension(R$styleable.A0, -1.0f));
        m2(typedArrayObtainStyledAttributes.getBoolean(R$styleable.P0, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            m2(typedArrayObtainStyledAttributes.getBoolean(R$styleable.K0, false));
        }
        a2(MaterialResources.getDrawable(this.n0, typedArrayObtainStyledAttributes, R$styleable.J0));
        k2(MaterialResources.getColorStateList(this.n0, typedArrayObtainStyledAttributes, R$styleable.O0));
        f2(typedArrayObtainStyledAttributes.getDimension(R$styleable.M0, 0.0f));
        v1(typedArrayObtainStyledAttributes.getBoolean(R$styleable.q0, false));
        C1(typedArrayObtainStyledAttributes.getBoolean(R$styleable.u0, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            C1(typedArrayObtainStyledAttributes.getBoolean(R$styleable.s0, false));
        }
        x1(MaterialResources.getDrawable(this.n0, typedArrayObtainStyledAttributes, R$styleable.r0));
        int i6 = R$styleable.t0;
        if (typedArrayObtainStyledAttributes.hasValue(i6)) {
            z1(MaterialResources.getColorStateList(this.n0, typedArrayObtainStyledAttributes, i6));
        }
        z2(MotionSpec.createFromAttribute(this.n0, typedArrayObtainStyledAttributes, R$styleable.W0));
        p2(MotionSpec.createFromAttribute(this.n0, typedArrayObtainStyledAttributes, R$styleable.R0));
        T1(typedArrayObtainStyledAttributes.getDimension(R$styleable.F0, 0.0f));
        t2(typedArrayObtainStyledAttributes.getDimension(R$styleable.T0, 0.0f));
        r2(typedArrayObtainStyledAttributes.getDimension(R$styleable.S0, 0.0f));
        G2(typedArrayObtainStyledAttributes.getDimension(R$styleable.Y0, 0.0f));
        E2(typedArrayObtainStyledAttributes.getDimension(R$styleable.X0, 0.0f));
        h2(typedArrayObtainStyledAttributes.getDimension(R$styleable.N0, 0.0f));
        c2(typedArrayObtainStyledAttributes.getDimension(R$styleable.L0, 0.0f));
        H1(typedArrayObtainStyledAttributes.getDimension(R$styleable.x0, 0.0f));
        v2(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.o0, Integer.MAX_VALUE));
        typedArrayObtainStyledAttributes.recycle();
    }

    private boolean t0() {
        return this.V && this.W != null && this.U;
    }

    private void u0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (K2()) {
            k0(rect, this.r0);
            RectF rectF = this.r0;
            float f2 = rectF.left;
            float f3 = rectF.top;
            canvas.translate(f2, f3);
            this.W.setBounds(0, 0, (int) this.r0.width(), (int) this.r0.height());
            this.W.draw(canvas);
            canvas.translate(-f2, -f3);
        }
    }

    private boolean u1(@NonNull int[] iArr, @NonNull int[] iArr2) {
        boolean z2;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.B;
        int iL = l(colorStateList != null ? colorStateList.getColorForState(iArr, this.v0) : 0);
        boolean state = true;
        if (this.v0 != iL) {
            this.v0 = iL;
            zOnStateChange = true;
        }
        ColorStateList colorStateList2 = this.C;
        int iL2 = l(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.w0) : 0);
        if (this.w0 != iL2) {
            this.w0 = iL2;
            zOnStateChange = true;
        }
        int iLayer = MaterialColors.layer(iL, iL2);
        if ((this.x0 != iLayer) | (w() == null)) {
            this.x0 = iLayer;
            X(ColorStateList.valueOf(iLayer));
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.F;
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.y0) : 0;
        if (this.y0 != colorForState) {
            this.y0 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.K0 == null || !RippleUtils.shouldDrawRippleCompat(iArr)) ? 0 : this.K0.getColorForState(iArr, this.z0);
        if (this.z0 != colorForState2) {
            this.z0 = colorForState2;
            if (this.J0) {
                zOnStateChange = true;
            }
        }
        int colorForState3 = (this.u0.d() == null || this.u0.d().i() == null) ? 0 : this.u0.d().i().getColorForState(iArr, this.A0);
        if (this.A0 != colorForState3) {
            this.A0 = colorForState3;
            zOnStateChange = true;
        }
        boolean z3 = l1(getState(), R.attr.state_checked) && this.U;
        if (this.B0 == z3 || this.W == null) {
            z2 = false;
        } else {
            float fL0 = l0();
            this.B0 = z3;
            if (fL0 != l0()) {
                zOnStateChange = true;
                z2 = true;
            } else {
                zOnStateChange = true;
                z2 = false;
            }
        }
        ColorStateList colorStateList4 = this.G0;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.C0) : 0;
        if (this.C0 != colorForState4) {
            this.C0 = colorForState4;
            this.F0 = DrawableUtils.updateTintFilter(this, this.G0, this.H0);
        } else {
            state = zOnStateChange;
        }
        if (q1(this.K)) {
            state |= this.K.setState(iArr);
        }
        if (q1(this.W)) {
            state |= this.W.setState(iArr);
        }
        if (q1(this.P)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.P.setState(iArr3);
        }
        if (RippleUtils.a && q1(this.Q)) {
            state |= this.Q.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z2) {
            t1();
        }
        return state;
    }

    private void v0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.P0) {
            return;
        }
        this.o0.setColor(this.w0);
        this.o0.setStyle(Paint.Style.FILL);
        this.o0.setColorFilter(j1());
        this.r0.set(rect);
        canvas.drawRoundRect(this.r0, G0(), G0(), this.o0);
    }

    private void w0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (L2()) {
            k0(rect, this.r0);
            RectF rectF = this.r0;
            float f2 = rectF.left;
            float f3 = rectF.top;
            canvas.translate(f2, f3);
            this.K.setBounds(0, 0, (int) this.r0.width(), (int) this.r0.height());
            this.K.draw(canvas);
            canvas.translate(-f2, -f3);
        }
    }

    private void x0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.G <= 0.0f || this.P0) {
            return;
        }
        this.o0.setColor(this.y0);
        this.o0.setStyle(Paint.Style.STROKE);
        if (!this.P0) {
            this.o0.setColorFilter(j1());
        }
        RectF rectF = this.r0;
        float f2 = rect.left;
        float f3 = this.G;
        rectF.set(f2 + (f3 / 2.0f), rect.top + (f3 / 2.0f), rect.right - (f3 / 2.0f), rect.bottom - (f3 / 2.0f));
        float f4 = this.E - (this.G / 2.0f);
        canvas.drawRoundRect(this.r0, f4, f4, this.o0);
    }

    private void y0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.P0) {
            return;
        }
        this.o0.setColor(this.v0);
        this.o0.setStyle(Paint.Style.FILL);
        this.r0.set(rect);
        canvas.drawRoundRect(this.r0, G0(), G0(), this.o0);
    }

    private void z0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (M2()) {
            n0(rect, this.r0);
            RectF rectF = this.r0;
            float f2 = rectF.left;
            float f3 = rectF.top;
            canvas.translate(f2, f3);
            this.P.setBounds(0, 0, (int) this.r0.width(), (int) this.r0.height());
            if (RippleUtils.a) {
                this.Q.setBounds(this.P.getBounds());
                this.Q.jumpToCurrentState();
                this.Q.draw(canvas);
            } else {
                this.P.draw(canvas);
            }
            canvas.translate(-f2, -f3);
        }
    }

    public void A1(@ColorRes int i) {
        z1(AppCompatResources.getColorStateList(this.n0, i));
    }

    public void A2(@AnimatorRes int i) {
        z2(MotionSpec.createFromResource(this.n0, i));
    }

    public void B1(@BoolRes int i) {
        C1(this.n0.getResources().getBoolean(i));
    }

    public void B2(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.I, charSequence)) {
            return;
        }
        this.I = charSequence;
        this.u0.i(true);
        invalidateSelf();
        t1();
    }

    public void C1(boolean z2) {
        if (this.V != z2) {
            boolean zK2 = K2();
            this.V = z2;
            boolean zK22 = K2();
            if (zK2 != zK22) {
                if (zK22) {
                    j0(this.W);
                } else {
                    N2(this.W);
                }
                invalidateSelf();
                t1();
            }
        }
    }

    public void C2(@Nullable b bVar) {
        this.u0.h(bVar, this.n0);
    }

    @Nullable
    public Drawable D0() {
        return this.W;
    }

    public void D1(@Nullable ColorStateList colorStateList) {
        if (this.C != colorStateList) {
            this.C = colorStateList;
            onStateChange(getState());
        }
    }

    public void D2(@StyleRes int i) {
        C2(new b(this.n0, i));
    }

    @Nullable
    public ColorStateList E0() {
        return this.X;
    }

    public void E1(@ColorRes int i) {
        D1(AppCompatResources.getColorStateList(this.n0, i));
    }

    public void E2(float f2) {
        if (this.j0 != f2) {
            this.j0 = f2;
            invalidateSelf();
            t1();
        }
    }

    @Nullable
    public ColorStateList F0() {
        return this.C;
    }

    @Deprecated
    public void F1(float f2) {
        if (this.E != f2) {
            this.E = f2;
            setShapeAppearanceModel(C().r(f2));
        }
    }

    public void F2(@DimenRes int i) {
        E2(this.n0.getResources().getDimension(i));
    }

    public float G0() {
        return this.P0 ? F() : this.E;
    }

    @Deprecated
    public void G1(@DimenRes int i) {
        F1(this.n0.getResources().getDimension(i));
    }

    public void G2(float f2) {
        if (this.i0 != f2) {
            this.i0 = f2;
            invalidateSelf();
            t1();
        }
    }

    public float H0() {
        return this.m0;
    }

    public void H1(float f2) {
        if (this.m0 != f2) {
            this.m0 = f2;
            invalidateSelf();
            t1();
        }
    }

    public void H2(@DimenRes int i) {
        G2(this.n0.getResources().getDimension(i));
    }

    @Nullable
    public Drawable I0() {
        Drawable drawable = this.K;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public void I1(@DimenRes int i) {
        H1(this.n0.getResources().getDimension(i));
    }

    public void I2(boolean z2) {
        if (this.J0 != z2) {
            this.J0 = z2;
            O2();
            onStateChange(getState());
        }
    }

    public float J0() {
        return this.M;
    }

    public void J1(@Nullable Drawable drawable) {
        Drawable drawableI0 = I0();
        if (drawableI0 != drawable) {
            float fL0 = l0();
            this.K = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float fL02 = l0();
            N2(drawableI0);
            if (L2()) {
                j0(this.K);
            }
            invalidateSelf();
            if (fL0 != fL02) {
                t1();
            }
        }
    }

    boolean J2() {
        return this.N0;
    }

    @Nullable
    public ColorStateList K0() {
        return this.L;
    }

    public void K1(@DrawableRes int i) {
        J1(AppCompatResources.getDrawable(this.n0, i));
    }

    public float L0() {
        return this.D;
    }

    public void L1(float f2) {
        if (this.M != f2) {
            float fL0 = l0();
            this.M = f2;
            float fL02 = l0();
            invalidateSelf();
            if (fL0 != fL02) {
                t1();
            }
        }
    }

    public float M0() {
        return this.a0;
    }

    public void M1(@DimenRes int i) {
        L1(this.n0.getResources().getDimension(i));
    }

    @Nullable
    public ColorStateList N0() {
        return this.F;
    }

    public void N1(@Nullable ColorStateList colorStateList) {
        this.N = true;
        if (this.L != colorStateList) {
            this.L = colorStateList;
            if (L2()) {
                DrawableCompat.setTintList(this.K, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public float O0() {
        return this.G;
    }

    public void O1(@ColorRes int i) {
        N1(AppCompatResources.getColorStateList(this.n0, i));
    }

    @Nullable
    public Drawable P0() {
        Drawable drawable = this.P;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public void P1(@BoolRes int i) {
        Q1(this.n0.getResources().getBoolean(i));
    }

    @Nullable
    public CharSequence Q0() {
        return this.T;
    }

    public void Q1(boolean z2) {
        if (this.J != z2) {
            boolean zL2 = L2();
            this.J = z2;
            boolean zL22 = L2();
            if (zL2 != zL22) {
                if (zL22) {
                    j0(this.K);
                } else {
                    N2(this.K);
                }
                invalidateSelf();
                t1();
            }
        }
    }

    public float R0() {
        return this.l0;
    }

    public void R1(float f2) {
        if (this.D != f2) {
            this.D = f2;
            invalidateSelf();
            t1();
        }
    }

    public float S0() {
        return this.S;
    }

    public void S1(@DimenRes int i) {
        R1(this.n0.getResources().getDimension(i));
    }

    public float T0() {
        return this.k0;
    }

    public void T1(float f2) {
        if (this.a0 != f2) {
            this.a0 = f2;
            invalidateSelf();
            t1();
        }
    }

    @NonNull
    public int[] U0() {
        return this.I0;
    }

    public void U1(@DimenRes int i) {
        T1(this.n0.getResources().getDimension(i));
    }

    @Nullable
    public ColorStateList V0() {
        return this.R;
    }

    public void V1(@Nullable ColorStateList colorStateList) {
        if (this.F != colorStateList) {
            this.F = colorStateList;
            if (this.P0) {
                e0(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void W0(@NonNull RectF rectF) {
        o0(getBounds(), rectF);
    }

    public void W1(@ColorRes int i) {
        V1(AppCompatResources.getColorStateList(this.n0, i));
    }

    public void X1(float f2) {
        if (this.G != f2) {
            this.G = f2;
            this.o0.setStrokeWidth(f2);
            if (this.P0) {
                super.f0(f2);
            }
            invalidateSelf();
        }
    }

    public void Y1(@DimenRes int i) {
        X1(this.n0.getResources().getDimension(i));
    }

    public TextUtils.TruncateAt Z0() {
        return this.M0;
    }

    @Override // com.google.android.material.internal.e.b
    public void a() {
        t1();
        invalidateSelf();
    }

    @Nullable
    public MotionSpec a1() {
        return this.Z;
    }

    public void a2(@Nullable Drawable drawable) {
        Drawable drawableP0 = P0();
        if (drawableP0 != drawable) {
            float fP0 = p0();
            this.P = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            if (RippleUtils.a) {
                P2();
            }
            float fP02 = p0();
            N2(drawableP0);
            if (M2()) {
                j0(this.P);
            }
            invalidateSelf();
            if (fP0 != fP02) {
                t1();
            }
        }
    }

    public float b1() {
        return this.c0;
    }

    public void b2(@Nullable CharSequence charSequence) {
        if (this.T != charSequence) {
            this.T = BidiFormatter.getInstance().unicodeWrap(charSequence);
            invalidateSelf();
        }
    }

    public float c1() {
        return this.b0;
    }

    public void c2(float f2) {
        if (this.l0 != f2) {
            this.l0 = f2;
            invalidateSelf();
            if (M2()) {
                t1();
            }
        }
    }

    @Nullable
    public ColorStateList d1() {
        return this.H;
    }

    public void d2(@DimenRes int i) {
        c2(this.n0.getResources().getDimension(i));
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i = this.D0;
        int iSaveLayerAlpha = i < 255 ? CanvasCompat.saveLayerAlpha(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i) : 0;
        y0(canvas, bounds);
        v0(canvas, bounds);
        if (this.P0) {
            super.draw(canvas);
        }
        x0(canvas, bounds);
        A0(canvas, bounds);
        w0(canvas, bounds);
        u0(canvas, bounds);
        if (this.N0) {
            C0(canvas, bounds);
        }
        z0(canvas, bounds);
        B0(canvas, bounds);
        if (this.D0 < 255) {
            canvas.restoreToCount(iSaveLayerAlpha);
        }
    }

    @Nullable
    public MotionSpec e1() {
        return this.Y;
    }

    public void e2(@DrawableRes int i) {
        a2(AppCompatResources.getDrawable(this.n0, i));
    }

    @Nullable
    public CharSequence f1() {
        return this.I;
    }

    public void f2(float f2) {
        if (this.S != f2) {
            this.S = f2;
            invalidateSelf();
            if (M2()) {
                t1();
            }
        }
    }

    @Nullable
    public b g1() {
        return this.u0.d();
    }

    public void g2(@DimenRes int i) {
        f2(this.n0.getResources().getDimension(i));
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.D0;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.E0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.D;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.a0 + l0() + this.i0 + this.u0.f(f1().toString()) + this.j0 + p0() + this.m0), this.O0);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.P0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.E);
        } else {
            outline.setRoundRect(bounds, this.E);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public float h1() {
        return this.j0;
    }

    public void h2(float f2) {
        if (this.k0 != f2) {
            this.k0 = f2;
            invalidateSelf();
            if (M2()) {
                t1();
            }
        }
    }

    public float i1() {
        return this.i0;
    }

    public void i2(@DimenRes int i) {
        h2(this.n0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return p1(this.B) || p1(this.C) || p1(this.F) || (this.J0 && p1(this.K0)) || r1(this.u0.d()) || t0() || q1(this.K) || q1(this.W) || p1(this.G0);
    }

    public boolean j2(@NonNull int[] iArr) {
        if (Arrays.equals(this.I0, iArr)) {
            return false;
        }
        this.I0 = iArr;
        if (M2()) {
            return u1(getState(), iArr);
        }
        return false;
    }

    public boolean k1() {
        return this.J0;
    }

    public void k2(@Nullable ColorStateList colorStateList) {
        if (this.R != colorStateList) {
            this.R = colorStateList;
            if (M2()) {
                DrawableCompat.setTintList(this.P, colorStateList);
            }
            onStateChange(getState());
        }
    }

    float l0() {
        if (L2() || K2()) {
            return this.b0 + Y0() + this.c0;
        }
        return 0.0f;
    }

    public void l2(@ColorRes int i) {
        k2(AppCompatResources.getColorStateList(this.n0, i));
    }

    public boolean m1() {
        return this.U;
    }

    public void m2(boolean z2) {
        if (this.O != z2) {
            boolean zM2 = M2();
            this.O = z2;
            boolean zM22 = M2();
            if (zM2 != zM22) {
                if (zM22) {
                    j0(this.P);
                } else {
                    N2(this.P);
                }
                invalidateSelf();
                t1();
            }
        }
    }

    public boolean n1() {
        return q1(this.P);
    }

    public void n2(@Nullable a aVar) {
        this.L0 = new WeakReference<>(aVar);
    }

    public boolean o1() {
        return this.O;
    }

    public void o2(@Nullable TextUtils.TruncateAt truncateAt) {
        this.M0 = truncateAt;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (L2()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.K, i);
        }
        if (K2()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.W, i);
        }
        if (M2()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.P, i);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        boolean zOnLevelChange = super.onLevelChange(i);
        if (L2()) {
            zOnLevelChange |= this.K.setLevel(i);
        }
        if (K2()) {
            zOnLevelChange |= this.W.setLevel(i);
        }
        if (M2()) {
            zOnLevelChange |= this.P.setLevel(i);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.e.b
    public boolean onStateChange(@NonNull int[] iArr) {
        if (this.P0) {
            super.onStateChange(iArr);
        }
        return u1(iArr, U0());
    }

    float p0() {
        if (M2()) {
            return this.k0 + this.S + this.l0;
        }
        return 0.0f;
    }

    public void p2(@Nullable MotionSpec motionSpec) {
        this.Z = motionSpec;
    }

    public void q2(@AnimatorRes int i) {
        p2(MotionSpec.createFromResource(this.n0, i));
    }

    public void r2(float f2) {
        if (this.c0 != f2) {
            float fL0 = l0();
            this.c0 = f2;
            float fL02 = l0();
            invalidateSelf();
            if (fL0 != fL02) {
                t1();
            }
        }
    }

    @NonNull
    Paint.Align s0(@NonNull Rect rect, @NonNull PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.I != null) {
            float fL0 = this.a0 + l0() + this.i0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                pointF.x = rect.left + fL0;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - fL0;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - r0();
        }
        return align;
    }

    public void s2(@DimenRes int i) {
        r2(this.n0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.D0 != i) {
            this.D0 = i;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.E0 != colorFilter) {
            this.E0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.G0 != colorStateList) {
            this.G0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.H0 != mode) {
            this.H0 = mode;
            this.F0 = DrawableUtils.updateTintFilter(this, this.G0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        if (L2()) {
            visible |= this.K.setVisible(z2, z3);
        }
        if (K2()) {
            visible |= this.W.setVisible(z2, z3);
        }
        if (M2()) {
            visible |= this.P.setVisible(z2, z3);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    protected void t1() {
        a aVar = this.L0.get();
        if (aVar != null) {
            aVar.a();
        }
    }

    public void t2(float f2) {
        if (this.b0 != f2) {
            float fL0 = l0();
            this.b0 = f2;
            float fL02 = l0();
            invalidateSelf();
            if (fL0 != fL02) {
                t1();
            }
        }
    }

    public void u2(@DimenRes int i) {
        t2(this.n0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public void v1(boolean z2) {
        if (this.U != z2) {
            this.U = z2;
            float fL0 = l0();
            if (!z2 && this.B0) {
                this.B0 = false;
            }
            float fL02 = l0();
            invalidateSelf();
            if (fL0 != fL02) {
                t1();
            }
        }
    }

    public void v2(@Px int i) {
        this.O0 = i;
    }

    public void w1(@BoolRes int i) {
        v1(this.n0.getResources().getBoolean(i));
    }

    public void w2(@Nullable ColorStateList colorStateList) {
        if (this.H != colorStateList) {
            this.H = colorStateList;
            O2();
            onStateChange(getState());
        }
    }

    public void x1(@Nullable Drawable drawable) {
        if (this.W != drawable) {
            float fL0 = l0();
            this.W = drawable;
            float fL02 = l0();
            N2(this.W);
            j0(this.W);
            invalidateSelf();
            if (fL0 != fL02) {
                t1();
            }
        }
    }

    public void x2(@ColorRes int i) {
        w2(AppCompatResources.getColorStateList(this.n0, i));
    }

    public void y1(@DrawableRes int i) {
        x1(AppCompatResources.getDrawable(this.n0, i));
    }

    void y2(boolean z2) {
        this.N0 = z2;
    }

    public void z1(@Nullable ColorStateList colorStateList) {
        if (this.X != colorStateList) {
            this.X = colorStateList;
            if (t0()) {
                DrawableCompat.setTintList(this.W, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void z2(@Nullable MotionSpec motionSpec) {
        this.Y = motionSpec;
    }
}
