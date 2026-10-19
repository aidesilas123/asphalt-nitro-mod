package com.bytedance.sdk.openadsdk.core.nativeexpress.a;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: compiled from: DynamicViewUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static float a(Context context) {
        return ad.c(context, ad.i(context));
    }

    @NonNull
    public static Pair<Float, Float> a(Window window, int i) {
        View decorView = window.getDecorView();
        float[] fArrA = {decorView.getWidth() - (decorView.getPaddingLeft() * 2), decorView.getHeight() - (decorView.getPaddingTop() * 2)};
        fArrA[0] = ad.c(window.getContext(), fArrA[0]);
        fArrA[1] = ad.c(window.getContext(), fArrA[1]);
        if (fArrA[0] < 10.0f || fArrA[1] < 10.0f) {
            l.b("DynamicViewUtils", "get root view size error, so run backup");
            fArrA = a(window.getContext(), ad.c(window.getContext(), ad.a()), i);
        }
        float fMax = Math.max(fArrA[0], fArrA[1]);
        float fMin = Math.min(fArrA[0], fArrA[1]);
        if (i == 1) {
            fArrA[0] = fMin;
            fArrA[1] = fMax;
        } else {
            fArrA[0] = fMax;
            fArrA[1] = fMin;
        }
        return new Pair<>(Float.valueOf(fArrA[0]), Float.valueOf(fArrA[1]));
    }

    private static float[] a(Context context, int i, int i2) {
        float fA = a(context);
        float fB = b(context);
        if ((i2 == 1) != (fA > fB)) {
            float f2 = fA + fB;
            fB = f2 - fB;
            fA = f2 - fB;
        }
        if (i2 == 1) {
            fA -= i;
        } else {
            fB -= i;
        }
        return new float[]{fB, fA};
    }

    public static float b(Context context) {
        return ad.c(context, ad.j(context));
    }
}
