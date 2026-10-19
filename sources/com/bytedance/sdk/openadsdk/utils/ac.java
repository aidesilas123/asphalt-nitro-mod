package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.webkit.ProxyConfig;
import com.bytedance.sdk.component.widget.SSWebView;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.drive.DriveFile;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ToolUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class ac {
    private static final ExecutorService a = Executors.newSingleThreadExecutor();
    private static volatile boolean b = false;
    private static final AtomicInteger c = new AtomicInteger(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile String f1860d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ReentrantLock f1861e = new ReentrantLock();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f1862f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f1863g = null;
    private static String h = null;
    private static final HashSet<String> i = new HashSet<>(Arrays.asList("Asia/Shanghai", "Asia/Urumqi", "Asia/Chongqing", "Asia/Harbin", "Asia/Kashgar"));
    private static final HashSet<String> j;

    /* JADX INFO: compiled from: ToolUtils.java */
    public static class a implements Callable<String> {
        private final int a;

        a(int i) {
            this.a = i;
        }

        private String b() {
            String property;
            Throwable th;
            try {
                property = System.getProperty("http.agent");
                if (property != null) {
                    try {
                        if (!"unKnow".equals(property)) {
                            if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
                                com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_ua_data", "android_system_ua", property);
                            } else {
                                com.bytedance.sdk.openadsdk.core.c.a(com.bytedance.sdk.openadsdk.core.o.a()).a("android_system_ua", property);
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        com.bytedance.sdk.component.utils.l.e("getUA", "e:" + th.getMessage());
                    }
                }
            } catch (Throwable th3) {
                property = "unKnow";
                th = th3;
            }
            return property;
        }

        private synchronized String c() {
            final String[] strArr;
            strArr = new String[]{"unKnow"};
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.ac.a.1
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ac.x();
                    com.bytedance.sdk.component.utils.l.b("getUA", "webview ua：" + strArr[0]);
                    countDownLatch.countDown();
                }
            });
            try {
                countDownLatch.await(2L, TimeUnit.SECONDS);
            } catch (InterruptedException e2) {
                com.bytedance.sdk.component.utils.l.e("TTAD.ToolUtils", e2.getMessage());
            }
            return strArr[0];
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public synchronized String call() throws Exception {
            String strB;
            strB = "unKnow";
            int i = this.a;
            if (i == 1) {
                strB = c();
            } else if (i == 2) {
                strB = b();
            }
            return strB;
        }
    }

    /* JADX INFO: compiled from: ToolUtils.java */
    public static class b {
        public final ComponentName a;
        public final int b;

        public b(ComponentName componentName, int i) {
            this.a = componentName;
            this.b = i;
        }
    }

    static {
        HashSet<String> hashSet = new HashSet<>();
        j = hashSet;
        hashSet.addAll(Arrays.asList("America/Eirunepe", "America/Rio_Branco", "America/Boa_Vista", "America/Campo_Grande", "America/Cuiaba", "America/Manaus", "America/Porto_Velho", "America/Araguaina", "America/Bahia", "America/Belem", "America/Fortaleza", "America/Maceio", "America/Recife", "America/Santarem", "America/Sao_Paulo", "America/Noronha"));
    }

    public static int a(String str) {
        str.hashCode();
        switch (str) {
            case "banner_ad":
                return 2;
            case "rewarded_video":
                return 7;
            case "open_ad":
            case "cache_splash_ad":
                return 4;
            case "fullscreen_interstitial_ad":
                return 5;
            case "interaction":
                return 3;
            default:
                return 1;
        }
    }

    public static Intent a(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return null;
        }
        if (!launchIntentForPackage.hasCategory("android.intent.category.LAUNCHER")) {
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
        }
        launchIntentForPackage.setPackage(null);
        launchIntentForPackage.addFlags(2097152);
        launchIntentForPackage.addFlags(DriveFile.MODE_READ_ONLY);
        return launchIntentForPackage;
    }

    @NonNull
    public static b a(Context context, Intent intent) {
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
        if (listQueryIntentActivities == null || listQueryIntentActivities.isEmpty()) {
            return new b(null, 0);
        }
        ActivityInfo activityInfo = listQueryIntentActivities.get(0).activityInfo;
        return (activityInfo == null || TextUtils.isEmpty(activityInfo.packageName) || TextUtils.isEmpty(activityInfo.name)) ? new b(null, listQueryIntentActivities.size()) : new b(new ComponentName(activityInfo.packageName, activityInfo.name), listQueryIntentActivities.size());
    }

    public static String a(int i2) {
        if (i2 == 1) {
            return "embeded_ad";
        }
        if (i2 == 2) {
            return "banner_ad";
        }
        if (i2 == 3) {
            return "interaction";
        }
        if (i2 == 4) {
            return "open_ad";
        }
        if (i2 == 5) {
            return "fullscreen_interstitial_ad";
        }
        if (i2 != 7) {
            return null;
        }
        return "rewarded_video";
    }

    public static String a(Context context) {
        String strB = com.bytedance.sdk.openadsdk.core.c.a(context).b("total_memory", (String) null);
        if (strB == null || b(strB) <= 0) {
            strB = c("MemTotal");
            if (b(strB) <= 0) {
                strB = h();
            }
            com.bytedance.sdk.openadsdk.core.c.a(context).a("total_memory", strB);
        }
        return strB;
    }

    public static String a(com.bytedance.sdk.openadsdk.core.model.q qVar) {
        if (qVar == null) {
            return null;
        }
        try {
            return c(qVar.aS());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String a(@NonNull String str, boolean z) {
        String str2;
        String strG = com.bytedance.sdk.openadsdk.core.o.d().G();
        if (!TextUtils.isEmpty(strG)) {
            String strA = "https://" + strG + str;
            if (z.a() && !z) {
                strA = z.a(strA);
            }
            return z ? l(strA) : strA;
        }
        int iP = p();
        if (iP == 1) {
            str2 = "https://pangolin16.sgsnssdk.com" + str;
        } else if (iP == 2) {
            str2 = "https://pangolin16.sgsnssdk.com" + str;
        } else {
            str2 = "https://pangolin16.isnssdk.com" + str;
        }
        return !z ? z.a(str2) : l(str2);
    }

    public static JSONObject a(com.bytedance.sdk.openadsdk.core.model.q qVar, long j2, com.bykv.vk.openvk.component.video.api.a aVar) {
        if (qVar == null) {
            return new JSONObject();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, qVar.Y());
            jSONObject.put("buffers_time", j2);
            com.bykv.vk.openvk.component.video.api.c.b bVarK = qVar.K();
            if (bVarK != null) {
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_SIZE, bVarK.e());
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_RESOLUTION, bVarK.i());
            }
            a(jSONObject, aVar);
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.l.c("TTAD.ToolUtils", "getVideoAction json error", e2);
        }
        return jSONObject;
    }

    public static JSONObject a(boolean z, com.bytedance.sdk.openadsdk.core.model.q qVar, long j2, long j3, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, qVar.Y());
            jSONObject.put("load_time", j2);
            com.bykv.vk.openvk.component.video.api.c.b bVarK = qVar.K();
            if (bVarK != null) {
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_SIZE, bVarK.e());
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_RESOLUTION, bVarK.i());
            }
            if (!z) {
                jSONObject.put("error_code", j3);
                if (TextUtils.isEmpty(str)) {
                    str = "unknown";
                }
                jSONObject.put("error_message", str);
            }
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.l.c("TTAD.ToolUtils", "getVideoDownload json error", e2);
        }
        return jSONObject;
    }

    public static void a(@NonNull com.bytedance.sdk.openadsdk.core.model.q qVar, @NonNull View view) {
    }

    public static void a(com.bytedance.sdk.openadsdk.core.model.q qVar, String str) {
        if (qVar != null) {
            try {
                String strP = qVar.P();
                if (TextUtils.isEmpty(strP) && qVar.ab() != null && qVar.ab().c() == 1 && !TextUtils.isEmpty(qVar.ab().b())) {
                    strP = qVar.ab().b();
                }
                String str2 = strP;
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.z.a(com.bytedance.sdk.openadsdk.core.o.a(), str2, qVar, a(str), str, false);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(String str, String str2, Context context) {
        if (TextUtils.isEmpty(str2) || !i(context)) {
            return;
        }
        int i2 = 3572;
        int length = str2.length();
        int i3 = 0;
        int i4 = 1;
        int i5 = length % 3572 == 0 ? length / 3572 : (length / 3572) + 1;
        while (i4 <= i5) {
            if (i2 >= length) {
                Log.d(str, i5 + "-" + i4 + CertificateUtil.DELIMITER + str2.substring(i3));
                return;
            }
            Log.d(str, i5 + "-" + i4 + CertificateUtil.DELIMITER + str2.substring(i3, i2));
            i4++;
            i3 = i2;
            i2 += 3572;
        }
    }

    public static void a(StringBuilder sb, String str, String str2) {
        int iIndexOf;
        if (sb == null || TextUtils.isEmpty(str) || (iIndexOf = sb.indexOf(str)) <= 0) {
            return;
        }
        sb.replace(iIndexOf, str.length() + iIndexOf, str2);
    }

    private static void a(JSONObject jSONObject, com.bykv.vk.openvk.component.video.api.a aVar) {
        if (jSONObject.has(CampaignEx.JSON_KEY_VIDEO_RESOLUTION) || aVar == null) {
            return;
        }
        try {
            jSONObject.put(CampaignEx.JSON_KEY_VIDEO_RESOLUTION, String.format(Locale.getDefault(), "%d×%d", Integer.valueOf(aVar.d()), Integer.valueOf(aVar.e())));
        } catch (Throwable unused) {
        }
    }

    public static boolean a() {
        return (com.bytedance.sdk.openadsdk.core.m.a() == null || com.bytedance.sdk.openadsdk.core.m.a().d()) ? false : true;
    }

    public static int b(Context context, Intent intent) {
        if (intent == null) {
            return 0;
        }
        try {
            return context.getPackageManager().queryIntentActivities(intent, 65536).size();
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static long b(String str) {
        try {
            return Long.parseLong(str);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static String b() {
        String str = "unKnow";
        com.bytedance.sdk.openadsdk.multipro.c.a(com.bytedance.sdk.openadsdk.core.o.a());
        try {
            String strB = com.bytedance.sdk.openadsdk.multipro.b.c() ? com.bytedance.sdk.openadsdk.multipro.d.a.b("sp_multi_ua_data", "android_system_ua", "unKnow") : com.bytedance.sdk.openadsdk.core.c.a(com.bytedance.sdk.openadsdk.core.o.a()).b("android_system_ua", "unKnow");
            if (strB != null && !"unKnow".equals(strB)) {
                return strB;
            }
            FutureTask futureTask = new FutureTask(new a(2));
            a.execute(futureTask);
            str = (String) futureTask.get(500L, TimeUnit.MILLISECONDS);
        } catch (Exception unused) {
        }
        com.bytedance.sdk.component.utils.l.e("getUA", " getAndroidSystemUA userAgent" + str);
        return str;
    }

    public static String b(int i2) {
        if (i2 == 1) {
            return "embeded_ad_landingpage";
        }
        if (i2 == 2) {
            return "banner_ad_landingpage";
        }
        if (i2 == 3) {
            return "interaction_landingpage";
        }
        if (i2 == 4) {
            return "splash_ad_landingpage";
        }
        if (i2 == 5) {
            return "fullscreen_interstitial_ad";
        }
        if (i2 != 7) {
            return null;
        }
        return "rewarded_video_landingpage";
    }

    public static String b(Context context) {
        return com.bytedance.sdk.openadsdk.core.c.a(context).b("total_memory", "0");
    }

    public static boolean b(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0) != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean b(com.bytedance.sdk.openadsdk.core.model.q qVar) {
        if (qVar == null) {
            return true;
        }
        int iB = com.bytedance.sdk.openadsdk.core.o.d().b(qVar.aZ());
        int iC = com.bytedance.sdk.component.utils.o.c(com.bytedance.sdk.openadsdk.core.o.a());
        if (iB == 1) {
            return d(iC);
        }
        if (iB == 2) {
            return e(iC) || d(iC) || f(iC);
        }
        if (iB != 3) {
            return iB != 5 || d(iC) || f(iC);
        }
        return false;
    }

    public static long c(Context context) {
        return com.bytedance.sdk.openadsdk.core.c.a(context).b("total_internal_storage", 0L).longValue();
    }

    public static String c() {
        if (!TextUtils.isEmpty(f1860d)) {
            return f1860d;
        }
        com.bytedance.sdk.openadsdk.multipro.c.a(com.bytedance.sdk.openadsdk.core.o.a());
        f1860d = com.bytedance.sdk.openadsdk.core.h.a("sdk_local_web_ua", 86400000L);
        if (TextUtils.isEmpty(f1860d)) {
            ReentrantLock reentrantLock = f1861e;
            try {
                if (reentrantLock.tryLock()) {
                    try {
                        if (Build.VERSION.SDK_INT < 17) {
                            aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.ac.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        if (TextUtils.isEmpty(ac.f1860d)) {
                                            SSWebView sSWebView = new SSWebView(com.bytedance.sdk.openadsdk.core.o.a());
                                            sSWebView.setWebViewClient(new SSWebView.a());
                                            String unused = ac.f1860d = sSWebView.getUserAgentString();
                                        }
                                    } catch (Exception e2) {
                                        com.bytedance.sdk.component.utils.l.c("TTAD.ToolUtils", "", e2);
                                    } catch (NoClassDefFoundError e3) {
                                        com.bytedance.sdk.component.utils.l.c("TTAD.ToolUtils", "", e3);
                                    }
                                }
                            });
                        } else if (TextUtils.isEmpty(f1860d)) {
                            f1860d = WebSettings.getDefaultUserAgent(com.bytedance.sdk.openadsdk.core.o.a());
                        }
                        com.bytedance.sdk.openadsdk.core.h.a("sdk_local_web_ua", f1860d);
                        reentrantLock.unlock();
                    } catch (Exception e2) {
                        com.bytedance.sdk.component.utils.l.c("TTAD.ToolUtils", "", e2);
                    } catch (NoClassDefFoundError e3) {
                        com.bytedance.sdk.component.utils.l.c("TTAD.ToolUtils", "", e3);
                    }
                }
            } finally {
                f1861e.unlock();
            }
        }
        return f1860d;
    }

    public static String c(int i2) {
        return i2 != 1 ? i2 != 2 ? (i2 == 3 || i2 == 4) ? "open_ad" : i2 != 7 ? i2 != 8 ? "embeded_ad" : "fullscreen_interstitial_ad" : "rewarded_video" : "interaction" : "banner_ad";
    }

    public static String c(String str) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        String line;
        try {
            fileReader = new FileReader(AndroidDynamicDeviceInfoDataSource.DIRECTORY_MEM_INFO);
            try {
                bufferedReader = new BufferedReader(fileReader, 4096);
                do {
                    try {
                        line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            com.bytedance.sdk.component.utils.l.e("TTAD.ToolUtils", th.getMessage());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused) {
                                }
                            }
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Exception unused2) {
                                }
                            }
                            return null;
                        } finally {
                        }
                    }
                } while (!line.contains(str));
                if (line == null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused3) {
                    }
                    try {
                        fileReader.close();
                    } catch (Exception unused4) {
                    }
                    return null;
                }
                String[] strArrSplit = line.split("\\s+");
                com.bytedance.sdk.component.utils.l.b("ToolUtils", "getTotalMemory = " + strArrSplit[1]);
                String str2 = strArrSplit[1];
                try {
                    bufferedReader.close();
                } catch (Exception unused5) {
                }
                try {
                    fileReader.close();
                } catch (Exception unused6) {
                }
                return str2;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
            bufferedReader = null;
        }
    }

    public static boolean c(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + Uri.encode(str)));
                if (!(context instanceof Activity)) {
                    intent.setFlags(DriveFile.MODE_READ_ONLY);
                }
                com.bytedance.sdk.component.utils.b.a(context, intent, null);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static long d(Context context) {
        return com.bytedance.sdk.openadsdk.core.c.a(context).b("free_internal_storage", 0L).longValue();
    }

    public static String d() {
        return r.a();
    }

    public static String d(String str) {
        return a(str, false);
    }

    public static boolean d(int i2) {
        return i2 == 4;
    }

    public static long e(Context context) {
        return com.bytedance.sdk.openadsdk.core.c.a(context).b("total_sdcard_storage", 0L).longValue();
    }

    public static synchronized String e() {
        Context contextA;
        if (!TextUtils.isEmpty(f1862f) || (contextA = com.bytedance.sdk.openadsdk.core.o.a()) == null) {
        } else {
            try {
                f1862f = contextA.getPackageName();
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.c("TTAD.ToolUtils", "ToolUtils getPackageName throws exception :", th);
            }
        }
        return f1862f;
    }

    public static String e(String str) {
        if (TextUtils.isEmpty(str)) {
            str = com.bytedance.sdk.openadsdk.core.o.d().H();
        }
        if (TextUtils.isEmpty(str)) {
            return p() == 2 ? "https://log.sgsnssdk.com/service/2/app_log/" : "https://log-mva.isnssdk.com/service/2/app_log/";
        }
        if (str.startsWith(ProxyConfig.MATCH_HTTP)) {
            return str;
        }
        return "https://" + str;
    }

    public static boolean e(int i2) {
        return i2 == 5;
    }

    public static int f(Context context) {
        return com.bytedance.sdk.openadsdk.core.c.a(context).b("is_root", -1);
    }

    public static synchronized String f() {
        if (!TextUtils.isEmpty(f1863g) || com.bytedance.sdk.openadsdk.core.o.a() == null) {
        } else {
            try {
                PackageInfo packageInfo = com.bytedance.sdk.openadsdk.core.o.a().getPackageManager().getPackageInfo(e(), 0);
                f1863g = String.valueOf(packageInfo.versionCode);
                h = packageInfo.versionName;
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.c("TTAD.ToolUtils", "ToolUtils getVersionCode throws exception :", th);
            }
        }
        return f1863g;
    }

    public static boolean f(int i2) {
        return i2 == 6;
    }

    public static boolean f(String str) {
        try {
            return Pattern.compile("[一-龥]").matcher(str).find();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int g(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 4) {
            return 1;
        }
        if (i2 == 5) {
            return 4;
        }
        if (i2 != 6) {
            return i2;
        }
        return 5;
    }

    public static synchronized String g() {
        if (!TextUtils.isEmpty(h) || com.bytedance.sdk.openadsdk.core.o.a() == null) {
        } else {
            try {
                PackageInfo packageInfo = com.bytedance.sdk.openadsdk.core.o.a().getPackageManager().getPackageInfo(e(), 0);
                f1863g = String.valueOf(packageInfo.versionCode);
                h = packageInfo.versionName;
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.c("TTAD.ToolUtils", "ToolUtils getVersionName throws exception :", th);
            }
        }
        return h;
    }

    public static String g(@NonNull Context context) {
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? context.getResources().getConfiguration().getLocales().get(0) : Locale.getDefault();
            return locale.getLanguage() + "_" + locale.getCountry();
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.e("TTAD.ToolUtils", e2.toString());
            return "";
        }
    }

    public static String g(String str) {
        return TextUtils.isEmpty(str) ? "" : str.contains("KLLK") ? str.replace("KLLK", "OPPO") : str.contains("kllk") ? str.replace("kllk", "oppo") : "";
    }

    public static String h() {
        try {
            ActivityManager activityManager = (ActivityManager) com.bytedance.sdk.openadsdk.core.o.a().getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            long j2 = memoryInfo.totalMem;
            if (j2 > 0) {
                return String.valueOf(j2 / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void h(final String str) {
        com.bytedance.sdk.openadsdk.j.b.a();
        com.bytedance.sdk.openadsdk.j.b.a("reportMultiLog", false, new com.bytedance.sdk.openadsdk.j.a() { // from class: com.bytedance.sdk.openadsdk.utils.ac.2
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                if (ac.b || !com.bytedance.sdk.openadsdk.core.o.d().W()) {
                    return null;
                }
                boolean unused = ac.b = true;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("error", str);
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("reportMultiLog").b(jSONObject.toString());
            }
        });
    }

    public static boolean h(int i2) {
        if (i2 <= 0) {
            return false;
        }
        if (i2 >= 100) {
            return true;
        }
        int iNextInt = new Random(System.currentTimeMillis()).nextInt(100) + 1;
        com.bytedance.sdk.component.utils.l.b("TTAD.ToolUtils", "isMatchProbability: " + iNextInt + "/" + i2);
        return iNextInt <= i2;
    }

    public static boolean h(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("params context is null");
        }
        boolean z = context.getApplicationInfo().targetSdkVersion >= 30 && Build.VERSION.SDK_INT >= 30 && context.checkSelfPermission("android.permission.QUERY_ALL_PACKAGES") != 0;
        StringBuilder sb = new StringBuilder();
        sb.append("can query all package = ");
        sb.append(!z);
        com.bytedance.sdk.component.utils.l.c("TTAD.ToolUtils", sb.toString());
        return !z;
    }

    public static String i() {
        return c("MemTotal");
    }

    public static boolean i(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean i(String str) {
        if (com.bytedance.sdk.openadsdk.core.l.e()) {
            return true;
        }
        com.bytedance.sdk.component.utils.l.d("You must use method '" + str + "' after initialization, please check.");
        return false;
    }

    public static long j() {
        long blockSize;
        long blockCount;
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                blockCount = statFs.getBlockCountLong();
            } else {
                blockSize = statFs.getBlockSize();
                blockCount = statFs.getBlockCount();
            }
            return blockCount * blockSize;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static long j(Context context) {
        int i2 = -1;
        try {
            i2 = context.getApplicationInfo().targetSdkVersion;
            com.bytedance.sdk.component.utils.l.b("TTAD.ToolUtils", "targetSdkVersion = ", Integer.valueOf(i2));
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("TTAD.ToolUtils", th.getMessage());
        }
        return i2;
    }

    public static void j(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return;
        }
        com.bytedance.sdk.component.utils.l.d("You should use method '" + str + "' on the asynchronous thread,it may cause anr, please check.");
    }

    public static long k() {
        try {
            if (!y()) {
                return 0L;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("TTAD.ToolUtils", th.getMessage());
            return 0L;
        }
    }

    public static long k(Context context) {
        int i2 = -1;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                i2 = context.getApplicationInfo().minSdkVersion;
                com.bytedance.sdk.component.utils.l.b("TTAD.ToolUtils", "minSdkVersion = ", Integer.valueOf(i2));
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("TTAD.ToolUtils", th.getMessage());
        }
        return i2;
    }

    public static int l(Context context) {
        return g(com.bytedance.sdk.component.utils.v.a(context, 0L));
    }

    private static String l(String str) {
        try {
            return Uri.parse(str).buildUpon().appendQueryParameter("aid", "1371").appendQueryParameter("device_platform", "android").appendQueryParameter("version_code", f()).toString();
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.e("TTAD.ToolUtils", e2.getMessage());
            return str;
        }
    }

    public static boolean l() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String m() {
        return String.format("https://%s", "log.byteoversea.com/service/2/app_log_test/");
    }

    public static void m(Context context) {
        try {
            AtomicInteger atomicInteger = c;
            if (atomicInteger.get() != 0) {
                return;
            }
            AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            boolean zIsEnabled = accessibilityManager.isEnabled();
            boolean zIsTouchExplorationEnabled = accessibilityManager.isTouchExplorationEnabled();
            if (zIsEnabled && zIsTouchExplorationEnabled) {
                atomicInteger.set(1);
                com.bytedance.sdk.openadsdk.j.b.a().b();
            } else {
                atomicInteger.set(2);
            }
        } catch (Exception unused) {
            c.set(2);
        }
    }

    private static boolean m(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String n() {
        int iP = p();
        return (iP == 1 || iP == 2) ? "https://sf16-static.i18n-pglstatp.com/obj/ad-pattern-sg/renderer/package_sg.json" : "https://sf16-static.i18n-pglstatp.com/obj/ad-pattern-va/renderer/package_va.json";
    }

    public static String o() {
        try {
            return TimeZone.getDefault().getID();
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.e("TTAD.ToolUtils", e2.toString());
            return "";
        }
    }

    public static int p() {
        try {
            String id = TimeZone.getDefault().getID();
            if (i.contains(id)) {
                return 2;
            }
            if (id != null && id.startsWith("Asia/")) {
                return 2;
            }
            if (id != null && id.startsWith("Europe/")) {
                return 4;
            }
            if (id != null && id.startsWith("America/")) {
                if (!j.contains(id)) {
                    return 5;
                }
            }
            return 3;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("TTAD.ToolUtils", th.toString());
            return 0;
        }
    }

    public static int q() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / 3600000;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    public static String r() {
        int i2 = -q();
        if (i2 >= 0) {
            return "Etc/GMT+" + i2;
        }
        return "Etc/GMT" + i2;
    }

    public static boolean s() {
        return c.get() == 1;
    }

    public static boolean t() {
        return m("androidx.appcompat.app.AppCompatActivity") || m("androidx.core.app.CoreComponentFactory") || m("androidx.fragment.app.Fragment") || m("androidx.lifecycle.LiveData") || m("androidx.annotation.Keep");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String x() {
        try {
            WebView webView = new WebView(com.bytedance.sdk.openadsdk.core.o.a());
            webView.setWebViewClient(new SSWebView.a());
            String userAgentString = webView.getSettings().getUserAgentString();
            if (userAgentString != null && !"unKnow".equals(userAgentString)) {
                if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
                    com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_ua_data", "webview_ua", userAgentString);
                } else {
                    com.bytedance.sdk.openadsdk.core.c.a(com.bytedance.sdk.openadsdk.core.o.a()).a("webview_ua", userAgentString);
                }
            }
            return userAgentString;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("getUA", "e:" + th.getMessage());
            return "unKnow";
        }
    }

    private static boolean y() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Throwable unused) {
            return false;
        }
    }
}
