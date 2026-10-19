package com.google.android.material.elevation;

import android.content.Context;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.color.MaterialColors;

/* JADX INFO: loaded from: classes3.dex */
public enum SurfaceColors {
    SURFACE_0(R$dimen.i),
    SURFACE_1(R$dimen.j),
    SURFACE_2(R$dimen.k),
    SURFACE_3(R$dimen.l),
    SURFACE_4(R$dimen.m),
    SURFACE_5(R$dimen.n);

    private final int h;

    SurfaceColors(@DimenRes int i) {
        this.h = i;
    }

    @ColorInt
    public static int getColorForElevation(@NonNull Context context, @Dimension float f2) {
        return new a(context).b(MaterialColors.getColor(context, R$attr.s, 0), f2);
    }
}
