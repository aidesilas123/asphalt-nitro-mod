package com.json.mediationsdk;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;

/* JADX INFO: loaded from: classes4.dex */
public class AdapterUtils {
    public static final int MIN_TABLET_DP_SIZE = 600;

    public static int dpToPixels(Context context, int i) {
        if (context != null) {
            return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "AdapterUtils dpToPixels - context is null, returning dpSize", 3);
        return i;
    }

    public static String getScreenSizeParams(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        float f2 = displayMetrics.heightPixels;
        float f3 = displayMetrics.density;
        float fMin = Math.min(displayMetrics.widthPixels / f3, f2 / f3);
        float f4 = displayMetrics.xdpi;
        float f5 = displayMetrics.widthPixels / f4;
        float f6 = displayMetrics.heightPixels / displayMetrics.ydpi;
        return "smallestWidth = " + fMin + " diagonalInches = " + Math.sqrt((f5 * f5) + (f6 * f6)) + " smallScreenDpApi =  " + context.getResources().getConfiguration().smallestScreenWidthDp;
    }

    public static boolean isLargeScreen(Context context) {
        if (context != null) {
            return context.getResources().getConfiguration().smallestScreenWidthDp >= 600;
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "AdapterUtils isLargeScreen - context is null", 3);
        return false;
    }
}
