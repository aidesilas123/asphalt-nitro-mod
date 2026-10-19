package com.gameloft.adsmanager;

import android.app.Activity;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewManager;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class JavaUtils {
    static int _anchor = 3;
    static int _positionX = 0;
    static int _positionY = 0;
    static ViewGroup.LayoutParams bannerLayoutParams = null;
    static int banner_height = 0;
    static int banner_width = 0;
    static float density = 1.0f;
    static int displayDpi = 160;
    static final int displayDpiRef = 160;
    static int displayHeightPx = 0;
    static int displayWidthPx = 0;
    static boolean isPhone = true;
    static RelativeLayout.LayoutParams nativeLayoutParams = null;
    static float realScreenHeightDpi = 1.0f;
    static float realScreenWidthDpi = 1.0f;
    static float zoomFactor = 1.0f;

    public static class Constants {
        public static final int BANNER_HEIGHT_DP = 50;
        public static final int BANNER_WIDTH_DP = 320;
        public static final int NATIVE_HEIGHT_DP_100 = 100;
        public static final int NATIVE_HEIGHT_DP_300 = 300;
        public static final int TABLET_HEIGHT_DP = 90;
        public static final int TABLET_WIDTH_DP = 728;

        public static class Anchor {
            public static final int AD_BOTTOM_CENTER = 3;
            public static final int AD_BOTTOM_LEFT = 4;
            public static final int AD_BOTTOM_RIGHT = 5;
            public static final int AD_CENTER = 8;
            public static final int AD_MIDDLE_LEFT = 7;
            public static final int AD_MIDDLE_RIGHT = 6;
            public static final int AD_TOP_CENTER = 2;
            public static final int AD_TOP_LEFT = 0;
            public static final int AD_TOP_RIGHT = 1;
        }
    }

    public static class Errors {
        public static final int ERROR_EXCEPTION_RAISED = 8888;
        public static final int ERROR_NO_AD_AVAILABLE = 9996;
        public static final int ERROR_UNKNOWN = 9991;
    }

    public static class PlacementState {
        private Map<String, Boolean> placementMap;

        public PlacementState(String[] strArr) {
            synchronized (this) {
                this.placementMap = new HashMap();
                for (int i = 0; i < strArr.length; i++) {
                    if (strArr[i] != null) {
                        this.placementMap.put(strArr[i], Boolean.TRUE);
                    }
                }
            }
        }

        public synchronized boolean HasPlacement(String str) {
            return this.placementMap.containsKey(str);
        }

        public synchronized boolean PopSpecificPlacement(String str) {
            if (!this.placementMap.containsKey(str) || !this.placementMap.get(str).booleanValue()) {
                return false;
            }
            this.placementMap.put(str, Boolean.FALSE);
            return true;
        }

        public synchronized String PopValidPlacement() {
            Iterator<String> it = this.placementMap.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (this.placementMap.get(next).booleanValue()) {
                    this.placementMap.put(next, Boolean.FALSE);
                    return next == null ? "" : next;
                }
            }
            return "";
        }

        public synchronized void PushPlacement(String str) {
            if (str != null) {
                this.placementMap.put(str, Boolean.TRUE);
            }
        }
    }

    public static void AdsManagerLog(String str, String str2, String str3) {
        try {
            AdsManagerLogNative(str, str2, str3);
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    public static void AdsManagerLogError(String str, String str2, String str3) {
        try {
            AdsManagerLogErrorNative(str, str2, str3);
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    public static native void AdsManagerLogErrorNative(String str, String str2, String str3);

    public static void AdsManagerLogInfo(String str, String str2, String str3) {
        try {
            AdsManagerLogInfoNative(str, str2, str3);
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    public static native void AdsManagerLogInfoNative(String str, String str2, String str3);

    public static native void AdsManagerLogNative(String str, String str2, String str3);

    public static void AdsManagerLogWarning(String str, String str2, String str3) {
        try {
            AdsManagerLogWarningNative(str, str2, str3);
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    public static native void AdsManagerLogWarningNative(String str, String str2, String str3);

    static void ApplyCorrection(View view) {
        if (Build.VERSION.SDK_INT < 23) {
        }
        view.setScaleX(zoomFactor);
        view.setScaleY(zoomFactor);
        float f2 = zoomFactor;
        float f3 = ((1.0f - f2) * banner_width) / 2.0f;
        float f4 = ((1.0f - f2) * banner_height) / 2.0f;
        switch (_anchor) {
            case 0:
                view.setTranslationX(-f3);
                view.setTranslationY(-f4);
                break;
            case 1:
                view.setTranslationX(f3);
                view.setTranslationY(-f4);
                break;
            case 2:
                view.setTranslationX(0.0f);
                view.setTranslationY(-f4);
                break;
            case 3:
                view.setTranslationX(0.0f);
                view.setTranslationY(f4);
                break;
            case 4:
                view.setTranslationX(-f3);
                view.setTranslationY(f4);
                break;
            case 5:
                view.setTranslationX(f3);
                view.setTranslationY(f4);
                break;
            case 6:
                view.setTranslationX(f3);
                view.setTranslationY(0.0f);
                break;
            case 7:
                view.setTranslationX(-f3);
                view.setTranslationY(0.0f);
                break;
            case 8:
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                break;
        }
    }

    static void Init() {
        Activity activity = AdsManager.mainActivity;
        if (activity != null) {
            Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            density = displayMetrics.density;
            displayDpi = displayMetrics.densityDpi;
            if (Build.VERSION.SDK_INT >= 19) {
                Point point = new Point();
                defaultDisplay.getRealSize(point);
                displayWidthPx = point.x;
                displayHeightPx = point.y;
            } else {
                displayWidthPx = defaultDisplay.getWidth();
                displayHeightPx = defaultDisplay.getHeight();
            }
            float f2 = displayWidthPx / displayMetrics.xdpi;
            float f3 = displayHeightPx / displayMetrics.ydpi;
            isPhone = (f2 * f2) + (f3 * f3) < 48.0f;
            realScreenWidthDpi = f2 * 160.0f;
            realScreenHeightDpi = f3 * 160.0f;
            if (AdsManager.mainActivity.getResources().getConfiguration().orientation == 2) {
                zoomFactor = AdsManager.mainActivity.getResources().getConfiguration().screenHeightDp / realScreenHeightDpi;
            } else {
                zoomFactor = AdsManager.mainActivity.getResources().getConfiguration().screenWidthDp / realScreenWidthDpi;
            }
            AdsManagerLogInfo("JavaUtils.java", "Init", String.format("DisplayMetrics: density = (%f), densityDpi = (%d), widthPixels = (%d), heightPixels = (%d), xdpi = (%f), ydpi = (%f)", Float.valueOf(displayMetrics.density), Integer.valueOf(displayDpi), Integer.valueOf(displayMetrics.widthPixels), Integer.valueOf(displayMetrics.heightPixels), Float.valueOf(displayMetrics.xdpi), Float.valueOf(displayMetrics.ydpi)));
        }
        SetupLayoutParams();
    }

    public static boolean LogErrorIfClassIsMissing(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e2) {
            AdsManagerLogError("JavaUtils.java", "LogErrorIfClassIsMissing", "class = (" + str + ")");
            LogException("LogErrorIfClassIsMissing", "LogErrorIfClassIsMissing", e2);
            return false;
        } catch (Throwable th) {
            AdsManagerLogError("JavaUtils.java", "LogErrorIfClassIsMissing", "class = (" + str + ")");
            LogException("LogErrorIfClassIsMissing", "LogErrorIfClassIsMissing", th);
            return false;
        }
    }

    public static void LogException(String str, String str2, Throwable th) {
        if (th != null) {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            AdsManagerLogError(str, str2, "Exception message=(" + th.getLocalizedMessage() + ") stackTrace = (" + stringWriter.toString() + ")");
        }
    }

    public static void PostAndLogException(ViewGroup viewGroup, Runnable runnable) {
        PostAndLogException(viewGroup, runnable, null);
    }

    public static void PostAndLogException(ViewGroup viewGroup, final Runnable runnable, final Runnable runnable2) {
        if (viewGroup == null) {
            AdsManagerLogError("JavaUtils.java", "PostAndLogExcepions", "Invalid parentViewGroup");
            if (runnable2 != null) {
                runnable2.run();
            }
        }
        viewGroup.post(new Runnable() { // from class: com.gameloft.adsmanager.JavaUtils.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    runnable.run();
                } catch (Exception e2) {
                    JavaUtils.LogException("PostAndLogExcepions", "PostAndLogExcepions", e2);
                    Runnable runnable3 = runnable2;
                    if (runnable3 != null) {
                        runnable3.run();
                    }
                }
            }
        });
    }

    static void RemoveViewFromParent(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewManager) {
            ((ViewManager) parent).removeView(view);
        }
    }

    static void SetBannerPositionAndAnchor(int i, int i2, int i3) {
        _positionX = i;
        _positionY = i2;
        _anchor = i3;
        SetupLayoutParams();
    }

    static void SetupBannerDimensions() {
        if (isPhone) {
            float f2 = density;
            banner_width = (int) (320.0f * f2);
            banner_height = (int) (f2 * 50.0f);
        } else {
            float f3 = density;
            banner_width = (int) (728.0f * f3);
            banner_height = (int) (f3 * 90.0f);
        }
        AdsManagerLogInfo("JavaUtils.java", "SetupBannerDimensions", " width=(" + banner_width + "), height=(" + banner_height + ")");
    }

    static void SetupLayoutParams() {
        SetupBannerDimensions();
        int[] iArr = {14, 12};
        switch (_anchor) {
            case 0:
                iArr[0] = 10;
                iArr[1] = 9;
                break;
            case 1:
                iArr[0] = 10;
                iArr[1] = 11;
                break;
            case 2:
                iArr[0] = 10;
                iArr[1] = 14;
                break;
            case 3:
                iArr[0] = 14;
                iArr[1] = 12;
                break;
            case 4:
                iArr[0] = 9;
                iArr[1] = 12;
                break;
            case 5:
                iArr[0] = 11;
                iArr[1] = 12;
                break;
            case 6:
                iArr[0] = 15;
                iArr[1] = 11;
                break;
            case 7:
                iArr[0] = 15;
                iArr[1] = 9;
                break;
            case 8:
                iArr[0] = 15;
                iArr[1] = 14;
                break;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(banner_width, banner_height);
        bannerLayoutParams = layoutParams;
        layoutParams.addRule(iArr[0]);
        ((RelativeLayout.LayoutParams) bannerLayoutParams).addRule(iArr[1]);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) bannerLayoutParams;
        int i = _positionX;
        int i2 = i >= 0 ? i : 0;
        int i3 = _positionY;
        layoutParams2.setMargins(i2, i3 >= 0 ? i3 : 0, i < 0 ? -i : 0, i3 < 0 ? -i3 : 0);
    }
}
