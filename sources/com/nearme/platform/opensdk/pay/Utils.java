package com.nearme.platform.opensdk.pay;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class Utils {
    static int a(Context context) {
        return getVersionCode(context, "com.nearme.atlas");
    }

    public static int getApkVersionCode(Context context, String str) {
        try {
            return context.getPackageManager().getPackageArchiveInfo(str, 1).versionCode;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static int getMMApiLevel(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo("com.tencent.mm", 128);
            int i = applicationInfo.metaData.getInt("wechat_ext_api_level", 0);
            if (i > 0) {
                return i;
            }
            String string = applicationInfo.metaData.getString("wechat_fun_support");
            if (string != null) {
                if (string.length() > 0) {
                    return 1;
                }
            }
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static int getVersionCode(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 1;
        }
    }

    public static boolean isAppInstalled(Context context, String str) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        ArrayList arrayList = new ArrayList();
        if (installedPackages != null) {
            for (int i = 0; i < installedPackages.size(); i++) {
                arrayList.add(installedPackages.get(i).packageName);
            }
        }
        return arrayList.contains(str);
    }

    public static boolean isNetworkAvailable(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        return (((ConnectivityManager) context.getSystemService("connectivity")) == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected() || activeNetworkInfo.getState() != NetworkInfo.State.CONNECTED) ? false : true;
    }

    public static boolean isWifi(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static int yuanToFen(float f2) {
        float fFloatValue = f2 * 100.0f;
        try {
            fFloatValue = Float.valueOf(new DecimalFormat("#0.00", new DecimalFormatSymbols(Locale.CHINA)).format(fFloatValue).toString()).floatValue();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return (int) fFloatValue;
    }
}
