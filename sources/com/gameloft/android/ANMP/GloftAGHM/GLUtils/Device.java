package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.facebook.internal.security.CertificateUtil;
import com.gameloft.android.ANMP.GloftAGHM.DataSharing;
import com.gameloft.android.hdidfv.HDIDFV;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.json.k2;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class Device {
    private static boolean l;
    public static WifiManager r;
    private static int t;
    private static String u;
    private final String w = ConstantDef.SDK_CONTENT_VERSION;
    public final String x = "1";
    private String y = "";
    public static final String[][] a = {new String[]{"eng", "en"}, new String[]{"fra", "fr"}, new String[]{"deu", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR}, new String[]{"esl", "es"}, new String[]{"spa", "es"}, new String[]{"ita", "it"}, new String[]{"jpn", "jp"}, new String[]{"por", TtmlNode.TAG_BR}, new String[]{"por", "pt"}};
    private static TelephonyManager b = null;
    private static String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f2789d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f2790e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f2791f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f2792g = null;
    private static String h = null;
    private static String i = null;
    private static String j = null;
    private static String k = null;
    private static String m = null;
    private static String n = null;
    private static String o = null;
    private static int p = -1;
    private static WebView q = null;
    static ConnectivityManager s = null;
    private static byte[] v = {0};

    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(SUtils.getApplicationContext());
                if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                    int unused = Device.p = 1;
                } else {
                    int unused2 = Device.p = 0;
                }
                String unused3 = Device.o = advertisingIdInfo.getId();
            } catch (GooglePlayServicesNotAvailableException unused4) {
                int unused5 = Device.p = 2;
                String unused6 = Device.o = "";
            } catch (Exception unused7) {
                int unused8 = Device.p = 4;
                String unused9 = Device.o = "";
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                WebView unused = Device.q = new WebView(SUtils.getApplicationContext());
                String unused2 = Device.f2789d = Device.q.getSettings().getUserAgentString();
                WebView unused3 = Device.q = null;
            } catch (Exception unused4) {
                String unused5 = Device.f2789d = "GL_EMU_001";
            }
        }
    }

    public Device() {
        InitDeviceValues();
    }

    private static void InitDeviceValues() {
        String simState;
        initGoogleAdId();
        if (s == null) {
            s = (ConnectivityManager) SUtils.getApplicationContext().getSystemService("connectivity");
        }
        setDeviceInfo();
        try {
            simState = getSimState();
        } catch (Exception unused) {
            simState = "SIM_ERROR_UNKNOWN";
        }
        if (c == null) {
            c = getDeviceId();
        }
        if (f2790e == null) {
            f2790e = getNetworkOperator();
        }
        String str = f2790e;
        if (str == null || str.trim().length() == 0) {
            f2790e = simState;
        }
        if (f2791f == null) {
            f2791f = getNetworkOperatorName();
        }
        String str2 = f2791f;
        if (str2 == null || str2.trim().length() == 0) {
            f2791f = simState;
        }
        if (f2792g == null) {
            try {
                f2792g = b.getSimOperator();
            } catch (Exception unused2) {
                f2792g = null;
            }
        }
        String str3 = f2792g;
        if (str3 == null || str3.trim().length() == 0) {
            f2792g = simState;
        }
        if (h == null) {
            try {
                h = ValidateStringforURL(b.getSimOperatorName());
            } catch (Exception unused3) {
                h = null;
            }
        }
        String str4 = h;
        if (str4 == null || str4.trim().length() == 0) {
            h = simState;
        }
        String str5 = i;
        if (str5 == null || str5.equals("00")) {
            i = getLineNumber();
        }
        if (j == null) {
            getNetworkCountryIso();
        }
        if (k == null) {
            try {
                k = b.getSimCountryIso();
            } catch (Exception unused4) {
                k = "";
            }
        }
        l = b.isNetworkRoaming();
        t = createUniqueCode();
        u = createUniqueCodeV2();
        try {
            if (f2789d == null) {
                SUtils.runOnUiThread(new b());
            }
        } catch (ClassCastException unused5) {
        }
    }

    public static boolean IsWifiEnable() {
        WifiManager wifiManager = (WifiManager) SUtils.getApplicationContext().getSystemService(k2.b);
        r = wifiManager;
        return wifiManager.getWifiState() == 3;
    }

    public static String ValidateStringforURL(String str) {
        try {
            return URLEncoder.encode(str, C.UTF8_NAME);
        } catch (Exception unused) {
            return str;
        }
    }

    public static byte[] a() {
        String str = c;
        return str == null ? v : str.getBytes();
    }

    public static byte[] b() {
        String str = f2791f;
        return str == null ? v : str.getBytes();
    }

    public static byte[] c() {
        String str = i;
        return str == null ? v : str.getBytes();
    }

    public static int createUniqueCode() {
        return (int) ((new Random().nextDouble() * 8889.0d) + 1111.0d);
    }

    public static String createUniqueCodeV2() {
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
        Random random = new Random();
        String str = "";
        for (int i2 = 0; i2 < 5; i2++) {
            str = str + charArray[random.nextInt(charArray.length)];
        }
        return str;
    }

    public static byte[] d() {
        return "1.8.0".getBytes();
    }

    public static synchronized String d1() {
        if (SUtils.getApplicationContext() == null) {
            return null;
        }
        String str = Build.SERIAL;
        if (str != null && str != "unknown") {
            return str;
        }
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str2 = (String) cls.getMethod("get", String.class).invoke(cls, "ro.serialno");
            if (str2 != null) {
                if (str2.length() > 0 && str2 != "unknown") {
                    return str2;
                }
            }
        } catch (Exception unused) {
        }
        String str3 = SUtils.getPreferenceString("SDFolder", "/sdcard/Android/data/com.gameloft.android.ANMP.GloftAGHM/files", "MainActivityPrefs") + "/.nomedia";
        String strReadFile = SUtils.ReadFile(str3);
        if (strReadFile == null || strReadFile.length() == 0) {
            strReadFile = UUID.randomUUID().toString().replaceAll("-", "");
            SUtils.WriteFile(str3, strReadFile);
            try {
                File file = new File(str3);
                if (file.exists()) {
                    file.setReadOnly();
                }
            } catch (Exception unused2) {
            }
        }
        return strReadFile;
    }

    public static void e(int i2) {
        t = i2;
    }

    public static byte[] f() {
        return getUserAgent().getBytes();
    }

    public static String getAndroidId() {
        if (SUtils.getApplicationContext() == null) {
        }
        return "";
    }

    public static String getDemoCode() {
        return "AGHM";
    }

    public static String getDevice() {
        return ValidateStringforURL(Build.DEVICE);
    }

    public static String getDeviceFirmware() {
        return Build.VERSION.RELEASE;
    }

    public static String getDeviceIMEI() {
        return "";
    }

    public static String getDeviceId() {
        return (!IsWifiEnable() || Build.MODEL == null || Build.DEVICE == null) ? d1() : d1();
    }

    public static String getDeviceName() {
        return Build.MANUFACTURER + " " + Build.MODEL;
    }

    public static String getGLDID() {
        return "hdidfv=" + getHDIDFV() + " ";
    }

    public static String getGoogleAdId() {
        if (TextUtils.isEmpty(o)) {
            return "";
        }
        boolean preferenceBoolean = SUtils.getPreferenceBoolean("isUnderage", false, "isUnderagePref");
        System.out.println("AGEAGEAGE: " + preferenceBoolean);
        return preferenceBoolean ? "" : o;
    }

    public static int getGoogleAdIdStatus() {
        return p;
    }

    public static synchronized String getHDIDFV() {
        if (!TextUtils.isEmpty(m)) {
            return m;
        }
        m = "";
        String sharedValue = DataSharing.getSharedValue("HDIDFV");
        m = sharedValue;
        try {
            if (!TextUtils.isEmpty(sharedValue)) {
                m = Encrypter.decrypt(m).replaceAll(" ", "");
            }
        } catch (Exception unused) {
            m = "";
        }
        if (!TextUtils.isEmpty(m)) {
            n = DataSharing.getSharedValue("HDIDFVVersion");
            return m;
        }
        System.loadLibrary("generator");
        m = HDIDFV.getHDIDFV();
        Log.d("HEI", "8200");
        n = HDIDFV.getHDIDFVVersion();
        if (!TextUtils.isEmpty(m)) {
            DataSharing.setSharedValue("HDIDFV", Encrypter.crypt(m));
            DataSharing.setSharedValue("HDIDFVVersion", n);
        }
        if (TextUtils.isEmpty(m)) {
            return "";
        }
        return m;
    }

    public static String getHDIDFVVersion() {
        return !TextUtils.isEmpty(n) ? n : "";
    }

    public static byte[] getHostName() {
        return (Build.MODEL + "_" + Build.PRODUCT).getBytes();
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
        return "";
    }

    public static String getMacAddress() {
        WifiInfo connectionInfo;
        String macAddress;
        if (SUtils.getApplicationContext() == null) {
            return "";
        }
        try {
            WifiManager wifiManager = (WifiManager) SUtils.getApplicationContext().getSystemService(k2.b);
            if (wifiManager != null && (connectionInfo = wifiManager.getConnectionInfo()) != null && (macAddress = connectionInfo.getMacAddress()) != null) {
                if (macAddress.length() != 0) {
                    return macAddress;
                }
            }
        } catch (Exception unused) {
        }
        return "";
    }

    public static String getNetworkCountryIso() {
        if (j == null) {
            try {
                setDeviceInfo();
                j = b.getNetworkCountryIso();
            } catch (Exception unused) {
                j = null;
            }
        }
        return j;
    }

    public static String getNetworkOperator() {
        String str = "SIM_ERROR_UNKNOWN";
        if (f2790e == null) {
            try {
                setDeviceInfo();
                String simState = getSimState();
                f2790e = b.getNetworkOperator();
                str = simState;
            } catch (Exception unused) {
                f2790e = null;
            }
        }
        String str2 = f2790e;
        if (str2 == null || str2.trim().length() == 0) {
            f2790e = str;
        }
        return f2790e;
    }

    public static String getNetworkOperatorName() {
        String str = "SIM_ERROR_UNKNOWN";
        if (f2791f == null) {
            try {
                setDeviceInfo();
                String simState = getSimState();
                f2791f = ValidateStringforURL(b.getNetworkOperatorName());
                str = simState;
            } catch (Exception unused) {
                f2791f = null;
            }
        }
        String str2 = f2791f;
        if (str2 == null || str2.trim().length() == 0) {
            f2791f = str;
        }
        return f2791f;
    }

    public static String getPhoneDevice() {
        return ValidateStringforURL(Build.DEVICE);
    }

    public static String getPhoneManufacturer() {
        return ValidateStringforURL(Build.MANUFACTURER);
    }

    public static String getPhoneModel() {
        return ValidateStringforURL(Build.MODEL);
    }

    public static String getPhoneProduct() {
        return ValidateStringforURL(Build.PRODUCT);
    }

    public static String getSerial() {
        return "";
    }

    public static String getSerialNo() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "ro.serialno");
            if (str != null && str.length() >= 5) {
                if (!str.equals("unknown")) {
                    return str;
                }
            }
        } catch (Exception unused) {
        }
        return "";
    }

    public static String getSimState() {
        int simState = b.getSimState();
        return simState != 1 ? simState != 2 ? simState != 3 ? "SIM_ERROR_UNKNOWN" : "SIM_PUK_REQUIRED" : "SIM_PIN_REQUIRED" : "SIM_ABSENT";
    }

    public static long getSystemUpTimeMillis() {
        return SystemClock.elapsedRealtime();
    }

    public static int getUniqueCode() {
        return t;
    }

    public static String getUniqueCodeV2() {
        return u;
    }

    public static String getUserAgent() {
        return f2789d;
    }

    public static void init() {
        InitDeviceValues();
    }

    public static void initGoogleAdId() {
        if (p == -1) {
            p = 3;
            new a().start();
        }
    }

    public static boolean isSimReady() {
        setDeviceInfo();
        TelephonyManager telephonyManager = b;
        return telephonyManager != null && telephonyManager.getSimState() == 5;
    }

    public static void resetGoogleAdIdStatus() {
        p = -1;
    }

    public static String retrieveCPUSerial() {
        String str = null;
        if (new File("/proc/cpuinfo").exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/cpuinfo")));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (line.toLowerCase().contains("serial")) {
                        String[] strArrSplit = line.split(CertificateUtil.DELIMITER);
                        if (strArrSplit.length == 2 && !strArrSplit[1].replace("0", "").trim().equals("")) {
                            str = strArrSplit[1];
                        }
                    }
                }
                bufferedReader.close();
            } catch (Exception unused) {
                str = "";
            }
        }
        return (TextUtils.isEmpty(str) ? "" : str).trim();
    }

    public static String retrieveDeviceCarrier() {
        String simOperator = SUtils.getApplicationContext() != null ? ((TelephonyManager) SUtils.getApplicationContext().getSystemService("phone")).getSimOperator() : "";
        return TextUtils.isEmpty(simOperator) ? "" : simOperator;
    }

    public static String retrieveDeviceCountry() {
        String country;
        if (SUtils.getApplicationContext() != null) {
            try {
                country = ((TelephonyManager) SUtils.getApplicationContext().getSystemService("phone")).getSimCountryIso();
            } catch (Exception unused) {
                country = "";
            }
            if (TextUtils.isEmpty(country)) {
                try {
                    country = SUtils.getApplicationContext().getResources().getConfiguration().locale.getCountry();
                } catch (Exception unused2) {
                    country = "";
                }
            }
        } else {
            country = "";
        }
        if (TextUtils.isEmpty(country)) {
            try {
                country = Locale.getDefault().getCountry();
            } catch (Exception unused3) {
                country = "";
            }
        }
        return TextUtils.isEmpty(country) ? "" : country;
    }

    public static String retrieveDeviceLanguage() {
        String language = SUtils.getApplicationContext() != null ? SUtils.getApplicationContext().getResources().getConfiguration().locale.getLanguage() : "";
        if (TextUtils.isEmpty(language)) {
            try {
                language = Locale.getDefault().getLanguage();
            } catch (Exception unused) {
                language = "";
            }
        }
        return Locale.getDefault().toString().equals("pt_BR") ? TtmlNode.TAG_BR : TextUtils.isEmpty(language) ? "" : language;
    }

    public static String retrieveDeviceRegion() {
        String str;
        if (SUtils.getApplicationContext() != null) {
            Locale locale = SUtils.getApplicationContext().getResources().getConfiguration().locale;
            str = locale.getLanguage() + "_" + locale.getCountry();
        } else {
            str = "";
        }
        if (TextUtils.isEmpty(str)) {
            try {
                Locale locale2 = Locale.getDefault();
                str = locale2.getLanguage() + "_" + locale2.getCountry();
            } catch (Exception unused) {
                str = "";
            }
        }
        return TextUtils.isEmpty(str) ? "" : str;
    }

    public static void setDeviceInfo() {
        if (b == null) {
            try {
                b = (TelephonyManager) SUtils.getApplicationContext().getSystemService("phone");
            } catch (Exception unused) {
                b = null;
            }
        }
    }
}
