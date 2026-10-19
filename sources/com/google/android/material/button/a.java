package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.l;

/* JADX INFO: compiled from: MaterialButtonHelper.java */
/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
class a {

    @ChecksSdkIntAtLeast(api = 21)
    private static final boolean a;
    private static final boolean b;
    private final MaterialButton c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private ShapeAppearanceModel f3196d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3197e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3198f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3199g;
    private int h;
    private int i;
    private int j;

    @Nullable
    private PorterDuff.Mode k;

    @Nullable
    private ColorStateList l;

    @Nullable
    private ColorStateList m;

    @Nullable
    private ColorStateList n;

    @Nullable
    private Drawable o;
    private boolean p = false;
    private boolean q = false;
    private boolean r = false;
    private boolean s;
    private LayerDrawable t;
    private int u;

    static {
        int i = Build.VERSION.SDK_INT;
        a = i >= 21;
        b = i >= 21 && i <= 22;
    }

    a(MaterialButton materialButton, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.c = materialButton;
        this.f3196d = shapeAppearanceModel;
    }

    private void E(@Dimension int i, @Dimension int i2) {
        int paddingStart = ViewCompat.getPaddingStart(this.c);
        int paddingTop = this.c.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.c);
        int paddingBottom = this.c.getPaddingBottom();
        int i3 = this.f3199g;
        int i4 = this.h;
        this.h = i2;
        this.f3199g = i;
        if (!this.q) {
            F();
        }
        ViewCompat.setPaddingRelative(this.c, paddingStart, (paddingTop + i) - i3, paddingEnd, (paddingBottom + i2) - i4);
    }

    private void F() {
        this.c.setInternalBackground(a());
        MaterialShapeDrawable materialShapeDrawableF = f();
        if (materialShapeDrawableF != null) {
            materialShapeDrawableF.W(this.u);
        }
    }

    private void G(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (b && !this.q) {
            int paddingStart = ViewCompat.getPaddingStart(this.c);
            int paddingTop = this.c.getPaddingTop();
            int paddingEnd = ViewCompat.getPaddingEnd(this.c);
            int paddingBottom = this.c.getPaddingBottom();
            F();
            ViewCompat.setPaddingRelative(this.c, paddingStart, paddingTop, paddingEnd, paddingBottom);
            return;
        }
        if (f() != null) {
            f().setShapeAppearanceModel(shapeAppearanceModel);
        }
        if (n() != null) {
            n().setShapeAppearanceModel(shapeAppearanceModel);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    private void I() {
        MaterialShapeDrawable materialShapeDrawableF = f();
        MaterialShapeDrawable materialShapeDrawableN = n();
        if (materialShapeDrawableF != null) {
            materialShapeDrawableF.d0(this.j, this.m);
            if (materialShapeDrawableN != null) {
                materialShapeDrawableN.c0(this.j, this.p ? MaterialColors.getColor(this.c, R$attr.s) : 0);
            }
        }
    }

    @NonNull
    private InsetDrawable J(Drawable drawable) {
        return new InsetDrawable(drawable, this.f3197e, this.f3199g, this.f3198f, this.h);
    }

    private Drawable a() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f3196d);
        materialShapeDrawable.M(this.c.getContext());
        DrawableCompat.setTintList(materialShapeDrawable, this.l);
        PorterDuff.Mode mode = this.k;
        if (mode != null) {
            DrawableCompat.setTintMode(materialShapeDrawable, mode);
        }
        materialShapeDrawable.d0(this.j, this.m);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.f3196d);
        materialShapeDrawable2.setTint(0);
        materialShapeDrawable2.c0(this.j, this.p ? MaterialColors.getColor(this.c, R$attr.s) : 0);
        if (a) {
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.f3196d);
            this.o = materialShapeDrawable3;
            DrawableCompat.setTint(materialShapeDrawable3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.n), J(new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable})), this.o);
            this.t = rippleDrawable;
            return rippleDrawable;
        }
        com.google.android.material.ripple.a aVar = new com.google.android.material.ripple.a(this.f3196d);
        this.o = aVar;
        DrawableCompat.setTintList(aVar, RippleUtils.sanitizeRippleDrawableColor(this.n));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable, this.o});
        this.t = layerDrawable;
        return J(layerDrawable);
    }

    @Nullable
    private MaterialShapeDrawable g(boolean z) {
        LayerDrawable layerDrawable = this.t;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return a ? (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.t.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (MaterialShapeDrawable) this.t.getDrawable(!z ? 1 : 0);
    }

    @Nullable
    private MaterialShapeDrawable n() {
        return g(true);
    }

    void A(@Nullable ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            I();
        }
    }

    void B(int i) {
        if (this.j != i) {
            this.j = i;
            I();
        }
    }

    void C(@Nullable ColorStateList colorStateList) {
        if (this.l != colorStateList) {
            this.l = colorStateList;
            if (f() != null) {
                DrawableCompat.setTintList(f(), this.l);
            }
        }
    }

    void D(@Nullable PorterDuff.Mode mode) {
        if (this.k != mode) {
            this.k = mode;
            if (f() == null || this.k == null) {
                return;
            }
            DrawableCompat.setTintMode(f(), this.k);
        }
    }

    void H(int i, int i2) {
        Drawable drawable = this.o;
        if (drawable != null) {
            drawable.setBounds(this.f3197e, this.f3199g, i2 - this.f3198f, i - this.h);
        }
    }

    int b() {
        return this.i;
    }

    public int c() {
        return this.h;
    }

    public int d() {
        return this.f3199g;
    }

    @Nullable
    public l e() {
        LayerDrawable layerDrawable = this.t;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.t.getNumberOfLayers() > 2 ? (l) this.t.getDrawable(2) : (l) this.t.getDrawable(1);
    }

    @Nullable
    MaterialShapeDrawable f() {
        return g(false);
    }

    @Nullable
    ColorStateList h() {
        return this.n;
    }

    @NonNull
    ShapeAppearanceModel i() {
        return this.f3196d;
    }

    @Nullable
    ColorStateList j() {
        return this.m;
    }

    int k() {
        return this.j;
    }

    ColorStateList l() {
        return this.l;
    }

    PorterDuff.Mode m() {
        return this.k;
    }

    boolean o() {
        return this.q;
    }

    boolean p() {
        return this.s;
    }

    void q(@NonNull TypedArray typedArray) {
        this.f3197e = typedArray.getDimensionPixelOffset(R$styleable.x2, 0);
        this.f3198f = typedArray.getDimensionPixelOffset(R$styleable.y2, 0);
        this.f3199g = typedArray.getDimensionPixelOffset(R$styleable.z2, 0);
        this.h = typedArray.getDimensionPixelOffset(R$styleable.A2, 0);
        int i = R$styleable.E2;
        if (typedArray.hasValue(i)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(i, -1);
            this.i = dimensionPixelSize;
            y(this.f3196d.r(dimensionPixelSize));
            this.r = true;
        }
        this.j = typedArray.getDimensionPixelSize(R$styleable.O2, 0);
        this.k = ViewUtils.parseTintMode(typedArray.getInt(R$styleable.D2, -1), PorterDuff.Mode.SRC_IN);
        this.l = MaterialResources.getColorStateList(this.c.getContext(), typedArray, R$styleable.C2);
        this.m = MaterialResources.getColorStateList(this.c.getContext(), typedArray, R$styleable.N2);
        this.n = MaterialResources.getColorStateList(this.c.getContext(), typedArray, R$styleable.M2);
        this.s = typedArray.getBoolean(R$styleable.B2, false);
        this.u = typedArray.getDimensionPixelSize(R$styleable.F2, 0);
        int paddingStart = ViewCompat.getPaddingStart(this.c);
        int paddingTop = this.c.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.c);
        int paddingBottom = this.c.getPaddingBottom();
        if (typedArray.hasValue(R$styleable.w2)) {
            s();
        } else {
            F();
        }
        ViewCompat.setPaddingRelative(this.c, paddingStart + this.f3197e, paddingTop + this.f3199g, paddingEnd + this.f3198f, paddingBottom + this.h);
    }

    void r(int i) {
        if (f() != null) {
            f().setTint(i);
        }
    }

    void s() {
        this.q = true;
        this.c.setSupportBackgroundTintList(this.l);
        this.c.setSupportBackgroundTintMode(this.k);
    }

    void t(boolean z) {
        this.s = z;
    }

    void u(int i) {
        if (this.r && this.i == i) {
            return;
        }
        this.i = i;
        this.r = true;
        y(this.f3196d.r(i));
    }

    public void v(@Dimension int i) {
        E(this.f3199g, i);
    }

    public void w(@Dimension int i) {
        E(i, this.h);
    }

    void x(@Nullable ColorStateList colorStateList) {
        if (this.n != colorStateList) {
            this.n = colorStateList;
            boolean z = a;
            if (z && (this.c.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.c.getBackground()).setColor(RippleUtils.sanitizeRippleDrawableColor(colorStateList));
            } else {
                if (z || !(this.c.getBackground() instanceof com.google.android.material.ripple.a)) {
                    return;
                }
                ((com.google.android.material.ripple.a) this.c.getBackground()).setTintList(RippleUtils.sanitizeRippleDrawableColor(colorStateList));
            }
        }
    }

    void y(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f3196d = shapeAppearanceModel;
        G(shapeAppearanceModel);
    }

    void z(boolean z) {
        this.p = z;
        I();
    }
}
