package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.resources.MaterialResources;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: IndicatorViewController.java */
/* JADX INFO: loaded from: classes3.dex */
final class g {
    private final Context a;

    @NonNull
    private final TextInputLayout b;
    private LinearLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3437d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FrameLayout f3438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private Animator f3439f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f3440g;
    private int h;
    private int i;

    @Nullable
    private CharSequence j;
    private boolean k;

    @Nullable
    private TextView l;

    @Nullable
    private CharSequence m;
    private int n;

    @Nullable
    private ColorStateList o;
    private CharSequence p;
    private boolean q;

    @Nullable
    private TextView r;
    private int s;

    @Nullable
    private ColorStateList t;
    private Typeface u;

    /* JADX INFO: compiled from: IndicatorViewController.java */
    class a extends AnimatorListenerAdapter {
        final /* synthetic */ int a;
        final /* synthetic */ TextView b;
        final /* synthetic */ int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ TextView f3441d;

        a(int i, TextView textView, int i2, TextView textView2) {
            this.a = i;
            this.b = textView;
            this.c = i2;
            this.f3441d = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            g.this.h = this.a;
            g.this.f3439f = null;
            TextView textView = this.b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.c == 1 && g.this.l != null) {
                    g.this.l.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f3441d;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f3441d.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f3441d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    /* JADX INFO: compiled from: IndicatorViewController.java */
    class b extends View.AccessibilityDelegate {
        b() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            EditText editText = g.this.b.getEditText();
            if (editText != null) {
                accessibilityNodeInfo.setLabeledBy(editText);
            }
        }
    }

    public g(@NonNull TextInputLayout textInputLayout) {
        this.a = textInputLayout.getContext();
        this.b = textInputLayout;
        this.f3440g = r0.getResources().getDimensionPixelSize(R$dimen.h);
    }

    private void C(int i, int i2) {
        TextView textViewM;
        TextView textViewM2;
        if (i == i2) {
            return;
        }
        if (i2 != 0 && (textViewM2 = m(i2)) != null) {
            textViewM2.setVisibility(0);
            textViewM2.setAlpha(1.0f);
        }
        if (i != 0 && (textViewM = m(i)) != null) {
            textViewM.setVisibility(4);
            if (i == 1) {
                textViewM.setText((CharSequence) null);
            }
        }
        this.h = i2;
    }

    private void K(@Nullable TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    private void M(@NonNull ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    private boolean N(@Nullable TextView textView, @NonNull CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.b) && this.b.isEnabled() && !(this.i == this.h && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private void Q(int i, int i2, boolean z) {
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f3439f = animatorSet;
            ArrayList arrayList = new ArrayList();
            i(arrayList, this.q, this.r, 2, i, i2);
            i(arrayList, this.k, this.l, 1, i, i2);
            AnimatorSetCompat.playTogether(animatorSet, arrayList);
            animatorSet.addListener(new a(i2, m(i), i, m(i2)));
            animatorSet.start();
        } else {
            C(i, i2);
        }
        this.b.r0();
        this.b.w0(z);
        this.b.E0();
    }

    private boolean g() {
        return (this.c == null || this.b.getEditText() == null) ? false : true;
    }

    private void i(@NonNull List<Animator> list, boolean z, @Nullable TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i == i3 || i == i2) {
            list.add(j(textView, i3 == i));
            if (i3 == i) {
                list.add(k(textView));
            }
        }
    }

    private ObjectAnimator j(TextView textView, boolean z) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z ? 1.0f : 0.0f);
        objectAnimatorOfFloat.setDuration(167L);
        objectAnimatorOfFloat.setInterpolator(AnimationUtils.a);
        return objectAnimatorOfFloat;
    }

    private ObjectAnimator k(TextView textView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f3440g, 0.0f);
        objectAnimatorOfFloat.setDuration(217L);
        objectAnimatorOfFloat.setInterpolator(AnimationUtils.f3118d);
        return objectAnimatorOfFloat;
    }

    @Nullable
    private TextView m(int i) {
        if (i == 1) {
            return this.l;
        }
        if (i != 2) {
            return null;
        }
        return this.r;
    }

    private int u(boolean z, @DimenRes int i, int i2) {
        return z ? this.a.getResources().getDimensionPixelSize(i) : i2;
    }

    private boolean x(int i) {
        return (i != 1 || this.l == null || TextUtils.isEmpty(this.j)) ? false : true;
    }

    boolean A() {
        return this.q;
    }

    void B(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.c == null) {
            return;
        }
        if (!y(i) || (frameLayout = this.f3438e) == null) {
            this.c.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i2 = this.f3437d - 1;
        this.f3437d = i2;
        M(this.c, i2);
    }

    void D(@Nullable CharSequence charSequence) {
        this.m = charSequence;
        TextView textView = this.l;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    void E(boolean z) {
        if (this.k == z) {
            return;
        }
        h();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.a);
            this.l = appCompatTextView;
            appCompatTextView.setId(R$id.R);
            if (Build.VERSION.SDK_INT >= 17) {
                this.l.setTextAlignment(5);
            }
            Typeface typeface = this.u;
            if (typeface != null) {
                this.l.setTypeface(typeface);
            }
            F(this.n);
            G(this.o);
            D(this.m);
            this.l.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.l, 1);
            e(this.l, 0);
        } else {
            v();
            B(this.l, 0);
            this.l = null;
            this.b.r0();
            this.b.E0();
        }
        this.k = z;
    }

    void F(@StyleRes int i) {
        this.n = i;
        TextView textView = this.l;
        if (textView != null) {
            this.b.d0(textView, i);
        }
    }

    void G(@Nullable ColorStateList colorStateList) {
        this.o = colorStateList;
        TextView textView = this.l;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void H(@StyleRes int i) {
        this.s = i;
        TextView textView = this.r;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i);
        }
    }

    void I(boolean z) {
        if (this.q == z) {
            return;
        }
        h();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.a);
            this.r = appCompatTextView;
            appCompatTextView.setId(R$id.S);
            int i = Build.VERSION.SDK_INT;
            if (i >= 17) {
                this.r.setTextAlignment(5);
            }
            Typeface typeface = this.u;
            if (typeface != null) {
                this.r.setTypeface(typeface);
            }
            this.r.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.r, 1);
            H(this.s);
            J(this.t);
            e(this.r, 1);
            if (i >= 17) {
                this.r.setAccessibilityDelegate(new b());
            }
        } else {
            w();
            B(this.r, 1);
            this.r = null;
            this.b.r0();
            this.b.E0();
        }
        this.q = z;
    }

    void J(@Nullable ColorStateList colorStateList) {
        this.t = colorStateList;
        TextView textView = this.r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void L(Typeface typeface) {
        if (typeface != this.u) {
            this.u = typeface;
            K(this.l, typeface);
            K(this.r, typeface);
        }
    }

    void O(CharSequence charSequence) {
        h();
        this.j = charSequence;
        this.l.setText(charSequence);
        int i = this.h;
        if (i != 1) {
            this.i = 1;
        }
        Q(i, this.i, N(this.l, charSequence));
    }

    void P(CharSequence charSequence) {
        h();
        this.p = charSequence;
        this.r.setText(charSequence);
        int i = this.h;
        if (i != 2) {
            this.i = 2;
        }
        Q(i, this.i, N(this.r, charSequence));
    }

    void e(TextView textView, int i) {
        if (this.c == null && this.f3438e == null) {
            LinearLayout linearLayout = new LinearLayout(this.a);
            this.c = linearLayout;
            linearLayout.setOrientation(0);
            this.b.addView(this.c, -1, -2);
            this.f3438e = new FrameLayout(this.a);
            this.c.addView(this.f3438e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.b.getEditText() != null) {
                f();
            }
        }
        if (y(i)) {
            this.f3438e.setVisibility(0);
            this.f3438e.addView(textView);
        } else {
            this.c.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.c.setVisibility(0);
        this.f3437d++;
    }

    void f() {
        if (g()) {
            EditText editText = this.b.getEditText();
            boolean zIsFontScaleAtLeast1_3 = MaterialResources.isFontScaleAtLeast1_3(this.a);
            LinearLayout linearLayout = this.c;
            int i = R$dimen.z;
            ViewCompat.setPaddingRelative(linearLayout, u(zIsFontScaleAtLeast1_3, i, ViewCompat.getPaddingStart(editText)), u(zIsFontScaleAtLeast1_3, R$dimen.A, this.a.getResources().getDimensionPixelSize(R$dimen.y)), u(zIsFontScaleAtLeast1_3, i, ViewCompat.getPaddingEnd(editText)), 0);
        }
    }

    void h() {
        Animator animator = this.f3439f;
        if (animator != null) {
            animator.cancel();
        }
    }

    boolean l() {
        return x(this.i);
    }

    @Nullable
    CharSequence n() {
        return this.m;
    }

    @Nullable
    CharSequence o() {
        return this.j;
    }

    @ColorInt
    int p() {
        TextView textView = this.l;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    @Nullable
    ColorStateList q() {
        TextView textView = this.l;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    CharSequence r() {
        return this.p;
    }

    @Nullable
    View s() {
        return this.r;
    }

    @ColorInt
    int t() {
        TextView textView = this.r;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    void v() {
        this.j = null;
        h();
        if (this.h == 1) {
            if (!this.q || TextUtils.isEmpty(this.p)) {
                this.i = 0;
            } else {
                this.i = 2;
            }
        }
        Q(this.h, this.i, N(this.l, ""));
    }

    void w() {
        h();
        int i = this.h;
        if (i == 2) {
            this.i = 0;
        }
        Q(i, this.i, N(this.r, ""));
    }

    boolean y(int i) {
        return i == 0 || i == 1;
    }

    boolean z() {
        return this.k;
    }
}
