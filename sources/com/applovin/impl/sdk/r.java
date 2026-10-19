package com.applovin.impl.sdk;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdk;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.measurement.AppMeasurement;
import com.json.o2;
import com.json.v4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.lang.Thread;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class r {
    private static final int aEA = (int) TimeUnit.SECONDS.toMillis(30);
    private final ExecutorService aEB;
    private final Map<a, Long> aEC = Collections.synchronizedMap(new HashMap());
    protected final x logger;
    protected final n sdk;

    public enum a {
        ANR("anr"),
        BLACK_VIEW("black_view"),
        CRASH(AppMeasurement.CRASH_ORIGIN),
        TASK_EXCEPTION("task_exception"),
        CAUGHT_EXCEPTION("caught_exception"),
        WEB_VIEW_ERROR("web_view_error"),
        INTEGRATION_ERROR("integration_error"),
        TEMPLATE_ERROR("template_error"),
        FILE_ERROR("file_error"),
        NETWORK_ERROR("network_error");

        private final String Jn;

        a(String str) {
            this.Jn = str;
        }

        public String tU() {
            return this.Jn;
        }
    }

    public r(final n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        this.aEB = Executors.newFixedThreadPool(1, new ThreadFactory() { // from class: com.applovin.impl.sdk.r.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "AppLovinSdk:error_reporter");
                thread.setDaemon(true);
                thread.setPriority(((Integer) nVar.a(com.applovin.impl.sdk.c.b.aQK)).intValue());
                thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.applovin.impl.sdk.r.1.1
                    @Override // java.lang.Thread.UncaughtExceptionHandler
                    public void uncaughtException(@NonNull Thread thread2, @NonNull Throwable th) {
                        nVar.BN();
                        if (x.Fn()) {
                            nVar.BN().c("ErrorReporter", "Caught unhandled exception", th);
                        }
                    }
                });
                return thread;
            }
        });
    }

    private boolean a(a aVar, long j) {
        Long l = this.aEC.get(aVar);
        return System.currentTimeMillis() - (l != null ? l.longValue() : -1L) < j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void d(a aVar, @Nullable Map<String, String> map) {
        if (x.Fn()) {
            this.logger.f("ErrorReporter", "Reporting " + aVar.tU() + " error...");
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) c(aVar, map).openConnection();
            int i = aEA;
            httpURLConnection.setConnectTimeout(i);
            httpURLConnection.setReadTimeout(i);
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setDoOutput(false);
            httpURLConnection.setRequestMethod("POST");
            int responseCode = httpURLConnection.getResponseCode();
            if (x.Fn()) {
                this.logger.f("ErrorReporter", aVar.tU() + " reported with code " + responseCode);
            }
            this.aEC.put(aVar, Long.valueOf(System.currentTimeMillis()));
        } catch (Throwable th) {
            if (x.Fn()) {
                this.logger.b("ErrorReporter", "Failed to report " + aVar.tU(), th);
            }
        }
    }

    private URL c(a aVar, @Nullable Map<String, String> map) throws MalformedURLException, UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder("https://ms.applovin.com/1.0/sdk/error");
        sb.append("?");
        Iterator<Map.Entry<String, String>> it = d(aVar.tU(), map).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            String strEncode = URLEncoder.encode(next.getKey(), C.UTF8_NAME);
            String strEncode2 = URLEncoder.encode(next.getValue(), C.UTF8_NAME);
            sb.append(strEncode);
            sb.append(o2.i.b);
            sb.append(strEncode2);
            if (it.hasNext()) {
                sb.append(o2.i.c);
            }
        }
        return new URL(sb.toString());
    }

    private Map<String, String> d(String str, @Nullable Map<String, String> map) {
        HashMap map2 = new HashMap();
        map2.put("type", str);
        if (this.sdk.BV() != null) {
            map2.put("platform", this.sdk.BU().Ed());
        } else {
            map2.put("platform", this.sdk.BS().CX());
        }
        map2.put("applovin_random_token", this.sdk.BB());
        map2.put("compass_random_token", this.sdk.BA());
        map2.put("model", Build.MODEL);
        map2.put("brand", Build.MANUFACTURER);
        map2.put("brand_name", Build.BRAND);
        map2.put("hardware", Build.HARDWARE);
        map2.put("revision", Build.DEVICE);
        map2.put(v4.x, Build.VERSION.RELEASE);
        map2.put("api_level", String.valueOf(Build.VERSION.SDK_INT));
        map2.put("sdk_version", String.valueOf(AppLovinSdk.VERSION));
        map2.put("aei", String.valueOf(this.sdk.a(com.applovin.impl.sdk.c.b.aKC)));
        map2.put("mei", String.valueOf(this.sdk.a(com.applovin.impl.sdk.c.b.aKD)));
        i(map2);
        j(map2);
        if (map != null) {
            map2.putAll(map);
        }
        return map2;
    }

    private void i(Map<String, String> map) {
        String packageName;
        PackageInfo packageInfo;
        PackageManager packageManager;
        try {
            packageManager = n.getApplicationContext().getPackageManager();
            packageName = n.getApplicationContext().getPackageName();
        } catch (Throwable unused) {
            packageName = "";
        }
        try {
            packageInfo = packageManager.getPackageInfo(packageName, 0);
        } catch (Throwable unused2) {
            packageInfo = null;
        }
        map.put("package_name", packageName);
        map.put("app_version", packageInfo != null ? packageInfo.versionName : "");
        map.put("app_version_code", String.valueOf(packageInfo != null ? packageInfo.versionCode : 0));
    }

    private void j(Map<String, String> map) {
        Object objFd = this.sdk.Cf().Fd();
        if (objFd instanceof com.applovin.impl.sdk.ad.e) {
            map.put("fs_ad_network", "AppLovin");
            map.put("fs_ad_creative_id", Long.toString(((com.applovin.impl.sdk.ad.e) objFd).getAdIdNumber()));
        } else if (!(objFd instanceof com.applovin.impl.mediation.b.a)) {
            map.put("fs_ad_network", "None");
            map.put("fs_ad_creative_id", "None");
        } else {
            com.applovin.impl.mediation.b.a aVar = (com.applovin.impl.mediation.b.a) objFd;
            map.put("fs_ad_network", aVar.getNetworkName());
            map.put("fs_ad_creative_id", aVar.getCreativeId());
        }
    }

    public void a(a aVar, String str, @Nullable String str2) {
        HashMap map = new HashMap(2);
        map.put(ShareConstants.FEED_SOURCE_PARAM, str);
        map.put("details", StringUtils.emptyIfNull(str2));
        a(aVar, map);
    }

    public void a(a aVar, @Nullable Map<String, String> map) {
        a(aVar, map, 0L);
    }

    public void a(final a aVar, @Nullable final Map<String, String> map, long j) {
        if (a(aVar, j)) {
            return;
        }
        try {
            if (com.applovin.impl.sdk.utils.u.Lx()) {
                this.aEB.execute(new Runnable() { // from class: com.applovin.impl.sdk.r1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(aVar, map);
                    }
                });
            } else {
                d(aVar, map);
            }
        } catch (Throwable th) {
            if (x.Fn()) {
                this.logger.b("ErrorReporter", "Failed to report " + aVar.tU(), th);
            }
        }
    }

    public void b(String str, String str2, int i) {
        if (i < 400) {
            return;
        }
        HashMap map = new HashMap(3);
        map.put(ShareConstants.FEED_SOURCE_PARAM, str2);
        map.put("details", StringUtils.emptyIfNull(str));
        map.put("top_main_method", String.valueOf(i));
        a(a.NETWORK_ERROR, map);
    }

    public void d(String str, @Nullable String str2, Throwable th) {
        HashMap map = new HashMap(3);
        map.put(ShareConstants.FEED_SOURCE_PARAM, str);
        map.put("details", StringUtils.emptyIfNull(str2));
        map.put("top_main_method", th.toString());
        a(a.CAUGHT_EXCEPTION, map);
    }

    public void g(String str, Throwable th) {
        d(str, null, th);
    }
}
