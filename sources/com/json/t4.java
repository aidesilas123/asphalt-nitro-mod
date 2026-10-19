package com.json;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.json.mediationsdk.config.ConfigFile;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.p;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class t4 implements Runnable {
    public static final String L = "sdkVersion";
    public static final String M = "AdvIdOptOutReason";
    private Context J;
    private final String a = getClass().getSimpleName();
    private final String b = "bundleId";
    private final String c = qc.h1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6629d = "isLimitAdTrackingEnabled";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6630e = "appKey";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f6631f = qc.p0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f6632g = "osVersion";
    private final String h = "connectionType";
    private final String i = "language";
    private final String j = "deviceOEM";
    private final String k = "deviceModel";
    private final String l = "mobileCarrier";
    private final String m = "externalFreeMemory";
    private final String n = "internalFreeMemory";
    private final String o = "battery";
    private final String p = "gmtMinutesOffset";
    private final String q = "appVersion";
    private final String r = "sessionId";
    private final String s = "pluginType";
    private final String t = "pluginVersion";
    private final String u = "plugin_fw_v";
    private final String v = "jb";
    private final String w = "advertisingIdType";
    private final String x = "mt";
    private final String y = "firstSession";
    private final String z = "mcc";
    private final String A = "mnc";
    private final String B = "icc";
    private final String C = "tz";
    private final String D = "auid";
    private final String E = "userLat";
    private final String F = "publisherAPI";
    private final String G = "missingDependencies";
    private final String H = "missingManifest";
    private final String I = "other";
    private final e5 K = e9.h().c();

    private t4() {
    }

    public t4(Context context) {
        this.J = context.getApplicationContext();
    }

    private String a(String str) {
        return TextUtils.isEmpty(str) ? "missingDependencies" : !l3.a.b() ? "publisherAPI" : !this.K.u(this.J) ? "missingManifest" : Boolean.parseBoolean(str) ? "userLat" : "other";
    }

    private Map<String, Object> b() {
        String str;
        boolean z;
        HashMap map = new HashMap();
        map.put("sessionId", IronSourceUtils.getSessionId());
        String strG = g();
        if (!TextUtils.isEmpty(strG)) {
            map.put("bundleId", strG);
            String strB = k0.b(this.J, strG);
            if (!TextUtils.isEmpty(strB)) {
                map.put("appVersion", strB);
            }
        }
        map.put("appKey", e());
        String strP = this.K.p(this.J);
        String strA = this.K.a(this.J);
        boolean z2 = false;
        if (TextUtils.isEmpty(strP)) {
            String strJ = this.K.J(this.J);
            str = !TextUtils.isEmpty(strJ) ? IronSourceConstants.TYPE_UUID : "";
            strP = strJ;
            z = true;
        } else {
            str = IronSourceConstants.TYPE_GAID;
            z = false;
        }
        if (!TextUtils.isEmpty(strP)) {
            map.put(qc.h1, strP);
            map.put("advertisingIdType", str);
        }
        if (!TextUtils.isEmpty(strA)) {
            z2 = Boolean.parseBoolean(strA);
            map.put("isLimitAdTrackingEnabled", Boolean.valueOf(z2));
        }
        if (z || z2) {
            map.put(M, a(strA));
        }
        map.put(qc.p0, j());
        if (!TextUtils.isEmpty(d())) {
            map.put("osVersion", d());
        }
        String connectionType = IronSourceUtils.getConnectionType(this.J);
        if (!TextUtils.isEmpty(connectionType)) {
            map.put("connectionType", connectionType);
        }
        map.put("sdkVersion", t());
        String strN = n();
        if (!TextUtils.isEmpty(strN)) {
            map.put("language", strN);
        }
        String strI = i();
        if (!TextUtils.isEmpty(strI)) {
            map.put("deviceOEM", strI);
        }
        String strH = h();
        if (!TextUtils.isEmpty(strH)) {
            map.put("deviceModel", strH);
        }
        String strP2 = p();
        if (!TextUtils.isEmpty(strP2)) {
            map.put("mobileCarrier", strP2);
        }
        map.put("internalFreeMemory", Long.valueOf(m()));
        map.put("externalFreeMemory", Long.valueOf(k()));
        map.put("battery", Integer.valueOf(f()));
        int iL = l();
        if (c(iL)) {
            map.put("gmtMinutesOffset", Integer.valueOf(iL));
        }
        String strR = r();
        if (!TextUtils.isEmpty(strR)) {
            map.put("pluginType", strR);
        }
        String strS = s();
        if (!TextUtils.isEmpty(strS)) {
            map.put("pluginVersion", strS);
        }
        String strQ = q();
        if (!TextUtils.isEmpty(strQ)) {
            map.put("plugin_fw_v", strQ);
        }
        String strValueOf = String.valueOf(this.K.f());
        if (!TextUtils.isEmpty(strValueOf)) {
            map.put("jb", strValueOf);
        }
        String strO = o();
        if (!TextUtils.isEmpty(strO)) {
            map.put("mt", strO);
        }
        String strValueOf2 = String.valueOf(IronSourceUtils.getFirstSession(this.J));
        if (!TextUtils.isEmpty(strValueOf2)) {
            map.put("firstSession", strValueOf2);
        }
        String strS2 = this.K.s(this.J);
        if (!TextUtils.isEmpty(strS2)) {
            map.put("auid", strS2);
        }
        map.put("mcc", Integer.valueOf(k2.b(this.J)));
        map.put("mnc", Integer.valueOf(k2.c(this.J)));
        String strN2 = this.K.n(this.J);
        if (!TextUtils.isEmpty(strN2)) {
            map.put("icc", strN2);
        }
        String strB2 = this.K.b();
        if (!TextUtils.isEmpty(strB2)) {
            map.put("tz", strB2);
        }
        IronLog.INTERNAL.verbose("collecting data for events: " + map);
        return map;
    }

    private boolean c(int i) {
        return i <= 840 && i >= -720 && i % 15 == 0;
    }

    private String d() {
        try {
            String str = Build.VERSION.RELEASE;
            return "" + Build.VERSION.SDK_INT + "(" + str + ")";
        } catch (Exception unused) {
            return "";
        }
    }

    private String e() {
        return p.o().p();
    }

    private int f() {
        try {
            Intent intentRegisterReceiver = this.J.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) : 0;
            int intExtra2 = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("scale", -1) : 0;
            if (intExtra == -1 || intExtra2 == -1) {
                return -1;
            }
            return (int) ((intExtra / intExtra2) * 100.0f);
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.a + ":getBatteryLevel()", e2);
            return -1;
        }
    }

    private String g() {
        try {
            return this.J.getPackageName();
        } catch (Exception unused) {
            return "";
        }
    }

    private String h() {
        try {
            return Build.MODEL;
        } catch (Exception unused) {
            return "";
        }
    }

    private String i() {
        try {
            return Build.MANUFACTURER;
        } catch (Exception unused) {
            return "";
        }
    }

    private String j() {
        return o2.f6459e;
    }

    private long k() {
        if (!u()) {
            return -1L;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return (((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize())) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    }

    private int l() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            return Math.round(((timeZone.getOffset(Calendar.getInstance(timeZone).getTimeInMillis()) / 1000) / 60) / 15) * 15;
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.a + ":getGmtMinutesOffset()", e2);
            return 0;
        }
    }

    private long m() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return (((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize())) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        } catch (Exception unused) {
            return -1L;
        }
    }

    private String n() {
        try {
            return Locale.getDefault().getLanguage();
        } catch (Exception unused) {
            return "";
        }
    }

    private String o() {
        return p.o().r();
    }

    private String p() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.J.getSystemService("phone");
            if (telephonyManager == null) {
                return "";
            }
            String networkOperatorName = telephonyManager.getNetworkOperatorName();
            return !networkOperatorName.equals("") ? networkOperatorName : "";
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.a + ":getMobileCarrier()", e2);
            return "";
        }
    }

    private String q() {
        try {
            return ConfigFile.getConfigFile().getPluginFrameworkVersion();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginFrameworkVersion()", e2);
            return "";
        }
    }

    private String r() {
        try {
            return ConfigFile.getConfigFile().getPluginType();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginType()", e2);
            return "";
        }
    }

    private String s() {
        try {
            return ConfigFile.getConfigFile().getPluginVersion();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginVersion()", e2);
            return "";
        }
    }

    private String t() {
        return IronSourceUtils.getSDKVersion();
    }

    private boolean u() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            s4.a().a(b());
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "Thread name = " + getClass().getSimpleName(), e2);
        }
    }
}
