package com.tapjoy;

import android.content.Context;
import android.text.TextUtils;
import com.tapjoy.internal.i6;
import com.tapjoy.internal.l4;
import com.tapjoy.internal.l7;
import com.tapjoy.internal.o8;
import com.tapjoy.internal.p8;

/* JADX INFO: loaded from: classes4.dex */
public class TJPlacementManager {
    public static final o8 a = new o8();
    public static int b = 0;
    public static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f7808d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f7809e = 3;

    public static o a(String str) {
        o oVar;
        o8 o8Var = a;
        synchronized (o8Var) {
            oVar = (o) o8Var.get(str);
        }
        return oVar;
    }

    public static o a(String str, String str2, String str3, boolean z) {
        o oVarA;
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "!SYSTEM!" : "");
        sb.append(!TextUtils.isEmpty(str) ? str : "");
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        sb.append(str2);
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        sb.append(str3);
        String string = sb.toString();
        TapjoyLog.d("TJPlacementManager", "TJCorePlacement key=" + string);
        o8 o8Var = a;
        synchronized (o8Var) {
            oVarA = a(string);
            if (oVarA == null) {
                oVarA = new o(str, string);
                o8Var.put(string, oVarA);
                TapjoyLog.d("TJPlacementManager", "Created TJCorePlacement with GUID: " + oVarA.f8039f);
            }
        }
        return oVarA;
    }

    public static boolean canCachePlacement() {
        return getCachedPlacementCount() < getCachedPlacementLimit();
    }

    public static boolean canPreRenderPlacement() {
        return getPreRenderedPlacementCount() < getPreRenderedPlacementLimit();
    }

    public static TJPlacement createPlacement(Context context, String str, boolean z, TJPlacementListener tJPlacementListener) {
        o oVarA = a(str, null, null, z);
        oVarA.m = z;
        oVarA.f8037d.z("sdk");
        oVarA.n(context);
        return new TJPlacement(oVarA, tJPlacementListener);
    }

    public static void decrementPlacementCacheCount() {
        int i = b - 1;
        b = i;
        if (i < 0) {
            b = 0;
        }
        printPlacementCacheInformation();
    }

    public static void decrementPlacementPreRenderCount() {
        int i = c - 1;
        c = i;
        if (i < 0) {
            c = 0;
        }
    }

    public static void dismissContentShowing(boolean z) {
        com.tapjoy.internal.d dVar;
        TJAdUnitActivity tJAdUnitActivity;
        if (z && (tJAdUnitActivity = TJAdUnitActivity.f7791f) != null) {
            tJAdUnitActivity.e(true);
        }
        i6 i6Var = i6.f7913d;
        if (i6Var != null && (dVar = i6Var.h) != null) {
            dVar.dismiss();
        }
        p8 p8Var = p8.f7961d;
        if (p8Var != null) {
            l4.a(new l7(p8Var));
        }
    }

    public static int getCachedPlacementCount() {
        return b;
    }

    public static int getCachedPlacementLimit() {
        return f7808d;
    }

    public static int getPreRenderedPlacementCount() {
        return c;
    }

    public static int getPreRenderedPlacementLimit() {
        return f7809e;
    }

    public static void incrementPlacementCacheCount() {
        int i = b + 1;
        b = i;
        int i2 = f7808d;
        if (i > i2) {
            b = i2;
        }
        printPlacementCacheInformation();
    }

    public static void incrementPlacementPreRenderCount() {
        int i = c + 1;
        c = i;
        int i2 = f7809e;
        if (i > i2) {
            c = i2;
        }
    }

    public static void printPlacementCacheInformation() {
        TapjoyLog.i("TJPlacementManager", "Space available in placement cache: " + b + " out of " + f7808d);
    }

    public static void printPlacementPreRenderInformation() {
        TapjoyLog.i("TJPlacementManager", "Space available for placement pre-render: " + c + " out of " + f7809e);
    }

    public static void setCachedPlacementLimit(int i) {
        f7808d = i;
    }

    public static void setPreRenderedPlacementLimit(int i) {
        f7809e = i;
    }
}
