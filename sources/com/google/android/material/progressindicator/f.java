package com.google.android.material.progressindicator;

import android.animation.Animator;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: IndeterminateAnimatorDelegate.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class f<T extends Animator> {
    protected IndeterminateDrawable a;
    protected final float[] b;
    protected final int[] c;

    protected f(int i) {
        this.b = new float[i * 2];
        this.c = new int[i];
    }

    abstract void a();

    protected float b(int i, int i2, int i3) {
        return (i - i2) / i3;
    }

    protected void c(@NonNull IndeterminateDrawable indeterminateDrawable) {
        this.a = indeterminateDrawable;
    }

    abstract void d();
}
