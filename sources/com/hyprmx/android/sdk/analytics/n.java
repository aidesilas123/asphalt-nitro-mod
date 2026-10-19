package com.hyprmx.android.sdk.analytics;

import android.os.Build;
import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.core.t;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class n {
    @RetainMethodSignature
    public static Void a(l lVar) {
        return null;
    }

    @RetainMethodSignature
    public static String b(l lVar) {
        String DEVICE = Build.DEVICE;
        Intrinsics.checkNotNullExpressionValue(DEVICE, "DEVICE");
        return DEVICE;
    }

    @RetainMethodSignature
    public static String c(l lVar) {
        String BRAND = Build.BRAND;
        Intrinsics.checkNotNullExpressionValue(BRAND, "BRAND");
        return BRAND;
    }

    @RetainMethodSignature
    public static String d(l lVar) {
        String FINGERPRINT = Build.FINGERPRINT;
        Intrinsics.checkNotNullExpressionValue(FINGERPRINT, "FINGERPRINT");
        return FINGERPRINT;
    }

    @RetainMethodSignature
    public static String e(l lVar) {
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        return MANUFACTURER;
    }

    @RetainMethodSignature
    public static String f(l lVar) {
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        return MODEL;
    }

    @RetainMethodSignature
    public static String g(l lVar) {
        String PRODUCT = Build.PRODUCT;
        Intrinsics.checkNotNullExpressionValue(PRODUCT, "PRODUCT");
        return PRODUCT;
    }

    @RetainMethodSignature
    public static String h(l lVar) {
        return "android";
    }

    @RetainMethodSignature
    public static String i(l lVar) {
        String strS;
        com.hyprmx.android.sdk.core.j jVar = t.a.f4521g;
        return (jVar == null || (strS = jVar.a.s()) == null) ? "" : strS;
    }

    @RetainMethodSignature
    public static Void j(l lVar) {
        return null;
    }

    @RetainMethodSignature
    public static Void k(l lVar) {
        return null;
    }

    @RetainMethodSignature
    public static int l(l lVar) {
        return 403;
    }

    @RetainMethodSignature
    public static Void m(l lVar) {
        return null;
    }

    @RetainMethodSignature
    public static String n(l lVar) {
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        return RELEASE;
    }

    @RetainMethodSignature
    public static String o(l lVar) {
        return "android";
    }

    @RetainMethodSignature
    public static Void p(l lVar) {
        return null;
    }

    @RetainMethodSignature
    public static String q(l lVar) {
        return "6.2.0";
    }

    @RetainMethodSignature
    public static Void r(l lVar) {
        return null;
    }

    @RetainMethodSignature
    public static Void s(l lVar) {
        return null;
    }

    @RetainMethodSignature
    public static Void t(l lVar) {
        return null;
    }

    @RetainMethodSignature
    public static Void u(l lVar) {
        return null;
    }

    @RetainMethodSignature
    public static boolean v(l lVar) {
        return false;
    }

    @RetainMethodSignature
    public static String w(l lVar) {
        String strY;
        com.hyprmx.android.sdk.core.j jVar = t.a.f4521g;
        return (jVar == null || (strY = jVar.a.y()) == null) ? "" : strY;
    }

    @RetainMethodSignature
    public static Void x(l lVar) {
        return null;
    }
}
