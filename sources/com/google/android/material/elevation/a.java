package com.google.android.material.elevation;

import android.content.Context;
import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R$attr;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialAttributes;

/* JADX INFO: compiled from: ElevationOverlayProvider.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {
    private static final int a = (int) Math.round(5.1000000000000005d);
    private final boolean b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3290d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3291e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f3292f;

    public a(@NonNull Context context) {
        this(MaterialAttributes.resolveBoolean(context, R$attr.x, false), MaterialColors.getColor(context, R$attr.w, 0), MaterialColors.getColor(context, R$attr.v, 0), MaterialColors.getColor(context, R$attr.s, 0), context.getResources().getDisplayMetrics().density);
    }

    public a(boolean z, @ColorInt int i, @ColorInt int i2, @ColorInt int i3, float f2) {
        this.b = z;
        this.c = i;
        this.f3290d = i2;
        this.f3291e = i3;
        this.f3292f = f2;
    }

    private boolean e(@ColorInt int i) {
        return ColorUtils.setAlphaComponent(i, 255) == this.f3291e;
    }

    public float a(float f2) {
        if (this.f3292f <= 0.0f || f2 <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f2 / r0)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    @ColorInt
    public int b(@ColorInt int i, float f2) {
        int i2;
        float fA = a(f2);
        int iAlpha = Color.alpha(i);
        int iLayer = MaterialColors.layer(ColorUtils.setAlphaComponent(i, 255), this.c, fA);
        if (fA > 0.0f && (i2 = this.f3290d) != 0) {
            iLayer = MaterialColors.layer(iLayer, ColorUtils.setAlphaComponent(i2, a));
        }
        return ColorUtils.setAlphaComponent(iLayer, iAlpha);
    }

    @ColorInt
    public int c(@ColorInt int i, float f2) {
        return (this.b && e(i)) ? b(i, f2) : i;
    }

    public boolean d() {
        return this.b;
    }
}
