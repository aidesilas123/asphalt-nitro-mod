package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R$attr;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.chip.ChipDrawable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.internal.c;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.l;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Chip extends AppCompatCheckBox implements ChipDrawable.a, l, com.google.android.material.internal.c<Chip> {
    private static final int a = R$style.q;
    private static final Rect b = new Rect();
    private static final int[] c = {R.attr.state_selected};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f3206d = {R.attr.state_checkable};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private ChipDrawable f3207e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private InsetDrawable f3208f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private RippleDrawable f3209g;

    @Nullable
    private View.OnClickListener h;

    @Nullable
    private CompoundButton.OnCheckedChangeListener i;

    @Nullable
    private c.a<Chip> j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private int p;

    @Dimension(unit = 1)
    private int q;

    @Nullable
    private CharSequence r;

    @NonNull
    private final d s;
    private boolean t;
    private final Rect u;
    private final RectF v;
    private final com.google.android.material.resources.c w;

    class a extends com.google.android.material.resources.c {
        a() {
        }

        @Override // com.google.android.material.resources.c
        public void a(int i) {
        }

        @Override // com.google.android.material.resources.c
        public void b(@NonNull Typeface typeface, boolean z) {
            Chip chip = Chip.this;
            chip.setText(chip.f3207e.J2() ? Chip.this.f3207e.f1() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    class b implements CompoundButton.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (Chip.this.j != null) {
                Chip.this.j.a(Chip.this, z);
            }
            if (Chip.this.i != null) {
                Chip.this.i.onCheckedChanged(compoundButton, z);
            }
        }
    }

    class c extends ViewOutlineProvider {
        c() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, @NonNull Outline outline) {
            if (Chip.this.f3207e != null) {
                Chip.this.f3207e.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    private class d extends ExploreByTouchHelper {
        d(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected int getVirtualViewAt(float f2, float f3) {
            return (Chip.this.o() && Chip.this.getCloseIconTouchBounds().contains(f2, f3)) ? 1 : 0;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void getVisibleVirtualViews(@NonNull List<Integer> list) {
            list.add(0);
            if (Chip.this.o() && Chip.this.t() && Chip.this.h != null) {
                list.add(1);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 != 16) {
                return false;
            }
            if (i == 0) {
                return Chip.this.performClick();
            }
            if (i == 1) {
                return Chip.this.u();
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onPopulateNodeForHost(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.s());
            accessibilityNodeInfoCompat.setClickable(Chip.this.isClickable());
            accessibilityNodeInfoCompat.setClassName(Chip.this.getAccessibilityClassName());
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                accessibilityNodeInfoCompat.setText(text);
            } else {
                accessibilityNodeInfoCompat.setContentDescription(text);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onPopulateNodeForVirtualView(int i, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (i != 1) {
                accessibilityNodeInfoCompat.setContentDescription("");
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.b);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i2 = R$string.i;
                Object[] objArr = new Object[1];
                objArr[0] = TextUtils.isEmpty(text) ? "" : text;
                accessibilityNodeInfoCompat.setContentDescription(context.getString(i2, objArr).trim());
            }
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onVirtualViewKeyboardFocusChanged(int i, boolean z) {
            if (i == 1) {
                Chip.this.n = z;
                Chip.this.refreshDrawableState();
            }
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.h);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Chip(Context context, AttributeSet attributeSet, int i) {
        int i2 = a;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.u = new Rect();
        this.v = new RectF();
        this.w = new a();
        Context context2 = getContext();
        D(attributeSet);
        ChipDrawable chipDrawableCreateFromAttributes = ChipDrawable.createFromAttributes(context2, attributeSet, i, i2);
        p(context2, attributeSet, i);
        setChipDrawable(chipDrawableCreateFromAttributes);
        chipDrawableCreateFromAttributes.W(ViewCompat.getElevation(this));
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.j0, i, i2, new int[0]);
        if (Build.VERSION.SDK_INT < 23) {
            setTextColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R$styleable.m0));
        }
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.V0);
        typedArrayObtainStyledAttributes.recycle();
        this.s = new d(this);
        y();
        if (!zHasValue) {
            q();
        }
        setChecked(this.k);
        setText(chipDrawableCreateFromAttributes.f1());
        setEllipsize(chipDrawableCreateFromAttributes.Z0());
        C();
        if (!this.f3207e.J2()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        B();
        if (w()) {
            setMinHeight(this.q);
        }
        this.p = ViewCompat.getLayoutDirection(this);
        super.setOnCheckedChangeListener(new b());
    }

    private void A() {
        this.f3209g = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.f3207e.d1()), getBackgroundDrawable(), null);
        this.f3207e.I2(false);
        ViewCompat.setBackground(this, this.f3209g);
        B();
    }

    private void B() {
        ChipDrawable chipDrawable;
        if (TextUtils.isEmpty(getText()) || (chipDrawable = this.f3207e) == null) {
            return;
        }
        int iH0 = (int) (chipDrawable.H0() + this.f3207e.h1() + this.f3207e.p0());
        int iM0 = (int) (this.f3207e.M0() + this.f3207e.i1() + this.f3207e.l0());
        if (this.f3208f != null) {
            Rect rect = new Rect();
            this.f3208f.getPadding(rect);
            iM0 += rect.left;
            iH0 += rect.right;
        }
        ViewCompat.setPaddingRelative(this, iM0, getPaddingTop(), iH0, getPaddingBottom());
    }

    private void C() {
        TextPaint paint = getPaint();
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            paint.drawableState = chipDrawable.getState();
        }
        com.google.android.material.resources.b textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.n(getContext(), paint, this.w);
        }
    }

    private void D(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public RectF getCloseIconTouchBounds() {
        this.v.setEmpty();
        if (o() && this.h != null) {
            this.f3207e.W0(this.v);
        }
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.u.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.u;
    }

    @Nullable
    private com.google.android.material.resources.b getTextAppearance() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.g1();
        }
        return null;
    }

    private void k(@NonNull ChipDrawable chipDrawable) {
        chipDrawable.n2(this);
    }

    @NonNull
    private int[] l() {
        int i = 0;
        int i2 = isEnabled() ? 1 : 0;
        if (this.n) {
            i2++;
        }
        if (this.m) {
            i2++;
        }
        if (this.l) {
            i2++;
        }
        if (isChecked()) {
            i2++;
        }
        int[] iArr = new int[i2];
        if (isEnabled()) {
            iArr[0] = 16842910;
            i = 1;
        }
        if (this.n) {
            iArr[i] = 16842908;
            i++;
        }
        if (this.m) {
            iArr[i] = 16843623;
            i++;
        }
        if (this.l) {
            iArr[i] = 16842919;
            i++;
        }
        if (isChecked()) {
            iArr[i] = 16842913;
        }
        return iArr;
    }

    private void n() {
        if (getBackgroundDrawable() == this.f3208f && this.f3207e.getCallback() == null) {
            this.f3207e.setCallback(this.f3208f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        ChipDrawable chipDrawable = this.f3207e;
        return (chipDrawable == null || chipDrawable.P0() == null) ? false : true;
    }

    private void p(Context context, @Nullable AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R$styleable.j0, i, a, new int[0]);
        this.o = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Q0, false);
        this.q = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(R$styleable.E0, (float) Math.ceil(ViewUtils.dpToPx(getContext(), 48))));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void q() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new c());
        }
    }

    private void r(int i, int i2, int i3, int i4) {
        this.f3208f = new InsetDrawable((Drawable) this.f3207e, i, i2, i3, i4);
    }

    private void setCloseIconHovered(boolean z) {
        if (this.m != z) {
            this.m = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.l != z) {
            this.l = z;
            refreshDrawableState();
        }
    }

    private void v() {
        if (this.f3208f != null) {
            this.f3208f = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            z();
        }
    }

    private void x(@Nullable ChipDrawable chipDrawable) {
        if (chipDrawable != null) {
            chipDrawable.n2(null);
        }
    }

    private void y() {
        if (o() && t() && this.h != null) {
            ViewCompat.setAccessibilityDelegate(this, this.s);
            this.t = true;
        } else {
            ViewCompat.setAccessibilityDelegate(this, null);
            this.t = false;
        }
    }

    private void z() {
        if (RippleUtils.a) {
            A();
            return;
        }
        this.f3207e.I2(true);
        ViewCompat.setBackground(this, getBackgroundDrawable());
        B();
        n();
    }

    @Override // com.google.android.material.chip.ChipDrawable.a
    public void a() {
        m(this.q);
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return !this.t ? super.dispatchHoverEvent(motionEvent) : this.s.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.t) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (!this.s.dispatchKeyEvent(keyEvent) || this.s.getKeyboardFocusedVirtualViewId() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        ChipDrawable chipDrawable = this.f3207e;
        if ((chipDrawable == null || !chipDrawable.n1()) ? false : this.f3207e.j2(l())) {
            invalidate();
        }
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.r)) {
            return this.r;
        }
        if (!s()) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).h()) ? "android.widget.RadioButton" : "android.widget.CompoundButton";
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f3208f;
        return insetDrawable == null ? this.f3207e : insetDrawable;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.D0();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.E0();
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.F0();
        }
        return null;
    }

    public float getChipCornerRadius() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return Math.max(0.0f, chipDrawable.G0());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f3207e;
    }

    public float getChipEndPadding() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.H0();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.I0();
        }
        return null;
    }

    public float getChipIconSize() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.J0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.K0();
        }
        return null;
    }

    public float getChipMinHeight() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.L0();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.M0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.N0();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.O0();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.P0();
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.Q0();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.R0();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.S0();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.T0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.V0();
        }
        return null;
    }

    @Override // android.widget.TextView
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.Z0();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(@NonNull Rect rect) {
        if (this.t && (this.s.getKeyboardFocusedVirtualViewId() == 1 || this.s.getAccessibilityFocusedVirtualViewId() == 1)) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.a1();
        }
        return null;
    }

    public float getIconEndPadding() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.b1();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.c1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.d1();
        }
        return null;
    }

    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f3207e.C();
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.e1();
        }
        return null;
    }

    public float getTextEndPadding() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.h1();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            return chipDrawable.i1();
        }
        return 0.0f;
    }

    public boolean m(@Dimension int i) {
        this.q = i;
        if (!w()) {
            if (this.f3208f != null) {
                v();
            } else {
                z();
            }
            return false;
        }
        int iMax = Math.max(0, i - this.f3207e.getIntrinsicHeight());
        int iMax2 = Math.max(0, i - this.f3207e.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.f3208f != null) {
                v();
            } else {
                z();
            }
            return false;
        }
        int i2 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i3 = iMax > 0 ? iMax / 2 : 0;
        if (this.f3208f != null) {
            Rect rect = new Rect();
            this.f3208f.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                z();
                return true;
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (getMinHeight() != i) {
                setMinHeight(i);
            }
            if (getMinWidth() != i) {
                setMinWidth(i);
            }
        } else {
            setMinHeight(i);
            setMinWidth(i);
        }
        r(i2, i3, i2, i3);
        z();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.f3207e);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(iArrOnCreateDrawableState, c);
        }
        if (s()) {
            CheckBox.mergeDrawableStates(iArrOnCreateDrawableState, f3206d);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.t) {
            this.s.onFocusChanged(z, i, rect);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(s());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(chipGroup.b(this), 1, chipGroup.c() ? chipGroup.g(this) : -1, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @Nullable
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(@NonNull MotionEvent motionEvent, int i) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.p != i) {
            this.p = i;
            B();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r0 != 3) goto L22;
     */
    @Override // android.widget.TextView, android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(@androidx.annotation.NonNull android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L39
            if (r0 == r3) goto L2b
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L34
            goto L40
        L21:
            boolean r0 = r5.l
            if (r0 == 0) goto L40
            if (r1 != 0) goto L3e
            r5.setCloseIconPressed(r2)
            goto L3e
        L2b:
            boolean r0 = r5.l
            if (r0 == 0) goto L34
            r5.u()
            r0 = 1
            goto L35
        L34:
            r0 = 0
        L35:
            r5.setCloseIconPressed(r2)
            goto L41
        L39:
            if (r1 == 0) goto L40
            r5.setCloseIconPressed(r3)
        L3e:
            r0 = 1
            goto L41
        L40:
            r0 = 0
        L41:
            if (r0 != 0) goto L49
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L4a
        L49:
            r2 = 1
        L4a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean s() {
        ChipDrawable chipDrawable = this.f3207e;
        return chipDrawable != null && chipDrawable.m1();
    }

    public void setAccessibilityClassName(@Nullable CharSequence charSequence) {
        this.r = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f3209g) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f3209g) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.v1(z);
        }
    }

    public void setCheckableResource(@BoolRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.w1(i);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable == null) {
            this.k = z;
        } else if (chipDrawable.m1()) {
            super.setChecked(z);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.x1(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.y1(i);
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.z1(colorStateList);
        }
    }

    public void setCheckedIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.A1(i);
        }
    }

    public void setCheckedIconVisible(@BoolRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.B1(i);
        }
    }

    public void setCheckedIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.C1(z);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.D1(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.E1(i);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.F1(f2);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.G1(i);
        }
    }

    public void setChipDrawable(@NonNull ChipDrawable chipDrawable) {
        ChipDrawable chipDrawable2 = this.f3207e;
        if (chipDrawable2 != chipDrawable) {
            x(chipDrawable2);
            this.f3207e = chipDrawable;
            chipDrawable.y2(false);
            k(this.f3207e);
            m(this.q);
        }
    }

    public void setChipEndPadding(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.H1(f2);
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.I1(i);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.J1(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.K1(i);
        }
    }

    public void setChipIconSize(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.L1(f2);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.M1(i);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.N1(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.O1(i);
        }
    }

    public void setChipIconVisible(@BoolRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.P1(i);
        }
    }

    public void setChipIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.Q1(z);
        }
    }

    public void setChipMinHeight(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.R1(f2);
        }
    }

    public void setChipMinHeightResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.S1(i);
        }
    }

    public void setChipStartPadding(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.T1(f2);
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.U1(i);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.V1(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.W1(i);
        }
    }

    public void setChipStrokeWidth(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.X1(f2);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.Y1(i);
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.a2(drawable);
        }
        y();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.b2(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.c2(f2);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.d2(i);
        }
    }

    public void setCloseIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.e2(i);
        }
        y();
    }

    public void setCloseIconSize(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.f2(f2);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.g2(i);
        }
    }

    public void setCloseIconStartPadding(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.h2(f2);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.i2(i);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.k2(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.l2(i);
        }
    }

    public void setCloseIconVisible(@BoolRes int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    public void setCloseIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.m2(z);
        }
        y();
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f2) {
        super.setElevation(f2);
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.W(f2);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f3207e == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.o2(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.o = z;
        m(this.q);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.p2(motionSpec);
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.q2(i);
        }
    }

    public void setIconEndPadding(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.r2(f2);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.s2(i);
        }
    }

    public void setIconStartPadding(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.t2(f2);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.u2(i);
        }
    }

    @Override // com.google.android.material.internal.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setInternalOnCheckedChangeListener(@Nullable c.a<Chip> aVar) {
        this.j = aVar;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.f3207e != null && Build.VERSION.SDK_INT >= 17) {
            super.setLayoutDirection(i);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@Px int i) {
        super.setMaxWidth(i);
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.v2(i);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.i = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.h = onClickListener;
        y();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.w2(colorStateList);
        }
        if (this.f3207e.k1()) {
            return;
        }
        A();
    }

    public void setRippleColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.x2(i);
            if (this.f3207e.k1()) {
                return;
            }
            A();
        }
    }

    @Override // com.google.android.material.shape.l
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f3207e.setShapeAppearanceModel(shapeAppearanceModel);
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.z2(motionSpec);
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.A2(i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (!z) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(chipDrawable.J2() ? null : charSequence, bufferType);
        ChipDrawable chipDrawable2 = this.f3207e;
        if (chipDrawable2 != null) {
            chipDrawable2.B2(charSequence);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.D2(i);
        }
        C();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.D2(i);
        }
        C();
    }

    public void setTextAppearance(@Nullable com.google.android.material.resources.b bVar) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.C2(bVar);
        }
        C();
    }

    public void setTextAppearanceResource(@StyleRes int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.E2(f2);
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.F2(i);
        }
    }

    public void setTextStartPadding(float f2) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.G2(f2);
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f3207e;
        if (chipDrawable != null) {
            chipDrawable.H2(i);
        }
    }

    public boolean t() {
        ChipDrawable chipDrawable = this.f3207e;
        return chipDrawable != null && chipDrawable.o1();
    }

    @CallSuper
    public boolean u() {
        boolean z = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.h;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        }
        if (this.t) {
            this.s.sendEventForVirtualView(1, 1);
        }
        return z;
    }

    public boolean w() {
        return this.o;
    }
}
