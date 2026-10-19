package com.google.android.material.shadow;

import androidx.appcompat.graphics.drawable.DrawableWrapper;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class ShadowDrawableWrapper extends DrawableWrapper {
    static final double a = Math.cos(Math.toRadians(45.0d));

    public static float calculateHorizontalPadding(float f2, float f3, boolean z) {
        return z ? (float) (((double) f2) + ((1.0d - a) * ((double) f3))) : f2;
    }

    public static float calculateVerticalPadding(float f2, float f3, boolean z) {
        return z ? (float) (((double) (f2 * 1.5f)) + ((1.0d - a) * ((double) f3))) : f2 * 1.5f;
    }
}
