package com.bytedance.sdk.openadsdk.api.init;

import android.app.Application;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutManager;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.bykv.vk.openvk.component.video.api.f.c;
import com.bytedance.sdk.component.adexpress.a.b.d;
import com.bytedance.sdk.component.b;
import com.bytedance.sdk.component.g.e;
import com.bytedance.sdk.component.g.f;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.g.i;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.widget.PangleWebView;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.InitConfig;
import com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory;
import com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory;
import com.bytedance.sdk.openadsdk.api.factory.SDKTypeConfig;
import com.bytedance.sdk.openadsdk.core.k;
import com.bytedance.sdk.openadsdk.core.l;
import com.bytedance.sdk.openadsdk.core.m;
import com.bytedance.sdk.openadsdk.core.nativeexpress.j;
import com.bytedance.sdk.openadsdk.core.settings.o;
import com.bytedance.sdk.openadsdk.core.v;
import com.bytedance.sdk.openadsdk.j.a;
import com.bytedance.sdk.openadsdk.m.a;
import com.bytedance.sdk.openadsdk.n.a.g;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.n;
import com.bytedance.sdk.openadsdk.utils.t;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PAGSdk {
    public static final int INIT_LOCAL_FAIL_CODE = 4000;
    private static long a;

    public interface PAGInitCallback {
        void fail(int i, String str);

        void success();
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            b.a.a(aa.d());
        }
        aa.a(new h("tt_init_memory_data") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.1
            @Override // java.lang.Runnable
            public void run() {
                PAGInitHelper.initMemoryData();
            }
        });
        l.a(System.currentTimeMillis());
        l.b();
        SSWebView.setWebViewProvider(new SSWebView.c() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.2
            @Override // com.bytedance.sdk.component.widget.SSWebView.c
            public WebView createWebView(Context context, AttributeSet attributeSet, int i) {
                if (!(context instanceof MutableContextWrapper)) {
                    context = context.getApplicationContext();
                }
                try {
                    return i == 0 ? new PangleWebView(context, attributeSet) : new PangleWebView(context, attributeSet, i);
                } catch (Exception unused) {
                    return i == 0 ? new PangleWebView(context, attributeSet) : new PangleWebView(context, attributeSet, i);
                }
            }
        });
        a = 0L;
    }

    private static void a(final Context context, final boolean z, final InitConfig initConfig, final long j, final long j2) {
        com.bytedance.sdk.openadsdk.j.b.a();
        com.bytedance.sdk.openadsdk.j.b.a("pangle_sdk_init", false, new a() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.8
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    boolean zC = com.bytedance.sdk.openadsdk.core.h.b().c();
                    jSONObject.put("duration", j);
                    jSONObject.put("sdk_init_time", j2);
                    jSONObject.put("is_async", true);
                    jSONObject.put("is_multi_process", initConfig.isSupportMultiProcess());
                    jSONObject.put("is_debug", PAGSdk.b(initConfig));
                    jSONObject.put("is_use_texture_view", initConfig.isUseTextureView());
                    jSONObject.put("is_activate_init", zC);
                    jSONObject.put("minSdkVersion", ac.k(context));
                    jSONObject.put("targetSdkVersion", ac.j(context));
                    jSONObject.put("apm_is_init", ApmHelper.isIsInit());
                    jSONObject.put("is_success", z);
                    com.bytedance.sdk.openadsdk.core.h.b().b(false);
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.l.c("TTAD.PAGSdk", "run: ", e2);
                }
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("pangle_sdk_init").b(jSONObject.toString());
            }
        });
    }

    private static void a(InitConfig initConfig, PAGInitCallback pAGInitCallback) {
        l.a(2);
        if (pAGInitCallback != null) {
            if (initConfig instanceof PAGConfig) {
                b(4000, "resources not found, if you use aab please call PAGConfig.setPackageName");
            } else {
                b(4000, "resources not found, if you use aab please call TTAdConfig.setPackageName");
            }
        }
    }

    public static void addPAGInitCallback(PAGInitCallback pAGInitCallback) {
        if (pAGInitCallback != null && l.d() == 0) {
            PAGInitHelper.CALLBACK_LIST.add(pAGInitCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(int i, String str) {
        l.a(2);
        try {
            List<PAGInitCallback> list = PAGInitHelper.CALLBACK_LIST;
            synchronized (list) {
                Iterator<PAGInitCallback> it = list.iterator();
                while (it.hasNext()) {
                    PAGInitCallback next = it.next();
                    if (next != null) {
                        it.remove();
                        next.fail(i, str);
                    }
                }
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.d(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, InitConfig initConfig) {
        long jElapsedRealtime;
        try {
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.c("TTAD.PAGSdk", "init Pangle throwable " + th.getMessage());
            com.bytedance.sdk.component.utils.l.e("TTAD.PAGSdk", th.getMessage());
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - a;
            b(4000, th.getMessage());
            jElapsedRealtime = jElapsedRealtime2;
        }
        if (isInitSuccess()) {
            d();
            return;
        }
        e(context, initConfig);
        o.aj().u();
        jElapsedRealtime = SystemClock.elapsedRealtime() - a;
        d();
        f(context, initConfig);
        long jElapsedRealtime3 = SystemClock.elapsedRealtime() - a;
        a(context, isInitSuccess(), initConfig, jElapsedRealtime3, jElapsedRealtime);
        com.bytedance.sdk.component.utils.l.b("TTAD.PAGSdk", "init Pangle exec init sdk sdkInitTime=", Long.valueOf(jElapsedRealtime), " duration=", Long.valueOf(jElapsedRealtime3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final Context context, final InitConfig initConfig, PAGInitCallback pAGInitCallback) {
        Context applicationContext;
        a = SystemClock.elapsedRealtime();
        com.bytedance.sdk.openadsdk.core.o.a(context);
        if (pAGInitCallback != null) {
            List<PAGInitCallback> list = PAGInitHelper.CALLBACK_LIST;
            synchronized (list) {
                if (!list.contains(pAGInitCallback)) {
                    list.add(pAGInitCallback);
                    if (l.d() == 3) {
                        return;
                    }
                }
            }
        }
        if (isInitSuccess()) {
            d();
            return;
        }
        l.a(3);
        if (context == null) {
            b(4000, "Context is null, please check. ");
            return;
        }
        if (!(context instanceof Application) && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        if (initConfig == null) {
            b(4000, "PAGConfig is null, please check.");
            return;
        }
        d(context, initConfig);
        ApmHelper.initApm(context, initConfig);
        try {
            com.bytedance.sdk.openadsdk.core.h.a(new k() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.3
                @Override // com.bytedance.sdk.openadsdk.core.k
                public void fail(int i, String str) {
                    PAGSdk.b(i, str);
                }

                public void success() {
                    PAGSdk.d();
                }
            });
            try {
                s.a(com.bytedance.sdk.openadsdk.core.o.a(), "tt_ad_logo_txt");
                if (s.d(context, "tt_ad_logo") == 0) {
                    a(initConfig, pAGInitCallback);
                    return;
                }
                if (isInitSuccess()) {
                    if (pAGInitCallback != null) {
                        d();
                        return;
                    }
                    return;
                }
                final com.bytedance.sdk.openadsdk.c.a aVar = new com.bytedance.sdk.openadsdk.c.a();
                SDKTypeConfig.setSdkTypeFactory(new ISDKTypeFactory() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.4
                    @Override // com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory
                    public IADTypeLoaderFactory createADTypeLoaderFactory(String str) {
                        return aVar;
                    }
                });
                if (!initConfig.isSupportMultiProcess()) {
                    b(context, initConfig);
                } else {
                    com.bytedance.sdk.openadsdk.multipro.aidl.a.a().a(new com.bytedance.sdk.openadsdk.multipro.aidl.b() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.5
                        @Override // com.bytedance.sdk.openadsdk.multipro.aidl.b
                        public void onServiceConnected() {
                            l.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.5.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                    PAGSdk.b(context, initConfig);
                                }
                            });
                        }
                    });
                    com.bytedance.sdk.openadsdk.multipro.aidl.a.a().c();
                }
            } catch (Throwable unused) {
                a(initConfig, pAGInitCallback);
            }
        } catch (Throwable unused2) {
            b(4000, "Internal Error, setting exception. ");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(InitConfig initConfig) {
        return ((PAGConfig) initConfig).getDebugLog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c() {
        ShortcutManager shortcutManager;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                Context contextA = com.bytedance.sdk.openadsdk.core.o.a();
                if (contextA == null || (shortcutManager = (ShortcutManager) contextA.getSystemService(ShortcutManager.class)) == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.h.b().a(shortcutManager.isRequestPinShortcutSupported());
            } catch (Throwable unused) {
            }
        }
    }

    private static void c(Context context, InitConfig initConfig) {
        l.a = true;
        v.a().a(initConfig.getAppId()).b(initConfig.getCoppa()).c(initConfig.getGdpr()).d(initConfig.getCcpa()).f(initConfig.getAppIconId()).a(initConfig.getTitleBarTheme()).a(initConfig.isUseTextureView());
        com.bytedance.sdk.openadsdk.core.h.w();
        if (initConfig instanceof PAGConfig) {
            v.a().e(((PAGConfig) initConfig).getDebugLog() ? 1 : 0);
        }
        try {
            if (b(initConfig)) {
                com.bytedance.sdk.component.utils.l.b();
                v.a().a();
                com.bytedance.sdk.openadsdk.utils.k.a();
                c.a();
            }
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.component.utils.h.a();
    }

    private static void c(InitConfig initConfig) {
        if (!TextUtils.isEmpty(initConfig.getData())) {
            com.bytedance.sdk.openadsdk.core.h.b().b(initConfig.getData());
        }
        com.bytedance.sdk.openadsdk.core.h.b().d(b(initConfig));
    }

    public static void closeMultiWebViewFileLock() {
        com.bytedance.sdk.openadsdk.multipro.c.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d() {
        l.a(1);
        try {
            List<PAGInitCallback> list = PAGInitHelper.CALLBACK_LIST;
            synchronized (list) {
                Iterator<PAGInitCallback> it = list.iterator();
                while (it.hasNext()) {
                    PAGInitCallback next = it.next();
                    if (next != null) {
                        it.remove();
                        next.success();
                    }
                }
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.d(th.getMessage());
        }
    }

    private static void d(Context context, InitConfig initConfig) {
        if (TextUtils.isEmpty(initConfig.getPackageName())) {
            s.a((String) null);
        } else {
            s.a(initConfig.getPackageName());
        }
        com.bytedance.sdk.openadsdk.core.o.a(context);
        if (initConfig.isSupportMultiProcess()) {
            com.bytedance.sdk.openadsdk.multipro.b.a();
        } else {
            com.bytedance.sdk.openadsdk.multipro.b.b();
        }
        j.a();
    }

    private static void e(Context context, InitConfig initConfig) {
        if (com.bytedance.sdk.openadsdk.core.settings.k.a()) {
            f.c(-1);
            e.a(new com.bytedance.sdk.component.g.j() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.6
                @Override // com.bytedance.sdk.component.g.j
                public i createThreadFactory(int i, String str) {
                    return new i(i, str) { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.6.1
                        @Override // com.bytedance.sdk.component.g.i, java.util.concurrent.ThreadFactory
                        public Thread newThread(Runnable runnable) {
                            int iAh = o.aj().ah();
                            if (iAh < -524288 || iAh >= 0) {
                                return super.newThread(runnable);
                            }
                            Thread thread = new Thread(this.a, runnable, this.b, iAh);
                            if (thread.isDaemon()) {
                                thread.setDaemon(false);
                            }
                            int i2 = this.c;
                            if (i2 > 10 || i2 < 1) {
                                this.c = 5;
                            }
                            thread.setPriority(this.c);
                            return thread;
                        }
                    };
                }
            });
            com.bytedance.sdk.openadsdk.multipro.c.a(context);
            ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) aa.d();
            com.bytedance.sdk.component.f.c.a.a(threadPoolExecutor);
            com.bytedance.sdk.openadsdk.d.b.a(threadPoolExecutor);
            l.b.set(true);
            try {
                com.bytedance.sdk.component.adexpress.a.a.a.a().a(new com.bytedance.sdk.openadsdk.f.a());
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.e("TTAD.PAGSdk", e2.getMessage());
            }
            c(initConfig);
            c(context, initConfig);
            c.a("PangleSDK-5604");
            com.bytedance.sdk.component.utils.l.a("PangleSDK-5604");
            com.bykv.vk.openvk.component.video.api.c.a(context, null);
            com.bykv.vk.openvk.component.video.api.c.a(2);
            com.bykv.vk.openvk.component.video.api.c.a(initConfig.isSupportMultiProcess());
            com.bykv.vk.openvk.component.video.api.c.a(com.bytedance.sdk.openadsdk.k.c.a().b().e());
            if (Build.VERSION.SDK_INT < 23) {
                com.bykv.vk.openvk.component.video.a.a.a(context);
            }
        }
    }

    private static void f(final Context context, final InitConfig initConfig) {
        SystemClock.elapsedRealtime();
        aa.a(new h("init_sync") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.7
            @Override // java.lang.Runnable
            public void run() {
                new com.bytedance.sdk.openadsdk.utils.i();
                d.a(n.a() * 10);
                com.bytedance.sdk.openadsdk.b.a.d.a(context, initConfig.isSupportMultiProcess());
                m.a().b();
                com.bytedance.sdk.openadsdk.core.e.c.a();
                com.bytedance.sdk.openadsdk.m.a.a(new a.InterfaceC0146a() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.7.1
                    public void onGdprChanged(int i) {
                        PAGConfig.setGDPRConsent(i);
                    }
                });
                t.u();
                o.a = o.c(context);
                g.b();
                com.bykv.vk.openvk.component.video.a.a.a(com.bytedance.sdk.openadsdk.core.o.d().ac());
                com.bykv.vk.openvk.component.video.a.a.a(CacheDirFactory.getICacheDir(0));
                com.bytedance.sdk.openadsdk.core.settings.e eVarD = com.bytedance.sdk.openadsdk.core.o.d();
                if (!eVarD.V()) {
                    synchronized (eVarD) {
                        if (!eVarD.V()) {
                            eVarD.b();
                            eVarD.D();
                        }
                    }
                }
                DeviceUtils.i();
                PAGInitHelper.maybeAsyncInitTask(context);
                PAGSdk.getBiddingToken();
                f.a(true);
                f.a(new com.bytedance.sdk.openadsdk.j.b.a());
                DeviceUtils.i(context);
                DeviceUtils.j(context);
                com.com.bytedance.overseas.sdk.a.b.a(context);
                com.bytedance.sdk.openadsdk.b.a.a.b();
                com.bytedance.sdk.openadsdk.b.a.f.a();
                com.bytedance.sdk.openadsdk.core.settings.c.a();
                com.bytedance.sdk.openadsdk.j.b.c();
                ac.m(context);
                com.bytedance.sdk.openadsdk.b.c.a();
                PAGSdk.c();
            }
        });
    }

    public static String getApplicationName(Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128));
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public static String getBiddingToken() {
        return (com.bytedance.sdk.openadsdk.core.o.a() == null || v.a() == null) ? "" : v.a().e();
    }

    public static String getBiddingToken(Context context) {
        com.bytedance.sdk.openadsdk.core.o.a(context);
        return getBiddingToken();
    }

    public static String getBiddingToken(Context context, String str) {
        com.bytedance.sdk.openadsdk.core.o.a(context);
        return getBiddingToken(str);
    }

    public static String getBiddingToken(String str) {
        return (com.bytedance.sdk.openadsdk.core.o.a() == null || v.a() == null) ? "" : v.a().c(str);
    }

    public static void getBiddingToken(final BiddingTokenCallback biddingTokenCallback) {
        if (biddingTokenCallback == null) {
            return;
        }
        aa.a(new h("getBiddingToken") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.10
            @Override // java.lang.Runnable
            public void run() {
                biddingTokenCallback.onBiddingTokenCollected(PAGSdk.getBiddingToken());
            }
        }, 10);
    }

    public static void getBiddingToken(final String str, final BiddingTokenCallback biddingTokenCallback) {
        if (biddingTokenCallback == null) {
            return;
        }
        aa.a(new h("getBiddingToken") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.11
            @Override // java.lang.Runnable
            public void run() {
                biddingTokenCallback.onBiddingTokenCollected(PAGSdk.getBiddingToken(str));
            }
        }, 10);
    }

    public static String getSDKVersion() {
        return v.a() != null ? v.a().d() : "";
    }

    public static void init(final Context context, final PAGConfig pAGConfig, final PAGInitCallback pAGInitCallback) {
        l.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.9
            @Override // java.lang.Runnable
            public void run() {
                PAGSdk.b(context, pAGConfig, pAGInitCallback);
            }
        });
    }

    public static boolean isInitSuccess() {
        return l.d() == 1;
    }

    public static boolean onlyVerityPlayable(String str, int i, String str2, String str3, String str4) {
        if (v.a() != null) {
            return v.a().a(str, i, str2, str3, str4);
        }
        return false;
    }

    public static void setAabPackageName(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        s.a(str);
    }

    public static void setAdRevenue(JSONObject jSONObject) {
        if (jSONObject != null && com.bytedance.sdk.openadsdk.core.o.d().r() && isInitSuccess()) {
            com.bytedance.sdk.openadsdk.j.b.a().a(jSONObject);
        }
    }
}
