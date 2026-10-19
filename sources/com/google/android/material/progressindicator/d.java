package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.animation.AnimationUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: DrawableWithAnimatedVisibilityChange.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class d extends Drawable implements Animatable2Compat {
    private static final Property<d, Float> a = new c(Float.class, "growFraction");
    final Context b;
    final com.google.android.material.progressindicator.a c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ValueAnimator f3352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ValueAnimator f3353f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3354g;
    private boolean h;
    private float i;
    private List<Animatable2Compat.AnimationCallback> j;
    private Animatable2Compat.AnimationCallback k;
    private boolean l;
    private float m;
    private int o;
    final Paint n = new Paint();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    AnimatorDurationScaleProvider f3351d = new AnimatorDurationScaleProvider();

    /* JADX INFO: compiled from: DrawableWithAnimatedVisibilityChange.java */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            d.this.e();
        }
    }

    /* JADX INFO: compiled from: DrawableWithAnimatedVisibilityChange.java */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            d.super.setVisible(false, false);
            d.this.d();
        }
    }

    /* JADX INFO: compiled from: DrawableWithAnimatedVisibilityChange.java */
    class c extends Property<d, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(d dVar) {
            return Float.valueOf(dVar.g());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(d dVar, Float f2) {
            dVar.k(f2.floatValue());
        }
    }

    d(@NonNull Context context, @NonNull com.google.android.material.progressindicator.a aVar) {
        this.b = context;
        this.c = aVar;
        setAlpha(255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Animatable2Compat.AnimationCallback animationCallback = this.k;
        if (animationCallback != null) {
            animationCallback.onAnimationEnd(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.j;
        if (list == null || this.l) {
            return;
        }
        Iterator<Animatable2Compat.AnimationCallback> it = list.iterator();
        while (it.hasNext()) {
            it.next().onAnimationEnd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Animatable2Compat.AnimationCallback animationCallback = this.k;
        if (animationCallback != null) {
            animationCallback.onAnimationStart(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.j;
        if (list == null || this.l) {
            return;
        }
        Iterator<Animatable2Compat.AnimationCallback> it = list.iterator();
        while (it.hasNext()) {
            it.next().onAnimationStart(this);
        }
    }

    private void f(@NonNull ValueAnimator... valueAnimatorArr) {
        boolean z = this.l;
        this.l = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.end();
        }
        this.l = z;
    }

    private void j() {
        if (this.f3352e == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, a, 0.0f, 1.0f);
            this.f3352e = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.f3352e.setInterpolator(AnimationUtils.b);
            m(this.f3352e);
        }
        if (this.f3353f == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, a, 1.0f, 0.0f);
            this.f3353f = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(500L);
            this.f3353f.setInterpolator(AnimationUtils.b);
            l(this.f3353f);
        }
    }

    private void l(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f3353f;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
        }
        this.f3353f = valueAnimator;
        valueAnimator.addListener(new b());
    }

    private void m(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f3352e;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
        }
        this.f3352e = valueAnimator;
        valueAnimator.addListener(new a());
    }

    public void clearAnimationCallbacks() {
        this.j.clear();
        this.j = null;
    }

    float g() {
        if (this.c.b() || this.c.a()) {
            return (this.h || this.f3354g) ? this.i : this.m;
        }
        return 1.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public boolean h() {
        ValueAnimator valueAnimator = this.f3353f;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.h;
    }

    public boolean i() {
        ValueAnimator valueAnimator = this.f3352e;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f3354g;
    }

    public boolean isRunning() {
        return i() || h();
    }

    void k(@FloatRange(from = 0.0d, to = 1.0d) float f2) {
        if (this.m != f2) {
            this.m = f2;
            invalidateSelf();
        }
    }

    public boolean n(boolean z, boolean z2, boolean z3) {
        return o(z, z2, z3 && this.f3351d.a(this.b.getContentResolver()) > 0.0f);
    }

    boolean o(boolean z, boolean z2, boolean z3) {
        j();
        if (!isVisible() && !z) {
            return false;
        }
        ValueAnimator valueAnimator = z ? this.f3352e : this.f3353f;
        if (!z3) {
            if (valueAnimator.isRunning()) {
                valueAnimator.end();
            } else {
                f(valueAnimator);
            }
            return super.setVisible(z, false);
        }
        if (z3 && valueAnimator.isRunning()) {
            return false;
        }
        boolean z4 = !z || super.setVisible(z, false);
        if (!(z ? this.c.b() : this.c.a())) {
            f(valueAnimator);
            return z4;
        }
        if (z2 || Build.VERSION.SDK_INT < 19 || !valueAnimator.isPaused()) {
            valueAnimator.start();
        } else {
            valueAnimator.resume();
        }
        return z4;
    }

    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (this.j == null) {
            this.j = new ArrayList();
        }
        if (this.j.contains(animationCallback)) {
            return;
        }
        this.j.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.o = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.n.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return n(z, z2, true);
    }

    public void start() {
        o(true, true, false);
    }

    public void stop() {
        o(false, true, false);
    }

    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.j;
        if (list == null || !list.contains(animationCallback)) {
            return false;
        }
        this.j.remove(animationCallback);
        if (!this.j.isEmpty()) {
            return true;
        }
        this.j = null;
        return true;
    }
}
