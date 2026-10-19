package com.json;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.json.h6;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import com.json.sdk.controller.FeaturesManager;
import com.json.sdk.utils.IronSourceStorageUtils;
import com.json.sdk.utils.Logger;
import com.json.sdk.utils.SDKUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class u7 implements ib, z2, y2, w2, x2, a8, ea {
    private static u7 a;
    private com.json.sdk.controller.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private da f6668d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6669e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6670f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f6671g;
    private k3 h;
    private uc i;
    private r9 j;
    private q2 l;
    private final String b = IronSourceConstants.SUPERSONIC_CONFIG_NAME;
    private boolean k = false;
    private FeaturesManager m = FeaturesManager.getInstance();

    class a implements Runnable {
        final /* synthetic */ JSONObject a;

        a(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(this.a, (y2) u7.this);
        }
    }

    class b implements Runnable {
        final /* synthetic */ JSONObject a;

        b(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(this.a);
        }
    }

    class c implements Runnable {
        final /* synthetic */ s7 a;
        final /* synthetic */ Map b;

        c(s7 s7Var, Map map) {
            this.a = s7Var;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            h6.e eVar = this.a.g() ? h6.e.Banner : h6.e.Interstitial;
            j3 j3VarA = u7.this.h.a(eVar, this.a);
            j6 j6Var = new j6();
            j6Var.a(b4.w, Boolean.valueOf(this.a.h())).a(b4.F, Boolean.valueOf(this.a.j())).a(b4.u, this.a.e()).a(b4.v, b8.a(this.a)).a(b4.G, Long.valueOf(com.json.j.a.b(this.a.d())));
            o6.a(gb.h, j6Var.a());
            if (eVar == h6.e.Banner) {
                u7.this.c.a(u7.this.f6669e, u7.this.f6670f, j3VarA, (x2) u7.this);
                u7.this.c.a(j3VarA, this.b, (x2) u7.this);
            } else {
                u7.this.c.a(u7.this.f6669e, u7.this.f6670f, j3VarA, (y2) u7.this);
                u7.this.c.b(j3VarA, this.b, u7.this);
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ j3 a;
        final /* synthetic */ Map b;

        d(j3 j3Var, Map map) {
            this.a = j3Var;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(this.a, this.b, (y2) u7.this);
        }
    }

    class e implements Runnable {
        final /* synthetic */ s7 a;

        e(s7 s7Var) {
            this.a = s7Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3 j3VarA = u7.this.h.a(h6.e.Banner, this.a);
            j6 j6Var = new j6();
            j6Var.a(b4.w, Boolean.valueOf(this.a.h())).a(b4.u, this.a.e()).a(b4.v, b8.a(this.a));
            o6.a(gb.m, j6Var.a());
            u7.this.c.a(j3VarA);
        }
    }

    class f implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ j3 c;

        f(String str, String str2, j3 j3Var) {
            this.a = str;
            this.b = str2;
            this.c = j3Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(this.a, this.b, this.c, (z2) u7.this);
        }
    }

    class g implements Runnable {
        final /* synthetic */ JSONObject a;

        g(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(this.a, (z2) u7.this);
        }
    }

    class h implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ Map c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ da f6673d;

        h(String str, String str2, Map map, da daVar) {
            this.a = str;
            this.b = str2;
            this.c = map;
            this.f6673d = daVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(this.a, this.b, this.c, this.f6673d);
        }
    }

    class i implements Runnable {
        final /* synthetic */ Map a;
        final /* synthetic */ da b;

        i(Map map, da daVar) {
            this.a = map;
            this.b = daVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(u7.this.f6669e, u7.this.f6670f, this.a, this.b);
        }
    }

    class j implements Runnable {
        final /* synthetic */ Map a;

        j(Map map) {
            this.a = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(this.a, u7.this.f6668d);
        }
    }

    class k implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ da c;

        k(String str, String str2, da daVar) {
            this.a = str;
            this.b = str2;
            this.c = daVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(this.a, this.b, this.c);
        }
    }

    class l implements Runnable {
        final /* synthetic */ da a;

        l(da daVar) {
            this.a = daVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(u7.this.f6669e, u7.this.f6670f, this.a);
        }
    }

    class m implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ j3 c;

        m(String str, String str2, j3 j3Var) {
            this.a = str;
            this.b = str2;
            this.c = j3Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(this.a, this.b, this.c, (y2) u7.this);
        }
    }

    class n implements Runnable {
        final /* synthetic */ String a;

        n(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            u7.this.c.a(this.a, u7.this);
        }
    }

    private u7(Context context, int i2) {
        k(context);
    }

    u7(String str, String str2, Context context) {
        this.f6669e = str;
        this.f6670f = str2;
        k(context);
    }

    public static a8 a(Context context, String str, String str2) {
        return a(str, str2, context);
    }

    public static synchronized a8 a(String str, String str2, Context context) {
        if (a == null) {
            o6.a(gb.a);
            a = new u7(str, str2, context);
        } else {
            uc.d().a(str);
            uc.d().b(str2);
        }
        return a;
    }

    public static synchronized u7 a(Context context, int i2) throws Exception {
        Logger.i("IronSourceAdsPublisherAgent", "getInstance()");
        if (a == null) {
            a = new u7(context, i2);
        }
        return a;
    }

    public static synchronized u7 b(Context context) throws Exception {
        return a(context, 0);
    }

    private uc c(Context context) {
        uc ucVarD = uc.d();
        ucVarD.c();
        ucVarD.a(context, this.f6669e, this.f6670f);
        return ucVarD;
    }

    private z9 d(j3 j3Var) {
        if (j3Var == null) {
            return null;
        }
        return (z9) j3Var.i();
    }

    private Map<String, String> e(Map<String, String> map) {
        map.put("adm", SDKUtils.decodeString(map.get("adm")));
        return map;
    }

    private aa f(j3 j3Var) {
        if (j3Var == null) {
            return null;
        }
        return (aa) j3Var.i();
    }

    private void h(s7 s7Var, Map<String, String> map) {
        Logger.d("IronSourceAdsPublisherAgent", "loadOnNewInstance " + s7Var.d());
        this.c.a(new c(s7Var, map));
    }

    private ga i(j3 j3Var) {
        if (j3Var == null) {
            return null;
        }
        return (ga) j3Var.i();
    }

    private void k(Context context) {
        try {
            JSONObject networkConfiguration = SDKUtils.getNetworkConfiguration();
            g8.a(context);
            IronSourceStorageUtils.initializeCacheDirectory(context, new vb(SDKUtils.getNetworkConfiguration().optJSONObject(o2.a.i)));
            g8.e().d(SDKUtils.getSDKVersion());
            this.i = c(context);
            this.h = new k3();
            q2 q2Var = new q2();
            this.l = q2Var;
            if (context instanceof Activity) {
                q2Var.a((Activity) context);
            }
            int debugMode = this.m.getDebugMode();
            this.j = new r9();
            this.c = new com.json.sdk.controller.e(context, this.l, this.i, this.h, q5.a, debugMode, this.m.getDataManagerConfig(), this.f6669e, this.f6670f, this.j);
            Logger.enableLogging(debugMode);
            Logger.i("IronSourceAdsPublisherAgent", "C'tor");
            a(context, networkConfiguration);
            this.j.d();
            this.j.e();
            this.j.a(context);
            this.j.b();
            this.j.a();
            this.j.b(context);
            this.j.c();
            this.f6671g = 0L;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void l(s7 s7Var, Map<String, String> map) {
        try {
            map = e(map);
        } catch (Exception e2) {
            j6 j6VarA = new j6().a(b4.z, e2.getMessage()).a(b4.w, Boolean.valueOf(s7Var.h())).a(b4.F, Boolean.valueOf(s7Var.j())).a(b4.u, s7Var.e()).a(b4.v, b8.a(s7Var)).a(b4.G, Long.valueOf(com.json.j.a.b(s7Var.d())));
            com.json.j.a.a(s7Var.d());
            o6.a(gb.k, j6VarA.a());
            e2.printStackTrace();
            Logger.d("IronSourceAdsPublisherAgent", "loadInAppBiddingAd failed decoding  ADM " + e2.getMessage());
        }
        h(s7Var, map);
    }

    private j3 n(h6.e eVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.h.a(eVar, str);
    }

    private void p(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has(o2.i.Z)) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("consent", Boolean.parseBoolean(jSONObject.getString(o2.i.Z)));
            this.i.a(jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.json.a8
    public com.json.sdk.controller.e a() {
        return this.c;
    }

    @Override // com.json.ib, com.json.a8
    public void a(Activity activity) {
        try {
            Logger.i("IronSourceAdsPublisherAgent", "release()");
            n3.g();
            this.l.b();
            this.c.a((Context) activity);
            this.c.destroy();
            this.c = null;
        } catch (Exception unused) {
        }
        a = null;
    }

    @Override // com.json.a8, com.json.c8
    public void a(Activity activity, s7 s7Var, Map<String, String> map) {
        this.l.a(activity);
        Logger.i("IronSourceAdsPublisherAgent", "showAd " + s7Var.d());
        j3 j3VarA = this.h.a(h6.e.Interstitial, s7Var.d());
        if (j3VarA == null) {
            return;
        }
        this.c.a(new d(j3VarA, map));
    }

    @Override // com.json.ib, com.json.a8, com.json.c8
    public void a(Activity activity, Map<String, String> map) {
        if (activity != null) {
            this.l.a(activity);
        }
        this.c.a(new j(map));
    }

    public void a(Context context, JSONObject jSONObject) {
        boolean zOptBoolean = jSONObject.optBoolean(o2.a.f6464f, false);
        this.k = zOptBoolean;
        if (zOptBoolean) {
            try {
                ((Application) context).registerActivityLifecycleCallbacks(new com.json.e(this));
            } catch (Throwable th) {
                j6 j6Var = new j6();
                j6Var.a(b4.x, th.getMessage());
                o6.a(gb.u, j6Var.a());
            }
        }
    }

    @Override // com.json.a8, com.json.c8
    public void a(da daVar) {
        this.c.a(new l(daVar));
    }

    @Override // com.json.z2, com.json.w2, com.json.y2, com.json.x2
    public void a(h6.e eVar, String str) {
        aa aaVarF;
        j3 j3VarN = n(eVar, str);
        if (j3VarN != null) {
            if (eVar == h6.e.RewardedVideo) {
                ga gaVarI = i(j3VarN);
                if (gaVarI != null) {
                    gaVarI.c();
                    return;
                }
                return;
            }
            if (eVar != h6.e.Interstitial || (aaVarF = f(j3VarN)) == null) {
                return;
            }
            aaVarF.onInterstitialClose();
        }
    }

    @Override // com.json.z2, com.json.w2, com.json.y2, com.json.x2
    public void a(h6.e eVar, String str, e0 e0Var) {
        z9 z9VarD;
        j3 j3VarN = n(eVar, str);
        if (j3VarN != null) {
            j3VarN.b(2);
            if (eVar == h6.e.RewardedVideo) {
                ga gaVarI = i(j3VarN);
                if (gaVarI != null) {
                    gaVarI.a(e0Var);
                    return;
                }
                return;
            }
            if (eVar == h6.e.Interstitial) {
                aa aaVarF = f(j3VarN);
                if (aaVarF != null) {
                    aaVarF.onInterstitialInitSuccess();
                    return;
                }
                return;
            }
            if (eVar != h6.e.Banner || (z9VarD = d(j3VarN)) == null) {
                return;
            }
            z9VarD.onBannerInitSuccess();
        }
    }

    @Override // com.json.z2, com.json.w2, com.json.y2, com.json.x2
    public void a(h6.e eVar, String str, String str2) {
        z9 z9VarD;
        j3 j3VarN = n(eVar, str);
        j6 j6VarA = new j6().a(b4.u, str).a(b4.v, eVar).a(b4.z, str2);
        if (j3VarN != null) {
            com.json.j jVar = com.json.j.a;
            j6VarA.a(b4.G, Long.valueOf(jVar.b(j3VarN.h())));
            j6VarA.a(b4.w, Boolean.valueOf(p6.a(j3VarN)));
            jVar.a(j3VarN.h());
            j3VarN.b(3);
            if (eVar == h6.e.RewardedVideo) {
                ga gaVarI = i(j3VarN);
                if (gaVarI != null) {
                    gaVarI.b(str2);
                }
            } else if (eVar == h6.e.Interstitial) {
                aa aaVarF = f(j3VarN);
                if (aaVarF != null) {
                    aaVarF.onInterstitialInitFailed(str2);
                }
            } else if (eVar == h6.e.Banner && (z9VarD = d(j3VarN)) != null) {
                z9VarD.onBannerLoadFail(str2);
            }
        }
        o6.a(gb.i, j6VarA.a());
    }

    @Override // com.json.z2, com.json.w2, com.json.y2, com.json.x2
    public void a(h6.e eVar, String str, String str2, JSONObject jSONObject) {
        z9 z9VarD;
        j3 j3VarN = n(eVar, str);
        if (j3VarN == null || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            Logger.i("IronSourceAdsPublisherAgent", "Received Event Notification: " + str2 + " for demand source: " + j3VarN.f());
            if (eVar == h6.e.Interstitial) {
                aa aaVarF = f(j3VarN);
                if (aaVarF != null) {
                    jSONObject.put("demandSourceName", str);
                    aaVarF.onInterstitialEventNotificationReceived(str2, jSONObject);
                }
            } else if (eVar == h6.e.RewardedVideo) {
                ga gaVarI = i(j3VarN);
                if (gaVarI != null) {
                    jSONObject.put("demandSourceName", str);
                    gaVarI.a(str2, jSONObject);
                }
            } else if (eVar == h6.e.Banner && (z9VarD = d(j3VarN)) != null) {
                jSONObject.put("demandSourceName", str);
                if (str2.equalsIgnoreCase(o2.h.z)) {
                    z9VarD.onBannerShowSuccess();
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.json.a8, com.json.c8
    public void a(s7 s7Var, Map<String, String> map) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        map.put(o2.h.y0, String.valueOf(jCurrentTimeMillis));
        com.json.j.a.a(s7Var.d(), jCurrentTimeMillis);
        j6 j6Var = new j6();
        j6Var.a(b4.w, Boolean.valueOf(s7Var.h())).a(b4.F, Boolean.valueOf(s7Var.j())).a(b4.u, s7Var.e()).a(b4.v, b8.a(s7Var)).a(b4.G, Long.valueOf(jCurrentTimeMillis));
        o6.a(gb.f6120f, j6Var.a());
        Logger.d("IronSourceAdsPublisherAgent", "loadAd " + s7Var.d());
        if (s7Var.i()) {
            l(s7Var, map);
        } else {
            h(s7Var, map);
        }
    }

    @Override // com.json.z2
    public void a(String str, int i2) {
        ga gaVarI;
        j3 j3VarN = n(h6.e.RewardedVideo, str);
        if (j3VarN == null || (gaVarI = i(j3VarN)) == null) {
            return;
        }
        gaVarI.a(i2);
    }

    @Override // com.json.x2
    public void a(String str, a6 a6Var) {
        z9 z9VarD;
        j3 j3VarN = n(h6.e.Banner, str);
        if (j3VarN == null || (z9VarD = d(j3VarN)) == null) {
            return;
        }
        z9VarD.onBannerLoadSuccess(j3VarN.c(), a6Var);
    }

    @Override // com.json.x2
    public void a(String str, String str2) {
        z9 z9VarD;
        j3 j3VarN = n(h6.e.Banner, str);
        if (j3VarN == null || (z9VarD = d(j3VarN)) == null) {
            return;
        }
        z9VarD.onBannerLoadFail(str2);
    }

    @Override // com.json.ib
    public void a(String str, String str2, int i2) {
        h6.e productType;
        j3 j3VarA;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (productType = SDKUtils.getProductType(str)) == null || (j3VarA = this.h.a(productType, str2)) == null) {
            return;
        }
        j3VarA.c(i2);
    }

    @Override // com.json.ib
    public void a(String str, String str2, da daVar) {
        this.f6669e = str;
        this.f6670f = str2;
        this.c.a(new k(str, str2, daVar));
    }

    @Override // com.json.ib
    public void a(String str, String str2, String str3, Map<String, String> map, aa aaVar) {
        this.f6669e = str;
        this.f6670f = str2;
        this.c.a(new m(str, str2, this.h.a(h6.e.Interstitial, str3, map, aaVar)));
    }

    @Override // com.json.ib
    public void a(String str, String str2, String str3, Map<String, String> map, ga gaVar) {
        this.f6669e = str;
        this.f6670f = str2;
        this.c.a(new f(str, str2, this.h.a(h6.e.RewardedVideo, str3, map, gaVar)));
    }

    @Override // com.json.ib
    public void a(String str, String str2, Map<String, String> map, da daVar) {
        this.f6669e = str;
        this.f6670f = str2;
        this.f6668d = daVar;
        this.c.a(new h(str, str2, map, daVar));
    }

    @Override // com.json.a8, com.json.c8
    public void a(Map<String, String> map, da daVar) {
        this.f6668d = daVar;
        this.c.a(new i(map, daVar));
    }

    @Override // com.json.ib, com.json.a8
    public void a(JSONObject jSONObject) {
        p(jSONObject);
        this.c.a(new b(jSONObject));
    }

    @Override // com.json.a8, com.json.c8
    public boolean a(s7 s7Var) {
        Logger.d("IronSourceAdsPublisherAgent", "isAdAvailable " + s7Var.d());
        j3 j3VarA = this.h.a(h6.e.Interstitial, s7Var.d());
        if (j3VarA == null) {
            return false;
        }
        return j3VarA.d();
    }

    @Override // com.json.ib
    public boolean a(String str) {
        return this.c.a(str);
    }

    @Override // com.json.ea
    public void b(Activity activity) {
        try {
            this.c.b();
            this.c.a((Context) activity);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.json.a8, com.json.c8
    public void b(Activity activity, s7 s7Var, Map<String, String> map) {
        this.l.a(activity);
        a(s7Var, map);
    }

    @Override // com.json.z2, com.json.w2, com.json.y2, com.json.x2
    public void b(h6.e eVar, String str) {
        ga gaVarI;
        j3 j3VarN = n(eVar, str);
        if (j3VarN != null) {
            if (eVar == h6.e.Interstitial) {
                aa aaVarF = f(j3VarN);
                if (aaVarF != null) {
                    aaVarF.onInterstitialOpen();
                    return;
                }
                return;
            }
            if (eVar != h6.e.RewardedVideo || (gaVarI = i(j3VarN)) == null) {
                return;
            }
            gaVarI.a();
        }
    }

    @Override // com.json.a8, com.json.c8
    public void b(s7 s7Var) {
        Logger.d("IronSourceAdsPublisherAgent", "destroyInstance " + s7Var.d());
        this.c.a(new e(s7Var));
    }

    @Override // com.json.y2
    public void b(String str) {
        h6.e eVar = h6.e.Interstitial;
        j3 j3VarN = n(eVar, str);
        j6 j6VarA = new j6().a(b4.u, str);
        if (j3VarN != null) {
            j6 j6VarA2 = j6VarA.a(b4.v, p6.a(j3VarN, eVar)).a(b4.w, Boolean.valueOf(p6.a(j3VarN)));
            com.json.j jVar = com.json.j.a;
            j6VarA2.a(b4.G, Long.valueOf(jVar.b(j3VarN.h())));
            jVar.a(j3VarN.h());
            aa aaVarF = f(j3VarN);
            if (aaVarF != null) {
                aaVarF.onInterstitialLoadSuccess();
            }
        }
        o6.a(gb.l, j6VarA.a());
    }

    @Override // com.json.y2
    public void b(String str, String str2) {
        aa aaVarF;
        j3 j3VarN = n(h6.e.Interstitial, str);
        if (j3VarN == null || (aaVarF = f(j3VarN)) == null) {
            return;
        }
        aaVarF.onInterstitialShowFailed(str2);
    }

    @Override // com.json.ib
    public void b(JSONObject jSONObject) {
        this.c.a(new g(jSONObject));
    }

    @Override // com.json.ea
    public void c(Activity activity) {
        this.l.a(activity);
        this.c.d();
        this.c.b(activity);
    }

    @Override // com.json.z2, com.json.w2, com.json.y2, com.json.x2
    public void c(h6.e eVar, String str) {
        z9 z9VarD;
        j3 j3VarN = n(eVar, str);
        if (j3VarN != null) {
            if (eVar == h6.e.RewardedVideo) {
                ga gaVarI = i(j3VarN);
                if (gaVarI != null) {
                    gaVarI.d();
                    return;
                }
                return;
            }
            if (eVar == h6.e.Interstitial) {
                aa aaVarF = f(j3VarN);
                if (aaVarF != null) {
                    aaVarF.onInterstitialClick();
                    return;
                }
                return;
            }
            if (eVar != h6.e.Banner || (z9VarD = d(j3VarN)) == null) {
                return;
            }
            z9VarD.onBannerClick();
        }
    }

    @Override // com.json.y2
    public void c(String str) {
        aa aaVarF;
        j3 j3VarN = n(h6.e.Interstitial, str);
        if (j3VarN == null || (aaVarF = f(j3VarN)) == null) {
            return;
        }
        aaVarF.onInterstitialShowSuccess();
    }

    @Override // com.json.y2
    public void c(String str, String str2) {
        h6.e eVar = h6.e.Interstitial;
        j3 j3VarN = n(eVar, str);
        j6 j6Var = new j6();
        j6Var.a(b4.z, str2).a(b4.u, str);
        if (j3VarN != null) {
            j6 j6VarA = j6Var.a(b4.v, p6.a(j3VarN, eVar)).a(b4.x, j3VarN.e() == 2 ? b4.D : b4.E).a(b4.w, Boolean.valueOf(p6.a(j3VarN)));
            com.json.j jVar = com.json.j.a;
            j6VarA.a(b4.G, Long.valueOf(jVar.b(j3VarN.h())));
            jVar.a(j3VarN.h());
            aa aaVarF = f(j3VarN);
            if (aaVarF != null) {
                aaVarF.onInterstitialLoadFailed(str2);
            }
        }
        o6.a(gb.f6121g, j6Var.a());
    }

    @Override // com.json.ib
    public void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("demandSourceName");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        this.c.a(new n(strOptString));
    }

    @Override // com.json.z2
    public void d(String str) {
        ga gaVarI;
        j3 j3VarN = n(h6.e.RewardedVideo, str);
        if (j3VarN == null || (gaVarI = i(j3VarN)) == null) {
            return;
        }
        gaVarI.b();
    }

    @Override // com.json.z2
    public void d(String str, String str2) {
        ga gaVarI;
        j3 j3VarN = n(h6.e.RewardedVideo, str);
        if (j3VarN == null || (gaVarI = i(j3VarN)) == null) {
            return;
        }
        gaVarI.a(str2);
    }

    @Override // com.json.ib
    public void d(JSONObject jSONObject) {
        this.c.a(new a(jSONObject));
    }

    @Override // com.json.y2
    public void onInterstitialAdRewarded(String str, int i2) {
        j3 j3VarN = n(h6.e.Interstitial, str);
        aa aaVarF = f(j3VarN);
        if (j3VarN == null || aaVarF == null) {
            return;
        }
        aaVarF.onInterstitialAdRewarded(str, i2);
    }

    @Override // com.json.ib, com.json.a8
    public void onPause(Activity activity) {
        if (this.k) {
            return;
        }
        b(activity);
    }

    @Override // com.json.ib, com.json.a8
    public void onResume(Activity activity) {
        if (this.k) {
            return;
        }
        c(activity);
    }
}
