package com.google.android.material.color;

/* JADX INFO: loaded from: classes3.dex */
final class Hct {
    private float a;
    private float b;
    private float c;

    private Hct(float f2, float f3, float f4) {
        g(b(f2, f3, f4));
    }

    private static Cam16 a(float f2, float f3, float f4) {
        float f5 = 1000.0f;
        Cam16 cam16 = null;
        float f6 = 1000.0f;
        float f7 = 100.0f;
        float f8 = 0.0f;
        while (Math.abs(f8 - f7) > 0.01f) {
            float f9 = ((f7 - f8) / 2.0f) + f8;
            int i = Cam16.c(f9, f3, f2).i();
            float fLstarFromInt = ColorUtils.lstarFromInt(i);
            float fAbs = Math.abs(f4 - fLstarFromInt);
            if (fAbs < 0.2f) {
                Cam16 cam16FromInt = Cam16.fromInt(i);
                float fA = cam16FromInt.a(Cam16.c(cam16FromInt.j(), cam16FromInt.g(), f2));
                if (fA <= 1.0f && fA <= f5) {
                    cam16 = cam16FromInt;
                    f6 = fAbs;
                    f5 = fA;
                }
            }
            if (f6 == 0.0f && f5 < 1.0E-9f) {
                break;
            }
            if (fLstarFromInt < f4) {
                f8 = f9;
            } else {
                f7 = f9;
            }
        }
        return cam16;
    }

    private static int b(float f2, float f3, float f4) {
        return c(f2, f3, f4, f.a);
    }

    static int c(float f2, float f3, float f4, f fVar) {
        if (f3 < 1.0d || Math.round(f4) <= 0.0d || Math.round(f4) >= 100.0d) {
            return ColorUtils.intFromLstar(f4);
        }
        float fSanitizeDegrees = MathUtils.sanitizeDegrees(f2);
        float f5 = f3;
        Cam16 cam16 = null;
        float f6 = 0.0f;
        boolean z = true;
        while (Math.abs(f6 - f3) >= 0.4f) {
            Cam16 cam16A = a(fSanitizeDegrees, f5, f4);
            if (z) {
                if (cam16A != null) {
                    return cam16A.l(fVar);
                }
                z = false;
            } else if (cam16A == null) {
                f3 = f5;
            } else {
                f6 = f5;
                cam16 = cam16A;
            }
            f5 = ((f3 - f6) / 2.0f) + f6;
        }
        return cam16 == null ? ColorUtils.intFromLstar(f4) : cam16.l(fVar);
    }

    public static Hct from(float f2, float f3, float f4) {
        return new Hct(f2, f3, f4);
    }

    public static Hct fromInt(int i) {
        Cam16 cam16FromInt = Cam16.fromInt(i);
        return new Hct(cam16FromInt.h(), cam16FromInt.g(), ColorUtils.lstarFromInt(i));
    }

    private void g(int i) {
        Cam16 cam16FromInt = Cam16.fromInt(i);
        float fLstarFromInt = ColorUtils.lstarFromInt(i);
        this.a = cam16FromInt.h();
        this.b = cam16FromInt.g();
        this.c = fLstarFromInt;
    }

    public float d() {
        return this.b;
    }

    public float e() {
        return this.a;
    }

    public float f() {
        return this.c;
    }

    public void h(float f2) {
        g(b(this.a, this.b, f2));
    }

    public int i() {
        return b(this.a, this.b, this.c);
    }
}
