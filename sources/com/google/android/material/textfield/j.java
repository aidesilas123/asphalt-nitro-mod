package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;

/* JADX INFO: compiled from: StartCompoundLayout.java */
/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"ViewConstructor"})
class j extends LinearLayout {
    private final TextInputLayout a;
    private final TextView b;

    @Nullable
    private CharSequence c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CheckableImageButton f3446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ColorStateList f3447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PorterDuff.Mode f3448f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View.OnLongClickListener f3449g;
    private boolean h;

    j(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        this.a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R$layout.f3104f, (ViewGroup) this, false);
        this.f3446d = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.b = appCompatTextView;
        g(tintTypedArray);
        f(tintTypedArray);
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    private void f(TintTypedArray tintTypedArray) {
        this.b.setVisibility(8);
        this.b.setId(R$id.U);
        this.b.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ViewCompat.setAccessibilityLiveRegion(this.b, 1);
        l(tintTypedArray.getResourceId(R$styleable.p6, 0));
        int i = R$styleable.q6;
        if (tintTypedArray.hasValue(i)) {
            m(tintTypedArray.getColorStateList(i));
        }
        k(tintTypedArray.getText(R$styleable.o6));
    }

    private void g(TintTypedArray tintTypedArray) {
        if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
            MarginLayoutParamsCompat.setMarginEnd((ViewGroup.MarginLayoutParams) this.f3446d.getLayoutParams(), 0);
        }
        q(null);
        r(null);
        int i = R$styleable.u6;
        if (tintTypedArray.hasValue(i)) {
            this.f3447e = MaterialResources.getColorStateList(getContext(), tintTypedArray, i);
        }
        int i2 = R$styleable.v6;
        if (tintTypedArray.hasValue(i2)) {
            this.f3448f = ViewUtils.parseTintMode(tintTypedArray.getInt(i2, -1), null);
        }
        int i3 = R$styleable.t6;
        if (tintTypedArray.hasValue(i3)) {
            p(tintTypedArray.getDrawable(i3));
            int i4 = R$styleable.s6;
            if (tintTypedArray.hasValue(i4)) {
                o(tintTypedArray.getText(i4));
            }
            n(tintTypedArray.getBoolean(R$styleable.r6, true));
        }
    }

    private void x() {
        int i = (this.c == null || this.h) ? 8 : 0;
        setVisibility(this.f3446d.getVisibility() == 0 || i == 0 ? 0 : 8);
        this.b.setVisibility(i);
        this.a.q0();
    }

    @Nullable
    CharSequence a() {
        return this.c;
    }

    @Nullable
    ColorStateList b() {
        return this.b.getTextColors();
    }

    @NonNull
    TextView c() {
        return this.b;
    }

    @Nullable
    CharSequence d() {
        return this.f3446d.getContentDescription();
    }

    @Nullable
    Drawable e() {
        return this.f3446d.getDrawable();
    }

    boolean h() {
        return this.f3446d.getVisibility() == 0;
    }

    void i(boolean z) {
        this.h = z;
        x();
    }

    void j() {
        f.c(this.a, this.f3446d, this.f3447e);
    }

    void k(@Nullable CharSequence charSequence) {
        this.c = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.b.setText(charSequence);
        x();
    }

    void l(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.b, i);
    }

    void m(@NonNull ColorStateList colorStateList) {
        this.b.setTextColor(colorStateList);
    }

    void n(boolean z) {
        this.f3446d.setCheckable(z);
    }

    void o(@Nullable CharSequence charSequence) {
        if (d() != charSequence) {
            this.f3446d.setContentDescription(charSequence);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        w();
    }

    void p(@Nullable Drawable drawable) {
        this.f3446d.setImageDrawable(drawable);
        if (drawable != null) {
            f.a(this.a, this.f3446d, this.f3447e, this.f3448f);
            u(true);
            j();
        } else {
            u(false);
            q(null);
            r(null);
            o(null);
        }
    }

    void q(@Nullable View.OnClickListener onClickListener) {
        f.e(this.f3446d, onClickListener, this.f3449g);
    }

    void r(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f3449g = onLongClickListener;
        f.f(this.f3446d, onLongClickListener);
    }

    void s(@Nullable ColorStateList colorStateList) {
        if (this.f3447e != colorStateList) {
            this.f3447e = colorStateList;
            f.a(this.a, this.f3446d, colorStateList, this.f3448f);
        }
    }

    void t(@Nullable PorterDuff.Mode mode) {
        if (this.f3448f != mode) {
            this.f3448f = mode;
            f.a(this.a, this.f3446d, this.f3447e, mode);
        }
    }

    void u(boolean z) {
        if (h() != z) {
            this.f3446d.setVisibility(z ? 0 : 8);
            w();
            x();
        }
    }

    void v(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.b.getVisibility() != 0) {
            accessibilityNodeInfoCompat.setTraversalAfter(this.f3446d);
        } else {
            accessibilityNodeInfoCompat.setLabelFor(this.b);
            accessibilityNodeInfoCompat.setTraversalAfter(this.b);
        }
    }

    void w() {
        EditText editText = this.a.f3426f;
        if (editText == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.b, h() ? 0 : ViewCompat.getPaddingStart(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R$dimen.B), editText.getCompoundPaddingBottom());
    }
}
