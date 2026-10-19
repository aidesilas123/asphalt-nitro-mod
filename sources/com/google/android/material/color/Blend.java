package com.google.android.material.color;

/* JADX INFO: loaded from: classes3.dex */
final class Blend {
    private Blend() {
    }

    private static float a(float f2, float f3) {
        float f4 = f3 - f2;
        float f5 = f4 + 360.0f;
        float f6 = f4 - 360.0f;
        float fAbs = Math.abs(f4);
        float fAbs2 = Math.abs(f5);
        float fAbs3 = Math.abs(f6);
        return (fAbs > fAbs2 || fAbs > fAbs3) ? (fAbs2 > fAbs || fAbs2 > fAbs3) ? ((double) f6) >= 0.0d ? 1.0f : -1.0f : ((double) f5) >= 0.0d ? 1.0f : -1.0f : ((double) f4) >= 0.0d ? 1.0f : -1.0f;
    }

    public static int blendCam16Ucs(int i, int i2, float f2) {
        Cam16 cam16FromInt = Cam16.fromInt(i);
        Cam16 cam16FromInt2 = Cam16.fromInt(i2);
        float fK = cam16FromInt.k();
        float fE = cam16FromInt.e();
        float f3 = cam16FromInt.f();
        return Cam16.fromUcs(fK + ((cam16FromInt2.k() - fK) * f2), fE + ((cam16FromInt2.e() - fE) * f2), f3 + ((cam16FromInt2.f() - f3) * f2)).i();
    }

    public static int blendHctHue(int i, int i2, float f2) {
        return Hct.from(Cam16.fromInt(blendCam16Ucs(i, i2, f2)).h(), Cam16.fromInt(i).g(), ColorUtils.lstarFromInt(i)).i();
    }

    public static int harmonize(int i, int i2) {
        Hct hctFromInt = Hct.fromInt(i);
        Hct hctFromInt2 = Hct.fromInt(i2);
        return Hct.from(MathUtils.sanitizeDegrees(hctFromInt.e() + (Math.min(MathUtils.differenceDegrees(hctFromInt.e(), hctFromInt2.e()) * 0.5f, 15.0f) * a(hctFromInt.e(), hctFromInt2.e()))), hctFromInt.d(), hctFromInt.f()).i();
    }
}
