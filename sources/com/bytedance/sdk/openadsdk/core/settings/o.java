package com.bytedance.sdk.openadsdk.core.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.settings.TTSdkSettings;
import com.bytedance.sdk.openadsdk.core.settings.d;
import com.bytedance.sdk.openadsdk.core.settings.m;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.json.d1;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: TTSdkSettings.java */
/* JADX INFO: loaded from: classes2.dex */
public class o implements e, m.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final d.b<ConcurrentHashMap<String, Integer>> f1692d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Set<String> f1693f;
    private final i h;
    private final l i;
    private final AtomicBoolean j;
    private volatile boolean k;
    private boolean l;
    private int m;
    private int n;
    private boolean o;
    private h p;
    private final BroadcastReceiver r;
    private final Runnable s;
    private final Set<String> t;
    private final d.b<Set<String>> u;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f1690e = ac.n();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final com.bytedance.sdk.component.g.h f1691g = new com.bytedance.sdk.component.g.h("TemplateReInitTask") { // from class: com.bytedance.sdk.openadsdk.core.settings.o.1
        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.component.adexpress.a.b.c.a().g();
            com.bytedance.sdk.component.adexpress.a.b.c.a().b(false);
            com.bytedance.sdk.component.adexpress.a.b.a.b();
            com.bytedance.sdk.component.adexpress.a.b.c.a().b();
        }
    };
    public static String a = "";
    public static String b = "IABTCF_TCString";
    private static final j q = new j();
    static final ConcurrentHashMap<String, Integer> c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.settings.o$6, reason: invalid class name */
    /* JADX INFO: compiled from: TTSdkSettings.java */
    class AnonymousClass6 extends BroadcastReceiver {
        private final Runnable b = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.o.6.1
            @Override // java.lang.Runnable
            public void run() {
                aa.b(new com.bytedance.sdk.component.g.h("LoadLocalData") { // from class: com.bytedance.sdk.openadsdk.core.settings.o.6.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            o.this.b();
                        } catch (Exception unused) {
                        }
                    }
                });
            }
        };

        AnonymousClass6() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            if (intent == null) {
                return;
            }
            aa.b(new com.bytedance.sdk.component.g.h("setting_receiver") { // from class: com.bytedance.sdk.openadsdk.core.settings.o.6.2
                @Override // java.lang.Runnable
                public void run() {
                    String action = intent.getAction();
                    if ("_tryFetRemoDat".equals(action)) {
                        o.this.a(intent.getIntExtra("_source", 0), intent.getBooleanExtra("_force", false));
                    } else if ("_dataChanged".equals(action)) {
                        com.bytedance.sdk.component.utils.h.a().removeCallbacks(AnonymousClass6.this.b);
                        com.bytedance.sdk.component.utils.h.a().postDelayed(AnonymousClass6.this.b, 10000L);
                    }
                }
            });
        }
    }

    /* JADX INFO: compiled from: TTSdkSettings.java */
    private static final class a {
        static final o a = new o();
    }

    private o() {
        this.f1693f = Collections.synchronizedSet(new HashSet());
        this.h = new i();
        this.i = new l();
        this.j = new AtomicBoolean(false);
        this.k = false;
        this.l = false;
        this.m = 5000;
        this.n = 10;
        AnonymousClass6 anonymousClass6 = new AnonymousClass6();
        this.r = anonymousClass6;
        this.s = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.o.7
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.component.utils.l.b("TTAD.SdkSettings", "auto fetch task active, try fetch remote data");
                o.this.d(2);
                o.this.ak();
            }
        };
        this.f1692d = new d.b<ConcurrentHashMap<String, Integer>>() { // from class: com.bytedance.sdk.openadsdk.core.settings.o.8
            @Override // com.bytedance.sdk.openadsdk.core.settings.d.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ConcurrentHashMap<String, Integer> b(String str) {
                if (TextUtils.isEmpty(str)) {
                    return o.c;
                }
                ConcurrentHashMap<String, Integer> concurrentHashMap = new ConcurrentHashMap<>();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        int iOptInt = jSONObject.optInt(next, 100);
                        if (!TextUtils.isEmpty(next) && iOptInt >= 0 && iOptInt <= 100) {
                            concurrentHashMap.put(next, Integer.valueOf(iOptInt));
                        }
                    }
                } catch (JSONException e2) {
                    Log.i("TTAD.SdkSettings", e2.getMessage());
                }
                return concurrentHashMap;
            }
        };
        this.t = new HashSet();
        this.u = new d.b<Set<String>>() { // from class: com.bytedance.sdk.openadsdk.core.settings.o.9
            @Override // com.bytedance.sdk.openadsdk.core.settings.d.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Set<String> b(String str) {
                HashSet hashSet = new HashSet();
                if (!TextUtils.isEmpty(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int iOptInt = jSONObject.optInt("applog_count");
                        if (iOptInt >= 2 && iOptInt <= 100) {
                            o.this.n = iOptInt;
                        }
                        int iOptInt2 = jSONObject.optInt("applog_interval");
                        if (iOptInt2 >= 100 && iOptInt2 <= 30000) {
                            o.this.m = iOptInt2;
                        }
                        JSONArray jSONArray = jSONObject.getJSONArray("core_label_arr");
                        if (jSONArray != null) {
                            for (int i = 0; i < jSONArray.length(); i++) {
                                String string = jSONArray.getString(i);
                                if (!TextUtils.isEmpty(string)) {
                                    hashSet.add(string);
                                }
                            }
                        }
                    } catch (JSONException e2) {
                        Log.i("TTAD.SdkSettings", e2.getMessage());
                    }
                }
                return hashSet.size() == 0 ? new HashSet(Arrays.asList(CampaignEx.JSON_NATIVE_VIDEO_CLICK, d1.u, "insight_log", "mrc_show")) : hashSet;
            }
        };
        try {
            if (com.bytedance.sdk.openadsdk.multipro.b.c() && !m.a()) {
                Context contextA = com.bytedance.sdk.openadsdk.core.o.a();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("_dataChanged");
                if (Build.VERSION.SDK_INT >= 33) {
                    contextA.registerReceiver(anonymousClass6, intentFilter, 4);
                } else {
                    contextA.registerReceiver(anonymousClass6, intentFilter);
                }
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.c("TTAD.SdkSettings", "", e2);
        }
    }

    public static void ai() {
        Context contextA;
        if (com.bytedance.sdk.openadsdk.multipro.b.c() && (contextA = com.bytedance.sdk.openadsdk.core.o.a()) != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(contextA.getPackageName());
                intent.setAction("_dataChanged");
                contextA.sendBroadcast(intent);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.c("TTAD.SdkSettings", "", th);
            }
        }
    }

    public static e aj() {
        if (com.bytedance.sdk.openadsdk.core.o.a() != null) {
            return a.a;
        }
        IllegalStateException illegalStateException = new IllegalStateException("context is null");
        Log.e("Pangle", "context is null", illegalStateException);
        ApmHelper.reportCustomError("context is null", "context is null", illegalStateException);
        return q;
    }

    private String am() {
        return this.i.a("force_language", "");
    }

    private int an() {
        return this.i.a("coppa", -99);
    }

    private long ao() {
        long jA = this.i.a("req_inter_min", 600000L);
        if (jA < 0 || jA > 86400000) {
            return 600000L;
        }
        return jA;
    }

    private long ap() {
        return this.i.a("last_req_time", 0L);
    }

    private Set<String> aq() {
        return (Set) this.i.a("perf_con_applog_send", this.t, this.u);
    }

    public static int b(Context context) {
        SharedPreferences sharedPreferencesD;
        if (context == null || (sharedPreferencesD = d(context)) == null) {
            return -2;
        }
        if ((sharedPreferencesD.getInt("IABTCF_CmpSdkID", Integer.MIN_VALUE) == Integer.MIN_VALUE && sharedPreferencesD.getInt("IABTCF_CmpSdkVersion", Integer.MIN_VALUE) == Integer.MIN_VALUE) ? false : true) {
            return sharedPreferencesD.getInt("IABTCF_gdprApplies", -1);
        }
        return -2;
    }

    private static int b(boolean z) {
        return z ? 20 : 5;
    }

    private static void b(int i, boolean z) {
        Context contextA = com.bytedance.sdk.openadsdk.core.o.a();
        if (contextA != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(contextA.getPackageName());
                intent.setAction("_tryFetRemoDat");
                intent.putExtra("_force", z);
                intent.putExtra("_source", i);
                contextA.sendBroadcast(intent);
            } catch (Throwable unused) {
            }
        }
    }

    public static String c(Context context) {
        SharedPreferences sharedPreferencesD;
        return (context == null || (sharedPreferencesD = d(context)) == null) ? "" : sharedPreferencesD.getString(b, "");
    }

    @Nullable
    private static SharedPreferences d(Context context) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String A() {
        return this.i.a("playableLoadH5Url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean A(@NonNull String str) {
        Set set = (Set) this.i.a("privacy_fields_allowed", Collections.emptySet(), d.b);
        if (!set.isEmpty()) {
            return set.contains(str);
        }
        int iP = ac.p();
        if (iP == 1) {
            return true;
        }
        if (iP == 2 || iP == 3) {
            return "mcc".equals(str) || "mnc".equals(str);
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int B() {
        int iA = this.i.a("fetch_tpl_timeout_ctrl", 3000);
        if (iA <= 0) {
            return 3000;
        }
        return iA;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int C() {
        int iA = this.i.a("fetch_tpl_second", 0);
        if (iA <= 0) {
            return 0;
        }
        return iA;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public void D() {
        if (Build.VERSION.SDK_INT >= 17) {
            String strAm = am();
            if (TextUtils.isEmpty(strAm)) {
                return;
            }
            if (strAm.equals("zh-Hant")) {
                com.bytedance.sdk.component.utils.i.a(com.bytedance.sdk.openadsdk.core.o.a(), "zh", "tw");
            } else {
                com.bytedance.sdk.component.utils.i.a(com.bytedance.sdk.openadsdk.core.o.a(), strAm, null);
            }
            try {
                TTAdDislikeToast.a();
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.e("TTAD.SdkSettings", th.getMessage());
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int E() {
        return this.i.a("disable_rotate_banner_on_dislike", Integer.MAX_VALUE);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean F() {
        return this.i.b();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String G() {
        return this.i.a("ads_url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String H() {
        return this.i.a("app_log_url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String I() {
        return this.i.a("apm_url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String J() {
        return this.i.a("policy_url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int K() {
        return this.i.a("ivrv_downward", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String L() {
        return this.i.a("dyn_draw_engine_url", f1690e);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String M() {
        return this.i.a("dc", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int N() {
        return this.i.a("isGdprUser", -1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int O() {
        return this.i.a("vbtt", 5);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean P() {
        int iA = this.i.a("privacy_ad_enable", Integer.MAX_VALUE);
        if (iA == 1) {
            return true;
        }
        if (iA == 0) {
            return false;
        }
        int iP = ac.p();
        return iP == 1 || iP == 2 || iP == 3;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int Q() {
        int iA = this.i.a("privacy_personalized_ad", Integer.MAX_VALUE);
        if (iA != Integer.MAX_VALUE) {
            return iA;
        }
        int iP = ac.p();
        if (iP == 1 || iP == 2) {
            return 2;
        }
        return iP != 3 ? 0 : 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean R() {
        return this.i.a("privacy_sladar_enable", Integer.MAX_VALUE) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean S() {
        boolean z = this.i.a("bus_con_sec_type", Integer.MAX_VALUE) != 0;
        com.bytedance.sdk.component.utils.l.b("TTAD.SdkSettings", "secSdk type: ", Boolean.valueOf(z));
        return z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean T() {
        return this.i.a("bus_con_dislike_report_raw", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean U() {
        return this.i.a("privacy_debug_unlock", 1) != 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean V() {
        return this.k;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean W() {
        return this.i.a("global_rate", 1.0f) == 1.0f;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean X() {
        return this.i.a("read_video_from_cache", 1) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int Y() {
        int iA = this.i.a("perf_con_webview_cache_count", 0);
        if (iA < 0) {
            return 0;
        }
        return iA;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int Z() {
        int iA = this.i.a("perf_con_webview_preload_cache", 0);
        if (iA < 0) {
            return 0;
        }
        if (iA > 5) {
            return 5;
        }
        return iA > Y() ? Y() : iA;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int a(int i) {
        return z(String.valueOf(i)).F;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int a(String str) {
        if (str == null) {
            return 0;
        }
        return com.bytedance.sdk.openadsdk.core.o.d().z(str).r;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int a(String str, boolean z) {
        int i;
        return (str == null || (i = z(str).x) == -1) ? b(z) : i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public void a() {
        try {
            b.a();
            this.i.c();
            this.h.c();
            Context contextA = com.bytedance.sdk.openadsdk.core.o.a();
            int i = Build.VERSION.SDK_INT;
            File file = new File(i >= 24 ? new File(contextA.getDataDir(), "shared_prefs") : new File(contextA.getDatabasePath("1").getParentFile().getParentFile(), "shared_prefs"), "tt_sdk_settings.xml");
            if (file.exists() && file.isFile()) {
                String strReplace = file.getName().replace(".xml", "");
                if (i >= 24) {
                    contextA.deleteSharedPreferences(strReplace);
                } else {
                    contextA.getSharedPreferences(strReplace, 0).edit().clear().apply();
                    com.bytedance.sdk.component.utils.f.c(file);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public void a(@TTSdkSettings.FETCH_REQUEST_SOURCE int i, boolean z) {
        if (!com.bytedance.sdk.openadsdk.core.l.e() && i != 1 && i != 2) {
            if (z) {
                this.o = true;
                return;
            }
            return;
        }
        try {
            if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.h.b().d())) {
                return;
            }
            if (this.o) {
                this.o = false;
                if (!z) {
                    z = true;
                }
            }
            long jAp = ap();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jAo = ao();
            long j = jCurrentTimeMillis - jAp;
            if (!z && j < jAo) {
                com.bytedance.sdk.openadsdk.core.f.a.a();
                return;
            }
            if (!m.a()) {
                b(i, z);
            } else if (this.j.compareAndSet(false, true)) {
                aa.b(new m(this, this.i, this.h));
                com.bytedance.sdk.openadsdk.core.l.b().removeCallbacks(this.s);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.a("TTAD.SdkSettings", "load sdk settings error: ", th);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public void a(long j) {
        this.i.a().a("last_req_time", j).a();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public void a(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("_tryFetRemoDat");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this.r, intentFilter, 4);
            } else {
                context.registerReceiver(this.r, intentFilter);
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.c("TTAD.SdkSettings", "", e2);
        }
        if (V()) {
            d(1);
            ak();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public void a(JSONObject jSONObject, d.a aVar) {
        if (jSONObject == null || !jSONObject.has("dyn_draw_engine_url")) {
            return;
        }
        l lVar = this.i;
        String str = f1690e;
        String strA = lVar.a("dyn_draw_engine_url", str);
        String strOptString = jSONObject.optString("dyn_draw_engine_url", str);
        if (!TextUtils.isEmpty(strA) && !TextUtils.isEmpty(strOptString) && !strOptString.equals(strA)) {
            com.bytedance.sdk.openadsdk.core.l.b().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.o.3
                @Override // java.lang.Runnable
                public void run() {
                    aa.a(o.f1691g);
                }
            }, 5000L);
        }
        aVar.a("dyn_draw_engine_url", strOptString);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.m.a
    public void a(boolean z) {
        this.j.set(false);
        ak();
        if (z) {
            ai();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String[] aa() {
        Set<String> set;
        try {
            set = this.f1693f;
        } catch (Throwable unused) {
        }
        if (set == null || set.size() == 0) {
            JSONArray jSONArray = new JSONArray(this.i.a("gecko_hosts", (String) null));
            if (jSONArray.length() != 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.f1693f.add(jSONArray.getString(i));
                }
            }
            Set<String> setA = l.a(this.f1693f);
            this.f1693f = setA;
            if (setA != null) {
                if (setA.size() == 0) {
                }
            }
            return null;
        }
        return (String[]) this.f1693f.toArray(new String[0]);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int ab() {
        return this.i.a("blank_detect_rate", 30);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public JSONObject ac() {
        return (JSONObject) this.i.a("video_cache_config", null, d.a);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public void ad() {
        this.l = true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean ae() {
        if (com.bytedance.sdk.component.adexpress.c.b.a(com.bytedance.sdk.openadsdk.core.o.a())) {
            return this.i.a("support_rtl", false);
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int af() {
        return this.i.a("bus_con_send_log_type", 1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean ag() {
        return this.i.a("perf_con_apm_native", Integer.MAX_VALUE) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int ah() {
        return this.i.a("perf_con_thread_stack_size", 0);
    }

    void ak() {
        if (m.a()) {
            com.bytedance.sdk.openadsdk.core.l.b().removeCallbacks(this.s);
            com.bytedance.sdk.openadsdk.core.l.b().postDelayed(this.s, ao());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int b(int i) {
        return z(String.valueOf(i)).b;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int b(String str) {
        Integer num;
        Map map = (Map) this.i.a("perf_con_stats_rate", c, this.f1692d);
        if (map == null || (num = (Integer) map.get(str)) == null || num.intValue() < 0 || num.intValue() > 100) {
            return 100;
        }
        return num.intValue();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    @WorkerThread
    public synchronized void b() {
        com.bytedance.sdk.component.utils.l.b("TTAD.SdkSettings", "loadLocalData: ");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = !this.k;
        this.h.a(this.k);
        this.i.a(this.k);
        b.a(z);
        com.bytedance.sdk.openadsdk.core.h.b().d(an());
        this.k = true;
        com.bytedance.sdk.component.utils.l.a("TTAD.SdkSettings", "loadLocalData: finished, used", Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime), "ms");
        if (z) {
            com.bytedance.sdk.openadsdk.core.l.b().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.o.2
                @Override // java.lang.Runnable
                public void run() {
                    if (!m.a()) {
                        com.bytedance.sdk.openadsdk.multipro.aidl.a.a().b();
                    } else {
                        o.this.d(1);
                        o.this.ak();
                    }
                }
            }, 1000L);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public void b(JSONObject jSONObject, d.a aVar) {
        if (jSONObject.has("is_gdpr_user")) {
            int iOptInt = jSONObject.optInt("is_gdpr_user", -1);
            aVar.a("isGdprUser", (iOptInt == -1 || iOptInt == 1 || iOptInt == 0) ? iOptInt : -1);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int c(int i) {
        return z(String.valueOf(i)).i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String c() {
        return this.i.a("aes_key", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean c(String str) {
        return z(str).c == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int d() {
        return this.i.a("max_tpl_cnts", 100);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public void d(@TTSdkSettings.FETCH_REQUEST_SOURCE int i) {
        a(i, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean d(String str) {
        return z(str).B;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    @Nullable
    public JSONObject e() {
        return (JSONObject) this.i.a("digest", null, d.a);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean e(String str) {
        int i = z(str).f1671e;
        return i != 1 ? i == 2 && com.bytedance.sdk.component.utils.o.c(com.bytedance.sdk.openadsdk.core.o.a()) != 0 : com.bytedance.sdk.component.utils.o.d(com.bytedance.sdk.openadsdk.core.o.a());
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public long f() {
        return this.i.a("data_time", 0L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean f(String str) {
        return z(str).f1673g == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int g(String str) {
        return z(str).q;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public void g() {
        this.i.a().a("tt_sdk_settings").a("ab_test_param").a();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean h() {
        return this.i.a("if_both_open", 0) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean h(String str) {
        return str == null || z(str).m == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int i(String str) {
        if (str == null) {
            return 1500;
        }
        return z(str).o;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean i() {
        return !(this.i.a("support_tnc", 1) == 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int j(String str) {
        return z(str).k;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String j() {
        return this.i.a("ab_test_version", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int k() {
        return this.i.a("load_callback_strategy", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean k(String str) {
        try {
            return z(str).v != null;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int l(String str) {
        return z(String.valueOf(str)).h;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean l() {
        return this.i.a("support_mem_dynamic", 0) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public Set<String> m() {
        return aq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean m(String str) {
        return l(str) != 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int n() {
        aq();
        return this.n;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int n(String str) {
        return z(str).j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int o() {
        aq();
        return this.m;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean o(String str) {
        return z(str).u == 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean p() {
        return this.i.a("allow_blind_mode_request_ad", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean p(String str) {
        return str == null || DeviceUtils.g(com.bytedance.sdk.openadsdk.core.o.a()) == 0 || z(str).l == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int q(String str) {
        return z(str).s;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean q() {
        return this.i.a("support_gzip", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean r() {
        return this.i.a("ad_revenue_enable", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean r(String str) {
        return z(str).t;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int s() {
        return this.i.a("loadedCallbackOpportunity", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int s(String str) {
        return z(str).y;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int t(String str) {
        return z(str).z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String t() {
        return this.i.a("ab_test_param", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int u(String str) {
        return z(str).A;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    @NonNull
    public h u() {
        h hVar = this.p;
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = (h) this.h.a("mediation_init_conf", h.a, new d.b<h>() { // from class: com.bytedance.sdk.openadsdk.core.settings.o.4
            @Override // com.bytedance.sdk.openadsdk.core.settings.d.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public h b(String str) {
                return new h(str);
            }
        });
        this.p = hVar2;
        return hVar2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean v() {
        return this.i.a("landingpage_new_style", -1) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean v(String str) {
        return z(str).C;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public long w() {
        return this.i.a("duration", 10000L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean w(String str) {
        return z(str).D;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int x() {
        return this.i.a("max", 50);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public int x(String str) {
        return z(str).E;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public String y() {
        return this.i.a("pyload_h5", (String) null);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public boolean y(String str) {
        return com.bytedance.sdk.openadsdk.core.o.d().z(str).n == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    @NonNull
    public com.bytedance.sdk.openadsdk.core.settings.a z(String str) {
        return b.a(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.e
    public f z() {
        return (f) this.i.a("insert_js_config", f.a, new d.b<f>() { // from class: com.bytedance.sdk.openadsdk.core.settings.o.5
            @Override // com.bytedance.sdk.openadsdk.core.settings.d.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public f b(String str) {
                return new f(str);
            }
        });
    }
}
