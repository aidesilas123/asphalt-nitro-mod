package com.google.android.material.color;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.content.res.loader.ResourcesLoader;
import android.os.Build;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.google.android.material.R$style;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class HarmonizedColors {
    private static final String a = "HarmonizedColors";

    private HarmonizedColors() {
    }

    @RequiresApi(api = 21)
    private static void a(@NonNull Map<Integer, Integer> map, @NonNull TypedArray typedArray, @Nullable TypedArray typedArray2, @ColorInt int i) {
        if (typedArray2 == null) {
            typedArray2 = typedArray;
        }
        for (int i2 = 0; i2 < typedArray.getIndexCount(); i2++) {
            int resourceId = typedArray2.getResourceId(i2, 0);
            if (resourceId != 0 && typedArray.hasValue(i2) && d(typedArray.getType(i2))) {
                map.put(Integer.valueOf(resourceId), Integer.valueOf(MaterialColors.harmonize(typedArray.getColor(i2, 0), i)));
            }
        }
    }

    @NonNull
    public static void applyToContextIfAvailable(@NonNull Context context, @NonNull HarmonizedColorsOptions harmonizedColorsOptions) {
        if (isHarmonizedColorAvailable()) {
            Map<Integer, Integer> mapC = c(context, harmonizedColorsOptions);
            int iD = harmonizedColorsOptions.d(0);
            if (!b(context, mapC) || iD == 0) {
                return;
            }
            e.a(context, iD);
        }
    }

    @RequiresApi(api = 30)
    private static boolean b(Context context, Map<Integer, Integer> map) throws Throwable {
        ResourcesLoader resourcesLoaderA = a.a(context, map);
        if (resourcesLoaderA == null) {
            return false;
        }
        context.getResources().addLoaders(resourcesLoaderA);
        return true;
    }

    @RequiresApi(api = 21)
    private static Map<Integer, Integer> c(Context context, HarmonizedColorsOptions harmonizedColorsOptions) {
        HashMap map = new HashMap();
        int color = MaterialColors.getColor(context, harmonizedColorsOptions.a(), a);
        for (int i : harmonizedColorsOptions.c()) {
            map.put(Integer.valueOf(i), Integer.valueOf(MaterialColors.harmonize(ContextCompat.getColor(context, i), color)));
        }
        HarmonizedColorAttributes harmonizedColorAttributesB = harmonizedColorsOptions.b();
        if (harmonizedColorAttributesB != null) {
            int[] iArrA = harmonizedColorAttributesB.a();
            if (iArrA.length > 0) {
                int iB = harmonizedColorAttributesB.b();
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArrA);
                TypedArray typedArrayObtainStyledAttributes2 = iB != 0 ? new ContextThemeWrapper(context, iB).obtainStyledAttributes(iArrA) : null;
                a(map, typedArrayObtainStyledAttributes, typedArrayObtainStyledAttributes2, color);
                typedArrayObtainStyledAttributes.recycle();
                if (typedArrayObtainStyledAttributes2 != null) {
                    typedArrayObtainStyledAttributes2.recycle();
                }
            }
        }
        return map;
    }

    private static boolean d(int i) {
        return 28 <= i && i <= 31;
    }

    @ChecksSdkIntAtLeast(api = 30)
    public static boolean isHarmonizedColorAvailable() {
        return Build.VERSION.SDK_INT >= 30;
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context, @NonNull HarmonizedColorsOptions harmonizedColorsOptions) {
        if (!isHarmonizedColorAvailable()) {
            return context;
        }
        Map<Integer, Integer> mapC = c(context, harmonizedColorsOptions);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, harmonizedColorsOptions.d(R$style.f3110d));
        contextThemeWrapper.applyOverrideConfiguration(new Configuration());
        return b(contextThemeWrapper, mapC) ? contextThemeWrapper : context;
    }
}
