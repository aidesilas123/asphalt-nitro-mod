package com.gameloft.android2d.iap.utils;

import android.app.Activity;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.webkit.WebView;
import com.gameloft.android2d.iap.IAPLib;
import com.json.k2;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import java.util.Locale;
import java.util.MissingResourceException;

/* JADX INFO: loaded from: classes2.dex */
public class Device {
    private static boolean l;
    private static com.gameloft.android2d.iap.utils.a m;
    public static WifiManager o;
    private static String q;
    private static String r;
    private final String s = ConstantDef.SDK_CONTENT_VERSION;
    private final String t = "V007";
    private final String u = "UNLOCK";
    public final String v = "1";
    private String w = "";
    public static final String[][] a = {new String[]{"eng", "en"}, new String[]{"fra", "fr"}, new String[]{"deu", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR}, new String[]{"esl", "es"}, new String[]{"spa", "es"}, new String[]{"ita", "it"}, new String[]{"jpn", "jp"}, new String[]{"por", TtmlNode.TAG_BR}, new String[]{"por", "pt"}};
    private static String b = null;
    private static String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f2871d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f2872e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f2873f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f2874g = null;
    private static String h = null;
    private static String i = null;
    private static String j = null;
    private static String k = null;
    private static WebView n = null;
    static ConnectivityManager p = null;

    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String unused = Device.f2871d = System.getProperty("http.agent").trim();
        }
    }

    public Device() {
        InitDeviceValues();
    }

    public Device(String str, String str2) {
        InitDeviceValues();
        if (str == null || str.equals("") || str2 == null || str2.equals("")) {
            return;
        }
        m.e(true);
        m.d(str);
        m.c(Integer.parseInt(str2));
    }

    public static void InitDeviceValues() {
        if (p == null) {
            p = (ConnectivityManager) SUtils.getContext().getSystemService("connectivity");
        }
        TelephonyManager telephonyManager = (TelephonyManager) SUtils.getContext().getSystemService("phone");
        int simState = telephonyManager.getSimState();
        String str = simState != 1 ? simState != 2 ? simState != 3 ? "SIM_ERROR_UNKNOWN" : "SIM_PUK_REQUIRED" : "SIM_PIN_REQUIRED" : "SIM_ABSENT";
        if (b == null && IAPLib.Get_HDIDFV_Update() != 0) {
            b = getDeviceId("HDIDFV");
        }
        if (f2872e == null) {
            f2872e = telephonyManager.getNetworkOperator();
        }
        if (f2872e.trim().length() == 0) {
            f2872e = str;
        }
        if (f2873f == null) {
            f2873f = telephonyManager.getNetworkOperatorName();
        }
        if (f2873f.trim().length() == 0) {
            f2873f = str;
        }
        if (f2874g == null) {
            f2874g = telephonyManager.getSimOperator();
        }
        if (f2874g.trim().length() == 0) {
            f2874g = str;
        }
        if (h == null) {
            h = telephonyManager.getSimOperatorName();
        }
        if (h.trim().length() == 0) {
            h = str;
        }
        if (c == null && IAPLib.Get_HDIDFV_Update() != 2) {
            c = getDeviceId("IMEI");
        }
        String str2 = i;
        if (str2 == null || str2.equals("00")) {
            i = getLineNumber();
        }
        if (j == null) {
            j = telephonyManager.getNetworkCountryIso();
        }
        if (k == null) {
            k = telephonyManager.getSimCountryIso();
        }
        l = telephonyManager.isNetworkRoaming();
        try {
            q = getLanguage(Locale.getDefault().getISO3Language());
        } catch (MissingResourceException unused) {
            q = a[0][0];
        }
        if (!IAPLib.IsUseWPIAP()) {
            r = getSDPath();
            try {
                ((Activity) SUtils.getContext()).runOnUiThread(new a());
            } catch (Exception unused2) {
                f2871d = "GL_EMU_001";
            }
        }
        m = new com.gameloft.android2d.iap.utils.a();
    }

    public static boolean IsWifiEnable() {
        WifiManager wifiManager = (WifiManager) SUtils.getContext().getSystemService(k2.b);
        o = wifiManager;
        return wifiManager.getWifiState() == 3;
    }

    public static String getDeviceId() {
        return getDeviceId("IMEI");
    }

    public static String getDeviceId(String str) {
        return str.equalsIgnoreCase("hdidfv") ? com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device.getHDIDFV() : com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device.getDeviceIMEI();
    }

    private static String getLanguage(String str) {
        int i2 = 0;
        while (true) {
            String[][] strArr = a;
            if (i2 >= strArr.length) {
                return "en";
            }
            if (str.compareToIgnoreCase(strArr[i2][0]) == 0) {
                return strArr[i2][1];
            }
            i2++;
        }
    }

    public static String getLineNumber() {
        return "00";
    }

    private static String getSDPath() {
        String externalStorageState = Environment.getExternalStorageState();
        if (externalStorageState == "removed" || externalStorageState == "unmounted" || externalStorageState == "bad_removal") {
            return SUtils.getContext().getFilesDir().getAbsolutePath();
        }
        File file = new File(Environment.getExternalStorageDirectory(), ".gameloft");
        file.mkdirs();
        return file.getAbsolutePath();
    }

    public static String getSimOperator1() {
        if (p == null) {
            p = (ConnectivityManager) SUtils.getContext().getSystemService("connectivity");
        }
        TelephonyManager telephonyManager = (TelephonyManager) SUtils.getContext().getSystemService("phone");
        int simState = telephonyManager.getSimState();
        String str = simState != 1 ? simState != 2 ? simState != 3 ? "SIM_ERROR_UNKNOWN" : "SIM_PUK_REQUIRED" : "SIM_PIN_REQUIRED" : "SIM_ABSENT";
        if (f2874g == null) {
            f2874g = telephonyManager.getSimOperator();
        }
        if (f2874g.trim().length() == 0) {
            f2874g = str;
        }
        if (SUtils.isAirplaneModeOn()) {
            f2874g = "SIM_ERROR_UNKNOWN";
        }
        String str2 = IAPLib.t0;
        return (str2 == null || str2.trim().equals("")) ? f2874g : str2;
    }

    public static String getUserAgent() {
        return f2871d;
    }

    public static boolean hasConnectivity() {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) SUtils.getContext().getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    public static void resetDeviceInfo() {
        c = null;
        f2872e = null;
        f2873f = null;
        f2874g = null;
        h = null;
        i = null;
        j = null;
        k = null;
    }

    public com.gameloft.android2d.iap.utils.a a() {
        return m;
    }

    public String b() {
        return Build.DEVICE;
    }

    public String c() {
        return b;
    }

    public String d() {
        if (c == null) {
            c = getDeviceId();
        }
        return c;
    }

    public boolean e() {
        return l;
    }

    public String f() {
        return SUtils.isAirplaneModeOn() ? "" : j;
    }

    public String g() {
        return SUtils.isAirplaneModeOn() ? "SIM_ERROR_UNKNOWN" : f2872e;
    }

    public String h() {
        return SUtils.isAirplaneModeOn() ? "SIM_ERROR_UNKNOWN" : f2873f;
    }

    public String i() {
        return Build.MODEL;
    }

    public String j() {
        return SUtils.isAirplaneModeOn() ? "" : k;
    }

    public String k() {
        return SUtils.isAirplaneModeOn() ? "SIM_ERROR_UNKNOWN" : f2874g;
    }

    public String l() {
        return SUtils.isAirplaneModeOn() ? "SIM_ERROR_UNKNOWN" : h;
    }
}
