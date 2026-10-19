package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimationUtilsCompat;
import com.google.android.material.R$animator;
import com.google.android.material.color.MaterialColors;
import java.util.Arrays;

/* JADX INFO: compiled from: LinearIndeterminateDisjointAnimatorDelegate.java */
/* JADX INFO: loaded from: classes3.dex */
final class i extends f<ObjectAnimator> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f3361d = {533, 567, 850, 750};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f3362e = {1267, 1000, 333, 0};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Property<i, Float> f3363f = new c(Float.class, "animationFraction");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ObjectAnimator f3364g;
    private ObjectAnimator h;
    private final Interpolator[] i;
    private final com.google.android.material.progressindicator.a j;
    private int k;
    private boolean l;
    private float m;
    Animatable2Compat.AnimationCallback n;

    /* JADX INFO: compiled from: LinearIndeterminateDisjointAnimatorDelegate.java */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            i iVar = i.this;
            iVar.k = (iVar.k + 1) % i.this.j.c.length;
            i.this.l = true;
        }
    }

    /* JADX INFO: compiled from: LinearIndeterminateDisjointAnimatorDelegate.java */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            i.this.a();
            i iVar = i.this;
            Animatable2Compat.AnimationCallback animationCallback = iVar.n;
            if (animationCallback != null) {
                animationCallback.onAnimationEnd(iVar.a);
            }
        }
    }

    /* JADX INFO: compiled from: LinearIndeterminateDisjointAnimatorDelegate.java */
    class c extends Property<i, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(i iVar) {
            return Float.valueOf(iVar.j());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(i iVar, Float f2) {
            iVar.n(f2.floatValue());
        }
    }

    public i(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.k = 0;
        this.n = null;
        this.j = linearProgressIndicatorSpec;
        this.i = new Interpolator[]{AnimationUtilsCompat.loadInterpolator(context, R$animator.a), AnimationUtilsCompat.loadInterpolator(context, R$animator.b), AnimationUtilsCompat.loadInterpolator(context, R$animator.c), AnimationUtilsCompat.loadInterpolator(context, R$animator.f3079d)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float j() {
        return this.m;
    }

    private void k() {
        if (this.f3364g == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f3363f, 0.0f, 1.0f);
            this.f3364g = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(1800L);
            this.f3364g.setInterpolator(null);
            this.f3364g.setRepeatCount(-1);
            this.f3364g.addListener(new a());
        }
        if (this.h == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, f3363f, 1.0f);
            this.h = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(1800L);
            this.h.setInterpolator(null);
            this.h.addListener(new b());
        }
    }

    private void l() {
        if (this.l) {
            Arrays.fill(this.c, MaterialColors.compositeARGBWithAlpha(this.j.c[this.k], this.a.getAlpha()));
            this.l = false;
        }
    }

    private void o(int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            this.b[i2] = Math.max(0.0f, Math.min(1.0f, this.i[i2].getInterpolation(b(i, f3362e[i2], f3361d[i2]))));
        }
    }

    @Override // com.google.android.material.progressindicator.f
    public void a() {
        ObjectAnimator objectAnimator = this.f3364g;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.f
    public void d() {
        k();
        m();
        this.f3364g.start();
    }

    @VisibleForTesting
    void m() {
        this.k = 0;
        int iCompositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(this.j.c[0], this.a.getAlpha());
        int[] iArr = this.c;
        iArr[0] = iCompositeARGBWithAlpha;
        iArr[1] = iCompositeARGBWithAlpha;
    }

    @VisibleForTesting
    void n(float f2) {
        this.m = f2;
        o((int) (f2 * 1800.0f));
        l();
        this.a.invalidateSelf();
    }
}
