package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.b;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    @NonNull
    static final Handler a;
    private static final boolean b;
    private static final int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f3413d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final ViewGroup f3414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f3415f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    protected final t f3416g;

    @NonNull
    private final com.google.android.material.snackbar.a h;
    private int i;
    private boolean j;

    @Nullable
    private q k;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private boolean s;
    private List<r<B>> t;
    private Behavior u;

    @Nullable
    private final AccessibilityManager v;
    private boolean l = false;

    @RequiresApi(29)
    private final Runnable m = new i();

    @NonNull
    b.InterfaceC0236b w = new l();

    public static class Behavior extends SwipeDismissBehavior<View> {

        @NonNull
        private final s k = new s(this);

        /* JADX INFO: Access modifiers changed from: private */
        public void l(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.k.c(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean a(View view) {
            return this.k.a(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            this.k.b(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ int a;

        a(int i) {
            this.a = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.H(this.a);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            BaseTransientBottomBar.this.f3416g.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BaseTransientBottomBar.this.f3416g.setScaleX(fFloatValue);
            BaseTransientBottomBar.this.f3416g.setScaleY(fFloatValue);
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.I();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.h.a(70, 180);
        }
    }

    class e implements ValueAnimator.AnimatorUpdateListener {
        private int a;
        final /* synthetic */ int b;

        e(int i) {
            this.b = i;
            this.a = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.b) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f3416g, iIntValue - this.a);
            } else {
                BaseTransientBottomBar.this.f3416g.setTranslationY(iIntValue);
            }
            this.a = iIntValue;
        }
    }

    class f extends AnimatorListenerAdapter {
        final /* synthetic */ int a;

        f(int i) {
            this.a = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.H(this.a);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.h.b(0, 180);
        }
    }

    class g implements ValueAnimator.AnimatorUpdateListener {
        private int a = 0;

        g() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.b) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f3416g, iIntValue - this.a);
            } else {
                BaseTransientBottomBar.this.f3416g.setTranslationY(iIntValue);
            }
            this.a = iIntValue;
        }
    }

    class h implements Handler.Callback {
        h() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            int i = message.what;
            if (i == 0) {
                ((BaseTransientBottomBar) message.obj).O();
                return true;
            }
            if (i != 1) {
                return false;
            }
            ((BaseTransientBottomBar) message.obj).B(message.arg1);
            return true;
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iW;
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.f3416g == null || baseTransientBottomBar.f3415f == null || (iW = (BaseTransientBottomBar.this.w() - BaseTransientBottomBar.this.z()) + ((int) BaseTransientBottomBar.this.f3416g.getTranslationY())) >= BaseTransientBottomBar.this.q) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.f3416g.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                Log.w(BaseTransientBottomBar.f3413d, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                return;
            }
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.q - iW;
            BaseTransientBottomBar.this.f3416g.requestLayout();
        }
    }

    class j implements OnApplyWindowInsetsListener {
        j() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            BaseTransientBottomBar.this.n = windowInsetsCompat.getSystemWindowInsetBottom();
            BaseTransientBottomBar.this.o = windowInsetsCompat.getSystemWindowInsetLeft();
            BaseTransientBottomBar.this.p = windowInsetsCompat.getSystemWindowInsetRight();
            BaseTransientBottomBar.this.U();
            return windowInsetsCompat;
        }
    }

    class k extends AccessibilityDelegateCompat {
        k() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.addAction(1048576);
            accessibilityNodeInfoCompat.setDismissable(true);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i != 1048576) {
                return super.performAccessibilityAction(view, i, bundle);
            }
            BaseTransientBottomBar.this.q();
            return true;
        }
    }

    class l implements b.InterfaceC0236b {
        l() {
        }

        @Override // com.google.android.material.snackbar.b.InterfaceC0236b
        public void a(int i) {
            Handler handler = BaseTransientBottomBar.a;
            handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.b.InterfaceC0236b
        public void show() {
            Handler handler = BaseTransientBottomBar.a;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseTransientBottomBar.this.H(3);
        }
    }

    class n implements SwipeDismissBehavior.c {
        n() {
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.c
        public void a(@NonNull View view) {
            if (view.getParent() != null) {
                view.setVisibility(8);
            }
            BaseTransientBottomBar.this.r(0);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.c
        public void b(int i) {
            if (i == 0) {
                com.google.android.material.snackbar.b.c().k(BaseTransientBottomBar.this.w);
            } else if (i == 1 || i == 2) {
                com.google.android.material.snackbar.b.c().j(BaseTransientBottomBar.this.w);
            }
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t tVar = BaseTransientBottomBar.this.f3416g;
            if (tVar == null) {
                return;
            }
            if (tVar.getParent() != null) {
                BaseTransientBottomBar.this.f3416g.setVisibility(0);
            }
            if (BaseTransientBottomBar.this.f3416g.getAnimationMode() == 1) {
                BaseTransientBottomBar.this.Q();
            } else {
                BaseTransientBottomBar.this.S();
            }
        }
    }

    class p extends AnimatorListenerAdapter {
        p() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.I();
        }
    }

    static class q implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {
    }

    public static abstract class r<B> {
        public void a(B b, int i) {
        }

        public void b(B b) {
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class s {
        private b.InterfaceC0236b a;

        public s(@NonNull SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.h(0.1f);
            swipeDismissBehavior.f(0.6f);
            swipeDismissBehavior.i(0);
        }

        public boolean a(View view) {
            return view instanceof t;
        }

        public void b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    com.google.android.material.snackbar.b.c().j(this.a);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                com.google.android.material.snackbar.b.c().k(this.a);
            }
        }

        public void c(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.a = baseTransientBottomBar.w;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected static class t extends FrameLayout {
        private static final View.OnTouchListener a = new a();

        @Nullable
        private BaseTransientBottomBar<?> b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f3417d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f3418e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f3419f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f3420g;
        private ColorStateList h;
        private PorterDuff.Mode i;

        @Nullable
        private Rect j;
        private boolean k;

        class a implements View.OnTouchListener {
            a() {
            }

            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        protected t(@NonNull Context context, AttributeSet attributeSet) {
            super(MaterialThemeOverlay.wrap(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.D4);
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.K4)) {
                ViewCompat.setElevation(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(r1, 0));
            }
            this.c = typedArrayObtainStyledAttributes.getInt(R$styleable.G4, 0);
            this.f3417d = typedArrayObtainStyledAttributes.getFloat(R$styleable.H4, 1.0f);
            setBackgroundTintList(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R$styleable.I4));
            setBackgroundTintMode(ViewUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R$styleable.J4, -1), PorterDuff.Mode.SRC_IN));
            this.f3418e = typedArrayObtainStyledAttributes.getFloat(R$styleable.F4, 1.0f);
            this.f3419f = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.E4, -1);
            this.f3420g = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.L4, -1);
            typedArrayObtainStyledAttributes.recycle();
            setOnTouchListener(a);
            setFocusable(true);
            if (getBackground() == null) {
                ViewCompat.setBackground(this, d());
            }
        }

        @NonNull
        private Drawable d() {
            float dimension = getResources().getDimension(R$dimen.g0);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(dimension);
            gradientDrawable.setColor(MaterialColors.layer(this, R$attr.s, R$attr.p, getBackgroundOverlayColorAlpha()));
            if (this.h == null) {
                return DrawableCompat.wrap(gradientDrawable);
            }
            Drawable drawableWrap = DrawableCompat.wrap(gradientDrawable);
            DrawableCompat.setTintList(drawableWrap, this.h);
            return drawableWrap;
        }

        private void e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.j = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.b = baseTransientBottomBar;
        }

        void c(ViewGroup viewGroup) {
            this.k = true;
            viewGroup.addView(this);
            this.k = false;
        }

        float getActionTextColorAlpha() {
            return this.f3418e;
        }

        int getAnimationMode() {
            return this.c;
        }

        float getBackgroundOverlayColorAlpha() {
            return this.f3417d;
        }

        int getMaxInlineActionWidth() {
            return this.f3420g;
        }

        int getMaxWidth() {
            return this.f3419f;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.b;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.E();
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.b;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.F();
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.b;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.G();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (this.f3419f > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = this.f3419f;
                if (measuredWidth > i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
        }

        void setAnimationMode(int i) {
            this.c = i;
        }

        @Override // android.view.View
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null && this.h != null) {
                drawable = DrawableCompat.wrap(drawable.mutate());
                DrawableCompat.setTintList(drawable, this.h);
                DrawableCompat.setTintMode(drawable, this.i);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.h = colorStateList;
            if (getBackground() != null) {
                Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintList(drawableWrap, colorStateList);
                DrawableCompat.setTintMode(drawableWrap, this.i);
                if (drawableWrap != getBackground()) {
                    super.setBackgroundDrawable(drawableWrap);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.i = mode;
            if (getBackground() != null) {
                Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintMode(drawableWrap, mode);
                if (drawableWrap != getBackground()) {
                    super.setBackgroundDrawable(drawableWrap);
                }
            }
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.k || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            e((ViewGroup.MarginLayoutParams) layoutParams);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.b;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.U();
            }
        }

        @Override // android.view.View
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : a);
            super.setOnClickListener(onClickListener);
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        b = i2 >= 16 && i2 <= 19;
        c = new int[]{R$attr.O};
        f3413d = BaseTransientBottomBar.class.getSimpleName();
        a = new Handler(Looper.getMainLooper(), new h());
    }

    protected BaseTransientBottomBar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.f3414e = viewGroup;
        this.h = aVar;
        this.f3415f = context;
        ThemeEnforcement.checkAppCompatTheme(context);
        t tVar = (t) LayoutInflater.from(context).inflate(x(), viewGroup, false);
        this.f3416g = tVar;
        tVar.setBaseTransientBottomBar(this);
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
            snackbarContentLayout.c(tVar.getActionTextColorAlpha());
            snackbarContentLayout.setMaxInlineActionWidth(tVar.getMaxInlineActionWidth());
        }
        tVar.addView(view);
        ViewCompat.setAccessibilityLiveRegion(tVar, 1);
        ViewCompat.setImportantForAccessibility(tVar, 1);
        ViewCompat.setFitsSystemWindows(tVar, true);
        ViewCompat.setOnApplyWindowInsetsListener(tVar, new j());
        ViewCompat.setAccessibilityDelegate(tVar, new k());
        this.v = (AccessibilityManager) context.getSystemService("accessibility");
    }

    private boolean D() {
        ViewGroup.LayoutParams layoutParams = this.f3416g.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof SwipeDismissBehavior);
    }

    private void J() {
        this.r = p();
        U();
    }

    private void L(CoordinatorLayout.LayoutParams layoutParams) {
        SwipeDismissBehavior<? extends View> swipeDismissBehaviorU = this.u;
        if (swipeDismissBehaviorU == null) {
            swipeDismissBehaviorU = u();
        }
        if (swipeDismissBehaviorU instanceof Behavior) {
            ((Behavior) swipeDismissBehaviorU).l(this);
        }
        swipeDismissBehaviorU.g(new n());
        layoutParams.setBehavior(swipeDismissBehaviorU);
        if (t() == null) {
            layoutParams.insetEdge = 80;
        }
    }

    private boolean N() {
        return this.q > 0 && !this.j && D();
    }

    private void P() {
        if (M()) {
            n();
            return;
        }
        if (this.f3416g.getParent() != null) {
            this.f3416g.setVisibility(0);
        }
        I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        ValueAnimator valueAnimatorS = s(0.0f, 1.0f);
        ValueAnimator valueAnimatorV = v(0.8f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorS, valueAnimatorV);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new p());
        animatorSet.start();
    }

    private void R(int i2) {
        ValueAnimator valueAnimatorS = s(1.0f, 0.0f);
        valueAnimatorS.setDuration(75L);
        valueAnimatorS.addListener(new a(i2));
        valueAnimatorS.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        int iY = y();
        if (b) {
            ViewCompat.offsetTopAndBottom(this.f3416g, iY);
        } else {
            this.f3416g.setTranslationY(iY);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(iY, 0);
        valueAnimator.setInterpolator(AnimationUtils.b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new d());
        valueAnimator.addUpdateListener(new e(iY));
        valueAnimator.start();
    }

    private void T(int i2) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, y());
        valueAnimator.setInterpolator(AnimationUtils.b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new f(i2));
        valueAnimator.addUpdateListener(new g());
        valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        ViewGroup.LayoutParams layoutParams = this.f3416g.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || this.f3416g.j == null) {
            Log.w(f3413d, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        if (this.f3416g.getParent() == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = this.f3416g.j.bottom + (t() != null ? this.r : this.n);
        marginLayoutParams.leftMargin = this.f3416g.j.left + this.o;
        marginLayoutParams.rightMargin = this.f3416g.j.right + this.p;
        marginLayoutParams.topMargin = this.f3416g.j.top;
        this.f3416g.requestLayout();
        if (Build.VERSION.SDK_INT < 29 || !N()) {
            return;
        }
        this.f3416g.removeCallbacks(this.m);
        this.f3416g.post(this.m);
    }

    private void o(int i2) {
        if (this.f3416g.getAnimationMode() == 1) {
            R(i2);
        } else {
            T(i2);
        }
    }

    private int p() {
        if (t() == null) {
            return 0;
        }
        int[] iArr = new int[2];
        t().getLocationOnScreen(iArr);
        int i2 = iArr[1];
        int[] iArr2 = new int[2];
        this.f3414e.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.f3414e.getHeight()) - i2;
    }

    private ValueAnimator s(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(AnimationUtils.a);
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    private ValueAnimator v(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(AnimationUtils.f3118d);
        valueAnimatorOfFloat.addUpdateListener(new c());
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(17)
    public int w() {
        WindowManager windowManager = (WindowManager) this.f3415f.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    private int y() {
        int height = this.f3416g.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f3416g.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int z() {
        int[] iArr = new int[2];
        this.f3416g.getLocationOnScreen(iArr);
        return iArr[1] + this.f3416g.getHeight();
    }

    protected boolean A() {
        TypedArray typedArrayObtainStyledAttributes = this.f3415f.obtainStyledAttributes(c);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    final void B(int i2) {
        if (M() && this.f3416g.getVisibility() == 0) {
            o(i2);
        } else {
            H(i2);
        }
    }

    public boolean C() {
        return com.google.android.material.snackbar.b.c().e(this.w);
    }

    void E() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = this.f3416g.getRootWindowInsets()) == null) {
            return;
        }
        this.q = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
        U();
    }

    void F() {
        if (C()) {
            a.post(new m());
        }
    }

    void G() {
        if (this.s) {
            P();
            this.s = false;
        }
    }

    void H(int i2) {
        com.google.android.material.snackbar.b.c().h(this.w);
        List<r<B>> list = this.t;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.t.get(size).a(this, i2);
            }
        }
        ViewParent parent = this.f3416g.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f3416g);
        }
    }

    void I() {
        com.google.android.material.snackbar.b.c().i(this.w);
        List<r<B>> list = this.t;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.t.get(size).b(this);
            }
        }
    }

    @NonNull
    public B K(int i2) {
        this.i = i2;
        return this;
    }

    boolean M() {
        AccessibilityManager accessibilityManager = this.v;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    final void O() {
        if (this.f3416g.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f3416g.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                L((CoordinatorLayout.LayoutParams) layoutParams);
            }
            this.f3416g.c(this.f3414e);
            J();
            this.f3416g.setVisibility(4);
        }
        if (ViewCompat.isLaidOut(this.f3416g)) {
            P();
        } else {
            this.s = true;
        }
    }

    void n() {
        this.f3416g.post(new o());
    }

    public void q() {
        r(3);
    }

    protected void r(int i2) {
        com.google.android.material.snackbar.b.c().b(this.w, i2);
    }

    @Nullable
    public View t() {
        if (this.k == null) {
            return null;
        }
        throw null;
    }

    @NonNull
    protected SwipeDismissBehavior<? extends View> u() {
        return new Behavior();
    }

    @LayoutRes
    protected int x() {
        return A() ? R$layout.t : R$layout.b;
    }
}
