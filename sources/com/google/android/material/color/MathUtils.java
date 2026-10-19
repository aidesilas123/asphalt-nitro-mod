package com.google.android.material.color;

/* JADX INFO: loaded from: classes3.dex */
final class MathUtils {
    private MathUtils() {
    }

    public static float differenceDegrees(float f2, float f3) {
        return 180.0f - Math.abs(Math.abs(f2 - f3) - 180.0f);
    }

    public static float lerp(float f2, float f3, float f4) {
        return ((1.0f - f4) * f2) + (f4 * f3);
    }

    public static float sanitizeDegrees(float f2) {
        return f2 < 0.0f ? (f2 % 360.0f) + 360.0f : f2 >= 360.0f ? f2 % 360.0f : f2;
    }

    public static int sanitizeDegrees(int i) {
        return i < 0 ? (i % 360) + 360 : i >= 360 ? i % 360 : i;
    }
}
