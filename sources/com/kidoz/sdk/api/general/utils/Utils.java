package com.kidoz.sdk.api.general.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.webkit.ProxyConfig;
import com.facebook.internal.AnalyticsEvents;
import com.kidoz.sdk.api.KidozSDK;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Constructor;
import java.util.Date;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class Utils {
    private static final String SESSION_ID_KEY = "SESSION_ID_KEY";
    private static final String SESSION_START_KEY = "SESSION_START_KEY";
    private static final String TAG = "Utils";
    private static String cacheBuster;
    private static final AtomicInteger sNextGeneratedId = new AtomicInteger(1);
    private static boolean isWebViewSupportWepPAnimations = false;
    private static String mDefaultUserAgent = "";

    public interface OnGlobalLayoutFinishedListener {
        void onLayoutFinished();
    }

    public static class StaticHandler extends Handler {
        public StaticHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
        }
    }

    protected static boolean checkIfDeviceSupportWebPAnimations(Context context) {
        String[] strArrSplit;
        String[] strArrSplit2;
        String[] strArrSplit3;
        String defaultUserAgentString = getDefaultUserAgentString(context);
        mDefaultUserAgent = defaultUserAgentString;
        if (defaultUserAgentString == null || !defaultUserAgentString.contains("Chrome") || (strArrSplit = defaultUserAgentString.substring(defaultUserAgentString.indexOf("Chrome"), defaultUserAgentString.length()).split(" ")) == null || strArrSplit.length <= 0 || (strArrSplit2 = strArrSplit[0].split("/")) == null || strArrSplit2.length <= 1 || (strArrSplit3 = strArrSplit2[1].split(Pattern.quote("."))) == null || strArrSplit3.length <= 0) {
            return false;
        }
        try {
            return Integer.parseInt(strArrSplit3[0]) >= 32;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean checkManifestPermission(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Build.VERSION.SDK_INT >= 23 ? context.checkSelfPermission(str) == 0 : context.checkCallingOrSelfPermission(str) == 0;
    }

    public static int clearCacheFolder(File file, int i) {
        int iClearCacheFolder;
        if (file == null || !file.isDirectory()) {
            return 0;
        }
        try {
            iClearCacheFolder = 0;
            for (File file2 : file.listFiles()) {
                try {
                    if (file2.isDirectory()) {
                        iClearCacheFolder += clearCacheFolder(file2, i);
                    }
                    if (file2.lastModified() < new Date().getTime() - (((long) i) * 86400000) && file2.delete()) {
                        iClearCacheFolder++;
                    }
                } catch (Exception e2) {
                    e = e2;
                    Log.e(TAG, String.format("Failed to clean the cache, error %s", e.getMessage()));
                    return iClearCacheFolder;
                }
            }
        } catch (Exception e3) {
            e = e3;
            iClearCacheFolder = 0;
        }
        return iClearCacheFolder;
    }

    public static float convertPixelsToDp(float f2, Context context) {
        return f2 / (context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    public static int dpTOpx(Context context, float f2) {
        return (int) TypedValue.applyDimension(1, f2, context.getResources().getDisplayMetrics());
    }

    public static int dpTOpx(Resources resources, float f2) {
        return (int) TypedValue.applyDimension(1, f2, resources.getDisplayMetrics());
    }

    public static String fixUrlLink(String str) {
        if (str == null) {
            return str;
        }
        if (!str.contains(ProxyConfig.MATCH_HTTP) && !str.contains("https")) {
            return str;
        }
        String strTrim = str.trim();
        if (strTrim.contains(" ")) {
            strTrim = strTrim.replace(" ", "%20");
        }
        return strTrim.contains("+") ? strTrim.replace("+", "_") : strTrim;
    }

    public static int generateViewId() {
        AtomicInteger atomicInteger;
        int i;
        int i2;
        do {
            atomicInteger = sNextGeneratedId;
            i = atomicInteger.get();
            i2 = i + 1;
            if (i2 > 16777215) {
                i2 = 1;
            }
        } while (!atomicInteger.compareAndSet(i, i2));
        return i;
    }

    public static long getAppSessionId(Activity activity) {
        return activity.getSharedPreferences("events_shared_preferences", 0).getLong("last_session_id", 0L);
    }

    public static String getAppVersionCode(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to get app version code: " + e2.getMessage());
            return null;
        }
    }

    public static String getAppVersionName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to get app version name: " + e2.getMessage());
            return null;
        }
    }

    public static String getCacheBuster() {
        return new Integer(new Random().nextInt(38975)).toString();
    }

    public static String getCarrierName(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        } catch (Exception e2) {
            SDKLogger.printErrorLog("KIDOZ", e2.getMessage());
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
    }

    public static String getDefaultUserAgent() {
        return mDefaultUserAgent;
    }

    private static String getDefaultUserAgentString(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 17) {
                return WebSettings.getDefaultUserAgent(context);
            }
            Constructor declaredConstructor = WebSettings.class.getDeclaredConstructor(Context.class, WebView.class);
            declaredConstructor.setAccessible(true);
            try {
                return ((WebSettings) declaredConstructor.newInstance(context, null)).getUserAgentString();
            } finally {
                declaredConstructor.setAccessible(false);
            }
        } catch (Exception unused) {
            return new WebView(context).getSettings().getUserAgentString();
        }
    }

    public static String getDeviceReferral(Context context) {
        String strLoadStringValue = SharedPreferencesUtils.loadStringValue(context, "PUBLISHER_ID");
        String str = "SDK_";
        if (context != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("SDK_");
            sb.append(KidozSDK.getAppId() != null ? KidozSDK.getAppId() : context.getPackageName());
            str = sb.toString() + "_";
            if (strLoadStringValue != null) {
                str = str + strLoadStringValue;
            }
        }
        SDKLogger.printDebugLog(TAG, "Device Referral>> " + str);
        return str;
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

    public static String getDeviceType(Context context) {
        return ScreenUtils.getIsTablet(context) ? MBridgeConstans.API_REUQEST_CATEGORY_APP : "1";
    }

    public static int getNavigationBarHeight(Context context) {
        try {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier(resources.getConfiguration().orientation == 1 ? "navigation_bar_height" : "navigation_bar_height_landscape", "dimen", "android");
            if (identifier > 0) {
                return resources.getDimensionPixelSize(identifier);
            }
            return 0;
        } catch (Resources.NotFoundException unused) {
            return 0;
        }
    }

    public static String getNetworkType(Context context) {
        String str;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            boolean z = true;
            if (activeNetworkInfo.getType() != 1) {
                z = false;
            }
            if (z) {
                str = "WIFI";
            } else {
                if (activeNetworkInfo.getType() != 0) {
                    return "";
                }
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        str = "2G";
                        break;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        str = "3G";
                        break;
                    case 13:
                    case 18:
                    case 19:
                        str = "4G";
                        break;
                    case 20:
                        str = "5G";
                        break;
                    default:
                        str = "UG";
                        break;
                }
            }
            return str;
        } catch (Exception e2) {
            Log.d("KIDOZ", " " + e2.getMessage());
            return "";
        }
    }

    @SuppressLint({"NewApi"})
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

    @SuppressLint({"NewApi"})
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

    @SuppressLint({"NewApi"})
    public static Point getScreenSizeTemp(Context context, boolean z) {
        Point point = new Point();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT < 19) {
            point.x = defaultDisplay.getWidth();
            point.y = defaultDisplay.getHeight();
        } else if (z) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        return point;
    }

    public static String getSessionId(Context context) {
        long jLoadLongValue = SharedPreferencesUtils.loadLongValue(context, SESSION_START_KEY, 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - jLoadLongValue <= TimeUnit.DAYS.toMillis(30L) && jCurrentTimeMillis >= jLoadLongValue) {
            return SharedPreferencesUtils.loadStringValue(context, SESSION_ID_KEY);
        }
        String string = UUID.randomUUID().toString();
        SharedPreferencesUtils.saveLongValue(context, SESSION_START_KEY, jCurrentTimeMillis);
        SharedPreferencesUtils.saveStringValue(context, SESSION_ID_KEY, string);
        return string;
    }

    public static String getWebViewVersion() {
        String[] strArrSplit;
        String[] strArrSplit2;
        String defaultUserAgent = getDefaultUserAgent();
        if (defaultUserAgent == null || !defaultUserAgent.contains("Chrome") || (strArrSplit = defaultUserAgent.substring(defaultUserAgent.indexOf("Chrome"), defaultUserAgent.length()).split(" ")) == null || strArrSplit.length <= 0 || (strArrSplit2 = strArrSplit[0].split("/")) == null || strArrSplit2.length <= 1) {
            return "w";
        }
        return "c_" + strArrSplit2[1];
    }

    public static boolean isTablet(Context context) {
        return (((context.getResources().getConfiguration().screenLayout & 15) == 4) || ((context.getResources().getConfiguration().screenLayout & 15) == 3)) || getDeviceScreenSizeInInches(context) >= 7.0d;
    }

    public static boolean isUiThread() {
        return Build.VERSION.SDK_INT >= 23 ? Looper.getMainLooper().isCurrentThread() : Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static boolean isWebViewSupportWebP() {
        return isWebViewSupportWepPAnimations;
    }

    public static void preInitiate(Context context) {
        isWebViewSupportWepPAnimations = checkIfDeviceSupportWebPAnimations(context);
    }

    public static Uri prepareCorrectUri(Object obj) {
        int i;
        if (obj == null) {
            return Uri.EMPTY;
        }
        if (obj instanceof Uri) {
            return (Uri) obj;
        }
        if (obj instanceof Integer) {
            return Uri.parse("res:///" + obj);
        }
        if (obj instanceof File) {
            return Uri.fromFile((File) obj);
        }
        try {
            i = Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            i = -1;
        }
        if (i != -1) {
            return Uri.parse("res:///" + i);
        }
        String str = (String) obj;
        if (str.startsWith("http://") || str.startsWith("https://")) {
            return Uri.parse(str);
        }
        if (str.contains("mnt/") || str.contains("storage/")) {
            return Uri.fromFile(new File(str));
        }
        return Uri.parse("asset:///" + obj);
    }

    public static String readStringFromAssets(Context context, String str) {
        try {
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getAssets().open(str), C.UTF8_NAME));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return sb.toString();
                }
                sb.append(line);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @SuppressLint({"NewApi"})
    public static void setOnGlobalLayoutFinishListener(final View view, final OnGlobalLayoutFinishedListener onGlobalLayoutFinishedListener) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kidoz.sdk.api.general.utils.Utils.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (Build.VERSION.SDK_INT >= 16) {
                    view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                } else {
                    view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                }
                OnGlobalLayoutFinishedListener onGlobalLayoutFinishedListener2 = onGlobalLayoutFinishedListener;
                if (onGlobalLayoutFinishedListener2 != null) {
                    onGlobalLayoutFinishedListener2.onLayoutFinished();
                }
            }
        });
    }

    public static int spTOpx(Context context, float f2) {
        return (int) TypedValue.applyDimension(2, f2, context.getResources().getDisplayMetrics());
    }
}
