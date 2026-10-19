package com.google.android.material.bottomappbar;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.shape.f;
import com.google.android.material.shape.k;

/* JADX INFO: compiled from: BottomAppBarTopEdgeTreatment.java */
/* JADX INFO: loaded from: classes3.dex */
public class a extends f implements Cloneable {
    private float a;
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f3172d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f3173e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f3174f;

    @Override // com.google.android.material.shape.f
    public void d(float f2, float f3, float f4, @NonNull k kVar) {
        float f5;
        float f6;
        float f7 = this.c;
        if (f7 == 0.0f) {
            kVar.m(f2, 0.0f);
            return;
        }
        float f8 = ((this.b * 2.0f) + f7) / 2.0f;
        float f9 = f4 * this.a;
        float f10 = f3 + this.f3173e;
        float f11 = (this.f3172d * f4) + ((1.0f - f4) * f8);
        if (f11 / f8 >= 1.0f) {
            kVar.m(f2, 0.0f);
            return;
        }
        float f12 = this.f3174f;
        float f13 = f12 * f4;
        boolean z = f12 == -1.0f || Math.abs((f12 * 2.0f) - f7) < 0.1f;
        if (z) {
            f5 = f11;
            f6 = 0.0f;
        } else {
            f6 = 1.75f;
            f5 = 0.0f;
        }
        float f14 = f8 + f9;
        float f15 = f5 + f9;
        float fSqrt = (float) Math.sqrt((f14 * f14) - (f15 * f15));
        float f16 = f10 - fSqrt;
        float f17 = f10 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f15));
        float f18 = (90.0f - degrees) + f6;
        kVar.m(f16, 0.0f);
        float f19 = f9 * 2.0f;
        kVar.a(f16 - f9, 0.0f, f16 + f9, f19, 270.0f, degrees);
        if (z) {
            kVar.a(f10 - f8, (-f8) - f5, f10 + f8, f8 - f5, 180.0f - f18, (f18 * 2.0f) - 180.0f);
        } else {
            float f20 = this.b;
            float f21 = f13 * 2.0f;
            float f22 = f10 - f8;
            kVar.a(f22, -(f13 + f20), f22 + f20 + f21, f20 + f13, 180.0f - f18, ((f18 * 2.0f) - 180.0f) / 2.0f);
            float f23 = f10 + f8;
            float f24 = this.b;
            kVar.m(f23 - ((f24 / 2.0f) + f13), f24 + f13);
            float f25 = this.b;
            kVar.a(f23 - (f21 + f25), -(f13 + f25), f23, f25 + f13, 90.0f, f18 - 90.0f);
        }
        kVar.a(f17 - f9, 0.0f, f17 + f9, f19, 270.0f - degrees, degrees);
        kVar.m(f2, 0.0f);
    }

    float e() {
        return this.f3172d;
    }

    public float f() {
        return this.f3174f;
    }

    float g() {
        return this.b;
    }

    float h() {
        return this.a;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float i() {
        return this.c;
    }

    void j(@FloatRange(from = 0.0d) float f2) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.f3172d = f2;
    }

    public void k(float f2) {
        this.f3174f = f2;
    }

    void l(float f2) {
        this.b = f2;
    }

    void m(float f2) {
        this.a = f2;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void n(float f2) {
        this.c = f2;
    }

    void o(float f2) {
        this.f3173e = f2;
    }
}
