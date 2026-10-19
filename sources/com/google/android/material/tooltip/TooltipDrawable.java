package com.google.android.material.tooltip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.e;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.b;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.f;
import com.google.android.material.shape.g;
import com.google.android.material.shape.h;

/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class TooltipDrawable extends MaterialShapeDrawable implements e.b {

    @Nullable
    private CharSequence B;

    @NonNull
    private final Context C;

    @Nullable
    private final Paint.FontMetrics D;

    @NonNull
    private final e E;

    @NonNull
    private final View.OnLayoutChangeListener F;

    @NonNull
    private final Rect G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private int M;
    private float N;
    private float O;
    private final float P;
    private float Q;
    private float R;

    @StyleRes
    private static final int z = R$style.z;

    @AttrRes
    private static final int A = R$attr.Z;

    class a implements View.OnLayoutChangeListener {
        a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            TooltipDrawable.this.t0(view);
        }
    }

    private TooltipDrawable(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        this.D = new Paint.FontMetrics();
        e eVar = new e(this);
        this.E = eVar;
        this.F = new a();
        this.G = new Rect();
        this.N = 1.0f;
        this.O = 1.0f;
        this.P = 0.5f;
        this.Q = 0.5f;
        this.R = 1.0f;
        this.C = context;
        eVar.e().density = context.getResources().getDisplayMetrics().density;
        eVar.e().setTextAlign(Paint.Align.CENTER);
    }

    @NonNull
    public static TooltipDrawable create(@NonNull Context context) {
        return createFromAttributes(context, null, A, z);
    }

    @NonNull
    public static TooltipDrawable createFromAttributes(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        return createFromAttributes(context, attributeSet, A, z);
    }

    @NonNull
    public static TooltipDrawable createFromAttributes(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TooltipDrawable tooltipDrawable = new TooltipDrawable(context, attributeSet, i, i2);
        tooltipDrawable.q0(attributeSet, i, i2);
        return tooltipDrawable;
    }

    private float k0() {
        int i;
        if (((this.G.right - getBounds().right) - this.M) - this.K < 0) {
            i = ((this.G.right - getBounds().right) - this.M) - this.K;
        } else {
            if (((this.G.left - getBounds().left) - this.M) + this.K <= 0) {
                return 0.0f;
            }
            i = ((this.G.left - getBounds().left) - this.M) + this.K;
        }
        return i;
    }

    private float l0() {
        this.E.e().getFontMetrics(this.D);
        Paint.FontMetrics fontMetrics = this.D;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private float m0(@NonNull Rect rect) {
        return rect.centerY() - l0();
    }

    private f n0() {
        float f2 = -k0();
        float fWidth = ((float) (((double) getBounds().width()) - (((double) this.L) * Math.sqrt(2.0d)))) / 2.0f;
        return new h(new g(this.L), Math.min(Math.max(f2, -fWidth), fWidth));
    }

    private void o0(@NonNull Canvas canvas) {
        if (this.B == null) {
            return;
        }
        int iM0 = (int) m0(getBounds());
        if (this.E.d() != null) {
            this.E.e().drawableState = getState();
            this.E.j(this.C);
            this.E.e().setAlpha((int) (this.R * 255.0f));
        }
        CharSequence charSequence = this.B;
        canvas.drawText(charSequence, 0, charSequence.length(), r0.centerX(), iM0, this.E.e());
    }

    private float p0() {
        CharSequence charSequence = this.B;
        if (charSequence == null) {
            return 0.0f;
        }
        return this.E.f(charSequence.toString());
    }

    private void q0(@Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(this.C, attributeSet, R$styleable.E6, i, i2, new int[0]);
        this.L = this.C.getResources().getDimensionPixelSize(R$dimen.l0);
        setShapeAppearanceModel(C().q().q(n0()).m());
        r0(typedArrayObtainStyledAttributes.getText(R$styleable.L6));
        b textAppearance = MaterialResources.getTextAppearance(this.C, typedArrayObtainStyledAttributes, R$styleable.F6);
        if (textAppearance != null) {
            int i3 = R$styleable.G6;
            if (typedArrayObtainStyledAttributes.hasValue(i3)) {
                textAppearance.k(MaterialResources.getColorStateList(this.C, typedArrayObtainStyledAttributes, i3));
            }
        }
        s0(textAppearance);
        X(ColorStateList.valueOf(typedArrayObtainStyledAttributes.getColor(R$styleable.M6, MaterialColors.layer(ColorUtils.setAlphaComponent(MaterialColors.getColor(this.C, R.attr.colorBackground, TooltipDrawable.class.getCanonicalName()), 229), ColorUtils.setAlphaComponent(MaterialColors.getColor(this.C, R$attr.m, TooltipDrawable.class.getCanonicalName()), 153)))));
        e0(ColorStateList.valueOf(MaterialColors.getColor(this.C, R$attr.s, TooltipDrawable.class.getCanonicalName())));
        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.H6, 0);
        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.J6, 0);
        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.K6, 0);
        this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.I6, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0(@NonNull View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.M = iArr[0];
        view.getWindowVisibleDisplayFrame(this.G);
    }

    @Override // com.google.android.material.internal.e.b
    public void a() {
        invalidateSelf();
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        float fK0 = k0();
        float f2 = (float) (-((((double) this.L) * Math.sqrt(2.0d)) - ((double) this.L)));
        canvas.scale(this.N, this.O, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.Q));
        canvas.translate(fK0, f2);
        super.draw(canvas);
        o0(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.E.e().getTextSize(), this.J);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.H * 2) + p0(), this.I);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setShapeAppearanceModel(C().q().q(n0()).m());
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.e.b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    public void r0(@Nullable CharSequence charSequence) {
        if (TextUtils.equals(this.B, charSequence)) {
            return;
        }
        this.B = charSequence;
        this.E.i(true);
        invalidateSelf();
    }

    public void s0(@Nullable b bVar) {
        this.E.h(bVar, this.C);
    }
}
