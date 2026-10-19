package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Rect f3134d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Rect f3135e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3136f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3137g;

    public HeaderScrollingViewBehavior() {
        this.f3134d = new Rect();
        this.f3135e = new Rect();
        this.f3136f = 0;
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3134d = new Rect();
        this.f3135e = new Rect();
        this.f3136f = 0;
    }

    private static int j(int i) {
        if (i == 0) {
            return 8388659;
        }
        return i;
    }

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    protected void b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i) {
        View viewD = d(coordinatorLayout.getDependencies(view));
        if (viewD == null) {
            super.b(coordinatorLayout, view, i);
            this.f3136f = 0;
            return;
        }
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
        Rect rect = this.f3134d;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, viewD.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((coordinatorLayout.getHeight() + viewD.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            rect.left += lastWindowInsets.getSystemWindowInsetLeft();
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        Rect rect2 = this.f3135e;
        GravityCompat.apply(j(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        int iE = e(viewD);
        view.layout(rect2.left, rect2.top - iE, rect2.right, rect2.bottom - iE);
        this.f3136f = rect2.top - viewD.getBottom();
    }

    @Nullable
    abstract View d(List<View> list);

    final int e(View view) {
        if (this.f3137g == 0) {
            return 0;
        }
        float f2 = f(view);
        int i = this.f3137g;
        return MathUtils.clamp((int) (f2 * i), 0, i);
    }

    abstract float f(View view);

    public final int g() {
        return this.f3137g;
    }

    int h(@NonNull View view) {
        return view.getMeasuredHeight();
    }

    final int i() {
        return this.f3136f;
    }

    public final void k(int i) {
        this.f3137g = i;
    }

    protected boolean l() {
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i, int i2, int i3, int i4) {
        View viewD;
        WindowInsetsCompat lastWindowInsets;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (viewD = d(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (ViewCompat.getFitsSystemWindows(viewD) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.getSystemWindowInsetTop() + lastWindowInsets.getSystemWindowInsetBottom();
        }
        int iH = size + h(viewD);
        int measuredHeight = viewD.getMeasuredHeight();
        if (l()) {
            view.setTranslationY(-measuredHeight);
        } else {
            iH -= measuredHeight;
        }
        coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec(iH, i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }
}
