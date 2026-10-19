package com.mbridge.msdk.video.dynview.i.b;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import com.mbridge.msdk.foundation.tools.af;

/* JADX INFO: compiled from: UIDrawableUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static void a(View view, float f2, float f3, String str, String[] strArr, GradientDrawable.Orientation orientation) {
        if (view == null || strArr == null) {
            return;
        }
        int[] iArr = new int[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            iArr[i] = Color.parseColor(strArr[i]);
        }
        GradientDrawable gradientDrawable = new GradientDrawable(orientation, iArr);
        gradientDrawable.setCornerRadius(af.b(view.getContext(), f3));
        gradientDrawable.setStroke(af.b(view.getContext(), f2), Color.parseColor(str));
        view.setBackground(gradientDrawable);
    }
}
