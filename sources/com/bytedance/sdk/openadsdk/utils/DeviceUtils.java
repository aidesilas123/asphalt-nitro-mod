package com.bytedance.sdk.openadsdk.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import com.bytedance.JProtect;
import com.bytedance.sdk.openadsdk.utils.e;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.hyprmx.android.sdk.core.HyprMXMediationProvider;
import com.json.v4;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.unity3d.services.core.properties.MadeWithUnityDetector;
import java.io.IOException;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceUtils {
    public static String a = "";
    private static volatile boolean b = false;
    private static volatile boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile boolean f1851d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f1852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f1853f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f1854g;
    private static int h;
    private static int i;
    private static int j;
    private static int k;

    public static class AudioInfoReceiver extends BroadcastReceiver {
        static final CopyOnWriteArrayList<com.bytedance.sdk.openadsdk.i.g> a = new CopyOnWriteArrayList<>();

        public static void a(com.bytedance.sdk.openadsdk.i.g gVar) {
            if (gVar != null) {
                CopyOnWriteArrayList<com.bytedance.sdk.openadsdk.i.g> copyOnWriteArrayList = a;
                if (copyOnWriteArrayList.contains(gVar)) {
                    return;
                }
                copyOnWriteArrayList.add(gVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (DeviceUtils.b || context == null) {
                return;
            }
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
                intentFilter.addAction("android.intent.action.HEADSET_PLUG");
                context.registerReceiver(new AudioInfoReceiver(), intentFilter);
                boolean unused = DeviceUtils.b = true;
            } catch (Throwable unused2) {
            }
        }

        public static void b(com.bytedance.sdk.openadsdk.i.g gVar) {
            if (gVar == null) {
                return;
            }
            a.remove(gVar);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                if (!"android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction())) {
                    if ("android.intent.action.HEADSET_PLUG".equals(intent.getAction())) {
                        int unused = DeviceUtils.j = intent.getIntExtra("state", 0);
                    }
                } else if (intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3) {
                    int unused2 = DeviceUtils.h = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", 0);
                    Iterator<com.bytedance.sdk.openadsdk.i.g> it = a.iterator();
                    while (it.hasNext()) {
                        it.next().a(DeviceUtils.h);
                    }
                    if (DeviceUtils.f1854g != 0) {
                        int unused3 = DeviceUtils.i = (int) ((((double) DeviceUtils.h) / ((double) DeviceUtils.f1854g)) * 100.0d);
                    }
                }
            } catch (Exception unused4) {
            }
        }
    }

    private static class a extends BroadcastReceiver {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            int i = Build.VERSION.SDK_INT;
            if (i < 21 || context == null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            intentFilter.addAction("huawei.intent.action.POWER_MODE_CHANGED_ACTION");
            if (i >= 33) {
                context.registerReceiver(new a(), intentFilter, 2);
            } else {
                context.registerReceiver(new a(), intentFilter);
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || context == null) {
                return;
            }
            if ("android.os.action.POWER_SAVE_MODE_CHANGED".equals(intent.getAction())) {
                DeviceUtils.r(context);
            } else if ("huawei.intent.action.POWER_MODE_CHANGED_ACTION".equals(intent.getAction())) {
                int unused = DeviceUtils.k = intent.getIntExtra("state", 0) == 1 ? 1 : 0;
            }
        }
    }

    public static class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i;
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(com.bytedance.sdk.openadsdk.core.o.a());
                if (advertisingIdInfo != null) {
                    i = advertisingIdInfo.isLimitAdTrackingEnabled() ? 1 : 0;
                    if (com.bytedance.sdk.openadsdk.core.o.d().A(v4.w0)) {
                        String id = advertisingIdInfo.getId();
                        if (!TextUtils.isEmpty(id)) {
                            com.com.bytedance.overseas.sdk.b.a.a().b(id);
                            com.com.bytedance.overseas.sdk.b.a.a(id);
                            com.bytedance.sdk.openadsdk.core.e.c.a(id);
                        }
                    }
                } else {
                    i = -1;
                }
                if (i != -1) {
                    com.bytedance.sdk.openadsdk.core.c.a(com.bytedance.sdk.openadsdk.core.o.a()).a("limit_ad_track", i);
                }
            } catch (IOException e2) {
                com.bytedance.sdk.component.utils.l.c("TTAD.DeviceUtils", "getLmtTask error : signaling connection to Google Play Services failed.", e2);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.e("TTAD.DeviceUtils", th.getMessage());
            }
        }
    }

    @JProtect
    public static JSONObject a(Context context, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sys_adb_status", e(context));
            a(jSONObject);
            jSONObject.put("type", c(context));
            jSONObject.put(v4.x, 1);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("conn_type", ac.l(context));
            jSONObject.put("app_set_id", com.bytedance.sdk.openadsdk.core.settings.c.c());
            jSONObject.put("app_set_id_scope", com.bytedance.sdk.openadsdk.core.settings.c.b());
            jSONObject.put("installed_source", com.bytedance.sdk.openadsdk.core.settings.c.d());
            jSONObject.put("screen_width", ad.c(context));
            jSONObject.put("screen_height", ad.d(context));
            jSONObject.put("sec_did", com.bytedance.sdk.openadsdk.core.e.c.c());
            com.bytedance.sdk.openadsdk.core.settings.e eVarD = com.bytedance.sdk.openadsdk.core.o.d();
            if (eVarD.A("boot")) {
                jSONObject.put("boot", String.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
                jSONObject.put("power_on_time", String.valueOf(SystemClock.elapsedRealtime()));
            }
            jSONObject.put("uuid", com.bytedance.sdk.openadsdk.core.j.c(context));
            jSONObject.put("rom_version", t.a());
            jSONObject.put("sys_compiling_time", com.bytedance.sdk.openadsdk.core.j.b(context));
            jSONObject.put("timezone", ac.r());
            jSONObject.put("language", com.bytedance.sdk.openadsdk.core.j.a());
            jSONObject.put(KidozParams.CARRIER_NAME, u.a());
            jSONObject.put("total_mem", String.valueOf(Long.parseLong(z ? ac.a(context) : ac.b(context)) * PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID));
            jSONObject.put("locale_language", c());
            jSONObject.put("screen_bright", Math.ceil(d() * 10.0f) / 10.0d);
            jSONObject.put("is_screen_off", a() ? 0 : 1);
            jSONObject.put("cpu_num", f.a(context));
            jSONObject.put("cpu_max_freq", f.b(context));
            jSONObject.put("cpu_min_freq", f.c(context));
            e.a aVarA = e.a();
            jSONObject.put("battery_remaining_pct", (int) aVarA.b);
            jSONObject.put("is_charging", aVarA.a);
            jSONObject.put("total_space", String.valueOf(ac.c(context)));
            jSONObject.put("free_space_in", String.valueOf(ac.d(context)));
            jSONObject.put("sdcard_size", String.valueOf(ac.e(context)));
            jSONObject.put("rooted", ac.f(context));
            jSONObject.put("enable_assisted_clicking", e());
            jSONObject.put("force_language", com.bytedance.sdk.component.utils.s.a(context, "tt_choose_language"));
            jSONObject.put("airplane", f(context));
            jSONObject.put("darkmode", m(context));
            jSONObject.put("headset", n(context));
            jSONObject.put("ringmute", g(context));
            jSONObject.put("screenscale", o(context));
            jSONObject.put("volume", g());
            jSONObject.put("low_power_mode", p(context));
            if (eVarD.A("mnc")) {
                jSONObject.put("mnc", u.c());
            }
            if (eVarD.A("mcc")) {
                jSONObject.put("mcc", u.b());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static void a(JSONObject jSONObject) throws JSONException {
        b(jSONObject);
    }

    @JProtect
    public static boolean a() {
        if (SystemClock.elapsedRealtime() - f1852e >= 20000) {
            f1852e = SystemClock.elapsedRealtime();
            try {
                PowerManager powerManager = (PowerManager) com.bytedance.sdk.openadsdk.core.o.a().getSystemService("power");
                if (powerManager != null) {
                    if (Build.VERSION.SDK_INT >= 20) {
                        f1851d = powerManager.isInteractive();
                    } else {
                        f1851d = powerManager.isScreenOn();
                    }
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.e("TTAD.DeviceUtils", th.getMessage());
            }
        }
        return f1851d;
    }

    public static boolean a(Context context) {
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int b() {
        return com.bytedance.sdk.openadsdk.core.c.a(com.bytedance.sdk.openadsdk.core.o.a()).b("limit_ad_track", -1);
    }

    private static void b(JSONObject jSONObject) throws JSONException {
        jSONObject.put("model", Build.MODEL);
        if (com.bytedance.sdk.openadsdk.core.o.d().A(v4.w0)) {
            jSONObject.put(v4.w0, com.com.bytedance.overseas.sdk.b.a.a().b());
        }
    }

    public static boolean b(Context context) {
        try {
            return (context.getResources().getConfiguration().uiMode & 15) == 4;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int c(Context context) {
        if (b(context)) {
            return 3;
        }
        return a(context) ? 2 : 1;
    }

    public static String c() {
        if (Build.VERSION.SDK_INT < 21) {
            return Locale.getDefault().getLanguage();
        }
        String languageTag = Locale.getDefault().toLanguageTag();
        return !TextUtils.isEmpty(languageTag) ? languageTag : "";
    }

    public static float d() {
        int i2 = -1;
        try {
            Context contextA = com.bytedance.sdk.openadsdk.core.o.a();
            if (contextA != null) {
                i2 = Settings.System.getInt(contextA.getContentResolver(), "screen_brightness", -1);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("TTAD.DeviceUtils", th.getMessage());
        }
        if (i2 < 0) {
            return -1.0f;
        }
        return Math.round((i2 / 255.0f) * 10.0f) / 10.0f;
    }

    public static JSONObject d(Context context) {
        return a(context, false);
    }

    public static int e() {
        AccessibilityManager accessibilityManager = (AccessibilityManager) com.bytedance.sdk.openadsdk.core.o.a().getSystemService("accessibility");
        if (accessibilityManager == null) {
            return -1;
        }
        return accessibilityManager.isEnabled() ? 1 : 0;
    }

    public static int e(Context context) {
        if (context == null) {
            return -1;
        }
        try {
            return Build.VERSION.SDK_INT >= 17 ? Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", -1) : Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", -1);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("TTAD.DeviceUtils", th.getMessage());
            return -1;
        }
    }

    public static int f() {
        return h;
    }

    public static int f(Context context) {
        try {
            return Build.VERSION.SDK_INT >= 17 ? Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0 ? 1 : 0 : Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0 ? 1 : 0;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static int g() {
        return i;
    }

    public static int g(Context context) {
        return f1853f;
    }

    public static int h() {
        return f1854g;
    }

    public static String h(Context context) {
        if (TextUtils.isEmpty(a)) {
            a = com.bytedance.sdk.openadsdk.core.c.a(context).b("framework_name", "");
        }
        return a;
    }

    @JProtect
    public static void i() {
        new b().run();
        Context contextA = com.bytedance.sdk.openadsdk.core.o.a();
        if (contextA != null) {
            com.bytedance.sdk.openadsdk.core.c.a(contextA).a("cpu_count", f.a());
            com.bytedance.sdk.openadsdk.core.c.a(contextA).a("cpu_max_frequency", f.a(f.a()));
            com.bytedance.sdk.openadsdk.core.c.a(contextA).a("cpu_min_frequency", f.b(f.a()));
            String strI = ac.i();
            if (strI != null) {
                com.bytedance.sdk.openadsdk.core.c.a(contextA).a("total_memory", strI);
            }
            com.bytedance.sdk.openadsdk.core.c.a(contextA).a("total_internal_storage", ac.j());
            com.bytedance.sdk.openadsdk.core.c.a(contextA).a("free_internal_storage", com.bytedance.sdk.component.utils.m.a());
            com.bytedance.sdk.openadsdk.core.c.a(contextA).a("total_sdcard_storage", ac.k());
            com.bytedance.sdk.openadsdk.core.c.a(contextA).a("is_root", ac.l() ? 1 : 0);
            if (TextUtils.isEmpty(h(contextA))) {
                try {
                    Class.forName(MadeWithUnityDetector.UNITY_PLAYER_CLASS_NAME);
                    a = HyprMXMediationProvider.UNITY;
                } catch (ClassNotFoundException unused) {
                    a = AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;
                }
                com.bytedance.sdk.openadsdk.core.c.a(contextA).a("framework_name", a);
            }
            j();
            q(contextA);
            k = s(contextA);
        }
    }

    public static void i(Context context) {
        AudioInfoReceiver.b(context);
    }

    public static void j() {
        try {
            int ringerMode = ((AudioManager) com.bytedance.sdk.openadsdk.core.o.a().getSystemService("audio")).getRingerMode();
            if (ringerMode == 2) {
                f1853f = 1;
            } else if (ringerMode == 1) {
                f1853f = 2;
            } else {
                f1853f = 0;
            }
        } catch (Throwable unused) {
        }
    }

    public static void j(Context context) {
        Context applicationContext;
        if (c || context == null || (applicationContext = context.getApplicationContext()) == null) {
            return;
        }
        try {
            if (Build.MANUFACTURER.equalsIgnoreCase("XIAOMI")) {
                u(applicationContext);
            } else {
                a.b(applicationContext);
            }
            c = true;
        } catch (Throwable unused) {
        }
    }

    private static int m(Context context) {
        int i2;
        try {
            i2 = context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } catch (Throwable unused) {
        }
        if (i2 == 32) {
            return 1;
        }
        return i2 == 16 ? 0 : -1;
    }

    private static int n(Context context) {
        return j;
    }

    private static float o(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    private static int p(Context context) {
        return k;
    }

    private static void q(Context context) {
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            f1854g = audioManager.getStreamMaxVolume(3);
            int streamVolume = audioManager.getStreamVolume(3);
            h = streamVolume;
            i = (int) ((((double) streamVolume) / ((double) f1854g)) * 100.0d);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r(Context context) {
        if (context == null) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        aa.b(new com.bytedance.sdk.component.g.h("DeviceUtils_get_low_power_mode") { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.1
            @Override // java.lang.Runnable
            public void run() {
                int unused = DeviceUtils.k = DeviceUtils.s(applicationContext);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int s(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            String str = Build.MANUFACTURER;
            if (!str.equalsIgnoreCase("XIAOMI") && !str.equalsIgnoreCase("HUAWEI")) {
                return (Build.VERSION.SDK_INT < 21 || !((PowerManager) context.getSystemService("power")).isPowerSaveMode()) ? 0 : 1;
            }
            return t(context);
        } catch (Throwable unused) {
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int t(android.content.Context r4) {
        /*
            java.lang.String r0 = android.os.Build.MANUFACTURER     // Catch: java.lang.Throwable -> L33
            java.lang.String r1 = "XIAOMI"
            boolean r1 = r0.equalsIgnoreCase(r1)     // Catch: java.lang.Throwable -> L33
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1c
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L33
            java.lang.String r0 = "POWER_SAVE_MODE_OPEN"
            int r4 = android.provider.Settings.System.getInt(r4, r0)     // Catch: java.lang.Throwable -> L33
            if (r4 != r2) goto L19
            goto L1a
        L19:
            r2 = 0
        L1a:
            r3 = r2
            goto L32
        L1c:
            java.lang.String r1 = "HUAWEI"
            boolean r0 = r0.equalsIgnoreCase(r1)     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L32
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L33
            java.lang.String r0 = "SmartModeStatus"
            int r4 = android.provider.Settings.System.getInt(r4, r0)     // Catch: java.lang.Throwable -> L33
            r0 = 4
            if (r4 != r0) goto L19
            goto L1a
        L32:
            return r3
        L33:
            r4 = -1
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.DeviceUtils.t(android.content.Context):int");
    }

    private static void u(Context context) {
        final Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            return;
        }
        context.getContentResolver().registerContentObserver(Uri.parse("content://settings/system/POWER_SAVE_MODE_OPEN"), false, new ContentObserver(null) { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.2
            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                super.onChange(z);
                DeviceUtils.r(applicationContext);
            }
        });
    }
}
