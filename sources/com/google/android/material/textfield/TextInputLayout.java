package com.google.android.material.textfield;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes3.dex */
public class TextInputLayout extends LinearLayout {
    private static final int a = R$style.k;

    @Nullable
    private ColorStateList A;

    @ColorInt
    private int A0;

    @Nullable
    private CharSequence B;
    private ColorStateList B0;

    @NonNull
    private final TextView C;

    @ColorInt
    private int C0;
    private boolean D;

    @ColorInt
    private int D0;
    private CharSequence E;

    @ColorInt
    private int E0;
    private boolean F;

    @ColorInt
    private int F0;

    @Nullable
    private MaterialShapeDrawable G;

    @ColorInt
    private int G0;

    @Nullable
    private MaterialShapeDrawable H;
    private boolean H0;

    @Nullable
    private MaterialShapeDrawable I;
    final com.google.android.material.internal.b I0;

    @NonNull
    private ShapeAppearanceModel J;
    private boolean J0;
    private boolean K;
    private boolean K0;
    private final int L;
    private ValueAnimator L0;
    private int M;
    private boolean M0;
    private int N;
    private boolean N0;
    private int O;
    private int P;
    private int Q;

    @ColorInt
    private int R;

    @ColorInt
    private int S;
    private final Rect T;
    private final Rect U;
    private final RectF V;
    private Typeface W;

    @Nullable
    private Drawable a0;

    @NonNull
    private final FrameLayout b;
    private int b0;

    @NonNull
    private final j c;
    private final LinkedHashSet<f> c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final LinearLayout f3424d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final FrameLayout f3425e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    EditText f3426f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CharSequence f3427g;
    private int h;
    private int i;
    private int i0;
    private int j;
    private final SparseArray<com.google.android.material.textfield.e> j0;
    private int k;

    @NonNull
    private final CheckableImageButton k0;
    private final com.google.android.material.textfield.g l;
    private final LinkedHashSet<g> l0;
    boolean m;
    private ColorStateList m0;
    private int n;
    private PorterDuff.Mode n0;
    private boolean o;

    @Nullable
    private Drawable o0;

    @Nullable
    private TextView p;
    private int p0;
    private int q;
    private Drawable q0;
    private int r;
    private View.OnLongClickListener r0;
    private CharSequence s;
    private View.OnLongClickListener s0;
    private boolean t;

    @NonNull
    private final CheckableImageButton t0;
    private TextView u;
    private ColorStateList u0;

    @Nullable
    private ColorStateList v;
    private PorterDuff.Mode v0;
    private int w;
    private ColorStateList w0;

    @Nullable
    private Fade x;
    private ColorStateList x0;

    @Nullable
    private Fade y;

    @ColorInt
    private int y0;

    @Nullable
    private ColorStateList z;

    @ColorInt
    private int z0;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        @Nullable
        CharSequence a;
        boolean b;

        @Nullable
        CharSequence c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        CharSequence f3428d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        CharSequence f3429e;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.b = parcel.readInt() == 1;
            this.c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f3428d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f3429e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.a) + " hint=" + ((Object) this.c) + " helperText=" + ((Object) this.f3428d) + " placeholderText=" + ((Object) this.f3429e) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.a, parcel, i);
            parcel.writeInt(this.b ? 1 : 0);
            TextUtils.writeToParcel(this.c, parcel, i);
            TextUtils.writeToParcel(this.f3428d, parcel, i);
            TextUtils.writeToParcel(this.f3429e, parcel, i);
        }
    }

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NonNull Editable editable) {
            TextInputLayout.this.w0(!r0.N0);
            TextInputLayout textInputLayout = TextInputLayout.this;
            if (textInputLayout.m) {
                textInputLayout.m0(editable.length());
            }
            if (TextInputLayout.this.t) {
                TextInputLayout.this.A0(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.k0.performClick();
            TextInputLayout.this.k0.jumpDrawablesToCurrentState();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f3426f.requestLayout();
        }
    }

    class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TextInputLayout.this.I0.d0(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class e extends AccessibilityDelegateCompat {
        private final TextInputLayout a;

        public e(@NonNull TextInputLayout textInputLayout) {
            this.a = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            View viewS;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.a.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.a.getHint();
            CharSequence error = this.a.getError();
            CharSequence placeholderText = this.a.getPlaceholderText();
            int counterMaxLength = this.a.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.a.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(hint);
            boolean z3 = !this.a.N();
            boolean z4 = !TextUtils.isEmpty(error);
            boolean z5 = z4 || !TextUtils.isEmpty(counterOverflowDescription);
            String string = z2 ? hint.toString() : "";
            this.a.c.v(accessibilityNodeInfoCompat);
            if (z) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (!TextUtils.isEmpty(string)) {
                accessibilityNodeInfoCompat.setText(string);
                if (z3 && placeholderText != null) {
                    accessibilityNodeInfoCompat.setText(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.setHintText(string);
                } else {
                    if (z) {
                        string = ((Object) text) + ", " + string;
                    }
                    accessibilityNodeInfoCompat.setText(string);
                }
                accessibilityNodeInfoCompat.setShowingHintText(!z);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfoCompat.setMaxTextLength(counterMaxLength);
            if (z5) {
                if (!z4) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.setError(error);
            }
            if (Build.VERSION.SDK_INT < 17 || (viewS = this.a.l.s()) == null) {
                return;
            }
            accessibilityNodeInfoCompat.setLabelFor(viewS);
        }
    }

    public interface f {
        void a(@NonNull TextInputLayout textInputLayout);
    }

    public interface g {
        void a(@NonNull TextInputLayout textInputLayout, int i);
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.W);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v116 */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53, types: [boolean, int] */
    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2;
        ?? r2;
        boolean z;
        int resourceId;
        int i3 = a;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i3), attributeSet, i);
        this.h = -1;
        this.i = -1;
        this.j = -1;
        this.k = -1;
        this.l = new com.google.android.material.textfield.g(this);
        this.T = new Rect();
        this.U = new Rect();
        this.V = new RectF();
        this.c0 = new LinkedHashSet<>();
        this.i0 = 0;
        this.j0 = new SparseArray<>();
        this.l0 = new LinkedHashSet<>();
        com.google.android.material.internal.b bVar = new com.google.android.material.internal.b(this);
        this.I0 = bVar;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.b = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.f3425e = frameLayout2;
        LinearLayout linearLayout = new LinearLayout(context2);
        this.f3424d = linearLayout;
        AppCompatTextView appCompatTextView = new AppCompatTextView(context2);
        this.C = appCompatTextView;
        linearLayout.setVisibility(8);
        frameLayout2.setVisibility(8);
        appCompatTextView.setVisibility(8);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context2);
        int i4 = R$layout.f3103e;
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflaterFrom.inflate(i4, (ViewGroup) linearLayout, false);
        this.t0 = checkableImageButton;
        this.k0 = (CheckableImageButton) layoutInflaterFrom.inflate(i4, (ViewGroup) frameLayout2, false);
        frameLayout.setAddStatesFromChildren(true);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.END));
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        TimeInterpolator timeInterpolator = AnimationUtils.a;
        bVar.i0(timeInterpolator);
        bVar.f0(timeInterpolator);
        bVar.S(8388659);
        int[] iArr = R$styleable.l5;
        int i5 = R$styleable.I5;
        int i6 = R$styleable.G5;
        int i7 = R$styleable.V5;
        int i8 = R$styleable.a6;
        int i9 = R$styleable.e6;
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, iArr, i, i3, i5, i6, i7, i8, i9);
        this.c = new j(this, tintTypedArrayObtainTintedStyledAttributes);
        this.D = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R$styleable.d6, true);
        setHint(tintTypedArrayObtainTintedStyledAttributes.getText(R$styleable.q5));
        this.K0 = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R$styleable.c6, true);
        this.J0 = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R$styleable.X5, true);
        int i10 = R$styleable.s5;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i10)) {
            setMinEms(tintTypedArrayObtainTintedStyledAttributes.getInt(i10, -1));
        } else {
            int i11 = R$styleable.p5;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i11)) {
                setMinWidth(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(i11, -1));
            }
        }
        int i12 = R$styleable.r5;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i12)) {
            setMaxEms(tintTypedArrayObtainTintedStyledAttributes.getInt(i12, -1));
        } else {
            int i13 = R$styleable.o5;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i13)) {
                setMaxWidth(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(i13, -1));
            }
        }
        this.J = ShapeAppearanceModel.builder(context2, attributeSet, i, i3).m();
        this.L = context2.getResources().getDimensionPixelOffset(R$dimen.h0);
        this.N = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelOffset(R$styleable.v5, 0);
        this.P = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(R$styleable.C5, context2.getResources().getDimensionPixelSize(R$dimen.i0));
        this.Q = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(R$styleable.D5, context2.getResources().getDimensionPixelSize(R$dimen.j0));
        this.O = this.P;
        float dimension = tintTypedArrayObtainTintedStyledAttributes.getDimension(R$styleable.z5, -1.0f);
        float dimension2 = tintTypedArrayObtainTintedStyledAttributes.getDimension(R$styleable.y5, -1.0f);
        float dimension3 = tintTypedArrayObtainTintedStyledAttributes.getDimension(R$styleable.w5, -1.0f);
        float dimension4 = tintTypedArrayObtainTintedStyledAttributes.getDimension(R$styleable.x5, -1.0f);
        ShapeAppearanceModel.b bVarQ = this.J.q();
        if (dimension >= 0.0f) {
            bVarQ.B(dimension);
        }
        if (dimension2 >= 0.0f) {
            bVarQ.F(dimension2);
        }
        if (dimension3 >= 0.0f) {
            bVarQ.x(dimension3);
        }
        if (dimension4 >= 0.0f) {
            bVarQ.t(dimension4);
        }
        this.J = bVarQ.m();
        ColorStateList colorStateList = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, R$styleable.t5);
        if (colorStateList != null) {
            int defaultColor = colorStateList.getDefaultColor();
            this.C0 = defaultColor;
            this.S = defaultColor;
            if (colorStateList.isStateful()) {
                this.D0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
                i2 = 2;
                this.E0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.F0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                i2 = 2;
                this.E0 = this.C0;
                ColorStateList colorStateList2 = AppCompatResources.getColorStateList(context2, R$color.c);
                this.D0 = colorStateList2.getColorForState(new int[]{-16842910}, -1);
                this.F0 = colorStateList2.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            i2 = 2;
            this.S = 0;
            this.C0 = 0;
            this.D0 = 0;
            this.E0 = 0;
            this.F0 = 0;
        }
        int i14 = R$styleable.n5;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i14)) {
            ColorStateList colorStateList3 = tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i14);
            this.x0 = colorStateList3;
            this.w0 = colorStateList3;
        }
        int i15 = R$styleable.A5;
        ColorStateList colorStateList4 = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, i15);
        this.A0 = tintTypedArrayObtainTintedStyledAttributes.getColor(i15, 0);
        this.y0 = ContextCompat.getColor(context2, R$color.f3087d);
        this.G0 = ContextCompat.getColor(context2, R$color.f3088e);
        this.z0 = ContextCompat.getColor(context2, R$color.f3089f);
        if (colorStateList4 != null) {
            setBoxStrokeColorStateList(colorStateList4);
        }
        int i16 = R$styleable.B5;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i16)) {
            setBoxStrokeErrorColor(MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, i16));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.getResourceId(i9, -1) != -1) {
            r2 = 0;
            setHintTextAppearance(tintTypedArrayObtainTintedStyledAttributes.getResourceId(i9, 0));
        } else {
            r2 = 0;
        }
        int resourceId2 = tintTypedArrayObtainTintedStyledAttributes.getResourceId(i7, r2);
        CharSequence text = tintTypedArrayObtainTintedStyledAttributes.getText(R$styleable.Q5);
        boolean z2 = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R$styleable.R5, r2);
        checkableImageButton.setId(R$id.P);
        if (MaterialResources.isFontScaleAtLeast1_3(context2)) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), r2);
        }
        int i17 = R$styleable.T5;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i17)) {
            this.u0 = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, i17);
        }
        int i18 = R$styleable.U5;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i18)) {
            this.v0 = ViewUtils.parseTintMode(tintTypedArrayObtainTintedStyledAttributes.getInt(i18, -1), null);
        }
        int i19 = R$styleable.S5;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i19)) {
            setErrorIconDrawable(tintTypedArrayObtainTintedStyledAttributes.getDrawable(i19));
        }
        checkableImageButton.setContentDescription(getResources().getText(R$string.f3108f));
        ViewCompat.setImportantForAccessibility(checkableImageButton, i2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int resourceId3 = tintTypedArrayObtainTintedStyledAttributes.getResourceId(i8, 0);
        boolean z3 = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R$styleable.Z5, false);
        CharSequence text2 = tintTypedArrayObtainTintedStyledAttributes.getText(R$styleable.Y5);
        int resourceId4 = tintTypedArrayObtainTintedStyledAttributes.getResourceId(R$styleable.m6, 0);
        CharSequence text3 = tintTypedArrayObtainTintedStyledAttributes.getText(R$styleable.l6);
        int resourceId5 = tintTypedArrayObtainTintedStyledAttributes.getResourceId(R$styleable.x6, 0);
        CharSequence text4 = tintTypedArrayObtainTintedStyledAttributes.getText(R$styleable.w6);
        boolean z4 = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R$styleable.E5, false);
        setCounterMaxLength(tintTypedArrayObtainTintedStyledAttributes.getInt(R$styleable.F5, -1));
        this.r = tintTypedArrayObtainTintedStyledAttributes.getResourceId(i5, 0);
        this.q = tintTypedArrayObtainTintedStyledAttributes.getResourceId(i6, 0);
        setBoxBackgroundMode(tintTypedArrayObtainTintedStyledAttributes.getInt(R$styleable.u5, 0));
        if (MaterialResources.isFontScaleAtLeast1_3(context2)) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.k0.getLayoutParams(), 0);
        }
        int resourceId6 = tintTypedArrayObtainTintedStyledAttributes.getResourceId(R$styleable.M5, 0);
        this.j0.append(-1, new com.google.android.material.textfield.b(this, resourceId6));
        this.j0.append(0, new h(this));
        SparseArray<com.google.android.material.textfield.e> sparseArray = this.j0;
        if (resourceId6 == 0) {
            z = z4;
            resourceId = tintTypedArrayObtainTintedStyledAttributes.getResourceId(R$styleable.h6, 0);
        } else {
            z = z4;
            resourceId = resourceId6;
        }
        sparseArray.append(1, new i(this, resourceId));
        this.j0.append(2, new com.google.android.material.textfield.a(this, resourceId6));
        this.j0.append(3, new com.google.android.material.textfield.d(this, resourceId6));
        int i20 = R$styleable.i6;
        if (!tintTypedArrayObtainTintedStyledAttributes.hasValue(i20)) {
            int i21 = R$styleable.O5;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i21)) {
                this.m0 = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, i21);
            }
            int i22 = R$styleable.P5;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i22)) {
                this.n0 = ViewUtils.parseTintMode(tintTypedArrayObtainTintedStyledAttributes.getInt(i22, -1), null);
            }
        }
        int i23 = R$styleable.N5;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i23)) {
            setEndIconMode(tintTypedArrayObtainTintedStyledAttributes.getInt(i23, 0));
            int i24 = R$styleable.L5;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i24)) {
                setEndIconContentDescription(tintTypedArrayObtainTintedStyledAttributes.getText(i24));
            }
            setEndIconCheckable(tintTypedArrayObtainTintedStyledAttributes.getBoolean(R$styleable.K5, true));
        } else if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i20)) {
            int i25 = R$styleable.j6;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i25)) {
                this.m0 = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, i25);
            }
            int i26 = R$styleable.k6;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i26)) {
                this.n0 = ViewUtils.parseTintMode(tintTypedArrayObtainTintedStyledAttributes.getInt(i26, -1), null);
            }
            setEndIconMode(tintTypedArrayObtainTintedStyledAttributes.getBoolean(i20, false) ? 1 : 0);
            setEndIconContentDescription(tintTypedArrayObtainTintedStyledAttributes.getText(R$styleable.g6));
        }
        this.C.setId(R$id.V);
        this.C.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        ViewCompat.setAccessibilityLiveRegion(this.C, 1);
        setErrorContentDescription(text);
        setCounterOverflowTextAppearance(this.q);
        setHelperTextTextAppearance(resourceId3);
        setErrorTextAppearance(resourceId2);
        setCounterTextAppearance(this.r);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId4);
        setSuffixTextAppearance(resourceId5);
        int i27 = R$styleable.W5;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i27)) {
            setErrorTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i27));
        }
        int i28 = R$styleable.b6;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i28)) {
            setHelperTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i28));
        }
        int i29 = R$styleable.f6;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i29)) {
            setHintTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i29));
        }
        int i30 = R$styleable.J5;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i30)) {
            setCounterTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i30));
        }
        int i31 = R$styleable.H5;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i31)) {
            setCounterOverflowTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i31));
        }
        int i32 = R$styleable.n6;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i32)) {
            setPlaceholderTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i32));
        }
        int i33 = R$styleable.y6;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i33)) {
            setSuffixTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i33));
        }
        setEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(R$styleable.m5, true));
        tintTypedArrayObtainTintedStyledAttributes.recycle();
        ViewCompat.setImportantForAccessibility(this, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            ViewCompat.setImportantForAutofill(this, 1);
        }
        this.f3425e.addView(this.k0);
        this.f3424d.addView(this.C);
        this.f3424d.addView(this.t0);
        this.f3424d.addView(this.f3425e);
        this.b.addView(this.c);
        this.b.addView(this.f3424d);
        addView(this.b);
        setHelperTextEnabled(z3);
        setErrorEnabled(z2);
        setCounterEnabled(z);
        setHelperText(text2);
        setSuffixText(text4);
    }

    private boolean A() {
        return this.D && !TextUtils.isEmpty(this.E) && (this.G instanceof com.google.android.material.textfield.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0(int i) {
        if (i != 0 || this.H0) {
            J();
        } else {
            h0();
        }
    }

    private void B() {
        Iterator<f> it = this.c0.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    private void B0(boolean z, boolean z2) {
        int defaultColor = this.B0.getDefaultColor();
        int colorForState = this.B0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.B0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.R = colorForState2;
        } else if (z2) {
            this.R = colorForState;
        } else {
            this.R = defaultColor;
        }
    }

    private void C(int i) {
        Iterator<g> it = this.l0.iterator();
        while (it.hasNext()) {
            it.next().a(this, i);
        }
    }

    private void C0() {
        if (this.f3426f == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.C, getContext().getResources().getDimensionPixelSize(R$dimen.B), this.f3426f.getPaddingTop(), (K() || L()) ? 0 : ViewCompat.getPaddingEnd(this.f3426f), this.f3426f.getPaddingBottom());
    }

    private void D(Canvas canvas) {
        MaterialShapeDrawable materialShapeDrawable;
        if (this.I == null || (materialShapeDrawable = this.H) == null) {
            return;
        }
        materialShapeDrawable.draw(canvas);
        if (this.f3426f.isFocused()) {
            Rect bounds = this.I.getBounds();
            Rect bounds2 = this.H.getBounds();
            float fX = this.I0.x();
            int iCenterX = bounds2.centerX();
            bounds.left = AnimationUtils.lerp(iCenterX, bounds2.left, fX);
            bounds.right = AnimationUtils.lerp(iCenterX, bounds2.right, fX);
            this.I.draw(canvas);
        }
    }

    private void D0() {
        int visibility = this.C.getVisibility();
        int i = (this.B == null || N()) ? 8 : 0;
        if (visibility != i) {
            getEndIconDelegate().c(i == 0);
        }
        t0();
        this.C.setVisibility(i);
        q0();
    }

    private void E(@NonNull Canvas canvas) {
        if (this.D) {
            this.I0.l(canvas);
        }
    }

    private void F(boolean z) {
        ValueAnimator valueAnimator = this.L0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.L0.cancel();
        }
        if (z && this.K0) {
            k(0.0f);
        } else {
            this.I0.d0(0.0f);
        }
        if (A() && ((com.google.android.material.textfield.c) this.G).j0()) {
            x();
        }
        this.H0 = true;
        J();
        this.c.i(true);
        D0();
    }

    private int G(int i, boolean z) {
        int compoundPaddingLeft = i + this.f3426f.getCompoundPaddingLeft();
        return (getPrefixText() == null || z) ? compoundPaddingLeft : (compoundPaddingLeft - getPrefixTextView().getMeasuredWidth()) + getPrefixTextView().getPaddingLeft();
    }

    private int H(int i, boolean z) {
        int compoundPaddingRight = i - this.f3426f.getCompoundPaddingRight();
        return (getPrefixText() == null || !z) ? compoundPaddingRight : compoundPaddingRight + (getPrefixTextView().getMeasuredWidth() - getPrefixTextView().getPaddingRight());
    }

    private boolean I() {
        return this.i0 != 0;
    }

    private void J() {
        TextView textView = this.u;
        if (textView == null || !this.t) {
            return;
        }
        textView.setText((CharSequence) null);
        TransitionManager.beginDelayedTransition(this.b, this.y);
        this.u.setVisibility(4);
    }

    private boolean L() {
        return this.t0.getVisibility() == 0;
    }

    private boolean P() {
        return this.M == 1 && (Build.VERSION.SDK_INT < 16 || this.f3426f.getMinLines() <= 1);
    }

    private void Q() {
        o();
        Z();
        E0();
        j0();
        j();
        if (this.M != 0) {
            v0();
        }
    }

    private void R() {
        if (A()) {
            RectF rectF = this.V;
            this.I0.o(rectF, this.f3426f.getWidth(), this.f3426f.getGravity());
            n(rectF);
            rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.O);
            ((com.google.android.material.textfield.c) this.G).m0(rectF);
        }
    }

    private void S() {
        if (!A() || this.H0) {
            return;
        }
        x();
        R();
    }

    private static void T(@NonNull ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                T((ViewGroup) childAt, z);
            }
        }
    }

    private void X() {
        TextView textView = this.u;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    private void Z() {
        if (g0()) {
            ViewCompat.setBackground(this.f3426f, this.G);
        }
    }

    private static void a0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        boolean zHasOnClickListeners = ViewCompat.hasOnClickListeners(checkableImageButton);
        boolean z = onLongClickListener != null;
        boolean z2 = zHasOnClickListeners || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(zHasOnClickListeners);
        checkableImageButton.setPressable(zHasOnClickListeners);
        checkableImageButton.setLongClickable(z);
        ViewCompat.setImportantForAccessibility(checkableImageButton, z2 ? 1 : 2);
    }

    private static void b0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnClickListener onClickListener, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        a0(checkableImageButton, onLongClickListener);
    }

    private static void c0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        a0(checkableImageButton, onLongClickListener);
    }

    private boolean e0() {
        return (this.t0.getVisibility() == 0 || ((I() && K()) || this.B != null)) && this.f3424d.getMeasuredWidth() > 0;
    }

    private boolean f0() {
        return (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) && this.c.getMeasuredWidth() > 0;
    }

    private boolean g0() {
        EditText editText = this.f3426f;
        return (editText == null || this.G == null || editText.getBackground() != null || this.M == 0) ? false : true;
    }

    private com.google.android.material.textfield.e getEndIconDelegate() {
        com.google.android.material.textfield.e eVar = this.j0.get(this.i0);
        return eVar != null ? eVar : this.j0.get(0);
    }

    @Nullable
    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.t0.getVisibility() == 0) {
            return this.t0;
        }
        if (I() && K()) {
            return this.k0;
        }
        return null;
    }

    private void h0() {
        if (this.u == null || !this.t || TextUtils.isEmpty(this.s)) {
            return;
        }
        this.u.setText(this.s);
        TransitionManager.beginDelayedTransition(this.b, this.x);
        this.u.setVisibility(0);
        this.u.bringToFront();
        if (Build.VERSION.SDK_INT >= 16) {
            announceForAccessibility(this.s);
        }
    }

    private void i() {
        TextView textView = this.u;
        if (textView != null) {
            this.b.addView(textView);
            this.u.setVisibility(0);
        }
    }

    private void i0(boolean z) {
        if (!z || getEndIconDrawable() == null) {
            com.google.android.material.textfield.f.a(this, this.k0, this.m0, this.n0);
            return;
        }
        Drawable drawableMutate = DrawableCompat.wrap(getEndIconDrawable()).mutate();
        DrawableCompat.setTint(drawableMutate, this.l.p());
        this.k0.setImageDrawable(drawableMutate);
    }

    private void j() {
        if (this.f3426f == null || this.M != 1) {
            return;
        }
        if (MaterialResources.isFontScaleAtLeast2_0(getContext())) {
            EditText editText = this.f3426f;
            ViewCompat.setPaddingRelative(editText, ViewCompat.getPaddingStart(editText), getResources().getDimensionPixelSize(R$dimen.v), ViewCompat.getPaddingEnd(this.f3426f), getResources().getDimensionPixelSize(R$dimen.u));
        } else if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
            EditText editText2 = this.f3426f;
            ViewCompat.setPaddingRelative(editText2, ViewCompat.getPaddingStart(editText2), getResources().getDimensionPixelSize(R$dimen.t), ViewCompat.getPaddingEnd(this.f3426f), getResources().getDimensionPixelSize(R$dimen.s));
        }
    }

    private void j0() {
        if (this.M == 1) {
            if (MaterialResources.isFontScaleAtLeast2_0(getContext())) {
                this.N = getResources().getDimensionPixelSize(R$dimen.x);
            } else if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
                this.N = getResources().getDimensionPixelSize(R$dimen.w);
            }
        }
    }

    private void k0(@NonNull Rect rect) {
        MaterialShapeDrawable materialShapeDrawable = this.H;
        if (materialShapeDrawable != null) {
            int i = rect.bottom;
            materialShapeDrawable.setBounds(rect.left, i - this.P, rect.right, i);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.I;
        if (materialShapeDrawable2 != null) {
            int i2 = rect.bottom;
            materialShapeDrawable2.setBounds(rect.left, i2 - this.Q, rect.right, i2);
        }
    }

    private void l() {
        MaterialShapeDrawable materialShapeDrawable = this.G;
        if (materialShapeDrawable == null) {
            return;
        }
        ShapeAppearanceModel shapeAppearanceModelC = materialShapeDrawable.C();
        ShapeAppearanceModel shapeAppearanceModel = this.J;
        if (shapeAppearanceModelC != shapeAppearanceModel) {
            this.G.setShapeAppearanceModel(shapeAppearanceModel);
            p0();
        }
        if (v()) {
            this.G.c0(this.O, this.R);
        }
        int iP = p();
        this.S = iP;
        this.G.X(ColorStateList.valueOf(iP));
        if (this.i0 == 3) {
            this.f3426f.getBackground().invalidateSelf();
        }
        m();
        invalidate();
    }

    private void l0() {
        if (this.p != null) {
            EditText editText = this.f3426f;
            m0(editText == null ? 0 : editText.getText().length());
        }
    }

    private void m() {
        if (this.H == null || this.I == null) {
            return;
        }
        if (w()) {
            this.H.X(this.f3426f.isFocused() ? ColorStateList.valueOf(this.y0) : ColorStateList.valueOf(this.R));
            this.I.X(ColorStateList.valueOf(this.R));
        }
        invalidate();
    }

    private void n(@NonNull RectF rectF) {
        float f2 = rectF.left;
        int i = this.L;
        rectF.left = f2 - i;
        rectF.right += i;
    }

    private static void n0(@NonNull Context context, @NonNull TextView textView, int i, int i2, boolean z) {
        textView.setContentDescription(context.getString(z ? R$string.c : R$string.b, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    private void o() {
        int i = this.M;
        if (i == 0) {
            this.G = null;
            this.H = null;
            this.I = null;
            return;
        }
        if (i == 1) {
            this.G = new MaterialShapeDrawable(this.J);
            this.H = new MaterialShapeDrawable();
            this.I = new MaterialShapeDrawable();
        } else {
            if (i != 2) {
                throw new IllegalArgumentException(this.M + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.D || (this.G instanceof com.google.android.material.textfield.c)) {
                this.G = new MaterialShapeDrawable(this.J);
            } else {
                this.G = new com.google.android.material.textfield.c(this.J);
            }
            this.H = null;
            this.I = null;
        }
    }

    private void o0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.p;
        if (textView != null) {
            d0(textView, this.o ? this.q : this.r);
            if (!this.o && (colorStateList2 = this.z) != null) {
                this.p.setTextColor(colorStateList2);
            }
            if (!this.o || (colorStateList = this.A) == null) {
                return;
            }
            this.p.setTextColor(colorStateList);
        }
    }

    private int p() {
        return this.M == 1 ? MaterialColors.layer(MaterialColors.getColor(this, R$attr.s, 0), this.S) : this.S;
    }

    private void p0() {
        if (this.i0 == 3 && this.M == 2) {
            ((com.google.android.material.textfield.d) this.j0.get(3)).O((AutoCompleteTextView) this.f3426f);
        }
    }

    @NonNull
    private Rect q(@NonNull Rect rect) {
        if (this.f3426f == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.U;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        rect2.bottom = rect.bottom;
        int i = this.M;
        if (i == 1) {
            rect2.left = G(rect.left, zIsLayoutRtl);
            rect2.top = rect.top + this.N;
            rect2.right = H(rect.right, zIsLayoutRtl);
            return rect2;
        }
        if (i != 2) {
            rect2.left = G(rect.left, zIsLayoutRtl);
            rect2.top = getPaddingTop();
            rect2.right = H(rect.right, zIsLayoutRtl);
            return rect2;
        }
        rect2.left = rect.left + this.f3426f.getPaddingLeft();
        rect2.top = rect.top - u();
        rect2.right = rect.right - this.f3426f.getPaddingRight();
        return rect2;
    }

    private int r(@NonNull Rect rect, @NonNull Rect rect2, float f2) {
        return P() ? (int) (rect2.top + f2) : rect.bottom - this.f3426f.getCompoundPaddingBottom();
    }

    private int s(@NonNull Rect rect, float f2) {
        return P() ? (int) (rect.centerY() - (f2 / 2.0f)) : rect.top + this.f3426f.getCompoundPaddingTop();
    }

    private boolean s0() {
        int iMax;
        if (this.f3426f == null || this.f3426f.getMeasuredHeight() >= (iMax = Math.max(this.f3424d.getMeasuredHeight(), this.c.getMeasuredHeight()))) {
            return false;
        }
        this.f3426f.setMinimumHeight(iMax);
        return true;
    }

    private void setEditText(EditText editText) {
        if (this.f3426f != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.i0 != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f3426f = editText;
        int i = this.h;
        if (i != -1) {
            setMinEms(i);
        } else {
            setMinWidth(this.j);
        }
        int i2 = this.i;
        if (i2 != -1) {
            setMaxEms(i2);
        } else {
            setMaxWidth(this.k);
        }
        Q();
        setTextInputAccessibilityDelegate(new e(this));
        this.I0.j0(this.f3426f.getTypeface());
        this.I0.b0(this.f3426f.getTextSize());
        if (Build.VERSION.SDK_INT >= 21) {
            this.I0.X(this.f3426f.getLetterSpacing());
        }
        int gravity = this.f3426f.getGravity();
        this.I0.S((gravity & (-113)) | 48);
        this.I0.a0(gravity);
        this.f3426f.addTextChangedListener(new a());
        if (this.w0 == null) {
            this.w0 = this.f3426f.getHintTextColors();
        }
        if (this.D) {
            if (TextUtils.isEmpty(this.E)) {
                CharSequence hint = this.f3426f.getHint();
                this.f3427g = hint;
                setHint(hint);
                this.f3426f.setHint((CharSequence) null);
            }
            this.F = true;
        }
        if (this.p != null) {
            m0(this.f3426f.getText().length());
        }
        r0();
        this.l.f();
        this.c.bringToFront();
        this.f3424d.bringToFront();
        this.f3425e.bringToFront();
        this.t0.bringToFront();
        B();
        C0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        x0(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.E)) {
            return;
        }
        this.E = charSequence;
        this.I0.h0(charSequence);
        if (this.H0) {
            return;
        }
        R();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.t == z) {
            return;
        }
        if (z) {
            i();
        } else {
            X();
            this.u = null;
        }
        this.t = z;
    }

    @NonNull
    private Rect t(@NonNull Rect rect) {
        if (this.f3426f == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.U;
        float fW = this.I0.w();
        rect2.left = rect.left + this.f3426f.getCompoundPaddingLeft();
        rect2.top = s(rect, fW);
        rect2.right = rect.right - this.f3426f.getCompoundPaddingRight();
        rect2.bottom = r(rect, rect2, fW);
        return rect2;
    }

    private void t0() {
        this.f3425e.setVisibility((this.k0.getVisibility() != 0 || L()) ? 8 : 0);
        this.f3424d.setVisibility(K() || L() || ((this.B == null || N()) ? '\b' : (char) 0) == 0 ? 0 : 8);
    }

    private int u() {
        float fQ;
        if (!this.D) {
            return 0;
        }
        int i = this.M;
        if (i == 0) {
            fQ = this.I0.q();
        } else {
            if (i != 2) {
                return 0;
            }
            fQ = this.I0.q() / 2.0f;
        }
        return (int) fQ;
    }

    private void u0() {
        this.t0.setVisibility(getErrorIconDrawable() != null && this.l.z() && this.l.l() ? 0 : 8);
        t0();
        C0();
        if (I()) {
            return;
        }
        q0();
    }

    private boolean v() {
        return this.M == 2 && w();
    }

    private void v0() {
        if (this.M != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.b.getLayoutParams();
            int iU = u();
            if (iU != layoutParams.topMargin) {
                layoutParams.topMargin = iU;
                this.b.requestLayout();
            }
        }
    }

    private boolean w() {
        return this.O > -1 && this.R != 0;
    }

    private void x() {
        if (A()) {
            ((com.google.android.material.textfield.c) this.G).k0();
        }
    }

    private void x0(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f3426f;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f3426f;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean zL = this.l.l();
        ColorStateList colorStateList2 = this.w0;
        if (colorStateList2 != null) {
            this.I0.R(colorStateList2);
            this.I0.Z(this.w0);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.w0;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.G0) : this.G0;
            this.I0.R(ColorStateList.valueOf(colorForState));
            this.I0.Z(ColorStateList.valueOf(colorForState));
        } else if (zL) {
            this.I0.R(this.l.q());
        } else if (this.o && (textView = this.p) != null) {
            this.I0.R(textView.getTextColors());
        } else if (z4 && (colorStateList = this.x0) != null) {
            this.I0.R(colorStateList);
        }
        if (z3 || !this.J0 || (isEnabled() && z4)) {
            if (z2 || this.H0) {
                y(z);
                return;
            }
            return;
        }
        if (z2 || !this.H0) {
            F(z);
        }
    }

    private void y(boolean z) {
        ValueAnimator valueAnimator = this.L0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.L0.cancel();
        }
        if (z && this.K0) {
            k(1.0f);
        } else {
            this.I0.d0(1.0f);
        }
        this.H0 = false;
        if (A()) {
            R();
        }
        z0();
        this.c.i(false);
        D0();
    }

    private void y0() {
        EditText editText;
        if (this.u == null || (editText = this.f3426f) == null) {
            return;
        }
        this.u.setGravity(editText.getGravity());
        this.u.setPadding(this.f3426f.getCompoundPaddingLeft(), this.f3426f.getCompoundPaddingTop(), this.f3426f.getCompoundPaddingRight(), this.f3426f.getCompoundPaddingBottom());
    }

    private Fade z() {
        Fade fade = new Fade();
        fade.setDuration(87L);
        fade.setInterpolator(AnimationUtils.a);
        return fade;
    }

    private void z0() {
        EditText editText = this.f3426f;
        A0(editText == null ? 0 : editText.getText().length());
    }

    void E0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.G == null || this.M == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.f3426f) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f3426f) != null && editText.isHovered())) {
            z = true;
        }
        if (!isEnabled()) {
            this.R = this.G0;
        } else if (this.l.l()) {
            if (this.B0 != null) {
                B0(z2, z);
            } else {
                this.R = this.l.p();
            }
        } else if (!this.o || (textView = this.p) == null) {
            if (z2) {
                this.R = this.A0;
            } else if (z) {
                this.R = this.z0;
            } else {
                this.R = this.y0;
            }
        } else if (this.B0 != null) {
            B0(z2, z);
        } else {
            this.R = textView.getCurrentTextColor();
        }
        u0();
        V();
        W();
        U();
        if (getEndIconDelegate().d()) {
            i0(this.l.l());
        }
        if (this.M == 2) {
            int i = this.O;
            if (z2 && isEnabled()) {
                this.O = this.Q;
            } else {
                this.O = this.P;
            }
            if (this.O != i) {
                S();
            }
        }
        if (this.M == 1) {
            if (!isEnabled()) {
                this.S = this.D0;
            } else if (z && !z2) {
                this.S = this.F0;
            } else if (z2) {
                this.S = this.E0;
            } else {
                this.S = this.C0;
            }
        }
        l();
    }

    public boolean K() {
        return this.f3425e.getVisibility() == 0 && this.k0.getVisibility() == 0;
    }

    public boolean M() {
        return this.l.A();
    }

    final boolean N() {
        return this.H0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean O() {
        return this.F;
    }

    public void U() {
        com.google.android.material.textfield.f.c(this, this.k0, this.m0);
    }

    public void V() {
        com.google.android.material.textfield.f.c(this, this.t0, this.u0);
    }

    public void W() {
        this.c.j();
    }

    public void Y(float f2, float f3, float f4, float f5) {
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        this.K = zIsLayoutRtl;
        float f6 = zIsLayoutRtl ? f3 : f2;
        if (!zIsLayoutRtl) {
            f2 = f3;
        }
        float f7 = zIsLayoutRtl ? f5 : f4;
        if (!zIsLayoutRtl) {
            f4 = f5;
        }
        MaterialShapeDrawable materialShapeDrawable = this.G;
        if (materialShapeDrawable != null && materialShapeDrawable.F() == f6 && this.G.G() == f2 && this.G.r() == f7 && this.G.s() == f4) {
            return;
        }
        this.J = this.J.q().B(f6).F(f2).t(f7).x(f4).m();
        l();
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i, @NonNull ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.b.addView(view, layoutParams2);
        this.b.setLayoutParams(layoutParams);
        v0();
        setEditText((EditText) view);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void d0(@androidx.annotation.NonNull android.widget.TextView r3, @androidx.annotation.StyleRes int r4) {
        /*
            r2 = this;
            r0 = 1
            androidx.core.widget.TextViewCompat.setTextAppearance(r3, r4)     // Catch: java.lang.Exception -> L1b
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L1b
            r1 = 23
            if (r4 < r1) goto L18
            android.content.res.ColorStateList r4 = r3.getTextColors()     // Catch: java.lang.Exception -> L1b
            int r4 = r4.getDefaultColor()     // Catch: java.lang.Exception -> L1b
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r4 != r1) goto L18
            goto L1c
        L18:
            r4 = 0
            r0 = 0
            goto L1c
        L1b:
        L1c:
            if (r0 == 0) goto L30
            int r4 = com.google.android.material.R$style.a
            androidx.core.widget.TextViewCompat.setTextAppearance(r3, r4)
            android.content.Context r4 = r2.getContext()
            int r0 = com.google.android.material.R$color.a
            int r4 = androidx.core.content.ContextCompat.getColor(r4, r0)
            r3.setTextColor(r4)
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.d0(android.widget.TextView, int):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(@NonNull ViewStructure viewStructure, int i) {
        EditText editText = this.f3426f;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f3427g != null) {
            boolean z = this.F;
            this.F = false;
            CharSequence hint = editText.getHint();
            this.f3426f.setHint(this.f3427g);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.f3426f.setHint(hint);
                this.F = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        viewStructure.setChildCount(this.b.getChildCount());
        for (int i2 = 0; i2 < this.b.getChildCount(); i2++) {
            View childAt = this.b.getChildAt(i2);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i);
            if (childAt == this.f3426f) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(@NonNull SparseArray<Parcelable> sparseArray) {
        this.N0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.N0 = false;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        E(canvas);
        D(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.M0) {
            return;
        }
        this.M0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        com.google.android.material.internal.b bVar = this.I0;
        boolean zG0 = bVar != null ? bVar.g0(drawableState) | false : false;
        if (this.f3426f != null) {
            w0(ViewCompat.isLaidOut(this) && isEnabled());
        }
        r0();
        E0();
        if (zG0) {
            invalidate();
        }
        this.M0 = false;
    }

    public void g(@NonNull f fVar) {
        this.c0.add(fVar);
        if (this.f3426f != null) {
            fVar.a(this);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f3426f;
        return editText != null ? editText.getBaseline() + getPaddingTop() + u() : super.getBaseline();
    }

    @NonNull
    MaterialShapeDrawable getBoxBackground() {
        int i = this.M;
        if (i == 1 || i == 2) {
            return this.G;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.S;
    }

    public int getBoxBackgroundMode() {
        return this.M;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.N;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return ViewUtils.isLayoutRtl(this) ? this.J.e().a(this.V) : this.J.g().a(this.V);
    }

    public float getBoxCornerRadiusBottomStart() {
        return ViewUtils.isLayoutRtl(this) ? this.J.g().a(this.V) : this.J.e().a(this.V);
    }

    public float getBoxCornerRadiusTopEnd() {
        return ViewUtils.isLayoutRtl(this) ? this.J.m().a(this.V) : this.J.o().a(this.V);
    }

    public float getBoxCornerRadiusTopStart() {
        return ViewUtils.isLayoutRtl(this) ? this.J.o().a(this.V) : this.J.m().a(this.V);
    }

    public int getBoxStrokeColor() {
        return this.A0;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.B0;
    }

    public int getBoxStrokeWidth() {
        return this.P;
    }

    public int getBoxStrokeWidthFocused() {
        return this.Q;
    }

    public int getCounterMaxLength() {
        return this.n;
    }

    @Nullable
    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.m && this.o && (textView = this.p) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.z;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.z;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.w0;
    }

    @Nullable
    public EditText getEditText() {
        return this.f3426f;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.k0.getContentDescription();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.k0.getDrawable();
    }

    public int getEndIconMode() {
        return this.i0;
    }

    @NonNull
    CheckableImageButton getEndIconView() {
        return this.k0;
    }

    @Nullable
    public CharSequence getError() {
        if (this.l.z()) {
            return this.l.o();
        }
        return null;
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.l.n();
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        return this.l.p();
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.t0.getDrawable();
    }

    @VisibleForTesting
    final int getErrorTextCurrentColor() {
        return this.l.p();
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.l.A()) {
            return this.l.r();
        }
        return null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        return this.l.t();
    }

    @Nullable
    public CharSequence getHint() {
        if (this.D) {
            return this.E;
        }
        return null;
    }

    @VisibleForTesting
    final float getHintCollapsedTextHeight() {
        return this.I0.q();
    }

    @VisibleForTesting
    final int getHintCurrentCollapsedTextColor() {
        return this.I0.t();
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.x0;
    }

    public int getMaxEms() {
        return this.i;
    }

    @Px
    public int getMaxWidth() {
        return this.k;
    }

    public int getMinEms() {
        return this.h;
    }

    @Px
    public int getMinWidth() {
        return this.j;
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.k0.getContentDescription();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.k0.getDrawable();
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.t) {
            return this.s;
        }
        return null;
    }

    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.w;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.v;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.c.a();
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.c.b();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.c.c();
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.c.d();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.c.e();
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.B;
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.C.getTextColors();
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.C;
    }

    @Nullable
    public Typeface getTypeface() {
        return this.W;
    }

    public void h(@NonNull g gVar) {
        this.l0.add(gVar);
    }

    @VisibleForTesting
    void k(float f2) {
        if (this.I0.x() == f2) {
            return;
        }
        if (this.L0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.L0 = valueAnimator;
            valueAnimator.setInterpolator(AnimationUtils.b);
            this.L0.setDuration(167L);
            this.L0.addUpdateListener(new d());
        }
        this.L0.setFloatValues(this.I0.x(), f2);
        this.L0.start();
    }

    void m0(int i) {
        boolean z = this.o;
        int i2 = this.n;
        if (i2 == -1) {
            this.p.setText(String.valueOf(i));
            this.p.setContentDescription(null);
            this.o = false;
        } else {
            this.o = i > i2;
            n0(getContext(), this.p, i, this.n, this.o);
            if (z != this.o) {
                o0();
            }
            this.p.setText(BidiFormatter.getInstance().unicodeWrap(getContext().getString(R$string.f3106d, Integer.valueOf(i), Integer.valueOf(this.n))));
        }
        if (this.f3426f == null || z == this.o) {
            return;
        }
        w0(false);
        E0();
        r0();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.I0.H(configuration);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f3426f;
        if (editText != null) {
            Rect rect = this.T;
            DescendantOffsetUtils.getDescendantRect(this, editText, rect);
            k0(rect);
            if (this.D) {
                this.I0.b0(this.f3426f.getTextSize());
                int gravity = this.f3426f.getGravity();
                this.I0.S((gravity & (-113)) | 48);
                this.I0.a0(gravity);
                this.I0.O(q(rect));
                this.I0.W(t(rect));
                this.I0.K();
                if (!A() || this.H0) {
                    return;
                }
                R();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        boolean zS0 = s0();
        boolean zQ0 = q0();
        if (zS0 || zQ0) {
            this.f3426f.post(new c());
        }
        y0();
        C0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.a);
        if (savedState.b) {
            this.k0.post(new b());
        }
        setHint(savedState.c);
        setHelperText(savedState.f3428d);
        setPlaceholderText(savedState.f3429e);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = false;
        boolean z2 = i == 1;
        boolean z3 = this.K;
        if (z2 != z3) {
            if (z2 && !z3) {
                z = true;
            }
            float fA = this.J.m().a(this.V);
            float fA2 = this.J.o().a(this.V);
            float fA3 = this.J.e().a(this.V);
            float fA4 = this.J.g().a(this.V);
            float f2 = z ? fA : fA2;
            if (z) {
                fA = fA2;
            }
            float f3 = z ? fA3 : fA4;
            if (z) {
                fA3 = fA4;
            }
            Y(f2, fA, f3, fA3);
        }
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.l.l()) {
            savedState.a = getError();
        }
        savedState.b = I() && this.k0.isChecked();
        savedState.c = getHint();
        savedState.f3428d = getHelperText();
        savedState.f3429e = getPlaceholderText();
        return savedState;
    }

    boolean q0() {
        boolean z;
        if (this.f3426f == null) {
            return false;
        }
        boolean z2 = true;
        if (f0()) {
            int measuredWidth = this.c.getMeasuredWidth() - this.f3426f.getPaddingLeft();
            if (this.a0 == null || this.b0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.a0 = colorDrawable;
                this.b0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.f3426f);
            Drawable drawable = compoundDrawablesRelative[0];
            Drawable drawable2 = this.a0;
            if (drawable != drawable2) {
                TextViewCompat.setCompoundDrawablesRelative(this.f3426f, drawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.a0 != null) {
                Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.f3426f);
                TextViewCompat.setCompoundDrawablesRelative(this.f3426f, null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.a0 = null;
                z = true;
            }
            z = false;
        }
        if (e0()) {
            int measuredWidth2 = this.C.getMeasuredWidth() - this.f3426f.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = measuredWidth2 + endIconToUpdateDummyDrawable.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams());
            }
            Drawable[] compoundDrawablesRelative3 = TextViewCompat.getCompoundDrawablesRelative(this.f3426f);
            Drawable drawable3 = this.o0;
            if (drawable3 == null || this.p0 == measuredWidth2) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.o0 = colorDrawable2;
                    this.p0 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = compoundDrawablesRelative3[2];
                Drawable drawable5 = this.o0;
                if (drawable4 != drawable5) {
                    this.q0 = compoundDrawablesRelative3[2];
                    TextViewCompat.setCompoundDrawablesRelative(this.f3426f, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], drawable5, compoundDrawablesRelative3[3]);
                } else {
                    z2 = z;
                }
            } else {
                this.p0 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                TextViewCompat.setCompoundDrawablesRelative(this.f3426f, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.o0, compoundDrawablesRelative3[3]);
            }
        } else {
            if (this.o0 == null) {
                return z;
            }
            Drawable[] compoundDrawablesRelative4 = TextViewCompat.getCompoundDrawablesRelative(this.f3426f);
            if (compoundDrawablesRelative4[2] == this.o0) {
                TextViewCompat.setCompoundDrawablesRelative(this.f3426f, compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.q0, compoundDrawablesRelative4[3]);
            } else {
                z2 = z;
            }
            this.o0 = null;
        }
        return z2;
    }

    void r0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f3426f;
        if (editText == null || this.M != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        if (this.l.l()) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.l.p(), PorterDuff.Mode.SRC_IN));
        } else if (this.o && (textView = this.p) != null) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            DrawableCompat.clearColorFilter(background);
            this.f3426f.refreshDrawableState();
        }
    }

    public void setBoxBackgroundColor(@ColorInt int i) {
        if (this.S != i) {
            this.S = i;
            this.C0 = i;
            this.E0 = i;
            this.F0 = i;
            l();
        }
    }

    public void setBoxBackgroundColorResource(@ColorRes int i) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.C0 = defaultColor;
        this.S = defaultColor;
        this.D0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.E0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.F0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        l();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.M) {
            return;
        }
        this.M = i;
        if (this.f3426f != null) {
            Q();
        }
    }

    public void setBoxCollapsedPaddingTop(int i) {
        this.N = i;
    }

    public void setBoxStrokeColor(@ColorInt int i) {
        if (this.A0 != i) {
            this.A0 = i;
            E0();
        }
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.y0 = colorStateList.getDefaultColor();
            this.G0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.z0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.A0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.A0 != colorStateList.getDefaultColor()) {
            this.A0 = colorStateList.getDefaultColor();
        }
        E0();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.B0 != colorStateList) {
            this.B0 = colorStateList;
            E0();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.P = i;
        E0();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.Q = i;
        E0();
    }

    public void setBoxStrokeWidthFocusedResource(@DimenRes int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(@DimenRes int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.m != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.p = appCompatTextView;
                appCompatTextView.setId(R$id.Q);
                Typeface typeface = this.W;
                if (typeface != null) {
                    this.p.setTypeface(typeface);
                }
                this.p.setMaxLines(1);
                this.l.e(this.p, 2);
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.p.getLayoutParams(), getResources().getDimensionPixelOffset(R$dimen.k0));
                o0();
                l0();
            } else {
                this.l.B(this.p, 2);
                this.p = null;
            }
            this.m = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.n != i) {
            if (i > 0) {
                this.n = i;
            } else {
                this.n = -1;
            }
            if (this.m) {
                l0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.q != i) {
            this.q = i;
            o0();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            o0();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.r != i) {
            this.r = i;
            o0();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.z != colorStateList) {
            this.z = colorStateList;
            o0();
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.w0 = colorStateList;
        this.x0 = colorStateList;
        if (this.f3426f != null) {
            w0(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        T(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.k0.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.k0.setCheckable(z);
    }

    public void setEndIconContentDescription(@StringRes int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.k0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(@DrawableRes int i) {
        setEndIconDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        this.k0.setImageDrawable(drawable);
        if (drawable != null) {
            com.google.android.material.textfield.f.a(this, this.k0, this.m0, this.n0);
            U();
        }
    }

    public void setEndIconMode(int i) {
        int i2 = this.i0;
        if (i2 == i) {
            return;
        }
        this.i0 = i;
        C(i2);
        setEndIconVisible(i != 0);
        if (getEndIconDelegate().b(this.M)) {
            getEndIconDelegate().a();
            com.google.android.material.textfield.f.a(this, this.k0, this.m0, this.n0);
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.M + " is not supported by the end icon mode " + i);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        b0(this.k0, onClickListener, this.r0);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.r0 = onLongClickListener;
        c0(this.k0, onLongClickListener);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.m0 != colorStateList) {
            this.m0 = colorStateList;
            com.google.android.material.textfield.f.a(this, this.k0, colorStateList, this.n0);
        }
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.n0 != mode) {
            this.n0 = mode;
            com.google.android.material.textfield.f.a(this, this.k0, this.m0, mode);
        }
    }

    public void setEndIconVisible(boolean z) {
        if (K() != z) {
            this.k0.setVisibility(z ? 0 : 8);
            t0();
            C0();
            q0();
        }
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.l.z()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.l.v();
        } else {
            this.l.O(charSequence);
        }
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        this.l.D(charSequence);
    }

    public void setErrorEnabled(boolean z) {
        this.l.E(z);
    }

    public void setErrorIconDrawable(@DrawableRes int i) {
        setErrorIconDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
        V();
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.t0.setImageDrawable(drawable);
        u0();
        com.google.android.material.textfield.f.a(this, this.t0, this.u0, this.v0);
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        b0(this.t0, onClickListener, this.s0);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.s0 = onLongClickListener;
        c0(this.t0, onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.u0 != colorStateList) {
            this.u0 = colorStateList;
            com.google.android.material.textfield.f.a(this, this.t0, colorStateList, this.v0);
        }
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.v0 != mode) {
            this.v0 = mode;
            com.google.android.material.textfield.f.a(this, this.t0, this.u0, mode);
        }
    }

    public void setErrorTextAppearance(@StyleRes int i) {
        this.l.F(i);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.l.G(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.J0 != z) {
            this.J0 = z;
            w0(false);
        }
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (M()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!M()) {
                setHelperTextEnabled(true);
            }
            this.l.P(charSequence);
        }
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.l.J(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        this.l.I(z);
    }

    public void setHelperTextTextAppearance(@StyleRes int i) {
        this.l.H(i);
    }

    public void setHint(@StringRes int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.D) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.K0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.D) {
            this.D = z;
            if (z) {
                CharSequence hint = this.f3426f.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.E)) {
                        setHint(hint);
                    }
                    this.f3426f.setHint((CharSequence) null);
                }
                this.F = true;
            } else {
                this.F = false;
                if (!TextUtils.isEmpty(this.E) && TextUtils.isEmpty(this.f3426f.getHint())) {
                    this.f3426f.setHint(this.E);
                }
                setHintInternal(null);
            }
            if (this.f3426f != null) {
                v0();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int i) {
        this.I0.P(i);
        this.x0 = this.I0.p();
        if (this.f3426f != null) {
            w0(false);
            v0();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.x0 != colorStateList) {
            if (this.w0 == null) {
                this.I0.R(colorStateList);
            }
            this.x0 = colorStateList;
            if (this.f3426f != null) {
                w0(false);
            }
        }
    }

    public void setMaxEms(int i) {
        this.i = i;
        EditText editText = this.f3426f;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxEms(i);
    }

    public void setMaxWidth(@Px int i) {
        this.k = i;
        EditText editText = this.f3426f;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(@DimenRes int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinEms(int i) {
        this.h = i;
        EditText editText = this.f3426f;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinEms(i);
    }

    public void setMinWidth(@Px int i) {
        this.j = i;
        EditText editText = this.f3426f;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinWidth(i);
    }

    public void setMinWidthResource(@DimenRes int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.k0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.k0.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.i0 != 1) {
            setEndIconMode(1);
        } else {
            if (z) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.m0 = colorStateList;
        com.google.android.material.textfield.f.a(this, this.k0, colorStateList, this.n0);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.n0 = mode;
        com.google.android.material.textfield.f.a(this, this.k0, this.m0, mode);
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.u == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.u = appCompatTextView;
            appCompatTextView.setId(R$id.T);
            ViewCompat.setImportantForAccessibility(this.u, 2);
            Fade fadeZ = z();
            this.x = fadeZ;
            fadeZ.setStartDelay(67L);
            this.y = z();
            setPlaceholderTextAppearance(this.w);
            setPlaceholderTextColor(this.v);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.t) {
                setPlaceholderTextEnabled(true);
            }
            this.s = charSequence;
        }
        z0();
    }

    public void setPlaceholderTextAppearance(@StyleRes int i) {
        this.w = i;
        TextView textView = this.u;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.v != colorStateList) {
            this.v = colorStateList;
            TextView textView = this.u;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        this.c.k(charSequence);
    }

    public void setPrefixTextAppearance(@StyleRes int i) {
        this.c.l(i);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.c.m(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.c.n(z);
    }

    public void setStartIconContentDescription(@StringRes int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        this.c.o(charSequence);
    }

    public void setStartIconDrawable(@DrawableRes int i) {
        setStartIconDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.c.p(drawable);
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.c.q(onClickListener);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.c.r(onLongClickListener);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        this.c.s(colorStateList);
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.c.t(mode);
    }

    public void setStartIconVisible(boolean z) {
        this.c.u(z);
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        this.B = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.C.setText(charSequence);
        D0();
    }

    public void setSuffixTextAppearance(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.C, i);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.C.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable e eVar) {
        EditText editText = this.f3426f;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, eVar);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.W) {
            this.W = typeface;
            this.I0.j0(typeface);
            this.l.L(typeface);
            TextView textView = this.p;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    void w0(boolean z) {
        x0(z, false);
    }
}
