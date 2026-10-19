package com.google.android.material.color;

/* JADX INFO: loaded from: classes3.dex */
final class Cam16 {
    static final float[][] a = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    static final float[][] b = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};
    private final float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f3213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f3214e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f3215f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f3216g;
    private final float h;
    private final float i;
    private final float j;
    private final float k;

    private Cam16(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        this.c = f2;
        this.f3213d = f3;
        this.f3214e = f4;
        this.f3215f = f5;
        this.f3216g = f6;
        this.h = f7;
        this.i = f8;
        this.j = f9;
        this.k = f10;
    }

    static Cam16 b(int i, f fVar) {
        float fLinearized = ColorUtils.linearized(((16711680 & i) >> 16) / 255.0f) * 100.0f;
        float fLinearized2 = ColorUtils.linearized(((65280 & i) >> 8) / 255.0f) * 100.0f;
        float fLinearized3 = ColorUtils.linearized((i & 255) / 255.0f) * 100.0f;
        float f2 = (0.41233894f * fLinearized) + (0.35762063f * fLinearized2) + (0.18051042f * fLinearized3);
        float f3 = (0.2126f * fLinearized) + (0.7152f * fLinearized2) + (0.0722f * fLinearized3);
        float f4 = (fLinearized * 0.01932141f) + (fLinearized2 * 0.11916382f) + (fLinearized3 * 0.9503448f);
        float[][] fArr = a;
        float f5 = (fArr[0][0] * f2) + (fArr[0][1] * f3) + (fArr[0][2] * f4);
        float f6 = (fArr[1][0] * f2) + (fArr[1][1] * f3) + (fArr[1][2] * f4);
        float f7 = (f2 * fArr[2][0]) + (f3 * fArr[2][1]) + (f4 * fArr[2][2]);
        float f8 = fVar.i()[0] * f5;
        float f9 = fVar.i()[1] * f6;
        float f10 = fVar.i()[2] * f7;
        float fPow = (float) Math.pow(((double) (fVar.c() * Math.abs(f8))) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow(((double) (fVar.c() * Math.abs(f9))) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow(((double) (fVar.c() * Math.abs(f10))) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f8) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f9) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f10) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d2 = fSignum3;
        float f11 = ((float) (((((double) fSignum) * 11.0d) + (((double) fSignum2) * (-12.0d))) + d2)) / 11.0f;
        float f12 = ((float) (((double) (fSignum + fSignum2)) - (d2 * 2.0d))) / 9.0f;
        float f13 = fSignum2 * 20.0f;
        float f14 = (((fSignum * 20.0f) + f13) + (21.0f * fSignum3)) / 20.0f;
        float f15 = (((fSignum * 40.0f) + f13) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f12, f11)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f16 = (3.1415927f * fAtan2) / 180.0f;
        float fPow4 = ((float) Math.pow((f15 * fVar.f()) / fVar.a(), fVar.b() * fVar.j())) * 100.0f;
        float fB = (4.0f / fVar.b()) * ((float) Math.sqrt(fPow4 / 100.0f)) * (fVar.a() + 4.0f) * fVar.d();
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, fVar.e()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(Math.toRadians(((double) fAtan2) < 20.14d ? 360.0f + fAtan2 : fAtan2) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * fVar.g()) * fVar.h()) * ((float) Math.hypot(r5, r1))) / (f14 + 0.305f), 0.9d)) * ((float) Math.sqrt(((double) fPow4) / 100.0d));
        float fD = fPow5 * fVar.d();
        float fSqrt = ((float) Math.sqrt((r1 * fVar.b()) / (fVar.a() + 4.0f))) * 50.0f;
        float f17 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog1p = ((float) Math.log1p(0.0228f * fD)) * 43.85965f;
        double d3 = f16;
        return new Cam16(fAtan2, fPow5, fPow4, fB, fD, fSqrt, f17, fLog1p * ((float) Math.cos(d3)), fLog1p * ((float) Math.sin(d3)));
    }

    static Cam16 c(float f2, float f3, float f4) {
        return d(f2, f3, f4, f.a);
    }

    private static Cam16 d(float f2, float f3, float f4, f fVar) {
        float fB = (4.0f / fVar.b()) * ((float) Math.sqrt(((double) f2) / 100.0d)) * (fVar.a() + 4.0f) * fVar.d();
        float fD = f3 * fVar.d();
        float fSqrt = ((float) Math.sqrt(((f3 / ((float) Math.sqrt(r4))) * fVar.b()) / (fVar.a() + 4.0f))) * 50.0f;
        float f5 = (1.7f * f2) / ((0.007f * f2) + 1.0f);
        float fLog1p = ((float) Math.log1p(((double) fD) * 0.0228d)) * 43.85965f;
        double d2 = (3.1415927f * f4) / 180.0f;
        return new Cam16(f4, f3, f2, fB, fD, fSqrt, f5, fLog1p * ((float) Math.cos(d2)), fLog1p * ((float) Math.sin(d2)));
    }

    public static Cam16 fromInt(int i) {
        return b(i, f.a);
    }

    public static Cam16 fromUcs(float f2, float f3, float f4) {
        return fromUcsInViewingConditions(f2, f3, f4, f.a);
    }

    public static Cam16 fromUcsInViewingConditions(float f2, float f3, float f4, f fVar) {
        double d2 = f3;
        double d3 = f4;
        double dExpm1 = (Math.expm1(Math.hypot(d2, d3) * 0.02280000038444996d) / 0.02280000038444996d) / ((double) fVar.d());
        double dAtan2 = Math.atan2(d3, d2) * 57.29577951308232d;
        if (dAtan2 < 0.0d) {
            dAtan2 += 360.0d;
        }
        return d(f2 / (1.0f - ((f2 - 100.0f) * 0.007f)), (float) dExpm1, (float) dAtan2, fVar);
    }

    float a(Cam16 cam16) {
        float fK = k() - cam16.k();
        float fE = e() - cam16.e();
        float f2 = f() - cam16.f();
        return (float) (Math.pow(Math.sqrt((fK * fK) + (fE * fE) + (f2 * f2)), 0.63d) * 1.41d);
    }

    public float e() {
        return this.j;
    }

    public float f() {
        return this.k;
    }

    public float g() {
        return this.f3213d;
    }

    public float h() {
        return this.c;
    }

    public int i() {
        return l(f.a);
    }

    public float j() {
        return this.f3214e;
    }

    public float k() {
        return this.i;
    }

    int l(f fVar) {
        float fPow = (float) Math.pow(((double) ((((double) g()) == 0.0d || ((double) j()) == 0.0d) ? 0.0f : g() / ((float) Math.sqrt(((double) j()) / 100.0d)))) / Math.pow(1.64d - Math.pow(0.29d, fVar.e()), 0.73d), 1.1111111111111112d);
        double dH = (h() * 3.1415927f) / 180.0f;
        float fCos = ((float) (Math.cos(2.0d + dH) + 3.8d)) * 0.25f;
        float fA = fVar.a() * ((float) Math.pow(((double) j()) / 100.0d, (1.0d / ((double) fVar.b())) / ((double) fVar.j())));
        float fG = fCos * 3846.1538f * fVar.g() * fVar.h();
        float f2 = fA / fVar.f();
        float fSin = (float) Math.sin(dH);
        float fCos2 = (float) Math.cos(dH);
        float f3 = (((0.305f + f2) * 23.0f) * fPow) / (((fG * 23.0f) + ((11.0f * fPow) * fCos2)) + ((fPow * 108.0f) * fSin));
        float f4 = fCos2 * f3;
        float f5 = f3 * fSin;
        float f6 = f2 * 460.0f;
        float f7 = (((451.0f * f4) + f6) + (288.0f * f5)) / 1403.0f;
        float f8 = ((f6 - (891.0f * f4)) - (261.0f * f5)) / 1403.0f;
        float fSignum = Math.signum(f7) * (100.0f / fVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f7)) * 27.13d) / (400.0d - ((double) Math.abs(f7)))), 2.380952380952381d));
        float fSignum2 = Math.signum(f8) * (100.0f / fVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f8)) * 27.13d) / (400.0d - ((double) Math.abs(f8)))), 2.380952380952381d));
        float fSignum3 = Math.signum(((f6 - (f4 * 220.0f)) - (f5 * 6300.0f)) / 1403.0f) * (100.0f / fVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(r6)) * 27.13d) / (400.0d - ((double) Math.abs(r6)))), 2.380952380952381d));
        float f9 = fSignum / fVar.i()[0];
        float f10 = fSignum2 / fVar.i()[1];
        float f11 = fSignum3 / fVar.i()[2];
        float[][] fArr = b;
        return ColorUtils.intFromXyzComponents((fArr[0][0] * f9) + (fArr[0][1] * f10) + (fArr[0][2] * f11), (fArr[1][0] * f9) + (fArr[1][1] * f10) + (fArr[1][2] * f11), (f9 * fArr[2][0]) + (f10 * fArr[2][1]) + (f11 * fArr[2][2]));
    }
}
