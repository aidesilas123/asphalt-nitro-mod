package com.nearme.platform.opensdk.pay.download.util;

import java.math.BigDecimal;

/* JADX INFO: loaded from: classes4.dex */
public class FloatDivUtil {
    public static float div(float f2, float f3, int i) {
        if (i >= 0) {
            return new BigDecimal(Float.toString(f2)).divide(new BigDecimal(Float.toString(f3)), i, 4).floatValue();
        }
        throw new IllegalArgumentException("scale cannot < 0");
    }

    public static float div(int i, int i2, int i3) {
        if (i3 >= 0) {
            return new BigDecimal(Integer.toString(i)).divide(new BigDecimal(Integer.toString(i2)), i3, 4).floatValue();
        }
        throw new IllegalArgumentException("scale cannot < 0");
    }

    public static float div(long j, long j2, int i) {
        if (i >= 0) {
            return new BigDecimal(Long.toString(j)).divide(new BigDecimal(Long.toString(j2)), i, 5).floatValue();
        }
        throw new IllegalArgumentException("scale cannot < 0");
    }
}
