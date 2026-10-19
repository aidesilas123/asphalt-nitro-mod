package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.progressindicator.a;

/* JADX INFO: loaded from: classes3.dex */
public final class DeterminateDrawable<S extends com.google.android.material.progressindicator.a> extends d {
    private static final FloatPropertyCompat<DeterminateDrawable> p = new a("indicatorLevel");
    private e<S> q;
    private final SpringForce r;
    private final SpringAnimation s;
    private float t;
    private boolean u;

    class a extends FloatPropertyCompat<DeterminateDrawable> {
        a(String str) {
            super(str);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(DeterminateDrawable determinateDrawable) {
            return determinateDrawable.r() * 10000.0f;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(DeterminateDrawable determinateDrawable, float f2) {
            determinateDrawable.t(f2 / 10000.0f);
        }
    }

    DeterminateDrawable(@NonNull Context context, @NonNull com.google.android.material.progressindicator.a aVar, @NonNull e<S> eVar) {
        super(context, aVar);
        this.u = false;
        s(eVar);
        SpringForce springForce = new SpringForce();
        this.r = springForce;
        springForce.setDampingRatio(1.0f);
        springForce.setStiffness(50.0f);
        SpringAnimation springAnimation = new SpringAnimation(this, p);
        this.s = springAnimation;
        springAnimation.setSpring(springForce);
        k(1.0f);
    }

    @NonNull
    public static DeterminateDrawable<CircularProgressIndicatorSpec> createCircularDrawable(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return new DeterminateDrawable<>(context, circularProgressIndicatorSpec, new b(circularProgressIndicatorSpec));
    }

    @NonNull
    public static DeterminateDrawable<LinearProgressIndicatorSpec> createLinearDrawable(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return new DeterminateDrawable<>(context, linearProgressIndicatorSpec, new g(linearProgressIndicatorSpec));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float r() {
        return this.t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(float f2) {
        this.t = f2;
        invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.d, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            this.q.g(canvas, g());
            this.q.c(canvas, this.n);
            this.q.b(canvas, this.n, 0.0f, r(), MaterialColors.compositeARGBWithAlpha(this.c.c[0], getAlpha()));
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.q.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.q.e();
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.d
    public /* bridge */ /* synthetic */ boolean h() {
        return super.h();
    }

    @Override // com.google.android.material.progressindicator.d
    public /* bridge */ /* synthetic */ boolean i() {
        return super.i();
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.s.skipToEnd();
        t(getLevel() / 10000.0f);
    }

    @Override // com.google.android.material.progressindicator.d
    public /* bridge */ /* synthetic */ boolean n(boolean z, boolean z2, boolean z3) {
        return super.n(z, z2, z3);
    }

    @Override // com.google.android.material.progressindicator.d
    boolean o(boolean z, boolean z2, boolean z3) {
        boolean zO = super.o(z, z2, z3);
        float fA = this.f3351d.a(this.b.getContentResolver());
        if (fA == 0.0f) {
            this.u = true;
        } else {
            this.u = false;
            this.r.setStiffness(50.0f / fA);
        }
        return zO;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        if (this.u) {
            this.s.skipToEnd();
            t(i / 10000.0f);
            return true;
        }
        this.s.setStartValue(r() * 10000.0f);
        this.s.animateToFinalPosition(i);
        return true;
    }

    @Override // com.google.android.material.progressindicator.d, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        super.registerAnimationCallback(animationCallback);
    }

    void s(@NonNull e<S> eVar) {
        this.q = eVar;
        eVar.f(this);
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(@Nullable ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2);
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    @Override // com.google.android.material.progressindicator.d, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }
}
