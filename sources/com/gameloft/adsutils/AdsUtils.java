package com.gameloft.adsutils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import com.json.sdk.controller.f;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class AdsUtils {
    private static Activity a = null;
    private static ViewGroup b = null;
    private static String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f2787d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f2788e = "";

    class a implements Runnable {
        final /* synthetic */ Activity a;

        a(Activity activity) {
            this.a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = AdsUtils.c = new WebView(this.a).getSettings().getUserAgentString();
            } catch (Exception unused2) {
                String unused3 = AdsUtils.c = "";
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdsUtils.RefreshAdIdSync();
        }
    }

    public static String GenerateUUID() {
        return UUID.randomUUID().toString();
    }

    public static Activity GetActivity() {
        return a;
    }

    public static Context GetApplicationContext() {
        try {
            return a.getApplicationContext();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetCachePath() {
        try {
            return GetApplicationContext().getCacheDir().getAbsolutePath();
        } catch (Exception unused) {
            return "";
        }
    }

    public static int GetConnectivityType() {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) GetApplicationContext().getSystemService("connectivity");
        if (Build.VERSION.SDK_INT < 23) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return 0;
            }
            switch (activeNetworkInfo.getType()) {
                case 0:
                case 2:
                case 3:
                case 4:
                case 5:
                    return 7;
                case 1:
                    return 11;
                case 6:
                    return 12;
                case 7:
                    return 8;
                case 8:
                    return 0;
                case 9:
                    return 9;
                default:
                    return 1;
            }
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return 0;
        }
        if (networkCapabilities.hasTransport(3)) {
            return 9;
        }
        if (networkCapabilities.hasTransport(1)) {
            return 11;
        }
        if (networkCapabilities.hasTransport(0)) {
            return 7;
        }
        return networkCapabilities.hasTransport(2) ? 8 : 1;
    }

    public static Context GetContext() {
        try {
            return b.getContext();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetDeviceAdvertisingId() {
        return f2788e;
    }

    public static int GetDeviceAdvertisingIdStatus() {
        return f2787d;
    }

    public static String GetDeviceCountryCode() {
        String country;
        try {
            country = GetApplicationContext().getResources().getConfiguration().locale.getCountry();
        } catch (Exception unused) {
            country = "";
        }
        try {
            if (TextUtils.isEmpty(country)) {
                country = Locale.getDefault().getCountry();
            }
            return TextUtils.isEmpty(country) ? "" : country;
        } catch (Exception unused2) {
            return "";
        }
    }

    public static String GetDeviceLanguage() {
        String language;
        try {
            try {
                language = GetApplicationContext().getResources().getConfiguration().locale.getLanguage();
            } catch (Exception unused) {
                language = "";
            }
            if (TextUtils.isEmpty(language)) {
                try {
                    language = Locale.getDefault().getLanguage();
                } catch (Exception unused2) {
                }
            }
            try {
                if (Locale.getDefault().toString().equals("pt_BR")) {
                    language = TtmlNode.TAG_BR;
                }
            } catch (Exception unused3) {
            }
            return TextUtils.isEmpty(language) ? "" : language;
        } catch (Exception unused4) {
            return "";
        }
    }

    public static String GetDeviceModel() {
        return Build.MODEL;
    }

    public static String GetDeviceOSVersion() {
        return Build.VERSION.RELEASE;
    }

    static DisplayMetrics GetDisplayMetrics() {
        Display defaultDisplay = ((WindowManager) GetContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static String GetSavePath() {
        try {
            return GetApplicationContext().getFilesDir().getAbsolutePath();
        } catch (Exception unused) {
            return "";
        }
    }

    public static float GetScreenHeight() {
        int height;
        Display defaultDisplay = ((WindowManager) GetContext().getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 17) {
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            height = point.y;
        } else {
            height = defaultDisplay.getHeight();
        }
        return height;
    }

    public static float GetScreenHeightInInch() {
        return GetScreenHeight() / GetDisplayMetrics().ydpi;
    }

    public static float GetScreenWidth() {
        int width;
        Display defaultDisplay = ((WindowManager) GetContext().getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 17) {
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            width = point.x;
        } else {
            width = defaultDisplay.getWidth();
        }
        return width;
    }

    public static float GetScreenWidthInInch() {
        return GetScreenWidth() / GetDisplayMetrics().xdpi;
    }

    public static int GetSoundVolume() {
        try {
            AudioManager audioManager = (AudioManager) a.getSystemService("audio");
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            if (streamMaxVolume != 0) {
                return (audioManager.getStreamVolume(3) * 100) / streamMaxVolume;
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String GetStoragePath() {
        try {
            return GetApplicationContext().getExternalFilesDir(null).getAbsolutePath();
        } catch (Exception unused) {
            return "";
        }
    }

    public static float GetUsedApplicationMemory() {
        try {
            if (Build.VERSION.SDK_INT < 16) {
                return 0.0f;
            }
            ((ActivityManager) GetActivity().getSystemService("activity")).getMemoryInfo(new ActivityManager.MemoryInfo());
            return r1.totalMem - r1.availMem;
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    public static String GetWebViewUserAgent() {
        return c;
    }

    public static void Initialize(Activity activity, ViewGroup viewGroup) {
        a = activity;
        b = viewGroup;
        SetClassLoader();
        RefreshAdId();
        if (TextUtils.isEmpty(c)) {
            RunOnMainThreadAsync(new a(activity));
        }
    }

    public static void LaunchDeviceBrowser(String str) {
        try {
            GetContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception unused) {
        }
    }

    private static native void NativeSetClassLoader(Object obj);

    public static void PauseUserMusic() {
        try {
            Intent intent = new Intent("com.android.music.musicservicecommand");
            intent.putExtra(f.b.f6588g, CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
            GetActivity().sendBroadcast(intent);
        } catch (Exception unused) {
        }
    }

    private static void RefreshAdId() {
        f2787d = 3;
        new Thread(new b()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void RefreshAdIdSync() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            return;
        }
        f2787d = 3;
        try {
            Object objInvoke = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", Context.class).invoke(null, GetContext());
            Class<?> cls = objInvoke.getClass();
            if (((Boolean) cls.getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(objInvoke, new Object[0])).booleanValue()) {
                f2788e = "";
                f2787d = 1;
            } else {
                f2788e = cls.getMethod("getId", new Class[0]).invoke(objInvoke, new Object[0]).toString();
                f2787d = 0;
            }
        } catch (Exception unused) {
            f2788e = "";
            f2787d = 2;
        }
    }

    public static void RunOnMainThread(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
            return;
        }
        com.gameloft.adsutils.a aVar = new com.gameloft.adsutils.a(runnable);
        new Handler(Looper.getMainLooper()).post(aVar);
        aVar.a();
    }

    public static void RunOnMainThreadAsync(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    private static void SetClassLoader() {
        try {
            NativeSetClassLoader(a.getClassLoader());
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
        }
    }
}
