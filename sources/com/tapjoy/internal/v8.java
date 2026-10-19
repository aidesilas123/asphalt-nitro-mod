package com.tapjoy.internal;

import android.app.Activity;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.core.hardware.display.DisplayManagerCompat;
import com.tapjoy.TJAdUnitActivity;
import com.tapjoy.TapjoyLog;

/* JADX INFO: loaded from: classes4.dex */
public abstract class v8 {
    public static int a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 30) {
            return activity.createDisplayContext(DisplayManagerCompat.getInstance(activity).getDisplay(0)).getResources().getDisplayMetrics().heightPixels;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int a(TJAdUnitActivity tJAdUnitActivity, int i, int i2) {
        if (tJAdUnitActivity != null) {
            int rotation = tJAdUnitActivity.getWindowManager().getDefaultDisplay().getRotation();
            if (((rotation == 0 || rotation == 2) && i2 > i) || ((rotation == 1 || rotation == 3) && i > i2)) {
                if (rotation != 1) {
                    if (rotation != 2) {
                        if (rotation != 3) {
                            TapjoyLog.w("TJDevice", "Unknown screen orientation. Defaulting to landscape.");
                        }
                        return 90;
                    }
                    return 180;
                }
                return 270;
            }
            if (rotation != 0) {
                if (rotation != 1) {
                    if (rotation != 2) {
                        if (rotation != 3) {
                            TapjoyLog.w("TAG", "Unknown screen orientation. Defaulting to landscape.");
                        }
                        return 180;
                    }
                    return 90;
                }
            }
            return 270;
        }
        return 0;
    }

    public static int b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 30) {
            return activity.createDisplayContext(DisplayManagerCompat.getInstance(activity).getDisplay(0)).getResources().getDisplayMetrics().widthPixels;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }
}
