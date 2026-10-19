package com.google.android.material.bottomsheet;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private static final int a = R$style.h;
    private final BottomSheetBehavior<V>.g A;

    @Nullable
    private ValueAnimator B;
    int C;
    int D;
    int E;
    float F;
    int G;
    float H;
    boolean I;
    private boolean J;
    private boolean K;
    int L;
    int M;

    @Nullable
    ViewDragHelper N;
    private boolean O;
    private int P;
    private boolean Q;
    private int R;
    int S;
    int T;

    @Nullable
    WeakReference<V> U;

    @Nullable
    WeakReference<View> V;

    @NonNull
    private final ArrayList<f> W;

    @Nullable
    private VelocityTracker X;
    int Y;
    private int Z;
    boolean a0;
    private int b;

    @Nullable
    private Map<View, Integer> b0;
    private boolean c;
    private int c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3175d;
    private final ViewDragHelper.Callback d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f3176e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3177f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3178g;
    private int h;
    private int i;
    private MaterialShapeDrawable j;

    @Nullable
    private ColorStateList k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private int w;
    private int x;
    private ShapeAppearanceModel y;
    private boolean z;

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        final int a;
        int b;
        boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f3179d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f3180e;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
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

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readInt() == 1;
            this.f3179d = parcel.readInt() == 1;
            this.f3180e = parcel.readInt() == 1;
        }

        public SavedState(Parcelable parcelable, @NonNull BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.a = bottomSheetBehavior.L;
            this.b = ((BottomSheetBehavior) bottomSheetBehavior).f3177f;
            this.c = ((BottomSheetBehavior) bottomSheetBehavior).c;
            this.f3179d = bottomSheetBehavior.I;
            this.f3180e = ((BottomSheetBehavior) bottomSheetBehavior).J;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c ? 1 : 0);
            parcel.writeInt(this.f3179d ? 1 : 0);
            parcel.writeInt(this.f3180e ? 1 : 0);
        }
    }

    class a implements Runnable {
        final /* synthetic */ View a;
        final /* synthetic */ int b;

        a(View view, int i) {
            this.a = view;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.k0(this.a, this.b, false);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.j != null) {
                BottomSheetBehavior.this.j.Y(fFloatValue);
            }
        }
    }

    class c implements ViewUtils.e {
        final /* synthetic */ boolean a;

        c(boolean z) {
            this.a = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00a3  */
        @Override // com.google.android.material.internal.ViewUtils.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public androidx.core.view.WindowInsetsCompat a(android.view.View r11, androidx.core.view.WindowInsetsCompat r12, com.google.android.material.internal.ViewUtils.f r13) {
            /*
                Method dump skipped, instruction units count: 205
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.c.a(android.view.View, androidx.core.view.WindowInsetsCompat, com.google.android.material.internal.ViewUtils$f):androidx.core.view.WindowInsetsCompat");
        }
    }

    class d extends ViewDragHelper.Callback {
        private long a;

        d() {
        }

        private boolean a(@NonNull View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.T + bottomSheetBehavior.C()) / 2;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            int iC = BottomSheetBehavior.this.C();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return MathUtils.clamp(i, iC, bottomSheetBehavior.I ? bottomSheetBehavior.T : bottomSheetBehavior.G);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(@NonNull View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.I ? bottomSheetBehavior.T : bottomSheetBehavior.G;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (i == 1 && BottomSheetBehavior.this.K) {
                BottomSheetBehavior.this.d0(1);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.z(i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:6:0x0010  */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onViewReleased(@androidx.annotation.NonNull android.view.View r9, float r10, float r11) {
            /*
                Method dump skipped, instruction units count: 303
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.d.onViewReleased(android.view.View, float, float):void");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.L;
            if (i2 == 1 || bottomSheetBehavior.a0) {
                return false;
            }
            if (i2 == 3 && bottomSheetBehavior.Y == i) {
                WeakReference<View> weakReference = bottomSheetBehavior.V;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            this.a = System.currentTimeMillis();
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.U;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    class e implements AccessibilityViewCommand {
        final /* synthetic */ int a;

        e(int i) {
            this.a = i;
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            BottomSheetBehavior.this.c0(this.a);
            return true;
        }
    }

    public static abstract class f {
        void a(@NonNull View view) {
        }

        public abstract void b(@NonNull View view, float f2);

        public abstract void c(@NonNull View view, int i);
    }

    private class g {
        private int a;
        private boolean b;
        private final Runnable c;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.b = false;
                ViewDragHelper viewDragHelper = BottomSheetBehavior.this.N;
                if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                    g gVar = g.this;
                    gVar.c(gVar.a);
                    return;
                }
                g gVar2 = g.this;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.L == 2) {
                    bottomSheetBehavior.d0(gVar2.a);
                }
            }
        }

        private g() {
            this.c = new a();
        }

        /* synthetic */ g(BottomSheetBehavior bottomSheetBehavior, a aVar) {
            this();
        }

        void c(int i) {
            WeakReference<V> weakReference = BottomSheetBehavior.this.U;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.a = i;
            if (this.b) {
                return;
            }
            ViewCompat.postOnAnimation(BottomSheetBehavior.this.U.get(), this.c);
            this.b = true;
        }
    }

    public BottomSheetBehavior() {
        this.b = 0;
        this.c = true;
        this.f3175d = false;
        this.l = -1;
        this.m = -1;
        this.A = new g(this, null);
        this.F = 0.5f;
        this.H = -1.0f;
        this.K = true;
        this.L = 4;
        this.M = 4;
        this.W = new ArrayList<>();
        this.c0 = -1;
        this.d0 = new d();
    }

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i;
        super(context, attributeSet);
        this.b = 0;
        this.c = true;
        this.f3175d = false;
        this.l = -1;
        this.m = -1;
        this.A = new g(this, null);
        this.F = 0.5f;
        this.H = -1.0f;
        this.K = true;
        this.L = 4;
        this.M = 4;
        this.W = new ArrayList<>();
        this.c0 = -1;
        this.d0 = new d();
        this.i = context.getResources().getDimensionPixelSize(R$dimen.e0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.L);
        int i2 = R$styleable.P;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            this.k = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, i2);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.g0)) {
            this.y = ShapeAppearanceModel.builder(context, attributeSet, R$attr.f3083d, a).m();
        }
        x(context);
        y();
        if (Build.VERSION.SDK_INT >= 21) {
            this.H = typedArrayObtainStyledAttributes.getDimension(R$styleable.O, -1.0f);
        }
        int i3 = R$styleable.M;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            X(typedArrayObtainStyledAttributes.getDimensionPixelSize(i3, -1));
        }
        int i4 = R$styleable.N;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            W(typedArrayObtainStyledAttributes.getDimensionPixelSize(i4, -1));
        }
        int i5 = R$styleable.V;
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(i5);
        if (typedValuePeekValue == null || (i = typedValuePeekValue.data) != -1) {
            Y(typedArrayObtainStyledAttributes.getDimensionPixelSize(i5, -1));
        } else {
            Y(i);
        }
        V(typedArrayObtainStyledAttributes.getBoolean(R$styleable.U, false));
        T(typedArrayObtainStyledAttributes.getBoolean(R$styleable.Y, false));
        S(typedArrayObtainStyledAttributes.getBoolean(R$styleable.S, true));
        b0(typedArrayObtainStyledAttributes.getBoolean(R$styleable.X, false));
        Q(typedArrayObtainStyledAttributes.getBoolean(R$styleable.Q, true));
        a0(typedArrayObtainStyledAttributes.getInt(R$styleable.W, 0));
        U(typedArrayObtainStyledAttributes.getFloat(R$styleable.T, 0.5f));
        int i6 = R$styleable.R;
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(i6);
        if (typedValuePeekValue2 == null || typedValuePeekValue2.type != 16) {
            R(typedArrayObtainStyledAttributes.getDimensionPixelOffset(i6, 0));
        } else {
            R(typedValuePeekValue2.data);
        }
        this.p = typedArrayObtainStyledAttributes.getBoolean(R$styleable.c0, false);
        this.q = typedArrayObtainStyledAttributes.getBoolean(R$styleable.d0, false);
        this.r = typedArrayObtainStyledAttributes.getBoolean(R$styleable.e0, false);
        this.s = typedArrayObtainStyledAttributes.getBoolean(R$styleable.f0, true);
        this.t = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Z, false);
        this.u = typedArrayObtainStyledAttributes.getBoolean(R$styleable.a0, false);
        this.v = typedArrayObtainStyledAttributes.getBoolean(R$styleable.b0, false);
        typedArrayObtainStyledAttributes.recycle();
        this.f3176e = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    private int B(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    private int F(int i) {
        if (i == 3) {
            return C();
        }
        if (i == 4) {
            return this.G;
        }
        if (i == 5) {
            return this.T;
        }
        if (i == 6) {
            return this.E;
        }
        throw new IllegalArgumentException("Invalid state to get top offset: " + i);
    }

    private float G() {
        VelocityTracker velocityTracker = this.X;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f3176e);
        return this.X.getYVelocity(this.Y);
    }

    private boolean J(V v) {
        ViewParent parent = v.getParent();
        return parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v);
    }

    private void M(V v, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i) {
        ViewCompat.replaceAccessibilityAction(v, accessibilityActionCompat, null, w(i));
    }

    private void N() {
        this.Y = -1;
        VelocityTracker velocityTracker = this.X;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.X = null;
        }
    }

    private void O(@NonNull SavedState savedState) {
        int i = this.b;
        if (i == 0) {
            return;
        }
        if (i == -1 || (i & 1) == 1) {
            this.f3177f = savedState.b;
        }
        if (i == -1 || (i & 2) == 2) {
            this.c = savedState.c;
        }
        if (i == -1 || (i & 4) == 4) {
            this.I = savedState.f3179d;
        }
        if (i == -1 || (i & 8) == 8) {
            this.J = savedState.f3180e;
        }
    }

    private void P(V v, Runnable runnable) {
        if (J(v)) {
            v.post(runnable);
        } else {
            runnable.run();
        }
    }

    private void e0(@NonNull View view) {
        boolean z = (Build.VERSION.SDK_INT < 29 || H() || this.f3178g) ? false : true;
        if (this.p || this.q || this.r || this.t || this.u || this.v || z) {
            ViewUtils.doOnApplyWindowInsets(view, new c(z));
        }
    }

    @NonNull
    public static <V extends View> BottomSheetBehavior<V> from(@NonNull V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    private boolean g0() {
        return this.N != null && (this.K || this.L == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(View view, int i, boolean z) {
        int iF = F(i);
        ViewDragHelper viewDragHelper = this.N;
        if (!(viewDragHelper != null && (!z ? !viewDragHelper.smoothSlideViewTo(view, view.getLeft(), iF) : !viewDragHelper.settleCapturedViewAt(view.getLeft(), iF)))) {
            d0(i);
            return;
        }
        d0(2);
        m0(i);
        this.A.c(i);
    }

    private void l0() {
        V v;
        WeakReference<V> weakReference = this.U;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(v, 524288);
        ViewCompat.removeAccessibilityAction(v, 262144);
        ViewCompat.removeAccessibilityAction(v, 1048576);
        int i = this.c0;
        if (i != -1) {
            ViewCompat.removeAccessibilityAction(v, i);
        }
        if (!this.c && this.L != 6) {
            this.c0 = r(v, R$string.a, 6);
        }
        if (this.I && this.L != 5) {
            M(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        int i2 = this.L;
        if (i2 == 3) {
            M(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, this.c ? 4 : 6);
            return;
        }
        if (i2 == 4) {
            M(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, this.c ? 3 : 6);
        } else {
            if (i2 != 6) {
                return;
            }
            M(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, 4);
            M(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    private void m0(int i) {
        ValueAnimator valueAnimator;
        if (i == 2) {
            return;
        }
        boolean z = i == 3;
        if (this.z != z) {
            this.z = z;
            if (this.j == null || (valueAnimator = this.B) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.B.reverse();
                return;
            }
            float f2 = z ? 0.0f : 1.0f;
            this.B.setFloatValues(1.0f - f2, f2);
            this.B.start();
        }
    }

    private void n0(boolean z) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.U;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                if (this.b0 != null) {
                    return;
                } else {
                    this.b0 = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.U.get()) {
                    if (z) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.b0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        if (this.f3175d) {
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    } else if (this.f3175d && (map = this.b0) != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, this.b0.get(childAt).intValue());
                    }
                }
            }
            if (!z) {
                this.b0 = null;
            } else if (this.f3175d) {
                this.U.get().sendAccessibilityEvent(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(boolean z) {
        V v;
        if (this.U != null) {
            t();
            if (this.L != 4 || (v = this.U.get()) == null) {
                return;
            }
            if (z) {
                c0(4);
            } else {
                v.requestLayout();
            }
        }
    }

    private int r(V v, @StringRes int i, int i2) {
        return ViewCompat.addAccessibilityAction(v, v.getResources().getString(i), w(i2));
    }

    private void t() {
        int iV = v();
        if (this.c) {
            this.G = Math.max(this.T - iV, this.D);
        } else {
            this.G = this.T - iV;
        }
    }

    private void u() {
        this.E = (int) (this.T * (1.0f - this.F));
    }

    private int v() {
        int i;
        return this.f3178g ? Math.min(Math.max(this.h, this.T - ((this.S * 9) / 16)), this.R) + this.w : (this.o || this.p || (i = this.n) <= 0) ? this.f3177f + this.w : Math.max(this.f3177f, i + this.i);
    }

    private AccessibilityViewCommand w(int i) {
        return new e(i);
    }

    private void x(@NonNull Context context) {
        if (this.y == null) {
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.y);
        this.j = materialShapeDrawable;
        materialShapeDrawable.M(context);
        ColorStateList colorStateList = this.k;
        if (colorStateList != null) {
            this.j.X(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
        this.j.setTint(typedValue.data);
    }

    private void y() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.B = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.B.addUpdateListener(new b());
    }

    @Nullable
    @VisibleForTesting
    View A(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View viewA = A(viewGroup.getChildAt(i));
            if (viewA != null) {
                return viewA;
            }
        }
        return null;
    }

    public int C() {
        if (this.c) {
            return this.D;
        }
        return Math.max(this.C, this.s ? 0 : this.x);
    }

    MaterialShapeDrawable D() {
        return this.j;
    }

    public int E() {
        return this.L;
    }

    public boolean H() {
        return this.o;
    }

    public boolean I() {
        return this.I;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean K() {
        return true;
    }

    public void L(@NonNull f fVar) {
        this.W.remove(fVar);
    }

    public void Q(boolean z) {
        this.K = z;
    }

    public void R(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.C = i;
    }

    public void S(boolean z) {
        if (this.c == z) {
            return;
        }
        this.c = z;
        if (this.U != null) {
            t();
        }
        d0((this.c && this.L == 6) ? 3 : this.L);
        l0();
    }

    public void T(boolean z) {
        this.o = z;
    }

    public void U(@FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f2) {
        if (f2 <= 0.0f || f2 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.F = f2;
        if (this.U != null) {
            u();
        }
    }

    public void V(boolean z) {
        if (this.I != z) {
            this.I = z;
            if (!z && this.L == 5) {
                c0(4);
            }
            l0();
        }
    }

    public void W(@Px int i) {
        this.m = i;
    }

    public void X(@Px int i) {
        this.l = i;
    }

    public void Y(int i) {
        Z(i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void Z(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = 1
            r1 = 0
            r2 = -1
            if (r4 != r2) goto Lc
            boolean r4 = r3.f3178g
            if (r4 != 0) goto L15
            r3.f3178g = r0
            goto L1f
        Lc:
            boolean r2 = r3.f3178g
            if (r2 != 0) goto L17
            int r2 = r3.f3177f
            if (r2 == r4) goto L15
            goto L17
        L15:
            r0 = 0
            goto L1f
        L17:
            r3.f3178g = r1
            int r4 = java.lang.Math.max(r1, r4)
            r3.f3177f = r4
        L1f:
            if (r0 == 0) goto L24
            r3.o0(r5)
        L24:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.Z(int, boolean):void");
    }

    public void a0(int i) {
        this.b = i;
    }

    public void b0(boolean z) {
        this.J = z;
    }

    public void c0(int i) {
        if (i == 1 || i == 2) {
            StringBuilder sb = new StringBuilder();
            sb.append("STATE_");
            sb.append(i == 1 ? "DRAGGING" : "SETTLING");
            sb.append(" should not be set externally.");
            throw new IllegalArgumentException(sb.toString());
        }
        if (!this.I && i == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i);
            return;
        }
        int i2 = (i == 6 && this.c && F(i) <= this.D) ? 3 : i;
        WeakReference<V> weakReference = this.U;
        if (weakReference == null || weakReference.get() == null) {
            d0(i);
        } else {
            V v = this.U.get();
            P(v, new a(v, i2));
        }
    }

    void d0(int i) {
        V v;
        if (this.L == i) {
            return;
        }
        this.L = i;
        if (i == 4 || i == 3 || i == 6 || (this.I && i == 5)) {
            this.M = i;
        }
        WeakReference<V> weakReference = this.U;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            n0(true);
        } else if (i == 6 || i == 5 || i == 4) {
            n0(false);
        }
        m0(i);
        for (int i2 = 0; i2 < this.W.size(); i2++) {
            this.W.get(i2).c(v, i);
        }
        l0();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean f0(long j, @FloatRange(from = 0.0d, to = 100.0d) float f2) {
        return false;
    }

    boolean h0(@NonNull View view, float f2) {
        if (this.J) {
            return true;
        }
        if (view.getTop() < this.G) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f2 * 0.1f)) - ((float) this.G)) / ((float) v()) > 0.5f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean i0() {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean j0() {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.U = null;
        this.N = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.U = null;
        this.N = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!v.isShown() || !this.K) {
            this.O = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            N();
        }
        if (this.X == null) {
            this.X = VelocityTracker.obtain();
        }
        this.X.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.Z = (int) motionEvent.getY();
            if (this.L != 2) {
                WeakReference<View> weakReference = this.V;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.isPointInChildBounds(view, x, this.Z)) {
                    this.Y = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.a0 = true;
                }
            }
            this.O = this.Y == -1 && !coordinatorLayout.isPointInChildBounds(v, x, this.Z);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.a0 = false;
            this.Y = -1;
            if (this.O) {
                this.O = false;
                return false;
            }
        }
        if (!this.O && (viewDragHelper = this.N) != null && viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.V;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.O || this.L == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.N == null || Math.abs(((float) this.Z) - motionEvent.getY()) <= ((float) this.N.getTouchSlop())) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.U == null) {
            this.h = coordinatorLayout.getResources().getDimensionPixelSize(R$dimen.b);
            e0(v);
            this.U = new WeakReference<>(v);
            MaterialShapeDrawable materialShapeDrawable = this.j;
            if (materialShapeDrawable != null) {
                ViewCompat.setBackground(v, materialShapeDrawable);
                MaterialShapeDrawable materialShapeDrawable2 = this.j;
                float elevation = this.H;
                if (elevation == -1.0f) {
                    elevation = ViewCompat.getElevation(v);
                }
                materialShapeDrawable2.W(elevation);
                boolean z = this.L == 3;
                this.z = z;
                this.j.Y(z ? 0.0f : 1.0f);
            } else {
                ColorStateList colorStateList = this.k;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(v, colorStateList);
                }
            }
            l0();
            if (ViewCompat.getImportantForAccessibility(v) == 0) {
                ViewCompat.setImportantForAccessibility(v, 1);
            }
        }
        if (this.N == null) {
            this.N = ViewDragHelper.create(coordinatorLayout, this.d0);
        }
        int top = v.getTop();
        coordinatorLayout.onLayoutChild(v, i);
        this.S = coordinatorLayout.getWidth();
        this.T = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.R = height;
        int i2 = this.T;
        int i3 = i2 - height;
        int i4 = this.x;
        if (i3 < i4) {
            if (this.s) {
                this.R = i2;
            } else {
                this.R = i2 - i4;
            }
        }
        this.D = Math.max(0, i2 - this.R);
        u();
        t();
        int i5 = this.L;
        if (i5 == 3) {
            ViewCompat.offsetTopAndBottom(v, C());
        } else if (i5 == 6) {
            ViewCompat.offsetTopAndBottom(v, this.E);
        } else if (this.I && i5 == 5) {
            ViewCompat.offsetTopAndBottom(v, this.T);
        } else if (i5 == 4) {
            ViewCompat.offsetTopAndBottom(v, this.G);
        } else if (i5 == 1 || i5 == 2) {
            ViewCompat.offsetTopAndBottom(v, top - v.getTop());
        }
        this.V = new WeakReference<>(A(v));
        for (int i6 = 0; i6 < this.W.size(); i6++) {
            this.W.get(i6).a(v);
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        v.measure(B(i, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.l, marginLayoutParams.width), B(i3, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, this.m, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f2, float f3) {
        WeakReference<View> weakReference;
        if (K() && (weakReference = this.V) != null && view == weakReference.get()) {
            return this.L != 3 || super.onNestedPreFling(coordinatorLayout, v, view, f2, f3);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.V;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (!K() || view == view2) {
            int top = v.getTop();
            int i4 = top - i2;
            if (i2 > 0) {
                if (i4 < C()) {
                    iArr[1] = top - C();
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    d0(3);
                } else {
                    if (!this.K) {
                        return;
                    }
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    d0(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                int i5 = this.G;
                if (i4 > i5 && !this.I) {
                    iArr[1] = top - i5;
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    d0(4);
                } else {
                    if (!this.K) {
                        return;
                    }
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    d0(1);
                }
            }
            z(v.getTop());
            this.P = i2;
            this.Q = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v, savedState.getSuperState());
        O(savedState);
        int i = savedState.a;
        if (i == 1 || i == 2) {
            this.L = 4;
            this.M = 4;
        } else {
            this.L = i;
            this.M = i;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @NonNull
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v), (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        this.P = 0;
        this.Q = false;
        return (i & 2) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a9  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onStopNestedScroll(@androidx.annotation.NonNull androidx.coordinatorlayout.widget.CoordinatorLayout r3, @androidx.annotation.NonNull V r4, @androidx.annotation.NonNull android.view.View r5, int r6) {
        /*
            r2 = this;
            int r3 = r4.getTop()
            int r6 = r2.C()
            r0 = 3
            if (r3 != r6) goto Lf
            r2.d0(r0)
            return
        Lf:
            boolean r3 = r2.K()
            if (r3 == 0) goto L24
            java.lang.ref.WeakReference<android.view.View> r3 = r2.V
            if (r3 == 0) goto L23
            java.lang.Object r3 = r3.get()
            if (r5 != r3) goto L23
            boolean r3 = r2.Q
            if (r3 != 0) goto L24
        L23:
            return
        L24:
            int r3 = r2.P
            r5 = 6
            r6 = 4
            if (r3 <= 0) goto L3a
            boolean r3 = r2.c
            if (r3 == 0) goto L30
            goto Laa
        L30:
            int r3 = r4.getTop()
            int r6 = r2.E
            if (r3 <= r6) goto Laa
            goto La9
        L3a:
            boolean r3 = r2.I
            if (r3 == 0) goto L4a
            float r3 = r2.G()
            boolean r3 = r2.h0(r4, r3)
            if (r3 == 0) goto L4a
            r0 = 5
            goto Laa
        L4a:
            int r3 = r2.P
            if (r3 != 0) goto L8e
            int r3 = r4.getTop()
            boolean r1 = r2.c
            if (r1 == 0) goto L68
            int r5 = r2.D
            int r5 = r3 - r5
            int r5 = java.lang.Math.abs(r5)
            int r1 = r2.G
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r5 >= r3) goto L92
            goto Laa
        L68:
            int r1 = r2.E
            if (r3 >= r1) goto L7e
            int r1 = r2.G
            int r1 = r3 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r3 >= r1) goto L77
            goto Laa
        L77:
            boolean r3 = r2.i0()
            if (r3 == 0) goto La9
            goto L92
        L7e:
            int r0 = r3 - r1
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.G
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L92
            goto La9
        L8e:
            boolean r3 = r2.c
            if (r3 == 0) goto L94
        L92:
            r0 = 4
            goto Laa
        L94:
            int r3 = r4.getTop()
            int r0 = r2.E
            int r0 = r3 - r0
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.G
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L92
        La9:
            r0 = 6
        Laa:
            r3 = 0
            r2.k0(r4, r0, r3)
            r2.Q = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.L == 1 && actionMasked == 0) {
            return true;
        }
        if (g0()) {
            this.N.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            N();
        }
        if (this.X == null) {
            this.X = VelocityTracker.obtain();
        }
        this.X.addMovement(motionEvent);
        if (g0() && actionMasked == 2 && !this.O && Math.abs(this.Z - motionEvent.getY()) > this.N.getTouchSlop()) {
            this.N.captureChildView(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.O;
    }

    public void s(@NonNull f fVar) {
        if (this.W.contains(fVar)) {
            return;
        }
        this.W.add(fVar);
    }

    void z(int i) {
        float f2;
        float fC;
        V v = this.U.get();
        if (v == null || this.W.isEmpty()) {
            return;
        }
        int i2 = this.G;
        if (i > i2 || i2 == C()) {
            int i3 = this.G;
            f2 = i3 - i;
            fC = this.T - i3;
        } else {
            int i4 = this.G;
            f2 = i4 - i;
            fC = i4 - C();
        }
        float f3 = f2 / fC;
        for (int i5 = 0; i5 < this.W.size(); i5++) {
            this.W.get(i5).b(v, f3);
        }
    }
}
