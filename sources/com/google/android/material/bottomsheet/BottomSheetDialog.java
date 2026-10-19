package com.google.android.material.bottomsheet;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.shape.MaterialShapeDrawable;

/* JADX INFO: loaded from: classes3.dex */
public class BottomSheetDialog extends AppCompatDialog {
    private BottomSheetBehavior<FrameLayout> a;
    private FrameLayout b;
    private CoordinatorLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FrameLayout f3182d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f3183e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f3184f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3185g;
    private boolean h;
    private BottomSheetBehavior.f i;
    private boolean j;

    @NonNull
    private BottomSheetBehavior.f k;

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            if (BottomSheetDialog.this.i != null) {
                BottomSheetDialog.this.a.L(BottomSheetDialog.this.i);
            }
            if (windowInsetsCompat != null) {
                BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                bottomSheetDialog.i = new f(bottomSheetDialog.f3182d, windowInsetsCompat, null);
                BottomSheetDialog.this.a.s(BottomSheetDialog.this.i);
            }
            return windowInsetsCompat;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
            if (bottomSheetDialog.f3184f && bottomSheetDialog.isShowing() && BottomSheetDialog.this.j()) {
                BottomSheetDialog.this.cancel();
            }
        }
    }

    class c extends AccessibilityDelegateCompat {
        c() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!BottomSheetDialog.this.f3184f) {
                accessibilityNodeInfoCompat.setDismissable(false);
            } else {
                accessibilityNodeInfoCompat.addAction(1048576);
                accessibilityNodeInfoCompat.setDismissable(true);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i == 1048576) {
                BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                if (bottomSheetDialog.f3184f) {
                    bottomSheetDialog.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i, bundle);
        }
    }

    class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    class e extends BottomSheetBehavior.f {
        e() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void b(@NonNull View view, float f2) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void c(@NonNull View view, int i) {
            if (i == 5) {
                BottomSheetDialog.this.cancel();
            }
        }
    }

    private static class f extends BottomSheetBehavior.f {
        private final boolean a;
        private final boolean b;
        private final WindowInsetsCompat c;

        private f(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            this.c = windowInsetsCompat;
            boolean z = Build.VERSION.SDK_INT >= 23 && (view.getSystemUiVisibility() & 8192) != 0;
            this.b = z;
            MaterialShapeDrawable materialShapeDrawableD = BottomSheetBehavior.from(view).D();
            ColorStateList colorStateListW = materialShapeDrawableD != null ? materialShapeDrawableD.w() : ViewCompat.getBackgroundTintList(view);
            if (colorStateListW != null) {
                this.a = MaterialColors.isColorLight(colorStateListW.getDefaultColor());
            } else if (view.getBackground() instanceof ColorDrawable) {
                this.a = MaterialColors.isColorLight(((ColorDrawable) view.getBackground()).getColor());
            } else {
                this.a = z;
            }
        }

        /* synthetic */ f(View view, WindowInsetsCompat windowInsetsCompat, a aVar) {
            this(view, windowInsetsCompat);
        }

        private void d(View view) {
            if (view.getTop() < this.c.getSystemWindowInsetTop()) {
                BottomSheetDialog.setLightStatusBar(view, this.a);
                view.setPadding(view.getPaddingLeft(), this.c.getSystemWindowInsetTop() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
            } else if (view.getTop() != 0) {
                BottomSheetDialog.setLightStatusBar(view, this.b);
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        void a(@NonNull View view) {
            d(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void b(@NonNull View view, float f2) {
            d(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void c(@NonNull View view, int i) {
            d(view);
        }
    }

    public BottomSheetDialog(@NonNull Context context, @StyleRes int i) {
        super(context, getThemeResId(context, i));
        this.f3184f = true;
        this.f3185g = true;
        this.k = new e();
        supportRequestWindowFeature(1);
        this.j = getContext().getTheme().obtainStyledAttributes(new int[]{R$attr.y}).getBoolean(0, false);
    }

    private FrameLayout f() {
        if (this.b == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R$layout.a, null);
            this.b = frameLayout;
            this.c = (CoordinatorLayout) frameLayout.findViewById(R$id.f3098d);
            FrameLayout frameLayout2 = (FrameLayout) this.b.findViewById(R$id.f3099e);
            this.f3182d = frameLayout2;
            BottomSheetBehavior<FrameLayout> bottomSheetBehaviorFrom = BottomSheetBehavior.from(frameLayout2);
            this.a = bottomSheetBehaviorFrom;
            bottomSheetBehaviorFrom.s(this.k);
            this.a.V(this.f3184f);
        }
        return this.b;
    }

    private static int getThemeResId(@NonNull Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(R$attr.c, typedValue, true) ? typedValue.resourceId : R$style.f3111e;
    }

    private View k(int i, @Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        f();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.b.findViewById(R$id.f3098d);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        if (this.j) {
            ViewCompat.setOnApplyWindowInsetsListener(this.f3182d, new a());
        }
        this.f3182d.removeAllViews();
        if (layoutParams == null) {
            this.f3182d.addView(view);
        } else {
            this.f3182d.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R$id.W).setOnClickListener(new b());
        ViewCompat.setAccessibilityDelegate(this.f3182d, new c());
        this.f3182d.setOnTouchListener(new d());
        return this.b;
    }

    public static void setLightStatusBar(@NonNull View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            int systemUiVisibility = view.getSystemUiVisibility();
            view.setSystemUiVisibility(z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        BottomSheetBehavior<FrameLayout> bottomSheetBehaviorG = g();
        if (!this.f3183e || bottomSheetBehaviorG.E() == 5) {
            super.cancel();
        } else {
            bottomSheetBehaviorG.c0(5);
        }
    }

    @NonNull
    public BottomSheetBehavior<FrameLayout> g() {
        if (this.a == null) {
            f();
        }
        return this.a;
    }

    public boolean h() {
        return this.f3183e;
    }

    void i() {
        this.a.L(this.k);
    }

    boolean j() {
        if (!this.h) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
            this.f3185g = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
            this.h = true;
        }
        return this.f3185g;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window == null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        boolean z = this.j && Color.alpha(window.getNavigationBarColor()) < 255;
        FrameLayout frameLayout = this.b;
        if (frameLayout != null) {
            frameLayout.setFitsSystemWindows(!z);
        }
        CoordinatorLayout coordinatorLayout = this.c;
        if (coordinatorLayout != null) {
            coordinatorLayout.setFitsSystemWindows(!z);
        }
        if (z) {
            window.getDecorView().setSystemUiVisibility(768);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 21) {
                window.setStatusBarColor(0);
                window.addFlags(Integer.MIN_VALUE);
                if (i < 23) {
                    window.addFlags(67108864);
                }
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    protected void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.a;
        if (bottomSheetBehavior == null || bottomSheetBehavior.E() != 5) {
            return;
        }
        this.a.c0(4);
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.f3184f != z) {
            this.f3184f = z;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.a;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.V(z);
            }
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f3184f) {
            this.f3184f = true;
        }
        this.f3185g = z;
        this.h = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@LayoutRes int i) {
        super.setContentView(k(i, null, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(k(0, view, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(k(0, view, layoutParams));
    }
}
