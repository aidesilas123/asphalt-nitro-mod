package com.kidoz.sdk.api.general.utils;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes4.dex */
public final class ScreenUtils {
    private static final String TAG = "ScreenUtils";

    public static float convertDpToPixel(float f2) {
        return f2 * (Resources.getSystem().getDisplayMetrics().densityDpi / 160.0f);
    }

    public static float convertPixelsToDp(float f2) {
        return f2 / (Resources.getSystem().getDisplayMetrics().densityDpi / 160.0f);
    }

    public static float getDensityDpi(Context context) {
        return context.getResources().getDisplayMetrics().density * 160.0f;
    }

    public static double getDeviceScreenSizeInInches(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Display defaultDisplay = windowManager.getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int iIntValue = displayMetrics.widthPixels;
        int iIntValue2 = displayMetrics.heightPixels;
        int i = Build.VERSION.SDK_INT;
        if (i >= 14 && i < 17) {
            try {
                iIntValue = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                iIntValue2 = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception unused) {
            }
        }
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                Point point = new Point();
                Display.class.getMethod("getRealSize", Point.class).invoke(defaultDisplay, point);
                iIntValue = point.x;
                iIntValue2 = point.y;
            } catch (Exception unused2) {
            }
        }
        windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
        return Math.round(Math.sqrt(Math.pow(iIntValue / r0.xdpi, 2.0d) + Math.pow(iIntValue2 / r0.ydpi, 2.0d)) * 10.0d) / 10.0d;
    }

    public static boolean getIsScreenOff(Context context) {
        if (Build.VERSION.SDK_INT < 20) {
            return !((PowerManager) context.getSystemService("power")).isScreenOn();
        }
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getState() == 1;
    }

    public static boolean getIsTablet(Context context) {
        return context == null || (context.getResources().getConfiguration().screenLayout & 15) != 2;
    }

    public static int getNavigationBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static float getScaleFactor(Context context) {
        float f2;
        float f3;
        if (context != null) {
            f2 = context.getResources().getDisplayMetrics().density / 3.0f;
            if ((context.getResources().getConfiguration().screenLayout & 15) != 3) {
                f3 = (context.getResources().getConfiguration().screenLayout & 15) == 4 ? 1.5f : 1.25f;
            }
            f2 *= f3;
        } else {
            f2 = 1.0f;
        }
        SDKLogger.printDebugLog(TAG, ">>>>Scale factor = " + String.valueOf(f2));
        return f2;
    }

    public static int[] getScaledDimension(int i, int i2, int i3, int i4) {
        float f2 = i;
        float f3 = i2;
        float fMin = Math.min(i3 / f2, i4 / f3);
        return new int[]{Math.round(f2 * fMin), Math.round(f3 * fMin)};
    }

    public static int getScreenCategory(Context context) {
        return context.getResources().getConfiguration().screenLayout & 15;
    }

    public static float getScreenDpi(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static int getScreenOrientation(Activity activity) {
        if (activity == null) {
            return 0;
        }
        return activity.getResources().getConfiguration().orientation;
    }

    public static int getScreenSize(Context context, boolean z) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (z) {
            if (Build.VERSION.SDK_INT < 19) {
                return defaultDisplay.getWidth();
            }
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            return point.x;
        }
        if (Build.VERSION.SDK_INT < 19) {
            return defaultDisplay.getHeight();
        }
        Point point2 = new Point();
        defaultDisplay.getRealSize(point2);
        return point2.y;
    }

    public static Point getScreenSize(Context context) {
        Point point = new Point();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 19) {
            defaultDisplay.getRealSize(point);
        } else {
            point.x = defaultDisplay.getWidth();
            point.y = defaultDisplay.getHeight();
        }
        return point;
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static float getTextScale(Context context) {
        if ((context.getResources().getConfiguration().screenLayout & 15) == 3) {
            return 2.0f;
        }
        return (context.getResources().getConfiguration().screenLayout & 15) == 4 ? 2.5f : 1.0f;
    }

    public static void hideNavigationAndStatusBar(Window window) {
        if (window != null) {
            int i = Build.VERSION.SDK_INT;
            if (i < 16) {
                window.setFlags(1024, 1024);
            } else if (i >= 16 && i < 19) {
                window.getDecorView().setSystemUiVisibility(0);
                window.getDecorView().setSystemUiVisibility(4);
            }
            if (i >= 19) {
                window.getDecorView().setSystemUiVisibility(0);
                window.getDecorView().setSystemUiVisibility(5894);
            }
        }
    }

    public static void hideNavigationBar(Window window) {
        if (window != null) {
            int i = Build.VERSION.SDK_INT;
            if (i < 16) {
                window.setFlags(1024, 1024);
            } else if (i >= 16 && i < 19) {
                window.getDecorView().setSystemUiVisibility(0);
                window.getDecorView().setSystemUiVisibility(4);
            }
            if (i >= 19) {
                window.getDecorView().setSystemUiVisibility(0);
                window.getDecorView().setSystemUiVisibility(5380);
            }
        }
    }

    public static void setScreenOrientation(Activity activity, int i) {
        if (activity != null) {
            if (i == 1 || i == 0 || i == 4) {
                activity.setRequestedOrientation(i);
            }
        }
    }

    public static void showNavigationAndStatusBar(Window window) {
        if (window != null) {
            int i = Build.VERSION.SDK_INT;
            if (i < 16) {
                window.clearFlags(1024);
            } else if (i >= 16 && i < 19) {
                window.getDecorView().setSystemUiVisibility(0);
            }
            if (i >= 19) {
                window.getDecorView().setSystemUiVisibility(0);
            }
        }
    }
}
