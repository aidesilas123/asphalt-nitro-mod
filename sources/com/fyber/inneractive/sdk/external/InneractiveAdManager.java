package com.fyber.inneractive.sdk.external;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.ViewTreeObserver;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.d;
import com.fyber.inneractive.sdk.config.f;
import com.fyber.inneractive.sdk.config.f0;
import com.fyber.inneractive.sdk.config.global.r;
import com.fyber.inneractive.sdk.config.i;
import com.fyber.inneractive.sdk.config.j;
import com.fyber.inneractive.sdk.config.k;
import com.fyber.inneractive.sdk.config.l;
import com.fyber.inneractive.sdk.config.o;
import com.fyber.inneractive.sdk.config.p;
import com.fyber.inneractive.sdk.external.OnFyberMarketplaceInitializedListener;
import com.fyber.inneractive.sdk.factories.a;
import com.fyber.inneractive.sdk.factories.b;
import com.fyber.inneractive.sdk.factories.c;
import com.fyber.inneractive.sdk.logger.FMPLogger;
import com.fyber.inneractive.sdk.mraid.IAMraidKit;
import com.fyber.inneractive.sdk.network.g0;
import com.fyber.inneractive.sdk.network.q;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.network.y;
import com.fyber.inneractive.sdk.response.e;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.i0;
import com.fyber.inneractive.sdk.util.l;
import com.fyber.inneractive.sdk.util.m;
import com.fyber.inneractive.sdk.util.r0;
import com.fyber.inneractive.sdk.util.s0;
import com.fyber.inneractive.sdk.util.u;
import com.fyber.inneractive.sdk.util.u0;
import com.fyber.inneractive.sdk.util.v;
import com.fyber.inneractive.sdk.util.z;
import com.fyber.inneractive.sdk.video.IAVideoKit;
import com.json.o2;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class InneractiveAdManager implements j.b {
    public static final String GLOBAL_CONFIG_PARAM_FIRST_INIT_EVENT = "sdk_first_init";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static IAConfigManager.OnConfigurationReadyAndValidListener f1994d;
    public volatile Context a;
    public String b;
    public boolean c = false;

    public enum GdprConsentSource {
        Internal,
        External
    }

    public class a implements IAConfigManager.OnConfigurationReadyAndValidListener {
        public final /* synthetic */ Context a;
        public final /* synthetic */ OnFyberMarketplaceInitializedListener b;

        public a(Context context, OnFyberMarketplaceInitializedListener onFyberMarketplaceInitializedListener) {
            this.a = context;
            this.b = onFyberMarketplaceInitializedListener;
        }

        @Override // com.fyber.inneractive.sdk.config.IAConfigManager.OnConfigurationReadyAndValidListener
        public void onConfigurationReadyAndValid(IAConfigManager iAConfigManager, boolean z, Exception exc) {
            if (this.a.getApplicationContext() != null) {
                IAConfigManager.removeListener(this);
                InneractiveAdManager.f1994d = null;
                if (z) {
                    InneractiveAdManager.a(this.b, OnFyberMarketplaceInitializedListener.FyberInitStatus.SUCCESSFULLY, null);
                } else {
                    InneractiveAdManager.a(this.b, exc instanceof InvalidAppIdException ? OnFyberMarketplaceInitializedListener.FyberInitStatus.INVALID_APP_ID : OnFyberMarketplaceInitializedListener.FyberInitStatus.FAILED, exc.getLocalizedMessage());
                }
            }
        }
    }

    public static class b {
        public static volatile InneractiveAdManager a = new InneractiveAdManager();
    }

    public static void a(OnFyberMarketplaceInitializedListener onFyberMarketplaceInitializedListener, OnFyberMarketplaceInitializedListener.FyberInitStatus fyberInitStatus, String str) {
        if (onFyberMarketplaceInitializedListener != null) {
            onFyberMarketplaceInitializedListener.onFyberMarketplaceInitialized(fyberInitStatus);
        }
        if (b.a.a == null || fyberInitStatus == OnFyberMarketplaceInitializedListener.FyberInitStatus.SUCCESSFULLY) {
            return;
        }
        s.a aVar = new s.a(q.FMP_SDK_INIT_FAILED, (InneractiveAdRequest) null, (e) null, (JSONArray) null);
        if (!TextUtils.isEmpty(str)) {
            aVar.a("message", str);
        }
        aVar.a("init_status", fyberInitStatus.name());
        aVar.a((String) null);
    }

    @Deprecated
    public static boolean areNativeAdsSupportedForOS() {
        return true;
    }

    public static void clearGdprConsentData() {
        d dVar = IAConfigManager.M.D;
        if (dVar == null) {
            IAlog.e("clearGdprConsentData() was invoked, but Fyber SDK was not properly initialized", new Object[0]);
            return;
        }
        IAlog.a("Clearing GDPR Consent String and status", new Object[0]);
        if (l.a == null) {
            IAlog.e("ClearGdprConsent was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
            return;
        }
        dVar.b();
        dVar.a = null;
        dVar.b = null;
        SharedPreferences sharedPreferences = dVar.h;
        if (sharedPreferences != null) {
            sharedPreferences.edit().remove("IAGdprConsentData").remove("IAGDPRBool").remove("IAGdprSource").apply();
        }
    }

    public static void clearImpressionDataListener() {
        IAConfigManager.M.A.a = null;
    }

    public static void clearLgpdConsentData() {
        d dVar = IAConfigManager.M.D;
        if (dVar == null) {
            IAlog.e("clearLgpdConsentData was invoked, but Fyber SDK was not properly initialized", new Object[0]);
            return;
        }
        IAlog.a("Clearing LGPD consent status", new Object[0]);
        if (l.a == null) {
            IAlog.e("clearLgpdConsentStatus was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
            return;
        }
        dVar.b();
        dVar.f1953f = null;
        SharedPreferences sharedPreferences = dVar.h;
        if (sharedPreferences != null) {
            sharedPreferences.edit().remove("IALgpdConsentStatus").apply();
        }
    }

    public static void clearUSPrivacyString() {
        d dVar = IAConfigManager.M.D;
        if (dVar != null) {
            IAlog.a("Clearing CCPA Consent String", new Object[0]);
            if (l.a == null) {
                IAlog.e("clearUSPrivacyString was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
                return;
            }
            dVar.b();
            dVar.f1952e = null;
            SharedPreferences sharedPreferences = dVar.h;
            if (sharedPreferences != null) {
                sharedPreferences.edit().remove("IACCPAConsentData").apply();
            }
        }
    }

    public static void currentAudienceAppliesToCoppa() {
        d dVar = IAConfigManager.M.D;
        if (dVar == null) {
            IAlog.e("currentAudienceAppliesToCoppa was invoked, but Fyber SDK was not properly initialized", new Object[0]);
        } else if (l.a == null) {
            IAlog.e("setCurrentAudienceAppliesToCoppa was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
        } else {
            dVar.f1954g = Boolean.TRUE;
        }
    }

    public static void currentAudienceIsAChild() {
        b.a.c = true;
    }

    public static void destroy() {
        IAlog.a("InneractiveAdManager:destroy called", new Object[0]);
        if (b.a.a == null) {
            IAlog.a("InneractiveAdManager:destroy called, but manager is not initialized", new Object[0]);
            return;
        }
        b.a.a = null;
        IAConfigManager.removeListener(f1994d);
        f1994d = null;
        IAConfigManager iAConfigManager = IAConfigManager.M;
        iAConfigManager.A.a = null;
        iAConfigManager.h = false;
        z zVar = z.d.a;
        zVar.b.clear();
        Iterator<Context> it = zVar.a.keySet().iterator();
        while (it.hasNext()) {
            Pair<ViewTreeObserver, ViewTreeObserver.OnPreDrawListener> pair = zVar.a.get(it.next());
            if (pair != null && ((ViewTreeObserver) pair.first).isAlive()) {
                ((ViewTreeObserver) pair.first).removeOnPreDrawListener((ViewTreeObserver.OnPreDrawListener) pair.second);
            }
        }
        zVar.a.clear();
        v vVar = v.a.a;
        synchronized (vVar) {
            if (vVar.c != null) {
                IAlog.a("%sremoving screen state receiver and destroying singleton", IAlog.a(vVar));
                try {
                    vVar.c.unregisterReceiver(vVar.f2747d);
                } catch (Exception unused) {
                }
                vVar.c = null;
                vVar.f2747d = null;
                vVar.a.clear();
            }
        }
        b.a.a.a.clear();
        a.b.a.a.clear();
        c.b.a.a.clear();
        InneractiveAdSpotManager.destroy();
        ((HashMap) l.a.a).clear();
        com.fyber.inneractive.sdk.bidder.a aVar = com.fyber.inneractive.sdk.bidder.a.h;
        com.fyber.inneractive.sdk.bidder.e eVar = aVar.f1910d;
        if (eVar != null) {
            try {
                l.a.unregisterReceiver(eVar);
            } catch (Exception unused2) {
            }
        }
        aVar.f1910d = null;
    }

    public static String getAppId() {
        return IAConfigManager.M.c;
    }

    @Deprecated
    public static String getDevPlatform() {
        return b.a.b;
    }

    public static Boolean getGdprConsent() {
        d dVar = IAConfigManager.M.D;
        if (dVar != null) {
            return dVar.a();
        }
        return null;
    }

    public static GdprConsentSource getGdprStatusSource() {
        d dVar = IAConfigManager.M.D;
        if (dVar != null) {
            return dVar.c;
        }
        IAlog.e("getGdprStatusSource() was invoked, but Fyber SDK was not properly initialized", new Object[0]);
        return null;
    }

    @Deprecated
    public static String getKeywords() {
        return IAConfigManager.M.k;
    }

    public static boolean getMuteVideo() {
        return IAConfigManager.M.l;
    }

    public static String getUserId() {
        return IAConfigManager.g();
    }

    public static InneractiveUserConfig getUserParams() {
        return IAConfigManager.M.j;
    }

    public static String getVersion() {
        return "8.2.4";
    }

    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    public static void initialize(Context context, String str, OnFyberMarketplaceInitializedListener onFyberMarketplaceInitializedListener) {
        String language;
        char c;
        char c2;
        if (context == null || str == null) {
            IAlog.b("InneractiveAdManager:initialize. No context or App Id given", new Object[0]);
            Object[] objArr = new Object[1];
            objArr[0] = str == null ? "appid" : "context";
            a(onFyberMarketplaceInitializedListener, (str == null || TextUtils.isEmpty(str.trim())) ? OnFyberMarketplaceInitializedListener.FyberInitStatus.INVALID_APP_ID : OnFyberMarketplaceInitializedListener.FyberInitStatus.FAILED, String.format("%s is null", objArr));
            return;
        }
        String str2 = IAConfigManager.M.c;
        boolean z = (str2 == null || str2.equalsIgnoreCase(str)) ? false : true;
        if (b.a.a != null && !z) {
            IAlog.a("InneractiveAdManager:initialize called, but manager is already initialized. ignoring", new Object[0]);
            a(onFyberMarketplaceInitializedListener, OnFyberMarketplaceInitializedListener.FyberInitStatus.SUCCESSFULLY, null);
            return;
        }
        ((CopyOnWriteArrayList) IAlog.c).retainAll(Collections.singleton(IAlog.b));
        int i = f.a;
        String property = System.getProperty("ia.testEnvironmentConfiguration.logger");
        if (property != null) {
            for (String str3 : property.split(",")) {
                try {
                    FMPLogger fMPLogger = (FMPLogger) Class.forName(str3).newInstance();
                    fMPLogger.initialize(context);
                    ((CopyOnWriteArrayList) IAlog.c).add(fMPLogger);
                } catch (Throwable unused) {
                }
            }
        }
        l.a = (Application) context.getApplicationContext();
        v vVar = v.a.a;
        Context applicationContext = context.getApplicationContext();
        vVar.getClass();
        IAlog.a("%sinit called", IAlog.a(vVar));
        vVar.c = applicationContext;
        vVar.f2747d = new u(vVar);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        vVar.c.registerReceiver(vVar.f2747d, intentFilter);
        Intent intent = new Intent();
        intent.setAction("com.fyber.inneractive.sdk.intent.action.REGISTER_KIT");
        intent.setPackage(l.a.getPackageName());
        Context applicationContext2 = context.getApplicationContext();
        if (applicationContext2 == null) {
            throw new IllegalArgumentException("Context can't be null");
        }
        List<BroadcastReceiver> listAsList = Arrays.asList(new IAMraidKit(), new IAVideoKit(), new com.fyber.inneractive.sdk.dv.c());
        for (BroadcastReceiver broadcastReceiver : listAsList) {
            try {
                broadcastReceiver.onReceive(applicationContext2, intent);
            } catch (Throwable unused2) {
                IAlog.e("%sCould not trigger receiver for %s", IAlog.a((Class<?>) com.fyber.inneractive.sdk.b.class), broadcastReceiver);
            }
        }
        if (b.a.a.a.size() == 0) {
            Log.e("Inneractive_error", "Critical error raised while initializing SDK - please make sure you have added all the required fyber libraries (ia-mraid-kit, ia-video-kit) to your project");
        }
        if (listAsList.size() == 0) {
            IAlog.b("InneractiveAdManager:initialize. please make sure you have added all the required fyber libraries (ia-mraid-kit, ia-video-kit) to your project", new Object[0]);
            a(onFyberMarketplaceInitializedListener, OnFyberMarketplaceInitializedListener.FyberInitStatus.FAILED_NO_KITS_DETECTED, null);
            return;
        }
        a aVar = new a(context, onFyberMarketplaceInitializedListener);
        f1994d = aVar;
        IAConfigManager.addListener(aVar);
        if (z) {
            IAConfigManager iAConfigManager = IAConfigManager.M;
            iAConfigManager.c = str;
            Map<String, com.fyber.inneractive.sdk.config.z> map = iAConfigManager.a;
            if (map != null) {
                map.clear();
            }
            Map<String, a0> map2 = iAConfigManager.b;
            if (map2 != null) {
                map2.clear();
            }
            iAConfigManager.f1934e = null;
            iAConfigManager.f1933d = "";
            IAConfigManager.a();
        } else {
            Context applicationContext3 = context.getApplicationContext();
            IAConfigManager iAConfigManager2 = IAConfigManager.M;
            if (!iAConfigManager2.h) {
                iAConfigManager2.v = new com.fyber.inneractive.sdk.config.e(context, applicationContext3);
                s0 s0Var = new s0();
                iAConfigManager2.y = s0Var;
                s0Var.b = applicationContext3.getApplicationContext();
                m.a(new r0(s0Var));
                y yVar = iAConfigManager2.s;
                if (!yVar.b) {
                    yVar.b = true;
                    for (int i2 = 0; i2 < 6; i2++) {
                        yVar.f2133d.submit(yVar.f2134e);
                    }
                }
                com.fyber.inneractive.sdk.web.z.c.getClass();
                iAConfigManager2.D = new d();
                j jVar = new j(applicationContext3);
                iAConfigManager2.u = jVar;
                iAConfigManager2.w = new k(jVar);
                jVar.b();
                com.fyber.inneractive.sdk.network.c cVar = iAConfigManager2.H;
                Application application = (Application) applicationContext3.getApplicationContext();
                if (!cVar.f2104g) {
                    cVar.f2104g = true;
                    cVar.c.start();
                    cVar.f2101d = new i0(cVar.c.getLooper(), cVar);
                    cVar.a(30);
                }
                application.registerActivityLifecycleCallbacks(new com.fyber.inneractive.sdk.network.d(cVar));
                iAConfigManager2.u.c.add(new com.fyber.inneractive.sdk.config.m(iAConfigManager2));
                iAConfigManager2.z = new com.fyber.inneractive.sdk.config.global.a(new r());
                IAlog.a("Initializing config manager", new Object[0]);
                IAlog.a("Config manager: lib name = %s", o2.f6459e);
                IAlog.a("Config manager: app version = %s", "8.2.4");
                com.fyber.inneractive.sdk.config.l lVar = l.b.a;
                if (lVar.a == null) {
                    lVar.a = applicationContext3;
                    new Thread(new com.fyber.inneractive.sdk.config.u(applicationContext3, lVar)).start();
                }
                if (!str.matches("[0-9]+")) {
                    IAlog.b("************************************************************************************************************************", new Object[0]);
                    IAlog.b("*************************************** APP ID Must contain only numbers ***********************************************", new Object[0]);
                    IAlog.b("*************************************** Are you sure that you are using the correct APP ID *****************************", new Object[0]);
                    IAlog.b("************************************************************************************************************************", new Object[0]);
                }
                iAConfigManager2.f1935f = applicationContext3;
                iAConfigManager2.c = str;
                iAConfigManager2.j = new InneractiveUserConfig();
                iAConfigManager2.h = true;
                f0 f0Var = iAConfigManager2.x;
                f0Var.getClass();
                com.fyber.inneractive.sdk.config.b bVar = new com.fyber.inneractive.sdk.config.b(f0Var);
                j jVar2 = IAConfigManager.M.u;
                if (!jVar2.f1964d) {
                    jVar2.c.add(bVar);
                }
                u0 u0Var = new u0(TimeUnit.MINUTES, r9.u.b.a("session_duration", 30, 1));
                bVar.c = u0Var;
                u0Var.f2745e = bVar.f1946f;
                f0Var.c.put("SESSION_STAMP", Long.toString(SystemClock.elapsedRealtime()));
                com.fyber.inneractive.sdk.cache.session.d dVar = new com.fyber.inneractive.sdk.cache.session.d(25, null);
                f0Var.a = dVar;
                m.a(new com.fyber.inneractive.sdk.cache.session.b(dVar));
                iAConfigManager2.B = new g0(new o(iAConfigManager2), iAConfigManager2.f1935f, new com.fyber.inneractive.sdk.config.c());
                m.a(new p(iAConfigManager2));
                try {
                    language = Locale.getDefault().getLanguage();
                    try {
                        IAlog.a("Available device language: %s", language);
                    } catch (Exception unused3) {
                    }
                } catch (Exception unused4) {
                    language = null;
                }
                iAConfigManager2.p = language;
                iAConfigManager2.E.a = applicationContext3;
            }
        }
        b.a.a = context.getApplicationContext();
        SharedPreferences sharedPreferences = context.getSharedPreferences("Fyber_Shared_File", 0);
        String string = sharedPreferences.getString("FyberExceptionKey", "empty");
        String string2 = sharedPreferences.getString("FyberDescriptionKey", "empty");
        String string3 = sharedPreferences.getString("FyberNameKey", "empty");
        String string4 = sharedPreferences.getString("FyberVersionKey", getVersion());
        IAlog.a(" name- %s   description - %s exception - %s", string3, string2, string);
        if (!string.contains("OutOfMemoryError") && !string.equals("empty") && !string2.equals("empty") && !string3.equals("empty")) {
            IAlog.a("Firing Event 999 for %s", string);
            s.a aVar2 = new s.a(com.fyber.inneractive.sdk.network.r.IA_UNCAUGHT_EXCEPTION, (InneractiveAdRequest) null, (e) null, (JSONArray) null);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("exception_name", string3);
                c2 = 1;
                c = 0;
            } catch (Exception unused5) {
                c = 0;
                c2 = 1;
                IAlog.e("Got exception adding param to json object: %s, %s", "exception_name", string3);
            }
            try {
                jSONObject.put("description", string2);
            } catch (Exception unused6) {
                Object[] objArr2 = new Object[2];
                objArr2[c] = "description";
                objArr2[c2] = string2;
                IAlog.e("Got exception adding param to json object: %s, %s", objArr2);
            }
            try {
                jSONObject.put("stack_trace", string);
            } catch (Exception unused7) {
                Object[] objArr3 = new Object[2];
                objArr3[c] = "stack_trace";
                objArr3[c2] = string;
                IAlog.e("Got exception adding param to json object: %s, %s", objArr3);
            }
            aVar2.f2120f.put(jSONObject);
            aVar2.a(string4);
            sharedPreferences.edit().remove("FyberExceptionKey").remove("FyberVersionKey").remove("FyberDescriptionKey").remove("FyberNameKey").apply();
        }
        Thread.setDefaultUncaughtExceptionHandler(new com.fyber.inneractive.sdk.external.a(sharedPreferences, Thread.getDefaultUncaughtExceptionHandler()));
        IAConfigManager iAConfigManager3 = IAConfigManager.M;
        iAConfigManager3.u.c.remove(b.a);
        iAConfigManager3.u.c.add(b.a);
    }

    @Deprecated
    public static boolean isCurrentDeviceSupportsVideo() {
        return true;
    }

    public static boolean isCurrentUserAChild() {
        return b.a.c;
    }

    @Deprecated
    public static void setDevPlatform(String str) {
        b.a.b = str;
    }

    public static void setGdprConsent(boolean z) {
        setGdprConsent(z, GdprConsentSource.Internal);
    }

    public static void setGdprConsent(boolean z, GdprConsentSource gdprConsentSource) {
        d dVar = IAConfigManager.M.D;
        if (dVar == null) {
            IAlog.e("setGdprConsent() was invoked, but Fyber SDK was not properly initialized", new Object[0]);
            return;
        }
        if (com.fyber.inneractive.sdk.util.l.a == null) {
            IAlog.e("SetGdprConsent(boolean) was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
            return;
        }
        dVar.a = Boolean.valueOf(z);
        if (!dVar.a("IAGDPRBool", z)) {
            IAlog.e("SetGdprConsent(boolean) was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
        }
        dVar.c = gdprConsentSource;
        if (dVar.a("IAGdprSource", gdprConsentSource.name())) {
            return;
        }
        IAlog.e("SetGdprConsent(boolean) was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
    }

    public static void setGdprConsentString(String str) {
        d dVar = IAConfigManager.M.D;
        if (dVar == null) {
            IAlog.e("setGdprConsentString() was invoked, but Fyber SDK was not properly initialized", new Object[0]);
            return;
        }
        if (com.fyber.inneractive.sdk.util.l.a == null) {
            IAlog.e("SetGdprConsentString() was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
            return;
        }
        dVar.b = str;
        if (dVar.a("IAGdprConsentData", str)) {
            return;
        }
        IAlog.e("SetGdprConsentString() was invoked, but the Inneractive SDK was not properly initialized, destroyed, or data is empty.", new Object[0]);
    }

    public static void setImpressionDataListener(OnGlobalImpressionDataListener onGlobalImpressionDataListener) {
        IAConfigManager.M.A.a = onGlobalImpressionDataListener;
    }

    @Deprecated
    public static void setKeywords(String str) {
        IAConfigManager.M.k = str;
    }

    public static void setLgpdConsent(boolean z) {
        d dVar = IAConfigManager.M.D;
        if (dVar == null) {
            IAlog.e("setLgpdConsent was invoked, but Fyber SDK was not properly initialized", new Object[0]);
            return;
        }
        if (com.fyber.inneractive.sdk.util.l.a == null) {
            IAlog.e("setLgpdConsentStatus was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
            return;
        }
        dVar.f1953f = Boolean.valueOf(z);
        if (dVar.a("IALgpdConsentStatus", z)) {
            return;
        }
        IAlog.e("setLgpdConsentStatus was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
    }

    public static void setLogLevel(int i) {
        IAlog.a = i;
    }

    public static void setMediationName(InneractiveMediationName inneractiveMediationName) {
        if (inneractiveMediationName != null) {
            IAConfigManager iAConfigManager = IAConfigManager.M;
            iAConfigManager.n = inneractiveMediationName;
            iAConfigManager.m = inneractiveMediationName.getKey();
        }
    }

    public static void setMediationName(String str) {
        IAConfigManager.M.m = str;
    }

    public static void setMediationVersion(String str) {
        if (str != null) {
            IAConfigManager.M.o = str;
        }
    }

    public static void setMuteVideo(boolean z) {
        IAConfigManager.M.l = z;
    }

    public static void setUSPrivacyString(String str) {
        d dVar = IAConfigManager.M.D;
        if (dVar == null) {
            IAlog.e("setUSPrivacyString() was invoked, but Fyber SDK was not properly initialized", new Object[0]);
            return;
        }
        if (com.fyber.inneractive.sdk.util.l.a == null) {
            IAlog.e("setUSPrivacyString() was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
            return;
        }
        dVar.f1952e = str;
        if (dVar.a("IACCPAConsentData", str)) {
            return;
        }
        IAlog.e("setUSPrivacyString() was invoked, but the Inneractive SDK was not properly initialized, destroyed, or data is empty.", new Object[0]);
    }

    public static void setUseLocation(boolean z) {
        IAConfigManager.M.getClass();
    }

    public static void setUserId(String str) {
        IAConfigManager iAConfigManager = IAConfigManager.M;
        if (com.fyber.inneractive.sdk.util.l.a == null) {
            IAlog.e("setUsedId() was invoked, but the Inneractive SDK was not properly initialized, or destroyed.", new Object[0]);
            return;
        }
        d dVar = iAConfigManager.D;
        dVar.getClass();
        if (com.fyber.inneractive.sdk.util.l.a != null) {
            dVar.b();
            if (TextUtils.isEmpty(str)) {
                dVar.f1951d = str;
                SharedPreferences sharedPreferences = dVar.h;
                if (sharedPreferences != null) {
                    sharedPreferences.edit().remove("keyUserID").apply();
                    return;
                }
                return;
            }
            if (str.length() > 256) {
                str = str.substring(0, 256);
            }
            SharedPreferences sharedPreferences2 = dVar.h;
            if (sharedPreferences2 != null) {
                dVar.f1951d = str;
                sharedPreferences2.edit().putString("keyUserID", str).apply();
            }
        }
    }

    public static void setUserParams(InneractiveUserConfig inneractiveUserConfig) {
        IAConfigManager.M.j = inneractiveUserConfig;
        IAlog.a("config manager: setUserParams called with: age:" + inneractiveUserConfig.getAge() + " gender: " + inneractiveUserConfig.getGender() + " zip: " + inneractiveUserConfig.getZipCode(), new Object[0]);
    }

    public static void useSecureConnections(boolean z) {
        IAConfigManager.M.r = z;
        IAlog.a("config manager: useSecureConnections called with: isSecured: + %s", Boolean.valueOf(z));
        if (com.fyber.inneractive.sdk.util.p.a() || z) {
            return;
        }
        IAlog.e("************************************************************************************************************************", new Object[0]);
        IAlog.e("*** useSecureConnections was set to false while secure traffic is enabled in the network security config", new Object[0]);
        IAlog.e("***  The traffic will be Secured  ", new Object[0]);
        IAlog.e("************************************************************************************************************************", new Object[0]);
    }

    public static boolean wasInitialized() {
        return b.a.a != null;
    }

    public Context getAppContext() {
        return this.a;
    }

    @Override // com.fyber.inneractive.sdk.config.j.b
    public void onGlobalConfigChanged(j jVar, i iVar) {
        if (iVar == null || !iVar.a(GLOBAL_CONFIG_PARAM_FIRST_INIT_EVENT, false)) {
            return;
        }
        m.b.post(new com.fyber.inneractive.sdk.external.b(this));
    }
}
