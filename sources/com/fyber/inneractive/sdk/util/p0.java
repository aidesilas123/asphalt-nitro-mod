package com.fyber.inneractive.sdk.util;

import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;

/* JADX INFO: loaded from: classes2.dex */
public class p0 {
    public static void a(UnitDisplayType unitDisplayType, l0 l0Var, int i, int i2, int i3, int i4) {
        if (i > 0 && i2 > 0) {
            float f2 = i;
            float f3 = i2;
            float f4 = f2 / f3;
            if (unitDisplayType == UnitDisplayType.SQUARE) {
                i3 = (int) (i4 * f4);
            } else {
                if (Math.abs(f4 - 1.7777778f) >= 0.1f) {
                    Math.abs(f4 - 1.3333334f);
                }
                float fMin = Math.min(i3 / f2, 10.0f);
                float f5 = i4;
                float f6 = fMin * f3;
                if (f5 > f6) {
                    i3 = (int) (fMin * f2);
                    i4 = (int) f6;
                } else {
                    float fMin2 = Math.min(f5 / f3, 10.0f);
                    i3 = (int) (f2 * fMin2);
                    i4 = (int) (fMin2 * f3);
                }
            }
        }
        l0Var.a = i3;
        l0Var.b = i4;
    }
}
