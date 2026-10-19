package com.bytedance.sdk.component.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: compiled from: ResourceHelp.java */
/* JADX INFO: loaded from: classes2.dex */
public final class s {
    private static String a;
    private static Resources b;

    @SuppressLint({"StaticFieldLeak"})
    private static Context c;

    private static int a(Context context, String str, String str2) {
        if (b == null) {
            b = context.getResources();
        }
        return b.getIdentifier(str, str2, b(context));
    }

    public static String a(Context context, String str) {
        Context context2 = c;
        return context2 == null ? context.getResources().getString(b(context, str)) : context2.getResources().getString(b(c, str));
    }

    public static void a(Context context) {
        c = context;
    }

    public static void a(String str) {
        a = str;
    }

    public static int b(Context context, String str) {
        return a(context, str, TypedValues.Custom.S_STRING);
    }

    private static String b(Context context) {
        if (a == null) {
            a = context.getPackageName();
        }
        return a;
    }

    public static Drawable c(Context context, String str) {
        return context.getResources().getDrawable(d(context, str));
    }

    public static int d(Context context, String str) {
        return a(context, str, "drawable");
    }

    public static int e(Context context, String str) {
        return a(context, str, "id");
    }

    public static int f(Context context, String str) {
        return a(context, str, "style");
    }

    public static int g(Context context, String str) {
        return a(context, str, "dimen");
    }

    public static int h(Context context, String str) {
        return context.getResources().getColor(i(context, str));
    }

    public static int i(Context context, String str) {
        return a(context, str, "color");
    }

    public static int j(Context context, String str) {
        return a(context, str, "anim");
    }

    public static int k(Context context, String str) {
        return a(context, str, TypedValues.Custom.S_INT);
    }

    public static int l(Context context, String str) {
        return context.getResources().getInteger(k(context, str));
    }
}
