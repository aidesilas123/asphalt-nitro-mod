package com.applovin.impl.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.hardware.SensorManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.e.i;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.d;
import com.applovin.impl.sdk.utils.h;
import com.applovin.impl.sdk.utils.p;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.NativeProtocol;
import com.json.o2;
import com.json.v4;
import java.io.File;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class o {
    private static final AtomicReference<d.a> aDd = new AtomicReference<>();
    private static final AtomicReference<a> aDf = new AtomicReference<>();
    private final Context E;
    private final Map<String, Object> aDa;
    private boolean aDc;
    private final Map<String, Object> awb;
    private final x logger;
    private final n sdk;
    private final Object aDb = new Object();
    private final AtomicReference<Integer> aDe = new AtomicReference<>();

    public static class a {
        public final int aDh;

        /* JADX INFO: renamed from: do, reason: not valid java name */
        public final String f11do;

        public a(String str, int i) {
            this.f11do = str;
            this.aDh = i;
        }
    }

    public static class b {
        public int aDi = -1;
        public int adn = -1;
        public Boolean aDj = null;
    }

    protected o(n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.sdk = nVar;
        this.logger = nVar.BN();
        this.E = n.getApplicationContext();
        this.aDa = CY();
        this.awb = Dc();
    }

    private Map<String, String> CS() {
        return com.applovin.impl.sdk.utils.u.s(a(null, true, false));
    }

    private Map<String, Object> CY() {
        HashMap map = new HashMap(34);
        map.put("api_level", Integer.valueOf(Build.VERSION.SDK_INT));
        map.put("brand", Build.MANUFACTURER);
        map.put("brand_name", Build.BRAND);
        map.put("hardware", Build.HARDWARE);
        map.put("sim", Boolean.valueOf(AppLovinSdkUtils.isEmulator()));
        map.put("aida", Boolean.valueOf(com.applovin.impl.sdk.utils.d.KP()));
        map.put("locale", Locale.getDefault().toString());
        map.put("model", Build.MODEL);
        map.put(v4.x, Build.VERSION.RELEASE);
        map.put("platform", CX());
        map.put("revision", Build.DEVICE);
        map.put("tz_offset", Double.valueOf(Ds()));
        map.put("gy", Boolean.valueOf(Dt()));
        map.put("country_code", Du());
        map.put("mcc", Dv());
        map.put("mnc", Dw());
        map.put(v4.s0, Dx());
        map.put("is_tablet", Boolean.valueOf(AppLovinSdkUtils.isTablet(this.E)));
        map.put("tv", Boolean.valueOf(AppLovinSdkUtils.isTv(this.E)));
        map.put("pc", Integer.valueOf(Runtime.getRuntime().availableProcessors()));
        map.put("hdr", Dz());
        map.put("supported_abis", DA());
        DisplayMetrics displayMetrics = this.E.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            map.put("adns", Float.valueOf(displayMetrics.density));
            map.put("adnsd", Integer.valueOf(displayMetrics.densityDpi));
            map.put("xdpi", Float.valueOf(displayMetrics.xdpi));
            map.put("ydpi", Float.valueOf(displayMetrics.ydpi));
            Point pointY = com.applovin.impl.sdk.utils.h.Y(this.E);
            map.put("screen_size_in", Double.valueOf(Math.sqrt(Math.pow(pointY.x, 2.0d) + Math.pow(pointY.y, 2.0d)) / ((double) displayMetrics.xdpi)));
            h.a aVarA = com.applovin.impl.sdk.utils.h.a(this.E, this.sdk);
            if (aVarA != null) {
                map.put("tl_cr", Integer.valueOf(aVarA.Lh()));
                map.put("tr_cr", Integer.valueOf(aVarA.Li()));
                map.put("bl_cr", Integer.valueOf(aVarA.Lj()));
                map.put("br_cr", Integer.valueOf(aVarA.Lk()));
            }
        }
        map.put("bt_ms", Long.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
        map.put("tbalsi_ms", Long.valueOf(this.sdk.CJ() - n.CH()));
        CollectionUtils.putBooleanIfValid("psase", Boolean.valueOf(aa.M(this.E)), map);
        g(map);
        return map;
    }

    private String CZ() {
        int orientation = AppLovinSdkUtils.getOrientation(this.E);
        return orientation == 1 ? o2.h.D : orientation == 2 ? o2.h.C : "none";
    }

    @Nullable
    private String[] DA() {
        if (com.applovin.impl.sdk.utils.h.KX()) {
            return Build.SUPPORTED_ABIS;
        }
        return null;
    }

    private boolean DB() {
        String str = Build.TAGS;
        return str != null && str.contains(cF("lz}$blpz"));
    }

    private boolean DC() {
        String[] strArr = {"&zpz}ld&hyy&Z|yl{|zl{'hyb", "&zk`g&z|", "&zpz}ld&k`g&z|", "&zpz}ld&qk`g&z|", "&mh}h&efjhe&qk`g&z|", "&mh}h&efjhe&k`g&z|", "&zpz}ld&zm&qk`g&z|", "&zpz}ld&k`g&oh`ezhol&z|", "&mh}h&efjhe&z|"};
        for (int i = 0; i < 9; i++) {
            if (new File(cF(strArr[i])).exists()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void DE() {
        this.aDe.set(Dp());
    }

    private Map<String, Object> Dc() {
        PackageInfo packageInfo;
        HashMap map = new HashMap();
        PackageManager packageManager = this.E.getPackageManager();
        ApplicationInfo applicationInfo = this.E.getApplicationInfo();
        long jLastModified = new File(applicationInfo.sourceDir).lastModified();
        String installerPackageName = null;
        try {
            packageInfo = packageManager.getPackageInfo(this.E.getPackageName(), 0);
            try {
                installerPackageName = packageManager.getInstallerPackageName(applicationInfo.packageName);
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            packageInfo = null;
        }
        map.put(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, packageManager.getApplicationLabel(applicationInfo));
        map.put("app_version", packageInfo != null ? packageInfo.versionName : "");
        map.put("app_version_code", Integer.valueOf(packageInfo != null ? packageInfo.versionCode : -1));
        map.put("package_name", applicationInfo.packageName);
        map.put("vz", StringUtils.toShortSHA1Hash(applicationInfo.packageName));
        if (installerPackageName == null) {
            installerPackageName = "";
        }
        map.put("installer_name", installerPackageName);
        map.put("tg", com.applovin.impl.sdk.utils.t.M(this.sdk));
        map.put("debug", Boolean.valueOf(com.applovin.impl.sdk.utils.u.b(n.getApplicationContext(), this.sdk)));
        map.put("ia", Long.valueOf(jLastModified));
        map.put("alts_ms", Long.valueOf(n.CH()));
        map.put("j8", Boolean.valueOf(n.CI()));
        map.put("ps_tpg", Boolean.valueOf(aa.O(this.E)));
        map.put("ps_apg", Boolean.valueOf(aa.P(this.E)));
        map.put("ps_capg", Boolean.valueOf(aa.Q(this.E)));
        map.put("ps_aipg", Boolean.valueOf(aa.R(this.E)));
        n nVar = this.sdk;
        com.applovin.impl.sdk.c.d<Long> dVar = com.applovin.impl.sdk.c.d.aRk;
        Long l = (Long) nVar.a(dVar);
        if (l != null) {
            map.put("ia_v2", l);
        } else {
            this.sdk.a(dVar, Long.valueOf(jLastModified));
        }
        map.put("sdk_version", AppLovinSdk.VERSION);
        map.put("omid_sdk_version", this.sdk.Cp().getSdkVersion());
        map.put("api_did", this.sdk.a(com.applovin.impl.sdk.c.b.aKl));
        map.put("first_install_v3_ms", packageInfo != null ? Long.valueOf(packageInfo.firstInstallTime) : "");
        map.put("target_sdk", Integer.valueOf(applicationInfo.targetSdkVersion));
        map.put("epv", Integer.valueOf(com.applovin.impl.sdk.utils.u.LC()));
        return map;
    }

    private Map<String, Object> Dd() {
        HashMap map = new HashMap();
        CollectionUtils.putIntegerIfValid("IABTCF_gdprApplies", this.sdk.Cm().Ar(), map);
        CollectionUtils.putStringIfValid("IABTCF_TCString", this.sdk.Cm().As(), map);
        CollectionUtils.putStringIfValid("IABTCF_AddtlConsent", this.sdk.Cm().At(), map);
        return map;
    }

    private boolean Dh() {
        ConnectivityManager connectivityManager;
        if (com.applovin.impl.sdk.utils.h.KZ() && (connectivityManager = (ConnectivityManager) this.E.getSystemService("connectivity")) != null) {
            try {
                return connectivityManager.getRestrictBackgroundStatus() == 3;
            } catch (Throwable th) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().c("DataCollector", "Unable to collect constrained network info.", th);
                }
            }
        }
        return false;
    }

    private b Dk() {
        b bVar = new b();
        Intent intentRegisterReceiver = this.E.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int intExtra = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) : -1;
        int intExtra2 = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("scale", -1) : -1;
        if (intExtra <= 0 || intExtra2 <= 0) {
            bVar.adn = -1;
        } else {
            bVar.adn = (int) ((intExtra / intExtra2) * 100.0f);
        }
        bVar.aDi = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("status", -1) : -1;
        if (com.applovin.impl.sdk.utils.h.KV()) {
            bVar.aDj = Boolean.valueOf(Settings.Global.getInt(this.E.getContentResolver(), "stay_on_while_plugged_in", -1) > 0);
        } else {
            bVar.aDj = Boolean.valueOf(((((intentRegisterReceiver.getIntExtra("plugged", -1) & 1) | 2) | 4) | 8) > 0);
        }
        return bVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private long Dl() {
        /*
            Method dump skipped, instruction units count: 488
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.o.Dl():long");
    }

    private float Dm() {
        try {
            return Settings.System.getFloat(this.E.getContentResolver(), "font_scale");
        } catch (Settings.SettingNotFoundException e2) {
            if (!x.Fn()) {
                return -1.0f;
            }
            this.logger.c("DataCollector", "Error collecting font scale", e2);
            return -1.0f;
        }
    }

    private String Dn() {
        AudioManager audioManager = (AudioManager) this.E.getSystemService("audio");
        if (audioManager == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (com.applovin.impl.sdk.utils.h.KY()) {
            for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                sb.append(audioDeviceInfo.getType());
                sb.append(",");
            }
        } else {
            if (audioManager.isWiredHeadsetOn()) {
                sb.append(3);
                sb.append(",");
            }
            if (audioManager.isBluetoothScoOn()) {
                sb.append(7);
                sb.append(",");
            }
            if (audioManager.isBluetoothA2dpOn()) {
                sb.append(8);
            }
        }
        if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ',') {
            sb.deleteCharAt(sb.length() - 1);
        }
        String string = sb.toString();
        if (TextUtils.isEmpty(string) && x.Fn()) {
            this.logger.f("DataCollector", "No sound outputs detected");
        }
        return string;
    }

    private String Do() {
        if (!com.applovin.impl.sdk.utils.h.KZ()) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            LocaleList locales = this.E.getResources().getConfiguration().getLocales();
            for (int i = 0; i < locales.size(); i++) {
                sb.append(locales.get(i));
                sb.append(",");
            }
            if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ',') {
                sb.deleteCharAt(sb.length() - 1);
            }
            return sb.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    private Integer Dp() {
        if (((AudioManager) this.E.getSystemService("audio")) == null) {
            return null;
        }
        try {
            return Integer.valueOf((int) (r0.getStreamVolume(3) * ((Float) this.sdk.a(com.applovin.impl.sdk.c.b.aOQ)).floatValue()));
        } catch (Throwable th) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().c("DataCollector", "Unable to collect device volume", th);
            }
            return null;
        }
    }

    @Nullable
    private Boolean Dq() {
        AudioManager audioManager = (AudioManager) this.E.getSystemService("audio");
        if (audioManager == null) {
            return null;
        }
        return Boolean.valueOf(audioManager.isMusicActive());
    }

    @Nullable
    private Boolean Dr() {
        AudioManager audioManager = (AudioManager) this.E.getSystemService("audio");
        if (audioManager == null) {
            return null;
        }
        return Boolean.valueOf(audioManager.isSpeakerphoneOn());
    }

    private double Ds() {
        return Math.round((((double) TimeZone.getDefault().getOffset(new Date().getTime())) * 10.0d) / 3600000.0d) / 10.0d;
    }

    private boolean Dt() {
        SensorManager sensorManager = (SensorManager) this.E.getSystemService("sensor");
        return (sensorManager == null || sensorManager.getDefaultSensor(4) == null) ? false : true;
    }

    private String Du() {
        TelephonyManager telephonyManager = (TelephonyManager) this.E.getSystemService("phone");
        return telephonyManager != null ? telephonyManager.getSimCountryIso().toUpperCase(Locale.ENGLISH) : "";
    }

    private String Dv() {
        TelephonyManager telephonyManager = (TelephonyManager) this.E.getSystemService("phone");
        if (telephonyManager == null) {
            return "";
        }
        try {
            String networkOperator = telephonyManager.getNetworkOperator();
            return networkOperator.substring(0, Math.min(3, networkOperator.length()));
        } catch (Throwable th) {
            if (!x.Fn()) {
                return "";
            }
            this.logger.c("DataCollector", "Unable to collect mobile country code", th);
            return "";
        }
    }

    private String Dw() {
        TelephonyManager telephonyManager = (TelephonyManager) this.E.getSystemService("phone");
        if (telephonyManager == null) {
            return "";
        }
        try {
            String networkOperator = telephonyManager.getNetworkOperator();
            return networkOperator.substring(Math.min(3, networkOperator.length()));
        } catch (Throwable th) {
            if (!x.Fn()) {
                return "";
            }
            this.logger.c("DataCollector", "Unable to collect mobile network code", th);
            return "";
        }
    }

    private String Dx() {
        TelephonyManager telephonyManager = (TelephonyManager) this.E.getSystemService("phone");
        if (telephonyManager == null) {
            return "";
        }
        try {
            return telephonyManager.getNetworkOperatorName();
        } catch (Throwable th) {
            if (!x.Fn()) {
                return "";
            }
            this.logger.c("DataCollector", "Unable to collect carrier", th);
            return "";
        }
    }

    private boolean Dy() {
        try {
            if (!DB()) {
                if (!DC()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Nullable
    private Boolean Dz() {
        if (com.applovin.impl.sdk.utils.h.La()) {
            return Boolean.valueOf(this.E.getResources().getConfiguration().isScreenHdr());
        }
        return null;
    }

    private Map<String, Object> a(Map<String, Object> map, boolean z) {
        d.a aVarDi;
        PowerManager powerManager;
        Map<String, Object> map2 = CollectionUtils.map(map);
        Point pointY = com.applovin.impl.sdk.utils.h.Y(this.E);
        map2.put("dx", Integer.valueOf(pointY.x));
        map2.put("dy", Integer.valueOf(pointY.y));
        if (z) {
            aVarDi = aDd.get();
            if (aVarDi != null) {
                DD();
            } else if (com.applovin.impl.sdk.utils.u.Lx()) {
                aVarDi = new d.a();
                map2.put("inc", Boolean.TRUE);
            } else {
                aVarDi = this.sdk.BS().Di();
            }
        } else {
            aVarDi = this.sdk.BS().Di();
        }
        String strKR = aVarDi.KR();
        if (StringUtils.isValidString(strKR)) {
            map2.put("idfa", strKR);
        }
        map2.put("dnt", Boolean.valueOf(aVarDi.KQ()));
        map2.put("dnt_code", aVarDi.KS().KT());
        a aVar = aDf.get();
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOs)).booleanValue() && aVar != null) {
            map2.put("idfv", aVar.f11do);
            map2.put("idfv_scope", Integer.valueOf(aVar.aDh));
        }
        Object objB = com.applovin.impl.privacy.a.zP().B(this.E);
        if (objB != null) {
            map2.put(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT, objB);
        }
        Object objB2 = com.applovin.impl.privacy.a.zO().B(this.E);
        if (objB2 != null) {
            map2.put(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER, objB2);
        }
        Object objB3 = com.applovin.impl.privacy.a.zQ().B(this.E);
        if (objB3 != null) {
            map2.put(AppLovinSdkExtraParameterKey.DO_NOT_SELL, objB3);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOE)).booleanValue()) {
            b bVarDk = Dk();
            CollectionUtils.putIntegerIfValid("act", Integer.valueOf(bVarDk.aDi), map2);
            CollectionUtils.putIntegerIfValid("acm", Integer.valueOf(bVarDk.adn), map2);
            CollectionUtils.putBooleanIfValid("sowpie", bVarDk.aDj, map2);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOM)).booleanValue()) {
            map2.put("mtl", Integer.valueOf(this.sdk.Ce().getLastTrimMemoryLevel()));
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOP)).booleanValue()) {
            map2.put("adr", Boolean.valueOf(Dy()));
        }
        Object objDp = z ? (Integer) this.aDe.get() : Dp();
        if (objDp != null) {
            map2.put("volume", objDp);
        }
        CollectionUtils.putBooleanIfValid("ma", Dq(), map2);
        CollectionUtils.putBooleanIfValid("spo", Dr(), map2);
        CollectionUtils.putBooleanIfValid("aif", Boolean.valueOf(!this.sdk.Ce().isApplicationPaused()), map2);
        CollectionUtils.putLongIfValid("af_ts_ms", Long.valueOf(this.sdk.Ce().getAppEnteredForegroundTimeMillis()), map2);
        CollectionUtils.putLongIfValid("ab_ts_ms", Long.valueOf(this.sdk.Ce().getAppEnteredBackgroundTimeMillis()), map2);
        try {
            map2.put("sb", Integer.valueOf((int) ((Settings.System.getInt(this.E.getContentResolver(), "screen_brightness") / 255.0f) * 100.0f)));
        } catch (Settings.SettingNotFoundException e2) {
            if (x.Fn()) {
                this.logger.c("DataCollector", "Unable to collect screen brightness", e2);
            }
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOS)).booleanValue() && com.applovin.impl.sdk.utils.u.Q(this.sdk)) {
            af.A(this.sdk);
            String strFy = af.Fy();
            if (StringUtils.isValidString(strFy)) {
                map2.put(v4.R, strFy);
            }
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOG)).booleanValue()) {
            try {
                map2.put(v4.v0, Long.valueOf(Environment.getDataDirectory().getFreeSpace()));
                map2.put("tds", Long.valueOf(Environment.getDataDirectory().getTotalSpace()));
            } catch (Throwable th) {
                map2.put(v4.v0, -1);
                map2.put("tds", -1);
                if (x.Fn()) {
                    this.logger.c("DataCollector", "Unable to collect total & free space.", th);
                }
            }
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOH)).booleanValue()) {
            ActivityManager activityManager = (ActivityManager) this.E.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            if (activityManager != null) {
                try {
                    activityManager.getMemoryInfo(memoryInfo);
                    map2.put("fm", Long.valueOf(memoryInfo.availMem));
                    map2.put("tm", Long.valueOf(memoryInfo.totalMem));
                    map2.put("lmt", Long.valueOf(memoryInfo.threshold));
                    map2.put("lm", Boolean.valueOf(memoryInfo.lowMemory));
                } catch (Throwable th2) {
                    map2.put("fm", -1);
                    map2.put("tm", -1);
                    map2.put("lmt", -1);
                    if (x.Fn()) {
                        this.logger.c("DataCollector", "Unable to collect memory info.", th2);
                    }
                }
            }
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOI)).booleanValue() && com.applovin.impl.sdk.utils.h.d("android.permission.READ_PHONE_STATE", this.E) && com.applovin.impl.sdk.utils.h.KZ()) {
            map2.put("rat", Integer.valueOf(((TelephonyManager) this.E.getSystemService("phone")).getDataNetworkType()));
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOF)).booleanValue()) {
            String strDn = Dn();
            if (!TextUtils.isEmpty(strDn)) {
                map2.put("so", strDn);
            }
        }
        map2.put("orientation_lock", CZ());
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOJ)).booleanValue()) {
            map2.put("vs", Boolean.valueOf(com.applovin.impl.sdk.utils.u.Lz()));
        }
        if (com.applovin.impl.sdk.utils.h.KX() && (powerManager = (PowerManager) this.E.getSystemService("power")) != null) {
            map2.put("lpm", Integer.valueOf(powerManager.isPowerSaveMode() ? 1 : 0));
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOT)).booleanValue() && this.sdk.Ci() != null) {
            map2.put("da", Float.valueOf(this.sdk.Ci().Ls()));
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOU)).booleanValue() && this.sdk.Ci() != null) {
            map2.put("dm", Float.valueOf(this.sdk.Ci().Lr()));
        }
        map2.put("mute_switch", Integer.valueOf(this.sdk.Cj().AV()));
        map2.put("network", com.applovin.impl.sdk.utils.i.G(this.sdk));
        String strDo = Do();
        if (StringUtils.isValidString(strDo)) {
            map2.put("kb", strDo);
        }
        ArrayService arrayServiceCr = this.sdk.Cr();
        if (arrayServiceCr.isAppHubInstalled()) {
            if (arrayServiceCr.getIsDirectDownloadEnabled() != null) {
                map2.put("ah_dd_enabled", arrayServiceCr.getIsDirectDownloadEnabled());
            }
            map2.put("ah_sdk_version_code", Long.valueOf(arrayServiceCr.getAppHubVersionCode()));
            map2.put("ah_random_user_token", StringUtils.emptyIfNull(arrayServiceCr.getRandomUserToken()));
            map2.put("ah_sdk_package_name", StringUtils.emptyIfNull(arrayServiceCr.getAppHubPackageName()));
        }
        return map2;
    }

    public static void a(a aVar) {
        aDf.set(aVar);
    }

    public static void a(d.a aVar) {
        aDd.set(aVar);
    }

    private boolean cD(String str) {
        return cE(str) == 1;
    }

    private int cE(String str) {
        try {
            return Settings.Secure.getInt(this.E.getContentResolver(), str);
        } catch (Throwable unused) {
            return -1;
        }
    }

    private String cF(String str) {
        int length = str.length();
        int[] iArr = {11, 12, 10, 3, 2, 1, 15, 10, 15, 14};
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            cArr[i] = str.charAt(i);
            for (int i2 = 9; i2 >= 0; i2--) {
                cArr[i] = (char) (cArr[i] ^ iArr[i2]);
            }
        }
        return new String(cArr);
    }

    private void g(Map<String, Object> map) {
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOK)).booleanValue() && !map.containsKey("af")) {
            map.put("af", Long.valueOf(Dl()));
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOL)).booleanValue() && !map.containsKey("font")) {
            map.put("font", Float.valueOf(Dm()));
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOS)).booleanValue() && com.applovin.impl.sdk.utils.u.Q(this.sdk)) {
            af.A(this.sdk);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOR)).booleanValue() && !map.containsKey("sua")) {
            map.put("sua", System.getProperty("http.agent"));
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aON)).booleanValue() && !map.containsKey("network_restricted")) {
            map.put("network_restricted", Boolean.valueOf(Dh()));
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOV)).booleanValue()) {
            boolean z = true;
            boolean z2 = this.E.getResources().getConfiguration().keyboard == 2;
            boolean zHasSystemFeature = this.E.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE");
            boolean zHasSystemFeature2 = this.E.getPackageManager().hasSystemFeature("android.hardware.type.pc");
            if (!z2 || (!zHasSystemFeature && !zHasSystemFeature2)) {
                z = false;
            }
            map.put("is_pc", Boolean.valueOf(z));
        }
    }

    public Map<String, Object> CT() {
        return CollectionUtils.map(this.aDa);
    }

    public Map<String, Object> CU() {
        return CollectionUtils.map(this.awb);
    }

    public Map<String, Object> CV() {
        return aL(false);
    }

    public void CW() {
        synchronized (this.aDb) {
            g(this.aDa);
        }
    }

    public String CX() {
        return AppLovinSdkUtils.isFireOS(this.E) ? "fireos" : "android";
    }

    public void DD() {
        this.sdk.BO().a(new com.applovin.impl.sdk.e.i(this.sdk, new i.a() { // from class: com.applovin.impl.sdk.o.1
            @Override // com.applovin.impl.sdk.e.i.a
            public void b(d.a aVar) {
                o.aDd.set(aVar);
            }
        }), q.b.ADVERTISING_INFO_COLLECTION);
        this.sdk.BO().a(new com.applovin.impl.sdk.e.ab(this.sdk, true, "setDeviceVolume", new Runnable() { // from class: com.applovin.impl.sdk.p1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.DE();
            }
        }), q.b.CACHING_OTHER);
    }

    public boolean Da() {
        return this.aDc;
    }

    public Map<String, Object> Db() {
        Map<String, Object> map = CollectionUtils.map(this.awb);
        map.put("first_install", Boolean.valueOf(this.sdk.CK()));
        map.put("first_install_v2", Boolean.valueOf(!this.sdk.BL()));
        map.put("test_ads", Boolean.valueOf(this.aDc));
        map.put("muted", Boolean.valueOf(this.sdk.getSettings().isMuted()));
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOt)).booleanValue()) {
            CollectionUtils.putStringIfValid("cuid", this.sdk.Bz(), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOw)).booleanValue()) {
            map.put("compass_random_token", this.sdk.BA());
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOy)).booleanValue()) {
            map.put("applovin_random_token", this.sdk.BB());
        }
        String name = this.sdk.getUserSegment().getName();
        if (StringUtils.isValidString(name)) {
            map.put("user_segment_name", name);
        }
        map.putAll(Dd());
        if (this.sdk.BW() != null) {
            CollectionUtils.putJsonArrayIfValid("ps_topics", this.sdk.BW().Ft(), map);
        }
        return map;
    }

    public Map<String, Object> De() {
        HashMap map = new HashMap();
        map.put("sc", this.sdk.a(com.applovin.impl.sdk.c.b.aKr));
        map.put("sc2", this.sdk.a(com.applovin.impl.sdk.c.b.aKs));
        map.put("sc3", this.sdk.a(com.applovin.impl.sdk.c.b.aKt));
        map.put("server_installed_at", this.sdk.a(com.applovin.impl.sdk.c.b.aKu));
        CollectionUtils.putStringIfValid("persisted_data", (String) this.sdk.a(com.applovin.impl.sdk.c.d.aRM), map);
        return map;
    }

    @Nullable
    public Map<String, Object> Df() {
        b.c cVarHK = this.sdk.BQ().HK();
        if (cVarHK == null) {
            return null;
        }
        HashMap map = new HashMap(4);
        map.put("lrm_ts_ms", String.valueOf(cVarHK.HM()));
        map.put("lrm_url", cVarHK.HN());
        map.put("lrm_ct_ms", String.valueOf(cVarHK.HP()));
        map.put("lrm_rs", String.valueOf(cVarHK.HO()));
        return map;
    }

    @Nullable
    public Map<String, Object> Dg() {
        if (!this.sdk.getSettings().isLocationCollectionEnabled() || !((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPk)).booleanValue()) {
            return null;
        }
        HashMap map = new HashMap();
        w wVarCq = this.sdk.Cq();
        boolean zFi = wVarCq.Fi();
        map.put("loc_services_enabled", Boolean.valueOf(zFi));
        if (!zFi) {
            return map;
        }
        map.put("loc_auth", Boolean.valueOf(wVarCq.Fh()));
        if (wVarCq.Fj()) {
            double dFl = wVarCq.Fl();
            n nVar = this.sdk;
            com.applovin.impl.sdk.c.b<Integer> bVar = com.applovin.impl.sdk.c.b.aPm;
            map.put("loc_lat", com.applovin.impl.sdk.utils.u.a(dFl, ((Integer) nVar.a(bVar)).intValue()));
            map.put("loc_long", com.applovin.impl.sdk.utils.u.a(wVarCq.Fm(), ((Integer) this.sdk.a(bVar)).intValue()));
        }
        return map;
    }

    public d.a Di() {
        d.a aVarU = com.applovin.impl.sdk.utils.d.U(this.E);
        if (aVarU == null) {
            return new d.a();
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOr)).booleanValue()) {
            if (aVarU.KQ() && !((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOq)).booleanValue()) {
                aVarU.dx("");
            }
            aDd.set(aVarU);
        } else {
            aVarU = new d.a();
        }
        boolean z = false;
        if (StringUtils.isValidString(aVarU.KR())) {
            List<String> testDeviceAdvertisingIds = this.sdk.getSettings().getTestDeviceAdvertisingIds();
            if (testDeviceAdvertisingIds != null && testDeviceAdvertisingIds.contains(aVarU.KR())) {
                z = true;
            }
            this.aDc = z;
        } else {
            this.aDc = false;
        }
        return aVarU;
    }

    @Nullable
    public a Dj() {
        return aDf.get();
    }

    public Map<String, Object> a(@Nullable Map<String, String> map, boolean z, boolean z2) {
        HashMap map2 = new HashMap(64);
        Map<String, Object> mapAL = aL(z);
        Map<String, Object> mapDb = Db();
        Map<String, Object> mapDf = Df();
        Map<String, Object> mapDg = Dg();
        Map<String, String> allData = this.sdk.BC().getAllData();
        if (z2) {
            map2.put(DeviceRequestsHelper.DEVICE_INFO_PARAM, mapAL);
            map2.put("app_info", mapDb);
            if (mapDf != null) {
                map2.put("connection_info", mapDf);
            }
            if (map != null) {
                map2.put("ad_info", map);
            }
            if (mapDg != null) {
                map2.put("location_info", mapDg);
            }
            if (!allData.isEmpty()) {
                map2.put("targeting_data", allData);
            }
        } else {
            map2.putAll(mapAL);
            map2.putAll(mapDb);
            if (mapDf != null) {
                map2.putAll(mapDf);
            }
            if (map != null) {
                map2.putAll(map);
            }
            if (mapDg != null) {
                map2.putAll(mapDg);
            }
            if (!allData.isEmpty()) {
                map2.putAll(allData);
            }
        }
        map2.put("accept", "custom_size,launch_app,video");
        map2.put("format", "json");
        CollectionUtils.putStringIfValid("mediation_provider", this.sdk.getMediationProvider(), map2);
        CollectionUtils.putStringIfValid("mediation_provider_v2", this.sdk.CL(), map2);
        CollectionUtils.putStringIfValid("plugin_version", (String) this.sdk.a(com.applovin.impl.sdk.c.b.aOD), map2);
        CollectionUtils.putLongIfValid("tssf_ms", Long.valueOf(this.sdk.By()), map2);
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPL)).booleanValue()) {
            map2.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.sdk.getSdkKey());
        }
        map2.putAll(De());
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPn)).booleanValue()) {
            com.applovin.impl.sdk.d.g gVarBR = this.sdk.BR();
            map2.put("li", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aST)));
            map2.put("si", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aSW)));
            map2.put("mad", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aSU)));
            map2.put("msad", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aSX)));
            map2.put("pf", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aTb)));
            map2.put("mpf", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aTi)));
            map2.put("gpf", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aTc)));
            map2.put("asoac", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aTg)));
        }
        map2.put("rid", UUID.randomUUID().toString());
        return map2;
    }

    public Map<String, Object> aL(boolean z) {
        Map<String, Object> map;
        synchronized (this.aDb) {
            map = CollectionUtils.map(this.aDa);
        }
        return a(map, z);
    }

    String getBidToken() {
        String strEncodeToString = Base64.encodeToString(new JSONObject(CS()).toString().getBytes(Charset.defaultCharset()), 2);
        return ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPN)).booleanValue() ? com.applovin.impl.sdk.utils.p.a(strEncodeToString, com.applovin.impl.sdk.utils.u.N(this.sdk), p.a.gW(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPO)).intValue()), this.sdk.getSdkKey(), this.sdk) : strEncodeToString;
    }
}
