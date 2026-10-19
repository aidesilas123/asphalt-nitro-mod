package com.google.android.material.color;

/* JADX INFO: compiled from: ViewingConditions.java */
/* JADX INFO: loaded from: classes3.dex */
final class f {
    public static final f a = k(ColorUtils.whitePointD65(), (float) ((((double) ColorUtils.yFromLstar(50.0f)) * 63.66197723675813d) / 100.0d), 50.0f, 2.0f, false);
    private final float b;
    private final float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f3235d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f3236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f3237f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f3238g;
    private final float[] h;
    private final float i;
    private final float j;
    private final float k;

    private f(float f2, float f3, float f4, float f5, float f6, float f7, float[] fArr, float f8, float f9, float f10) {
        this.f3238g = f2;
        this.b = f3;
        this.c = f4;
        this.f3235d = f5;
        this.f3236e = f6;
        this.f3237f = f7;
        this.h = fArr;
        this.i = f8;
        this.j = f9;
        this.k = f10;
    }

    static f k(float[] fArr, float f2, float f3, float f4, boolean z) {
        float[][] fArr2 = Cam16.a;
        float f5 = (fArr[0] * fArr2[0][0]) + (fArr[1] * fArr2[0][1]) + (fArr[2] * fArr2[0][2]);
        float f6 = (fArr[0] * fArr2[1][0]) + (fArr[1] * fArr2[1][1]) + (fArr[2] * fArr2[1][2]);
        float f7 = (fArr[0] * fArr2[2][0]) + (fArr[1] * fArr2[2][1]) + (fArr[2] * fArr2[2][2]);
        float f8 = (f4 / 10.0f) + 0.8f;
        float fLerp = ((double) f8) >= 0.9d ? MathUtils.lerp(0.59f, 0.69f, (f8 - 0.9f) * 10.0f) : MathUtils.lerp(0.525f, 0.59f, (f8 - 0.8f) * 10.0f);
        float fExp = z ? 1.0f : (1.0f - (((float) Math.exp(((-f2) - 42.0f) / 92.0f)) * 0.2777778f)) * f8;
        double d2 = fExp;
        if (d2 > 1.0d) {
            fExp = 1.0f;
        } else if (d2 < 0.0d) {
            fExp = 0.0f;
        }
        float[] fArr3 = {(((100.0f / f5) * fExp) + 1.0f) - fExp, (((100.0f / f6) * fExp) + 1.0f) - fExp, (((100.0f / f7) * fExp) + 1.0f) - fExp};
        float f9 = 1.0f / ((5.0f * f2) + 1.0f);
        float f10 = f9 * f9 * f9 * f9;
        float f11 = 1.0f - f10;
        float fCbrt = (f10 * f2) + (0.1f * f11 * f11 * ((float) Math.cbrt(((double) f2) * 5.0d)));
        float fYFromLstar = ColorUtils.yFromLstar(f3) / fArr[1];
        double d3 = fYFromLstar;
        float fSqrt = ((float) Math.sqrt(d3)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d3, 0.2d));
        float[] fArr4 = {(float) Math.pow(((double) ((fArr3[0] * fCbrt) * f5)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr3[1] * fCbrt) * f6)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr3[2] * fCbrt) * f7)) / 100.0d, 0.42d)};
        float[] fArr5 = {(fArr4[0] * 400.0f) / (fArr4[0] + 27.13f), (fArr4[1] * 400.0f) / (fArr4[1] + 27.13f), (fArr4[2] * 400.0f) / (fArr4[2] + 27.13f)};
        return new f(fYFromLstar, ((fArr5[0] * 2.0f) + fArr5[1] + (fArr5[2] * 0.05f)) * fPow, fPow, fPow, fLerp, f8, fArr3, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    public float a() {
        return this.b;
    }

    float b() {
        return this.f3236e;
    }

    float c() {
        return this.i;
    }

    public float d() {
        return this.j;
    }

    public float e() {
        return this.f3238g;
    }

    public float f() {
        return this.c;
    }

    float g() {
        return this.f3237f;
    }

    float h() {
        return this.f3235d;
    }

    public float[] i() {
        return this.h;
    }

    float j() {
        return this.k;
    }
}
