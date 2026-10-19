package com.bytedance.sdk.component.adexpress.c;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Locale;

/* JADX INFO: compiled from: ScreenUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class e {
    private static boolean a;

    public static float a(Context context, float f2) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.a.a.a.a().c().b();
        }
        return (f2 * d(context)) + 0.5f;
    }

    public static int a(float f2, float f3, float f4, float f5) {
        return (((int) ((f2 * 255.0f) + 0.5f)) << 24) | (((int) ((f3 * 255.0f) + 0.5f)) << 16) | (((int) ((f4 * 255.0f) + 0.5f)) << 8) | ((int) ((f5 * 255.0f) + 0.5f));
    }

    public static int a(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.a.a.a.a().c().b();
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int b(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.a.a.a.a().c().b();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealMetrics(displayMetrics);
        } else {
            defaultDisplay.getMetrics(displayMetrics);
        }
        return displayMetrics.heightPixels;
    }

    public static int b(Context context, float f2) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.a.a.a.a().c().b();
        }
        float fD = d(context);
        if (fD <= 0.0f) {
            fD = 1.0f;
        }
        return (int) ((f2 / fD) + 0.5f);
    }

    public static float c(Context context, float f2) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.a.a.a.a().c().b();
        }
        return f2 * d(context);
    }

    public static String c(Context context) {
        try {
            return (Build.VERSION.SDK_INT >= 24 ? context.getResources().getConfiguration().getLocales().get(0) : Locale.getDefault()).getLanguage();
        } catch (Throwable unused) {
            return "";
        }
    }

    private static float d(Context context) {
        try {
            if (a) {
                context.getClassLoader().loadClass("android.util.DisplayMetrics").getDeclaredMethod("getDeviceDensity", new Class[0]).setAccessible(true);
                return ((Integer) r1.invoke(r0, new Object[0])).intValue() / 160.0f;
            }
        } catch (Exception unused) {
        }
        return context.getResources().getDisplayMetrics().density;
    }
}
