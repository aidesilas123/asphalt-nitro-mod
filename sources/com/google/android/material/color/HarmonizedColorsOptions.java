package com.google.android.material.color;

import androidx.annotation.AttrRes;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.R$attr;

/* JADX INFO: loaded from: classes3.dex */
public class HarmonizedColorsOptions {

    @NonNull
    @ColorRes
    private final int[] a;

    @Nullable
    private final HarmonizedColorAttributes b;

    @AttrRes
    private final int c;

    public static class b {

        @Nullable
        private HarmonizedColorAttributes b;

        @NonNull
        @ColorRes
        private int[] a = new int[0];

        @AttrRes
        private int c = R$attr.q;

        @NonNull
        public HarmonizedColorsOptions d() {
            return new HarmonizedColorsOptions(this);
        }

        @NonNull
        public b e(@Nullable HarmonizedColorAttributes harmonizedColorAttributes) {
            this.b = harmonizedColorAttributes;
            return this;
        }
    }

    private HarmonizedColorsOptions(b bVar) {
        this.a = bVar.a;
        this.b = bVar.b;
        this.c = bVar.c;
    }

    @NonNull
    public static HarmonizedColorsOptions createMaterialDefaults() {
        return new b().e(HarmonizedColorAttributes.createMaterialDefaults()).d();
    }

    @AttrRes
    public int a() {
        return this.c;
    }

    @Nullable
    public HarmonizedColorAttributes b() {
        return this.b;
    }

    @NonNull
    @ColorRes
    public int[] c() {
        return this.a;
    }

    @StyleRes
    int d(@StyleRes int i) {
        HarmonizedColorAttributes harmonizedColorAttributes = this.b;
        return (harmonizedColorAttributes == null || harmonizedColorAttributes.b() == 0) ? i : this.b.b();
    }
}
