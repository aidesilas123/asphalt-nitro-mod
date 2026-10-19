package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: MotionTiming.java */
/* JADX INFO: loaded from: classes3.dex */
public class e {
    private long a;
    private long b;

    @Nullable
    private TimeInterpolator c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3120d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3121e;

    public e(long j, long j2) {
        this.a = 0L;
        this.b = 300L;
        this.c = null;
        this.f3120d = 0;
        this.f3121e = 1;
        this.a = j;
        this.b = j2;
    }

    public e(long j, long j2, @NonNull TimeInterpolator timeInterpolator) {
        this.a = 0L;
        this.b = 300L;
        this.c = null;
        this.f3120d = 0;
        this.f3121e = 1;
        this.a = j;
        this.b = j2;
        this.c = timeInterpolator;
    }

    @NonNull
    static e b(@NonNull ValueAnimator valueAnimator) {
        e eVar = new e(valueAnimator.getStartDelay(), valueAnimator.getDuration(), f(valueAnimator));
        eVar.f3120d = valueAnimator.getRepeatCount();
        eVar.f3121e = valueAnimator.getRepeatMode();
        return eVar;
    }

    private static TimeInterpolator f(@NonNull ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        return ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) ? AnimationUtils.b : interpolator instanceof AccelerateInterpolator ? AnimationUtils.c : interpolator instanceof DecelerateInterpolator ? AnimationUtils.f3118d : interpolator;
    }

    public void a(@NonNull Animator animator) {
        animator.setStartDelay(c());
        animator.setDuration(d());
        animator.setInterpolator(e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(g());
            valueAnimator.setRepeatMode(h());
        }
    }

    public long c() {
        return this.a;
    }

    public long d() {
        return this.b;
    }

    @Nullable
    public TimeInterpolator e() {
        TimeInterpolator timeInterpolator = this.c;
        return timeInterpolator != null ? timeInterpolator : AnimationUtils.b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (c() == eVar.c() && d() == eVar.d() && g() == eVar.g() && h() == eVar.h()) {
            return e().getClass().equals(eVar.e().getClass());
        }
        return false;
    }

    public int g() {
        return this.f3120d;
    }

    public int h() {
        return this.f3121e;
    }

    public int hashCode() {
        return (((((((((int) (c() ^ (c() >>> 32))) * 31) + ((int) (d() ^ (d() >>> 32)))) * 31) + e().getClass().hashCode()) * 31) + g()) * 31) + h();
    }

    @NonNull
    public String toString() {
        return '\n' + e.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + c() + " duration: " + d() + " interpolator: " + e().getClass() + " repeatCount: " + g() + " repeatMode: " + h() + "}\n";
    }
}
