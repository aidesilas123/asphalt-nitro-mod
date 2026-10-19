package com.google.android.material.color;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class ColorUtils {
    private static final float[] a = {95.047f, 100.0f, 108.883f};

    private ColorUtils() {
    }

    public static int blueFromInt(int i) {
        return i & 255;
    }

    public static float delinearized(float f2) {
        return f2 <= 0.0031308f ? f2 * 12.92f : (((float) Math.pow(f2, 0.4166666567325592d)) * 1.055f) - 0.055f;
    }

    public static int greenFromInt(int i) {
        return (i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
    }

    public static String hexFromInt(int i) {
        return String.format("#%02x%02x%02x", Integer.valueOf(redFromInt(i)), Integer.valueOf(greenFromInt(i)), Integer.valueOf(blueFromInt(i)));
    }

    public static int intFromLab(double d2, double d3, double d4) {
        double d5 = (d2 + 16.0d) / 116.0d;
        double d6 = (d3 / 500.0d) + d5;
        double d7 = d5 - (d4 / 200.0d);
        double d8 = d6 * d6 * d6;
        if (d8 <= 0.008856451679035631d) {
            d8 = ((d6 * 116.0d) - 16.0d) / 903.2962962962963d;
        }
        double d9 = d2 > 8.0d ? d5 * d5 * d5 : d2 / 903.2962962962963d;
        double d10 = d7 * d7 * d7;
        if (d10 <= 0.008856451679035631d) {
            d10 = ((d7 * 116.0d) - 16.0d) / 903.2962962962963d;
        }
        float[] fArr = a;
        return intFromXyzComponents((float) (d8 * ((double) fArr[0])), (float) (d9 * ((double) fArr[1])), (float) (d10 * ((double) fArr[2])));
    }

    public static int intFromLstar(float f2) {
        float f3 = (f2 + 16.0f) / 116.0f;
        float f4 = f3 * f3 * f3;
        boolean z = f4 > 0.008856452f;
        float f5 = (f2 > 8.0f ? 1 : (f2 == 8.0f ? 0 : -1)) > 0 ? f4 : f2 / 903.2963f;
        float f6 = z ? f4 : ((f3 * 116.0f) - 16.0f) / 903.2963f;
        if (!z) {
            f4 = ((f3 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = a;
        return intFromXyz(new float[]{f6 * fArr[0], f5 * fArr[1], f4 * fArr[2]});
    }

    public static int intFromRgb(int i, int i2, int i3) {
        return (((((i & 255) << 16) | ViewCompat.MEASURED_STATE_MASK) | ((i2 & 255) << 8)) | (i3 & 255)) >>> 0;
    }

    public static int intFromXyz(float[] fArr) {
        return intFromXyzComponents(fArr[0], fArr[1], fArr[2]);
    }

    public static int intFromXyzComponents(float f2, float f3, float f4) {
        float f5 = f2 / 100.0f;
        float f6 = f3 / 100.0f;
        float f7 = f4 / 100.0f;
        float f8 = (3.2406f * f5) + ((-1.5372f) * f6) + ((-0.4986f) * f7);
        float f9 = ((-0.9689f) * f5) + (1.8758f * f6) + (0.0415f * f7);
        float f10 = (f5 * 0.0557f) + (f6 * (-0.204f)) + (f7 * 1.057f);
        return intFromRgb(Math.max(Math.min(255, Math.round(delinearized(f8) * 255.0f)), 0), Math.max(Math.min(255, Math.round(delinearized(f9) * 255.0f)), 0), Math.max(Math.min(255, Math.round(delinearized(f10) * 255.0f)), 0));
    }

    public static double[] labFromInt(int i) {
        float[] fArrXyzFromInt = xyzFromInt(i);
        float f2 = fArrXyzFromInt[1];
        float[] fArr = a;
        double d2 = f2 / fArr[1];
        double dCbrt = d2 > 0.008856451679035631d ? Math.cbrt(d2) : ((d2 * 903.2962962962963d) + 16.0d) / 116.0d;
        double d3 = fArrXyzFromInt[0] / fArr[0];
        double dCbrt2 = d3 > 0.008856451679035631d ? Math.cbrt(d3) : ((d3 * 903.2962962962963d) + 16.0d) / 116.0d;
        double d4 = fArrXyzFromInt[2] / fArr[2];
        return new double[]{(116.0d * dCbrt) - 16.0d, (dCbrt2 - dCbrt) * 500.0d, (dCbrt - (d4 > 0.008856451679035631d ? Math.cbrt(d4) : ((d4 * 903.2962962962963d) + 16.0d) / 116.0d)) * 200.0d};
    }

    public static float linearized(float f2) {
        return f2 <= 0.04045f ? f2 / 12.92f : (float) Math.pow((f2 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static float lstarFromInt(int i) {
        return (float) labFromInt(i)[0];
    }

    public static int redFromInt(int i) {
        return (i & 16711680) >> 16;
    }

    public static final float[] whitePointD65() {
        return Arrays.copyOf(a, 3);
    }

    public static float[] xyzFromInt(int i) {
        float fLinearized = linearized(redFromInt(i) / 255.0f) * 100.0f;
        float fLinearized2 = linearized(greenFromInt(i) / 255.0f) * 100.0f;
        float fLinearized3 = linearized(blueFromInt(i) / 255.0f) * 100.0f;
        return new float[]{(0.41233894f * fLinearized) + (0.35762063f * fLinearized2) + (0.18051042f * fLinearized3), (0.2126f * fLinearized) + (0.7152f * fLinearized2) + (0.0722f * fLinearized3), (fLinearized * 0.01932141f) + (fLinearized2 * 0.11916382f) + (fLinearized3 * 0.9503448f)};
    }

    public static float yFromLstar(float f2) {
        return (f2 > 8.0f ? (float) Math.pow((((double) f2) + 16.0d) / 116.0d, 3.0d) : f2 / 903.2963f) * 100.0f;
    }
}
