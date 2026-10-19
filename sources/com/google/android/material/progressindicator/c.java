package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.animation.ArgbEvaluatorCompat;
import com.google.android.material.color.MaterialColors;

/* JADX INFO: compiled from: CircularIndeterminateAnimatorDelegate.java */
/* JADX INFO: loaded from: classes3.dex */
final class c extends f<ObjectAnimator> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f3347d = {0, 1350, 2700, 4050};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f3348e = {667, 2017, 3367, 4717};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f3349f = {1000, 2350, 3700, 5050};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Property<c, Float> f3350g = new C0232c(Float.class, "animationFraction");
    private static final Property<c, Float> h = new d(Float.class, "completeEndFraction");
    private ObjectAnimator i;
    private ObjectAnimator j;
    private final FastOutSlowInInterpolator k;
    private final com.google.android.material.progressindicator.a l;
    private int m;
    private float n;
    private float o;
    Animatable2Compat.AnimationCallback p;

    /* JADX INFO: compiled from: CircularIndeterminateAnimatorDelegate.java */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            c cVar = c.this;
            cVar.m = (cVar.m + 4) % c.this.l.c.length;
        }
    }

    /* JADX INFO: compiled from: CircularIndeterminateAnimatorDelegate.java */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            c.this.a();
            c cVar = c.this;
            Animatable2Compat.AnimationCallback animationCallback = cVar.p;
            if (animationCallback != null) {
                animationCallback.onAnimationEnd(cVar.a);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CircularIndeterminateAnimatorDelegate.java */
    class C0232c extends Property<c, Float> {
        C0232c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(c cVar) {
            return Float.valueOf(cVar.k());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(c cVar, Float f2) {
            cVar.p(f2.floatValue());
        }
    }

    /* JADX INFO: compiled from: CircularIndeterminateAnimatorDelegate.java */
    class d extends Property<c, Float> {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(c cVar) {
            return Float.valueOf(cVar.l());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(c cVar, Float f2) {
            cVar.q(f2.floatValue());
        }
    }

    public c(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.m = 0;
        this.p = null;
        this.l = circularProgressIndicatorSpec;
        this.k = new FastOutSlowInInterpolator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float k() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float l() {
        return this.o;
    }

    private void m() {
        if (this.i == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f3350g, 0.0f, 1.0f);
            this.i = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(5400L);
            this.i.setInterpolator(null);
            this.i.setRepeatCount(-1);
            this.i.addListener(new a());
        }
        if (this.j == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, h, 0.0f, 1.0f);
            this.j = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(333L);
            this.j.setInterpolator(this.k);
            this.j.addListener(new b());
        }
    }

    private void n(int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            float fB = b(i, f3349f[i2], 333);
            if (fB >= 0.0f && fB <= 1.0f) {
                int i3 = i2 + this.m;
                int[] iArr = this.l.c;
                int length = i3 % iArr.length;
                int length2 = (length + 1) % iArr.length;
                int iCompositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(iArr[length], this.a.getAlpha());
                int iCompositeARGBWithAlpha2 = MaterialColors.compositeARGBWithAlpha(this.l.c[length2], this.a.getAlpha());
                this.c[0] = ArgbEvaluatorCompat.getInstance().evaluate(this.k.getInterpolation(fB), Integer.valueOf(iCompositeARGBWithAlpha), Integer.valueOf(iCompositeARGBWithAlpha2)).intValue();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(float f2) {
        this.o = f2;
    }

    private void r(int i) {
        float[] fArr = this.b;
        float f2 = this.n;
        fArr[0] = (f2 * 1520.0f) - 20.0f;
        fArr[1] = f2 * 1520.0f;
        for (int i2 = 0; i2 < 4; i2++) {
            float fB = b(i, f3347d[i2], 667);
            float[] fArr2 = this.b;
            fArr2[1] = fArr2[1] + (this.k.getInterpolation(fB) * 250.0f);
            float fB2 = b(i, f3348e[i2], 667);
            float[] fArr3 = this.b;
            fArr3[0] = fArr3[0] + (this.k.getInterpolation(fB2) * 250.0f);
        }
        float[] fArr4 = this.b;
        fArr4[0] = fArr4[0] + ((fArr4[1] - fArr4[0]) * this.o);
        fArr4[0] = fArr4[0] / 360.0f;
        fArr4[1] = fArr4[1] / 360.0f;
    }

    @Override // com.google.android.material.progressindicator.f
    void a() {
        ObjectAnimator objectAnimator = this.i;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.f
    void d() {
        m();
        o();
        this.i.start();
    }

    @VisibleForTesting
    void o() {
        this.m = 0;
        this.c[0] = MaterialColors.compositeARGBWithAlpha(this.l.c[0], this.a.getAlpha());
        this.o = 0.0f;
    }

    @VisibleForTesting
    void p(float f2) {
        this.n = f2;
        int i = (int) (f2 * 5400.0f);
        r(i);
        n(i);
        this.a.invalidateSelf();
    }
}
