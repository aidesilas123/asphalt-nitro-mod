package com.google.android.material.color;

import android.content.Context;
import android.graphics.Color;
import android.support.v4.media.MediaDescriptionCompat;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.google.android.material.R$attr;
import com.google.android.material.resources.MaterialAttributes;

/* JADX INFO: loaded from: classes3.dex */
public class MaterialColors {
    private MaterialColors() {
    }

    @ColorInt
    private static int a(@ColorInt int i, @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = 100) int i2) {
        Hct hctFromInt = Hct.fromInt(i);
        hctFromInt.h(i2);
        return hctFromInt.i();
    }

    @ColorInt
    public static int compositeARGBWithAlpha(@ColorInt int i, @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = 255) int i2) {
        return androidx.core.graphics.ColorUtils.setAlphaComponent(i, (Color.alpha(i) * i2) / 255);
    }

    @ColorInt
    public static int getColor(@NonNull Context context, @AttrRes int i, @ColorInt int i2) {
        TypedValue typedValueResolve = MaterialAttributes.resolve(context, i);
        return typedValueResolve != null ? typedValueResolve.data : i2;
    }

    @ColorInt
    public static int getColor(Context context, @AttrRes int i, String str) {
        return MaterialAttributes.resolveOrThrow(context, i, str);
    }

    @ColorInt
    public static int getColor(@NonNull View view, @AttrRes int i) {
        return MaterialAttributes.resolveOrThrow(view, i);
    }

    @ColorInt
    public static int getColor(@NonNull View view, @AttrRes int i, @ColorInt int i2) {
        return getColor(view.getContext(), i, i2);
    }

    @NonNull
    public static c getColorRoles(@ColorInt int i, boolean z) {
        return z ? new c(a(i, 40), a(i, 100), a(i, 90), a(i, 10)) : new c(a(i, 80), a(i, 20), a(i, 30), a(i, 90));
    }

    @NonNull
    public static c getColorRoles(@NonNull Context context, @ColorInt int i) {
        return getColorRoles(i, MaterialAttributes.resolveBoolean(context, R$attr.z, true));
    }

    @ColorInt
    public static int harmonize(@ColorInt int i, @ColorInt int i2) {
        return Blend.harmonize(i, i2);
    }

    @ColorInt
    public static int harmonizeWithPrimary(@NonNull Context context, @ColorInt int i) {
        return harmonize(i, getColor(context, R$attr.q, MaterialColors.class.getCanonicalName()));
    }

    public static boolean isColorLight(@ColorInt int i) {
        return i != 0 && androidx.core.graphics.ColorUtils.calculateLuminance(i) > 0.5d;
    }

    @ColorInt
    public static int layer(@ColorInt int i, @ColorInt int i2) {
        return androidx.core.graphics.ColorUtils.compositeColors(i2, i);
    }

    @ColorInt
    public static int layer(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        return layer(i, androidx.core.graphics.ColorUtils.setAlphaComponent(i2, Math.round(Color.alpha(i2) * f2)));
    }

    @ColorInt
    public static int layer(@NonNull View view, @AttrRes int i, @AttrRes int i2) {
        return layer(view, i, i2, 1.0f);
    }

    @ColorInt
    public static int layer(@NonNull View view, @AttrRes int i, @AttrRes int i2, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        return layer(getColor(view, i), getColor(view, i2), f2);
    }
}
