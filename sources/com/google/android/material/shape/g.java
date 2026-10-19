package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: MarkerEdgeTreatment.java */
/* JADX INFO: loaded from: classes3.dex */
public final class g extends f {
    private final float a;

    public g(float f2) {
        this.a = f2 - 0.001f;
    }

    @Override // com.google.android.material.shape.f
    boolean b() {
        return true;
    }

    @Override // com.google.android.material.shape.f
    public void d(float f2, float f3, float f4, @NonNull k kVar) {
        float fSqrt = (float) ((((double) this.a) * Math.sqrt(2.0d)) / 2.0d);
        float fSqrt2 = (float) Math.sqrt(Math.pow(this.a, 2.0d) - Math.pow(fSqrt, 2.0d));
        kVar.n(f3 - fSqrt, ((float) (-((((double) this.a) * Math.sqrt(2.0d)) - ((double) this.a)))) + fSqrt2);
        kVar.m(f3, (float) (-((((double) this.a) * Math.sqrt(2.0d)) - ((double) this.a))));
        kVar.m(f3 + fSqrt, ((float) (-((((double) this.a) * Math.sqrt(2.0d)) - ((double) this.a)))) + fSqrt2);
    }
}
