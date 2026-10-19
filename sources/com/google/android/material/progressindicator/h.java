package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.color.MaterialColors;
import java.util.Arrays;

/* JADX INFO: compiled from: LinearIndeterminateContiguousAnimatorDelegate.java */
/* JADX INFO: loaded from: classes3.dex */
final class h extends f<ObjectAnimator> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Property<h, Float> f3357d = new b(Float.class, "animationFraction");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ObjectAnimator f3358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private FastOutSlowInInterpolator f3359f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.google.android.material.progressindicator.a f3360g;
    private int h;
    private boolean i;
    private float j;

    /* JADX INFO: compiled from: LinearIndeterminateContiguousAnimatorDelegate.java */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            h hVar = h.this;
            hVar.h = (hVar.h + 1) % h.this.f3360g.c.length;
            h.this.i = true;
        }
    }

    /* JADX INFO: compiled from: LinearIndeterminateContiguousAnimatorDelegate.java */
    class b extends Property<h, Float> {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(h hVar) {
            return Float.valueOf(hVar.j());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(h hVar, Float f2) {
            hVar.n(f2.floatValue());
        }
    }

    public h(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.h = 1;
        this.f3360g = linearProgressIndicatorSpec;
        this.f3359f = new FastOutSlowInInterpolator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float j() {
        return this.j;
    }

    private void k() {
        if (this.f3358e == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f3357d, 0.0f, 1.0f);
            this.f3358e = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(333L);
            this.f3358e.setInterpolator(null);
            this.f3358e.setRepeatCount(-1);
            this.f3358e.addListener(new a());
        }
    }

    private void l() {
        if (!this.i || this.b[3] >= 1.0f) {
            return;
        }
        int[] iArr = this.c;
        iArr[2] = iArr[1];
        iArr[1] = iArr[0];
        iArr[0] = MaterialColors.compositeARGBWithAlpha(this.f3360g.c[this.h], this.a.getAlpha());
        this.i = false;
    }

    private void o(int i) {
        this.b[0] = 0.0f;
        float fB = b(i, 0, 667);
        float[] fArr = this.b;
        float interpolation = this.f3359f.getInterpolation(fB);
        fArr[2] = interpolation;
        fArr[1] = interpolation;
        float[] fArr2 = this.b;
        float interpolation2 = this.f3359f.getInterpolation(fB + 0.49925038f);
        fArr2[4] = interpolation2;
        fArr2[3] = interpolation2;
        this.b[5] = 1.0f;
    }

    @Override // com.google.android.material.progressindicator.f
    public void a() {
        ObjectAnimator objectAnimator = this.f3358e;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.f
    public void d() {
        k();
        m();
        this.f3358e.start();
    }

    @VisibleForTesting
    void m() {
        this.i = true;
        this.h = 1;
        Arrays.fill(this.c, MaterialColors.compositeARGBWithAlpha(this.f3360g.c[0], this.a.getAlpha()));
    }

    @VisibleForTesting
    void n(float f2) {
        this.j = f2;
        o((int) (f2 * 333.0f));
        l();
        this.a.invalidateSelf();
    }
}
