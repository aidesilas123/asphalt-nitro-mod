package com.google.android.material.shape;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.internal.ViewUtils;

/* JADX INFO: loaded from: classes3.dex */
public class MaterialShapeUtils {
    private MaterialShapeUtils() {
    }

    @NonNull
    static d a(int i) {
        return i != 0 ? i != 1 ? b() : new e() : new j();
    }

    @NonNull
    static d b() {
        return new j();
    }

    @NonNull
    static f c() {
        return new f();
    }

    public static void setElevation(@NonNull View view, float f2) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).W(f2);
        }
    }

    public static void setParentAbsoluteElevation(@NonNull View view) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            setParentAbsoluteElevation(view, (MaterialShapeDrawable) background);
        }
    }

    public static void setParentAbsoluteElevation(@NonNull View view, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        if (materialShapeDrawable.O()) {
            materialShapeDrawable.a0(ViewUtils.getParentAbsoluteElevation(view));
        }
    }
}
