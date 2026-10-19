package com.nearme.platform.opensdk.pay.download.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;

/* JADX INFO: loaded from: classes4.dex */
public class PrefUtil {
    public static SharedPreferences a;
    private static Context b;

    public static String getDownloadFileSize(Context context) {
        if (a == null) {
            init(context);
        }
        return a.getString(Util.getPackageName(context) + ".download.file.size", "0");
    }

    public static String getDownloadProgress(Context context) {
        if (a == null) {
            init(context);
        }
        return a.getString(Util.getPackageName(context) + ".download.progress", "0");
    }

    public static String getDownloadSize(Context context) {
        if (a == null) {
            init(context);
        }
        return a.getString(Util.getPackageName(context) + ".download.size", "0");
    }

    public static String getDownloadStatus(Context context) {
        if (a == null) {
            init(context);
        }
        return a.getString(Util.getPackageName(context) + ".download.status", UniquePlacementId.NO_ID);
    }

    public static void init(Context context) {
        if (a == null && b == null) {
            b = context;
            a = PreferenceManager.getDefaultSharedPreferences(context);
        }
        ((WindowManager) b.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
    }

    public static void removeDownloadFileSize(Context context) {
        if (a == null) {
            init(context);
        }
        a.edit().remove(Util.getPackageName(context) + ".download.file.size").commit();
    }

    public static void removeDownloadProgress(Context context) {
        if (a == null) {
            init(context);
        }
        a.edit().remove(Util.getPackageName(context) + ".download.progress").commit();
    }

    public static void removeDownloadStatus(Context context) {
        if (a == null) {
            init(context);
        }
        a.edit().remove(Util.getPackageName(context) + ".download.status").commit();
    }

    public static void setDownloadFileSize(Context context, String str) {
        if (a == null) {
            init(context);
        }
        a.edit().putString(Util.getPackageName(context) + ".download.file.size", str).commit();
    }

    public static void setDownloadProgress(Context context, String str) {
        if (a == null) {
            init(context);
        }
        a.edit().putString(Util.getPackageName(context) + ".download.progress", str).commit();
    }

    public static void setDownloadSize(Context context, String str) {
        if (a == null) {
            init(context);
        }
        a.edit().putString(Util.getPackageName(context) + ".download.size", str).commit();
    }

    public static void setDownloadStatus(Context context, String str) {
        if (a == null) {
            init(context);
        }
        a.edit().putString(Util.getPackageName(context) + ".download.status", str).commit();
    }
}
