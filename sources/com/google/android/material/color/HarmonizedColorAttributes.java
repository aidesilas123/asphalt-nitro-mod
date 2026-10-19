package com.google.android.material.color;

import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;

/* JADX INFO: loaded from: classes3.dex */
public final class HarmonizedColorAttributes {
    private static final int[] a = {R$attr.k, R$attr.n, R$attr.l, R$attr.o};
    private final int[] b;

    @StyleRes
    private final int c;

    private HarmonizedColorAttributes(@AttrRes @NonNull int[] iArr, @StyleRes int i) {
        if (i != 0 && iArr.length == 0) {
            throw new IllegalArgumentException("Theme overlay should be used with the accompanying int[] attributes.");
        }
        this.b = iArr;
        this.c = i;
    }

    @NonNull
    public static HarmonizedColorAttributes create(@AttrRes @NonNull int[] iArr) {
        return new HarmonizedColorAttributes(iArr, 0);
    }

    @NonNull
    public static HarmonizedColorAttributes create(@AttrRes @NonNull int[] iArr, @StyleRes int i) {
        return new HarmonizedColorAttributes(iArr, i);
    }

    @NonNull
    public static HarmonizedColorAttributes createMaterialDefaults() {
        return create(a, R$style.c);
    }

    @NonNull
    public int[] a() {
        return this.b;
    }

    @StyleRes
    public int b() {
        return this.c;
    }
}
