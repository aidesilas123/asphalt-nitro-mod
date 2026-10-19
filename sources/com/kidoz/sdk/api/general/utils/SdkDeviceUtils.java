package com.kidoz.sdk.api.general.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.kidoz.sdk.api.KidozSDK;
import java.io.File;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class SdkDeviceUtils {
    private static final String STOP_STATE_FLAG_SHARED_PREFERENCES = "STOP_STATE_FLAG_SHARED_PREFERENCES";
    private static final String TAG = "SdkDeviceUtils";

    public static String getCurrentDefaultLauncherPackageName(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
        if (resolveInfoResolveActivity == null) {
            return null;
        }
        String str = resolveInfoResolveActivity.activityInfo.packageName;
        if (str.equals("android")) {
            return null;
        }
        return str;
    }

    public static double getDeviceDPIFactor(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.densityDpi;
        if (i == 120) {
            return 0.75d;
        }
        if (i == 160) {
            return 1.0d;
        }
        if (i == 240) {
            return 1.5d;
        }
        if (i == 320) {
            return 2.0d;
        }
        if (i != 480) {
            return i != 640 ? 1.0d : 4.0d;
        }
        return 3.0d;
    }

    public static int getDeviceDefaultOrientation(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Configuration configuration = context.getResources().getConfiguration();
        int rotation = windowManager.getDefaultDisplay().getRotation();
        return (((rotation == 0 || rotation == 2) && configuration.orientation == 2) || ((rotation == 1 || rotation == 3) && configuration.orientation == 1)) ? 2 : 1;
    }

    public static String getDeviceInfo() {
        return "Device: " + Build.MANUFACTURER + "#" + Build.MODEL + "\nOS Version: " + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")\n\n";
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

    public static File getInnerStoragePathIfPosible(Context context) {
        File file = null;
        try {
            File file2 = new File(context.getFilesDir().getAbsolutePath() + File.separator + ConstantDef.TEMPORARY_SDK_SD_FOLDER_NAME);
            try {
                if (file2.exists()) {
                    return file2;
                }
                file2.mkdirs();
                return file2;
            } catch (Exception e2) {
                e = e2;
                file = file2;
                Log.d("ahmed", "assetFile | getInnerStoragePathIfPosible execption | " + e.getLocalizedMessage());
                SDKLogger.printErrorLog("Problem initiating storage location: \n\n" + e.getMessage());
                return file;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public static String getMACAddress(String str) {
        String string = null;
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (str == null || networkInterface.getName().equalsIgnoreCase(str)) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress != null) {
                        StringBuilder sb = new StringBuilder();
                        for (byte b : hardwareAddress) {
                            sb.append(String.format("%02X:", Byte.valueOf(b)));
                        }
                        if (sb.length() > 0) {
                            sb.deleteCharAt(sb.length() - 1);
                        }
                        string = sb.toString();
                    }
                }
            }
        } catch (Exception unused) {
        }
        return string;
    }

    public static String getPicturePathFromUri(Context context, Uri uri) {
        if (uri == null) {
            return null;
        }
        Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
        cursorQuery.moveToFirst();
        String string = cursorQuery.getString(columnIndexOrThrow);
        cursorQuery.close();
        return string;
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

    public static void setDeviceLanguage(Context context, String str) {
        Locale locale;
        if (context == null || str == null) {
            return;
        }
        String[] strArrSplit = str.split("_");
        if (strArrSplit != null && strArrSplit.length > 1) {
            locale = new Locale(strArrSplit[0], strArrSplit[1]);
        } else if (strArrSplit == null || strArrSplit.length <= 0) {
            return;
        } else {
            locale = new Locale(strArrSplit[0]);
        }
        Locale.setDefault(locale);
        Configuration configuration = context.getResources().getConfiguration();
        configuration.locale = locale;
        context.getResources().updateConfiguration(configuration, context.getResources().getDisplayMetrics());
    }
}
