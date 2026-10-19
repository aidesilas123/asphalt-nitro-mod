package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.animation.AnimationUtils;

/* JADX INFO: loaded from: classes3.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private int a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private ViewPropertyAnimator f3157d;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f3157d = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.a = 0;
        this.b = 2;
        this.c = 0;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        this.b = 2;
        this.c = 0;
    }

    private void b(@NonNull V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f3157d = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new a());
    }

    public boolean c() {
        return this.b == 1;
    }

    public boolean d() {
        return this.b == 2;
    }

    public void e(@NonNull V v, @Dimension int i) {
        this.c = i;
        if (this.b == 1) {
            v.setTranslationY(this.a + i);
        }
    }

    public void f(@NonNull V v) {
        g(v, true);
    }

    public void g(@NonNull V v, boolean z) {
        if (c()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f3157d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.b = 1;
        int i = this.a + this.c;
        if (z) {
            b(v, i, 175L, AnimationUtils.c);
        } else {
            v.setTranslationY(i);
        }
    }

    public void h(@NonNull V v) {
        i(v, true);
    }

    public void i(@NonNull V v, boolean z) {
        if (d()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f3157d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.b = 2;
        if (z) {
            b(v, 0, 225L, AnimationUtils.f3118d);
        } else {
            v.setTranslationY(0);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        this.a = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return super.onLayoutChild(coordinatorLayout, v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
        if (i2 > 0) {
            f(v);
        } else if (i2 < 0) {
            h(v);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        return i == 2;
    }
}
