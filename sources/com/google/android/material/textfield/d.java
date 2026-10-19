package com.google.android.material.textfield;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$string;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
/* JADX INFO: loaded from: classes3.dex */
class d extends com.google.android.material.textfield.e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f3433e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TextWatcher f3434f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final View.OnFocusChangeListener f3435g;
    private final TextInputLayout.e h;
    private final TextInputLayout.f i;

    @SuppressLint({"ClickableViewAccessibility"})
    private final TextInputLayout.g j;
    private final View.OnAttachStateChangeListener k;
    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener l;
    private boolean m;
    private boolean n;
    private long o;
    private StateListDrawable p;
    private MaterialShapeDrawable q;

    @Nullable
    private AccessibilityManager r;
    private ValueAnimator s;
    private ValueAnimator t;

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class a extends com.google.android.material.internal.f {

        /* JADX INFO: renamed from: com.google.android.material.textfield.d$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
        class RunnableC0239a implements Runnable {
            final /* synthetic */ AutoCompleteTextView a;

            RunnableC0239a(AutoCompleteTextView autoCompleteTextView) {
                this.a = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zIsPopupShowing = this.a.isPopupShowing();
                d.this.J(zIsPopupShowing);
                d.this.m = zIsPopupShowing;
            }
        }

        a() {
        }

        @Override // com.google.android.material.internal.f, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView autoCompleteTextViewC = d.C(d.this.a.getEditText());
            if (d.this.r.isTouchExplorationEnabled() && d.H(autoCompleteTextViewC) && !d.this.c.hasFocus()) {
                autoCompleteTextViewC.dismissDropDown();
            }
            autoCompleteTextViewC.post(new RunnableC0239a(autoCompleteTextViewC));
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class b implements AutoCompleteTextView.OnDismissListener {
        b() {
        }

        @Override // android.widget.AutoCompleteTextView.OnDismissListener
        public void onDismiss() {
            d.this.N();
            d.this.J(false);
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d dVar = d.this;
            dVar.c.setChecked(dVar.n);
            d.this.t.start();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class C0240d implements ValueAnimator.AnimatorUpdateListener {
        C0240d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            d.this.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class e implements View.OnFocusChangeListener {
        e() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            d.this.a.setEndIconActivated(z);
            if (z) {
                return;
            }
            d.this.J(false);
            d.this.m = false;
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class f extends TextInputLayout.e {
        f(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override // com.google.android.material.textfield.TextInputLayout.e, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!d.H(d.this.a.getEditText())) {
                accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
            }
            if (accessibilityNodeInfoCompat.isShowingHintText()) {
                accessibilityNodeInfoCompat.setHintText(null);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            AutoCompleteTextView autoCompleteTextViewC = d.C(d.this.a.getEditText());
            if (accessibilityEvent.getEventType() == 1 && d.this.r.isEnabled() && !d.H(d.this.a.getEditText())) {
                d.this.M(autoCompleteTextViewC);
                d.this.N();
            }
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class g implements TextInputLayout.f {
        g() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(@NonNull TextInputLayout textInputLayout) {
            AutoCompleteTextView autoCompleteTextViewC = d.C(textInputLayout.getEditText());
            d.this.K(autoCompleteTextViewC);
            d.this.y(autoCompleteTextViewC);
            d.this.L(autoCompleteTextViewC);
            autoCompleteTextViewC.setThreshold(0);
            autoCompleteTextViewC.removeTextChangedListener(d.this.f3434f);
            autoCompleteTextViewC.addTextChangedListener(d.this.f3434f);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!d.H(autoCompleteTextViewC) && d.this.r.isTouchExplorationEnabled()) {
                ViewCompat.setImportantForAccessibility(d.this.c, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(d.this.h);
            textInputLayout.setEndIconVisible(true);
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class h implements TextInputLayout.g {

        /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
        class a implements Runnable {
            final /* synthetic */ AutoCompleteTextView a;

            a(AutoCompleteTextView autoCompleteTextView) {
                this.a = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.a.removeTextChangedListener(d.this.f3434f);
            }
        }

        h() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(@NonNull TextInputLayout textInputLayout, int i) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView != null && i == 3) {
                autoCompleteTextView.post(new a(autoCompleteTextView));
                if (autoCompleteTextView.getOnFocusChangeListener() == d.this.f3435g) {
                    autoCompleteTextView.setOnFocusChangeListener(null);
                }
                autoCompleteTextView.setOnTouchListener(null);
                if (d.f3433e) {
                    autoCompleteTextView.setOnDismissListener(null);
                }
            }
            if (i == 3) {
                textInputLayout.removeOnAttachStateChangeListener(d.this.k);
                d.this.I();
            }
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class i implements View.OnAttachStateChangeListener {
        i() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            d.this.B();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            d.this.I();
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class j implements AccessibilityManagerCompat.TouchExplorationStateChangeListener {
        j() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z) {
            AutoCompleteTextView autoCompleteTextView;
            TextInputLayout textInputLayout = d.this.a;
            if (textInputLayout == null || (autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText()) == null || d.H(autoCompleteTextView)) {
                return;
            }
            ViewCompat.setImportantForAccessibility(d.this.c, z ? 2 : 1);
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.M((AutoCompleteTextView) d.this.a.getEditText());
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class l implements View.OnTouchListener {
        final /* synthetic */ AutoCompleteTextView a;

        l(AutoCompleteTextView autoCompleteTextView) {
            this.a = autoCompleteTextView;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (d.this.G()) {
                    d.this.m = false;
                }
                d.this.M(this.a);
                d.this.N();
            }
            return false;
        }
    }

    static {
        f3433e = Build.VERSION.SDK_INT >= 21;
    }

    d(@NonNull TextInputLayout textInputLayout, @DrawableRes int i2) {
        super(textInputLayout, i2);
        this.f3434f = new a();
        this.f3435g = new e();
        this.h = new f(this.a);
        this.i = new g();
        this.j = new h();
        this.k = new i();
        this.l = new j();
        this.m = false;
        this.n = false;
        this.o = Long.MAX_VALUE;
    }

    private void A(@NonNull AutoCompleteTextView autoCompleteTextView, int i2, int[][] iArr, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        LayerDrawable layerDrawable;
        int color = MaterialColors.getColor(autoCompleteTextView, R$attr.s);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.C());
        int iLayer = MaterialColors.layer(i2, color, 0.1f);
        materialShapeDrawable2.X(new ColorStateList(iArr, new int[]{iLayer, 0}));
        if (f3433e) {
            materialShapeDrawable2.setTint(color);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iLayer, color});
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable.C());
            materialShapeDrawable3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable2, materialShapeDrawable3), materialShapeDrawable});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable});
        }
        ViewCompat.setBackground(autoCompleteTextView, layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        TextInputLayout textInputLayout;
        if (this.r == null || (textInputLayout = this.a) == null || !ViewCompat.isAttachedToWindow(textInputLayout)) {
            return;
        }
        AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.r, this.l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static AutoCompleteTextView C(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    private ValueAnimator D(int i2, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(AnimationUtils.a);
        valueAnimatorOfFloat.setDuration(i2);
        valueAnimatorOfFloat.addUpdateListener(new C0240d());
        return valueAnimatorOfFloat;
    }

    private MaterialShapeDrawable E(float f2, float f3, float f4, int i2) {
        ShapeAppearanceModel shapeAppearanceModelM = ShapeAppearanceModel.builder().B(f2).F(f2).t(f3).x(f3).m();
        MaterialShapeDrawable materialShapeDrawableCreateWithElevationOverlay = MaterialShapeDrawable.createWithElevationOverlay(this.b, f4);
        materialShapeDrawableCreateWithElevationOverlay.setShapeAppearanceModel(shapeAppearanceModelM);
        materialShapeDrawableCreateWithElevationOverlay.Z(0, i2, 0, i2);
        return materialShapeDrawableCreateWithElevationOverlay;
    }

    private void F() {
        this.t = D(67, 0.0f, 1.0f);
        ValueAnimator valueAnimatorD = D(50, 1.0f, 0.0f);
        this.s = valueAnimatorD;
        valueAnimatorD.addListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean G() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.o;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean H(@NonNull EditText editText) {
        return editText.getKeyListener() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        AccessibilityManager accessibilityManager = this.r;
        if (accessibilityManager != null) {
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, this.l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(boolean z) {
        if (this.n != z) {
            this.n = z;
            this.t.cancel();
            this.s.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (f3433e) {
            int boxBackgroundMode = this.a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.q);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.p);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void L(@NonNull AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new l(autoCompleteTextView));
        autoCompleteTextView.setOnFocusChangeListener(this.f3435g);
        if (f3433e) {
            autoCompleteTextView.setOnDismissListener(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(@Nullable AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (G()) {
            this.m = false;
        }
        if (this.m) {
            this.m = false;
            return;
        }
        if (f3433e) {
            J(!this.n);
        } else {
            this.n = !this.n;
            this.c.toggle();
        }
        if (!this.n) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        this.m = true;
        this.o = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (H(autoCompleteTextView)) {
            return;
        }
        int boxBackgroundMode = this.a.getBoxBackgroundMode();
        MaterialShapeDrawable boxBackground = this.a.getBoxBackground();
        int color = MaterialColors.getColor(autoCompleteTextView, R$attr.j);
        int[][] iArr = {new int[]{R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode == 2) {
            A(autoCompleteTextView, color, iArr, boxBackground);
        } else if (boxBackgroundMode == 1) {
            z(autoCompleteTextView, color, iArr, boxBackground);
        }
    }

    private void z(@NonNull AutoCompleteTextView autoCompleteTextView, int i2, int[][] iArr, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        int boxBackgroundColor = this.a.getBoxBackgroundColor();
        int[] iArr2 = {MaterialColors.layer(i2, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (f3433e) {
            ViewCompat.setBackground(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), materialShapeDrawable, materialShapeDrawable));
            return;
        }
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.C());
        materialShapeDrawable2.X(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable, materialShapeDrawable2});
        int paddingStart = ViewCompat.getPaddingStart(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        ViewCompat.setBackground(autoCompleteTextView, layerDrawable);
        ViewCompat.setPaddingRelative(autoCompleteTextView, paddingStart, paddingTop, paddingEnd, paddingBottom);
    }

    void O(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (!H(autoCompleteTextView) && this.a.getBoxBackgroundMode() == 2 && (autoCompleteTextView.getBackground() instanceof LayerDrawable)) {
            y(autoCompleteTextView);
        }
    }

    @Override // com.google.android.material.textfield.e
    void a() {
        float dimensionPixelOffset = this.b.getResources().getDimensionPixelOffset(R$dimen.f0);
        float dimensionPixelOffset2 = this.b.getResources().getDimensionPixelOffset(R$dimen.c0);
        int dimensionPixelOffset3 = this.b.getResources().getDimensionPixelOffset(R$dimen.d0);
        MaterialShapeDrawable materialShapeDrawableE = E(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        MaterialShapeDrawable materialShapeDrawableE2 = E(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.q = materialShapeDrawableE;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.p = stateListDrawable;
        stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, materialShapeDrawableE);
        this.p.addState(new int[0], materialShapeDrawableE2);
        int i2 = this.f3436d;
        if (i2 == 0) {
            i2 = f3433e ? R$drawable.f3094d : R$drawable.f3095e;
        }
        this.a.setEndIconDrawable(i2);
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R$string.f3109g));
        this.a.setEndIconOnClickListener(new k());
        this.a.g(this.i);
        this.a.h(this.j);
        F();
        this.r = (AccessibilityManager) this.b.getSystemService("accessibility");
        this.a.addOnAttachStateChangeListener(this.k);
        B();
    }

    @Override // com.google.android.material.textfield.e
    boolean b(int i2) {
        return i2 != 0;
    }

    @Override // com.google.android.material.textfield.e
    boolean d() {
        return true;
    }
}
