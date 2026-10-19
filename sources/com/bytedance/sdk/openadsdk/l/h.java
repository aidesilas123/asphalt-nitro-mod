package com.bytedance.sdk.openadsdk.l;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.webkit.ProxyConfig;
import com.json.o2;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: PlayablePlugin.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {
    private String aA;
    private JSONObject aC;
    private float aF;
    private int aG;
    private int aH;
    private int aI;
    private int aJ;
    private int aK;
    private int aL;
    private int aM;
    private int aN;
    private int aO;
    private int aP;
    private String aQ;
    private boolean aR;
    private boolean aS;
    private boolean aU;
    private boolean aV;
    private String aX;
    private String aY;
    private String aZ;
    private JSONObject ag;
    private int ah;
    private a aj;
    private Context ak;
    private WebView al;
    private WeakReference<View> am;
    private f an;
    private com.bytedance.sdk.openadsdk.l.a ao;
    private c ap;
    private String at;
    private String au;
    private String av;
    private String ay;
    private String az;
    private String ba;
    private Runnable i;
    private Runnable j;
    private Runnable k;
    private Runnable m;
    private Runnable n;
    private b o;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f1824f = "playable_stuck_check_ping";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f1825g = "playable_apply_media_permission_callback";
    private final Handler h = new Handler(Looper.getMainLooper());
    private final Handler l = new Handler(Looper.getMainLooper());
    private boolean p = true;
    private boolean q = true;
    private boolean r = true;
    public final String a = "PL_sdk_playable_global_viewable";
    public final String b = "PL_sdk_page_screen_blank";
    public final String c = "PL_sdk_playable_destroy_analyze_summary";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1822d = "PL_sdk_playable_hardware_dialog_cancel";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1823e = "PL_sdk_playable_hardware_dialog_setting";
    private Set<String> s = new HashSet(Arrays.asList("adInfo", "appInfo", "subscribe_app_ad", "download_app_ad"));
    private String t = null;
    private String u = "embeded_ad";
    private boolean v = true;
    private boolean w = true;
    private boolean x = true;
    private boolean y = false;
    private String z = "";
    private long A = 10;
    private long B = 10;
    private int C = 700;
    private long D = 0;
    private long E = 0;
    private long F = -1;
    private long G = -1;
    private long H = -1;
    private long I = -1;
    private long J = -1;
    private long K = -1;
    private long L = -1;
    private String M = "";
    private String N = "";
    private String O = "";
    private String P = "";
    private int Q = 0;
    private int R = 0;
    private boolean S = false;
    private int T = 0;
    private int U = -1;
    private int V = 0;
    private int W = 0;
    private int X = 0;
    private String Y = null;
    private boolean Z = false;
    private int aa = 0;
    private int ab = 0;
    private int ac = 0;
    private int ad = 0;
    private long ae = 0;
    private long af = 0;
    private int ai = 0;
    private int aq = 0;
    private int ar = 0;
    private JSONObject as = new JSONObject();
    private Map<String, String> aw = new HashMap();
    private JSONObject ax = new JSONObject();
    private String aB = "";
    private float aD = 0.0f;
    private float aE = 0.0f;
    private boolean aT = false;
    private boolean aW = false;
    private boolean bb = false;
    private List<JSONObject> bc = new ArrayList();
    private ViewTreeObserver.OnGlobalLayoutListener bd = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.l.h.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            try {
                View view = (View) h.this.am.get();
                if (view == null) {
                    return;
                }
                h.this.b(view);
            } catch (Throwable th) {
                g.a("PlayablePlugin", "onSizeChanged error", th);
            }
        }
    };

    /* JADX INFO: compiled from: PlayablePlugin.java */
    public enum a {
        LAND_PAGE,
        FEED,
        OTHER,
        FEED_AWEME
    }

    private h(Context context, WebView webView, c cVar, com.bytedance.sdk.openadsdk.l.a aVar, a aVar2) {
        this.ah = -2;
        this.ah = 0;
        this.aj = aVar2;
        this.al = webView;
        i.a(webView);
        a(webView);
        a(context, cVar, aVar);
    }

    private void N() {
        this.o = new b(this, this.C);
        this.i = new Runnable() { // from class: com.bytedance.sdk.openadsdk.l.h.3
            @Override // java.lang.Runnable
            public void run() {
                if (h.this.w) {
                    h.this.w = false;
                    h.this.h.removeCallbacks(h.this.j);
                    h.this.a(2, "ContainerLoadTimeOut");
                }
            }
        };
        this.j = new Runnable() { // from class: com.bytedance.sdk.openadsdk.l.h.4
            @Override // java.lang.Runnable
            public void run() {
                if (h.this.w) {
                    h.this.w = false;
                    h.this.h.removeCallbacks(h.this.i);
                    h.this.a(3, "JSSDKLoadTimeOut");
                }
            }
        };
        this.m = new Runnable() { // from class: com.bytedance.sdk.openadsdk.l.h.5
            @Override // java.lang.Runnable
            public void run() {
                g.a("mCheckJSRunnable", " ====Scheduled Task=== " + System.currentTimeMillis());
                if (Build.VERSION.SDK_INT >= 19 && h.this.al != null) {
                    h.this.al.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.l.h.5.1
                        @Override // android.webkit.ValueCallback
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public void onReceiveValue(String str) {
                            if (h.this.o != null) {
                                h.this.o.a(System.currentTimeMillis());
                            }
                        }
                    });
                }
                if (h.this.l != null) {
                    h.this.l.postDelayed(this, 500L);
                }
            }
        };
        this.n = new Runnable() { // from class: com.bytedance.sdk.openadsdk.l.h.6
            @Override // java.lang.Runnable
            public void run() {
                g.a("mCheckJSRunnable", " ====Lynx detect scheduled tasks=== " + System.currentTimeMillis());
                h.this.a("playable_stuck_check_ping", new JSONObject());
                if (h.this.l != null) {
                    h.this.l.postDelayed(this, 500L);
                }
            }
        };
        this.k = new Runnable() { // from class: com.bytedance.sdk.openadsdk.l.h.7
            @Override // java.lang.Runnable
            public void run() {
                if (h.this.af <= 0) {
                    h.this.b(1, "Clicking on the hot zone causes the program to freeze.");
                } else {
                    if (h.this.af - h.this.ae > h.this.C) {
                        h.this.b(1, "Clicking on the hot zone causes the program to freeze.");
                        return;
                    }
                    h.this.I();
                    h.this.ae = 0L;
                    h.this.af = 0L;
                }
            }
        };
    }

    private void O() {
        String str;
        if (this.ax == null || (str = this.ay) == null || str.contains("/cid_")) {
            return;
        }
        String strOptString = this.ax.optString(BidResponsedEx.KEY_CID);
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        String host = Uri.parse(this.ay).getHost();
        if (TextUtils.isEmpty(host)) {
            this.ay += "/cid_" + strOptString;
            return;
        }
        this.ay = this.ay.replace(host, host + "/cid_" + strOptString);
    }

    private void P() {
        Runnable runnable;
        Runnable runnable2;
        this.o.a(System.currentTimeMillis());
        Handler handler = this.l;
        if (handler != null) {
            int i = this.ah;
            if (i == 0 && (runnable2 = this.m) != null) {
                handler.post(runnable2);
            } else if ((i == 1 || i == 2) && (runnable = this.n) != null) {
                handler.post(runnable);
            }
            this.o.a(500);
        }
    }

    public static h a(Context context, WebView webView, c cVar, com.bytedance.sdk.openadsdk.l.a aVar) {
        if (webView == null || cVar == null || aVar == null) {
            return null;
        }
        return new h(context, webView, cVar, aVar, a.LAND_PAGE);
    }

    private void a(Context context, c cVar, com.bytedance.sdk.openadsdk.l.a aVar) {
        this.t = UUID.randomUUID().toString();
        this.ak = context;
        this.ao = aVar;
        this.ap = cVar;
        j.a(aVar);
        this.an = new f(this);
        N();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view) {
        if (view == null) {
            return;
        }
        try {
            if (this.aq == view.getWidth() && this.ar == view.getHeight()) {
                return;
            }
            this.aq = view.getWidth();
            this.ar = view.getHeight();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.aq);
            jSONObject.put("height", this.ar);
            a("resize", jSONObject);
            this.as = jSONObject;
        } catch (Throwable th) {
            g.a("PlayablePlugin", "resetViewDataJsonByView error", th);
        }
    }

    private void c(int i, String str) {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.a(i, str);
        }
    }

    private String d(String str, String str2) {
        String queryParameter;
        if (TextUtils.isEmpty(this.aA) && !TextUtils.isEmpty(this.aB)) {
            Uri uri = Uri.parse(this.aB);
            String host = uri.getHost();
            String queryParameter2 = "";
            if ("lynxview".equalsIgnoreCase(host) || (host != null && host.contains("lynxview"))) {
                queryParameter2 = uri.getQueryParameter("surl");
                queryParameter = uri.getQueryParameter("playable_hash");
            } else {
                queryParameter = "";
            }
            Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme(uri.getScheme()).authority(host).appendQueryParameter("surl", queryParameter2);
            if (!TextUtils.isEmpty(queryParameter)) {
                builderAppendQueryParameter.appendQueryParameter("playable_hash", queryParameter);
            }
            this.aA = builderAppendQueryParameter.toString();
        }
        return this.aA;
    }

    private String e(String str, String str2) {
        String str3 = String.format("rubeex://playable-minigamelite?id=%1s&schema=%2s", str, Uri.encode(str2));
        this.ay = str3;
        return str3;
    }

    private void e(String str, JSONObject jSONObject) {
        try {
            int i = this.ah;
            if (i == 0) {
                if (this.aj != a.LAND_PAGE && !k(this.ay)) {
                    O();
                }
                jSONObject.put("playable_url", this.ay);
            } else if (i == 3 || i == 4) {
                jSONObject.put("playable_url", e(this.aZ, this.ba));
            } else if (i == 1 || i == 2) {
                jSONObject.put("playable_url", d(this.aX, this.aY));
            }
            jSONObject.put("playable_render_type", this.ah);
            if (this.ao != null) {
                if (this.ah == 0 && (this.aj != a.LAND_PAGE || k(this.ay))) {
                    g.a("PlayablePlugin", "reportJSSDKEvent by ActionProxy");
                    this.ao.a(jSONObject);
                } else if (this.ah == 0) {
                    g.a("PlayablePlugin", "reportJSSDKEvent error no not playable url");
                } else {
                    g.a("PlayablePlugin", "reportJSSDKEvent by ActionProxy");
                    this.ao.a(jSONObject);
                }
            }
        } catch (JSONException unused) {
        }
    }

    private boolean k(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("/union-fe/playable/") || str.contains("/union-fe-sg/playable/") || str.contains("/union-fe-i18n/playable/");
    }

    static /* synthetic */ int l(h hVar) {
        int i = hVar.Q;
        hVar.Q = i + 1;
        return i;
    }

    static /* synthetic */ int m(h hVar) {
        int i = hVar.R;
        hVar.R = i + 1;
        return i;
    }

    public void A() {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.g();
        }
    }

    public void B() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.J > 0) {
                jSONObject.put("playable_material_first_frame_show_duration", System.currentTimeMillis() - this.J);
            } else {
                jSONObject.put("playable_material_first_frame_show_duration", 0L);
            }
            if (this.H > 0) {
                jSONObject.put("playable_material_first_frame_load_duration", System.currentTimeMillis() - this.H);
            } else {
                jSONObject.put("playable_material_first_frame_load_duration", 0L);
            }
            c("PL_sdk_material_first_frame_show", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void C() {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.i();
        }
    }

    public void D() {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.j();
        }
    }

    public void E() {
        b bVar;
        this.af = System.currentTimeMillis();
        int i = this.ah;
        if ((i == 1 || i == 2) && (bVar = this.o) != null) {
            bVar.a(System.currentTimeMillis());
        }
    }

    public void F() {
    }

    public void G() {
    }

    public void H() {
        this.h.removeCallbacks(this.i);
        this.h.removeCallbacks(this.j);
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.H > 0) {
                jSONObject.put("playable_jssdk_load_success_duration", System.currentTimeMillis() - this.H);
            } else {
                jSONObject.put("playable_jssdk_load_success_duration", 0L);
            }
            c("PL_sdk_jssdk_load_success", jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.c();
        }
    }

    public void I() {
        if (this.x) {
            this.K = System.currentTimeMillis();
            if (this.aj == a.FEED_AWEME) {
                if (this.aS && this.ai == 3) {
                    b bVar = this.o;
                    if (bVar != null && bVar.b()) {
                        P();
                        return;
                    } else {
                        if (this.o == null) {
                            this.o = new b(this, this.C);
                            P();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (this.aS && this.ai == 2) {
                b bVar2 = this.o;
                if (bVar2 != null && bVar2.b()) {
                    P();
                } else if (this.o == null) {
                    this.o = new b(this, this.C);
                    P();
                }
            }
        }
    }

    public void J() {
        try {
            b bVar = this.o;
            if (bVar != null) {
                bVar.a();
            }
            Handler handler = this.l;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable th) {
            g.a("Playable_CrashMonitor", "The stuttering detection has been paused due to a crash.-- " + th);
        }
    }

    public void K() {
        this.aq = 0;
        this.ar = 0;
        this.aF = 0.0f;
        this.aG = 0;
        this.aH = 0;
        this.aI = 0;
        this.aJ = 0;
        this.aK = 0;
        this.aL = 0;
        this.aM = 0;
        this.aN = 0;
        this.aO = 0;
        this.aP = 0;
    }

    public void L() {
        if (this.bb) {
            return;
        }
        this.bb = true;
        this.E = 0L;
        this.q = true;
        K();
        try {
            View view = this.am.get();
            if (view != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    view.getViewTreeObserver().removeOnGlobalLayoutListener(this.bd);
                } else {
                    view.getViewTreeObserver().removeGlobalOnLayoutListener(this.bd);
                }
            }
        } catch (Throwable unused) {
        }
        try {
            this.an.b();
        } catch (Throwable unused2) {
        }
        try {
            b bVar = this.o;
            if (bVar != null) {
                bVar.a();
                this.o = null;
            }
            Handler handler = this.l;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable th) {
            g.a("Playable_CrashMonitor", "crash -- " + th);
        }
        try {
            if (!TextUtils.isEmpty(this.ay)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("playable_all_times", this.Q);
                jSONObject.put("playable_hit_times", this.R);
                int i = this.Q;
                if (i > 0) {
                    jSONObject.put("playable_hit_ratio", ((double) this.R) / (((double) i) * 1.0d));
                } else {
                    jSONObject.put("playable_hit_ratio", 0);
                }
                c("PL_sdk_preload_times", jSONObject);
            }
        } catch (Throwable unused3) {
        }
        try {
            if (!TextUtils.isEmpty(this.ay)) {
                if (this.F != -1) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - this.F;
                    g.a("PlayablePlugin", "playable show time +" + jCurrentTimeMillis);
                    this.D = this.D + jCurrentTimeMillis;
                    this.F = -1L;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_user_play_duration", this.D);
                c("PL_sdk_user_play_duration", jSONObject2);
            }
        } catch (Throwable unused4) {
        }
        this.h.removeCallbacks(this.i);
        this.h.removeCallbacks(this.j);
        this.h.removeCallbacksAndMessages(null);
    }

    public String M() {
        return "function playable_callJS(){return \"Android call the JS method is callJS\";}";
    }

    public Context a() {
        return this.ak;
    }

    public h a(int i) {
        this.ah = i;
        return this;
    }

    public h a(String str) {
        this.at = str;
        return this;
    }

    public h a(String str, String str2) {
        this.aw.put(str, str2);
        return this;
    }

    public h a(boolean z) {
        this.aR = z;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", this.aR);
            a("volumeChange", jSONObject);
        } catch (Throwable th) {
            g.a("PlayablePlugin", "setIsMute error", th);
        }
        return this;
    }

    protected void a(int i, String str) {
        J();
        c(i, str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i);
            jSONObject.put("playable_msg", str);
        } catch (Throwable th) {
            g.a("PlayablePlugin", "reportRenderFatal error", th);
        }
        c("PL_sdk_global_faild", jSONObject);
    }

    public void a(int i, String str, String str2) {
        this.ai = -1;
        this.az = str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i);
            jSONObject.put("playable_msg", str);
            jSONObject.put("playable_fail_url", str2);
        } catch (Throwable th) {
            g.a("PlayablePlugin", "onWebReceivedError error", th);
        }
        c("PL_sdk_html_load_error", jSONObject);
        if (this.w) {
            this.w = false;
            this.h.removeCallbacks(this.i);
            this.h.removeCallbacks(this.j);
            a(1, "ContainerLoadFail");
        }
    }

    public void a(View view) {
        if (view == null) {
            return;
        }
        try {
            this.am = new WeakReference<>(view);
            b(view);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this.bd);
        } catch (Throwable th) {
            g.a("PlayablePlugin", "setViewForScreenSize error", th);
        }
    }

    public void a(String str, JSONObject jSONObject) {
        if (g.a()) {
            StringBuilder sb = new StringBuilder();
            sb.append("CALL JS [");
            sb.append(str);
            sb.append("] ");
            sb.append(jSONObject != null ? jSONObject.toString() : "");
            g.a("PlayablePlugin", sb.toString());
        }
        c cVar = this.ap;
        if (cVar != null) {
            cVar.a(str, jSONObject);
        }
    }

    public void a(JSONObject jSONObject) {
    }

    public void a(boolean z, String str, int i) {
        if (z) {
            this.ai = -1;
            this.az = str;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("playable_code", i);
                jSONObject.put("playable_msg", "url load error");
                jSONObject.put("playable_fail_url", str);
            } catch (Throwable th) {
                g.a("PlayablePlugin", "onWebReceivedHttpError error", th);
            }
            c("PL_sdk_html_load_error", jSONObject);
            if (this.w) {
                this.w = false;
                this.h.removeCallbacks(this.i);
                this.h.removeCallbacks(this.j);
                a(1, "ContainerLoadFail");
            }
        }
    }

    public h b(String str) {
        this.au = str;
        return this;
    }

    public h b(boolean z) {
        int i;
        int i2;
        if (this.aS == z) {
            return this;
        }
        this.aS = z;
        JSONObject jSONObject = new JSONObject();
        try {
            if (!this.aS) {
                jSONObject.put("playable_background_show_type", this.ab);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        c(this.aS ? "PL_sdk_viewable_true" : "PL_sdk_viewable_false", jSONObject);
        if (this.G == -1 && this.aS) {
            this.G = System.currentTimeMillis();
            c("PL_sdk_page_show", (JSONObject) null);
            com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
            if (aVar != null && (((i2 = this.ah) == 0 || i2 == 1 || i2 == 2) && this.y)) {
                aVar.a(0);
            }
        }
        if (this.G != -1 && !this.aS && !this.aT) {
            this.aT = true;
            com.bytedance.sdk.openadsdk.l.a aVar2 = this.ao;
            if (aVar2 != null && (((i = this.ah) == 0 || i == 1 || i == 2) && this.y)) {
                aVar2.a(1);
            }
        }
        if (this.aS) {
            this.F = System.currentTimeMillis();
        } else if (this.F != -1) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.F;
            g.a("PlayablePlugin", "playable show time +" + jCurrentTimeMillis);
            this.D = this.D + jCurrentTimeMillis;
            this.F = -1L;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("viewStatus", this.aS);
            a(o2.g.a0, jSONObject2);
        } catch (Throwable th) {
            g.a("PlayablePlugin", "setViewable error", th);
        }
        if (this.aS) {
            I();
        } else {
            J();
        }
        return this;
    }

    public Map<String, String> b() {
        return this.aw;
    }

    public void b(int i, String str) {
        g.a("Playable_CrashMonitor", "-- Detected that the page is stuck for more than 2s and needs to be reported " + i);
        this.U = i;
        if (this.ag == null) {
            this.ag = new JSONObject();
        }
        try {
            this.ag.put("playable_stuck_type", i);
            this.ag.put("playable_stuck_reason", str);
            if (this.K > 0) {
                this.ag.put("playable_stuck_duration", System.currentTimeMillis() - this.K);
            } else {
                this.ag.put("playable_stuck_duration", 0L);
            }
        } catch (Throwable unused) {
        }
        c("PL_sdk_page_stuck", this.ag);
        J();
        if (this.ao != null) {
            if (i == 2) {
                this.ag = new JSONObject();
            }
            this.ao.h(this.ag);
        }
    }

    public void b(String str, String str2) {
        Bitmap bitmapA;
        if (TextUtils.isEmpty(str2) || (bitmapA = e.a(str2)) == null) {
            return;
        }
        MediaStore.Images.Media.insertImage(this.ak.getContentResolver(), bitmapA, str, "");
    }

    protected void b(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        e(str, jSONObject);
    }

    public void b(JSONObject jSONObject) {
    }

    public h c(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("playable_style", str);
            this.aC = jSONObject;
        } catch (Throwable th) {
            g.a("PlayablePlugin", "setPlayableStyle error", th);
        }
        return this;
    }

    public h c(boolean z) {
        this.aU = z;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.aU);
            a("change_playable_click", jSONObject);
        } catch (Throwable th) {
            g.a("PlayablePlugin", "setPlayableClick error", th);
        }
        return this;
    }

    public JSONObject c() {
        return this.aC;
    }

    public void c(String str, String str2) {
    }

    public void c(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            if (!this.S && this.R > 0) {
                this.S = true;
            }
            jSONObject.put("playable_event", str);
            jSONObject.put("playable_ts", System.currentTimeMillis());
            jSONObject.put("playable_viewable", this.aS);
            jSONObject.put("playable_session_id", this.t);
            int i = this.ah;
            if (i == 0) {
                if (this.aj != a.LAND_PAGE && !k(this.ay)) {
                    O();
                }
                jSONObject.put("playable_url", this.ay);
            } else if (i == 3 || i == 4) {
                jSONObject.put("playable_url", e(this.aZ, this.ba));
            } else if (i == 1 || i == 2) {
                jSONObject.put("playable_url", d(this.aX, this.aY));
            }
            jSONObject.put("playable_full_url", this.aB);
            jSONObject.put("playable_replay_count", this.T);
            jSONObject.put("playable_is_prerender", this.aV);
            jSONObject.put("playable_is_preload", this.S);
            jSONObject.put("playable_render_type", this.ah);
            jSONObject.put("playable_scenes_type", this.aj.ordinal());
            String str2 = "";
            jSONObject.put("playable_gecko_key", TextUtils.isEmpty(this.aX) ? "" : this.aX);
            if (!TextUtils.isEmpty(this.aY)) {
                str2 = this.aY;
            }
            jSONObject.put("playable_gecko_channel", str2);
            jSONObject.put("playable_sdk_version", "6.6.0");
            jSONObject.put("playable_minigamelite_id", this.aZ);
            jSONObject.put("playable_minigamelite_schema", this.ba);
            jSONObject.put("playable_is_debug", this.aW);
            jSONObject.put("playable_retry_count", this.V);
            jSONObject.put("playable_enter_from", this.W);
            jSONObject.put("playable_sequence", this.X);
            jSONObject.put("playable_current_section", this.Y);
            jSONObject.put("is_playable_finish", this.Z);
            jSONObject.put("playable_card_session", this.M);
            jSONObject.put("playable_video_session", this.N);
            jSONObject.put("playable_network_type", p());
            jSONObject.put("playable_lynx_version", this.z);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ad_extra_data", jSONObject);
            jSONObject2.put("tag", this.u);
            jSONObject2.put("nt", 4);
            jSONObject2.put("category", "umeng");
            jSONObject2.put("is_ad_event", "1");
            jSONObject2.put("refer", "playable");
            jSONObject2.put("value", this.ax.opt(BidResponsedEx.KEY_CID));
            jSONObject2.put("log_extra", this.ax.opt("log_extra"));
            int i2 = this.ah;
            if (i2 != -1 && i2 != -2) {
                if (this.ao == null) {
                    g.a("PlayablePlugin", "reportEvent error no impl");
                    return;
                }
                List<JSONObject> list = this.bc;
                if (list != null && !list.isEmpty()) {
                    Iterator<JSONObject> it = this.bc.iterator();
                    while (it.hasNext()) {
                        JSONObject jSONObjectOptJSONObject = it.next().optJSONObject("ad_extra_data");
                        if (jSONObjectOptJSONObject != null) {
                            jSONObjectOptJSONObject.put("playable_render_type", this.ah);
                            jSONObjectOptJSONObject.put("playable_url", this.ay);
                        }
                        this.ao.a(jSONObjectOptJSONObject);
                    }
                    this.bc.clear();
                }
                if (this.ah == 0 && (this.aj != a.LAND_PAGE || k(this.ay))) {
                    g.a("PlayablePlugin", "reportEvent by ActionProxy");
                    this.ao.a(jSONObject);
                    return;
                } else if (this.ah == 0) {
                    g.a("PlayablePlugin", "reportEvent error no not playable url");
                    return;
                } else {
                    g.a("PlayablePlugin", "reportEvent by ActionProxy");
                    this.ao.a(jSONObject);
                    return;
                }
            }
            if (this.bc == null) {
                this.bc = new ArrayList();
            }
            this.bc.add(jSONObject2);
        } catch (Throwable th) {
            g.a("PlayablePlugin", "reportEvent error", th);
        }
    }

    public void c(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar == null || aVar.g(jSONObject) || jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("resource_base64");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        int iOptInt = jSONObject.optInt("resource_type", -1);
        String strOptString2 = jSONObject.optString("resource_name", "playable_media");
        if (iOptInt == 1) {
            b(strOptString2, strOptString);
        } else if (iOptInt == 2) {
            c(strOptString2, strOptString);
        }
    }

    public h d(String str) {
        this.av = str;
        return this;
    }

    public String d() {
        return this.au;
    }

    public JSONObject d(String str, JSONObject jSONObject) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (g.a()) {
            StringBuilder sb = new StringBuilder();
            sb.append("PlayablePlugin JSB-REQ [");
            sb.append(str);
            sb.append("] ");
            sb.append(jSONObject != null ? jSONObject.toString() : "");
            g.a("PlayablePlugin", sb.toString());
        }
        JSONObject jSONObjectA = this.an.a(str, jSONObject);
        if (g.a()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("PlayablePlugin JSB-RSP [");
            sb2.append(str);
            sb2.append("] time:");
            sb2.append(System.currentTimeMillis() - jCurrentTimeMillis);
            sb2.append(" ");
            sb2.append(jSONObjectA != null ? jSONObjectA.toString() : "");
            g.a("PlayablePlugin", sb2.toString());
        }
        return jSONObjectA;
    }

    public void d(JSONObject jSONObject) {
        if (this.ao != null) {
            try {
                this.ao.a(jSONObject.optBoolean("isPrevent", false));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public h e(String str) {
        this.aQ = str;
        return this;
    }

    public h e(JSONObject jSONObject) {
        this.ax = jSONObject;
        return this;
    }

    public String e() {
        return this.at;
    }

    public h f(String str) {
        int iIndexOf;
        String strDecode;
        this.aB = str;
        try {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            if (ProxyConfig.MATCH_HTTP.equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                a(0);
                if (str != null && (iIndexOf = str.indexOf("?")) != -1) {
                    str = str.substring(0, iIndexOf);
                }
            } else {
                String host = uri.getHost();
                if (o2.h.K.equalsIgnoreCase(host) || (host != null && host.contains(o2.h.K))) {
                    a(0);
                    String queryParameter = uri.getQueryParameter("url");
                    if (!TextUtils.isEmpty(queryParameter) && (strDecode = Uri.decode(queryParameter)) != null) {
                        int iIndexOf2 = strDecode.indexOf("?");
                        str = iIndexOf2 != -1 ? strDecode.substring(0, iIndexOf2) : strDecode;
                    }
                } else if ("lynxview".equalsIgnoreCase(host) || (host != null && host.contains("lynxview"))) {
                    if (this.ah == -1) {
                        a(2);
                    } else {
                        a(1);
                    }
                }
            }
        } catch (Throwable unused) {
        }
        this.ay = str;
        return this;
    }

    public String f() {
        return this.av;
    }

    public void f(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.Y = jSONObject.optString("section");
        }
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.i(jSONObject);
        }
    }

    public String g() {
        return this.aQ;
    }

    public void g(String str) {
        int i;
        int i2;
        this.ai = 1;
        JSONObject jSONObject = new JSONObject();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.H = jCurrentTimeMillis;
            long j = this.G;
            jSONObject.put("playable_page_show_duration", j != -1 ? jCurrentTimeMillis - j : 0L);
        } catch (Throwable th) {
            g.a("PlayablePlugin", "reportUrlLoadStart error", th);
        }
        c("PL_sdk_html_load_start", jSONObject);
        if (this.v && ((i = this.ah) == 0 || i == 1 || i == 2)) {
            this.h.postDelayed(this.i, this.A * 1000);
            if (k(this.ay) || (i2 = this.ah) == 1 || i2 == 2) {
                this.h.postDelayed(this.j, this.B * 1000);
            }
            this.v = false;
        }
        if (this.q) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                StringBuffer stringBuffer2 = new StringBuffer();
                StringBuffer stringBuffer3 = new StringBuffer();
                if (e.a(this.ak, e.l)) {
                    stringBuffer.append("Microphone_");
                    stringBuffer2.append("1");
                    if (e.b(this.ak, "android.permission.RECORD_AUDIO")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (e.a(this.ak, e.k)) {
                    stringBuffer.append("Magetometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (e.a(this.ak, e.j)) {
                    stringBuffer.append("Accelerometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (e.a(this.ak, e.i)) {
                    stringBuffer.append("Gyro_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (e.a(this.ak, e.h)) {
                    stringBuffer.append("Camera_");
                    stringBuffer2.append("1");
                    if (e.b(this.ak, "android.permission.CAMERA")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (e.a(this.ak, e.f1817g)) {
                    stringBuffer.append("Photo");
                    stringBuffer2.append("1");
                    if (e.a(this.ak)) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_available_hardware_name", stringBuffer.toString());
                jSONObject2.put("playable_available_hardware_code", stringBuffer2.toString());
                jSONObject2.put("playable_available_hardware_auth_code", stringBuffer3.toString());
                c("PL_sdk_hardware_detect", jSONObject2);
                this.q = false;
            } catch (Throwable th2) {
                g.a("PlayablePlugin", "Hardware detect error", th2);
            }
        }
    }

    public void g(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.j(jSONObject);
        }
    }

    public void h(String str) {
        WebView webView;
        this.ai = 2;
        this.az = str;
        JSONObject jSONObject = new JSONObject();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.I = jCurrentTimeMillis;
            long j = this.H;
            jSONObject.put("playable_html_load_start_duration", j != -1 ? jCurrentTimeMillis - j : 0L);
        } catch (Throwable th) {
            g.a("PlayablePlugin", "reportUrlLoadFinish error", th);
        }
        c("PL_sdk_html_load_finish", jSONObject);
        this.h.removeCallbacks(this.i);
        try {
            if (this.ah == 0) {
                if (Build.VERSION.SDK_INT >= 19 && this.p && (webView = this.al) != null) {
                    this.p = false;
                    webView.evaluateJavascript(M(), new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.l.h.9
                        @Override // android.webkit.ValueCallback
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public void onReceiveValue(String str2) {
                            g.a("Playable_CrashMonitor", "load inject js=" + str2);
                        }
                    });
                }
                I();
            }
        } catch (Throwable th2) {
            g.a("PlayablePlugin", "crashMonitor error", th2);
        }
    }

    public void h(JSONObject jSONObject) {
        WebView webView;
        this.ag = jSONObject;
        this.X++;
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.k(jSONObject);
        }
        J();
        this.h.removeCallbacks(this.k);
        if (this.x) {
            this.K = System.currentTimeMillis();
            this.ae = System.currentTimeMillis();
            this.af = 0L;
            int i = this.ah;
            if (i == 0) {
                if (Build.VERSION.SDK_INT >= 19 && (webView = this.al) != null) {
                    webView.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.l.h.8
                        @Override // android.webkit.ValueCallback
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public void onReceiveValue(String str) {
                            h.this.af = System.currentTimeMillis();
                        }
                    });
                }
            } else if (i == 1 || i == 2) {
                a("playable_stuck_check_ping", new JSONObject());
            }
            this.h.postDelayed(this.k, this.C);
        }
    }

    public boolean h() {
        return this.aR;
    }

    public void i(String str) {
        this.h.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.l.h.10
            @Override // java.lang.Runnable
            public void run() {
                h.l(h.this);
            }
        });
    }

    public void i(JSONObject jSONObject) {
        b(2, jSONObject != null ? jSONObject.optString("error_msg", "The material directly invokes the exception pocket mask on the client") : "The material directly invokes the exception pocket mask on the client");
    }

    public boolean i() {
        return this.aS;
    }

    public JSONObject j() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.aU);
            return jSONObject;
        } catch (Throwable th) {
            g.a("PlayablePlugin", "getPlayableClickStatus error", th);
            return new JSONObject();
        }
    }

    public void j(String str) {
        this.h.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.l.h.2
            @Override // java.lang.Runnable
            public void run() {
                h.m(h.this);
            }
        });
    }

    public void j(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.l(jSONObject);
        }
    }

    public Set<String> k() {
        return this.an.a();
    }

    public void k(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.m(jSONObject);
        }
    }

    public JSONObject l() {
        try {
            boolean zA = e.a(this.ak, "android.permission.RECORD_AUDIO");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("result", zA);
            return jSONObject;
        } catch (Throwable th) {
            g.a("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public JSONObject l(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int iOptInt = jSONObject.optInt("type", 0);
        return iOptInt != 1 ? iOptInt != 2 ? iOptInt != 3 ? new JSONObject() : n() : m() : l();
    }

    public JSONObject m() {
        try {
            boolean zA = e.a(this.ak, "android.permission.CAMERA");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("result", zA);
            return jSONObject;
        } catch (Throwable th) {
            g.a("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public JSONObject m(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int iOptInt = jSONObject.optInt("type", 0);
        JSONObject jSONObject2 = new JSONObject();
        if (iOptInt != 1) {
            if (iOptInt != 2) {
                if (iOptInt == 3) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        jSONObject2.put("result", e.a(this.ak));
                    } else {
                        jSONObject2.put("result", false);
                    }
                }
                return jSONObject2;
            }
            if (Build.VERSION.SDK_INT >= 23) {
                jSONObject2.put("result", e.b(this.ak, "android.permission.CAMERA"));
            } else {
                jSONObject2.put("result", false);
            }
        } else if (Build.VERSION.SDK_INT >= 23) {
            jSONObject2.put("result", e.b(this.ak, "android.permission.RECORD_AUDIO"));
        } else {
            jSONObject2.put("result", false);
        }
        return jSONObject2;
    }

    public JSONObject n() {
        boolean zA;
        boolean zA2;
        try {
            boolean z = true;
            if (Build.VERSION.SDK_INT >= 33) {
                zA = e.a(this.ak, "android.permission.READ_MEDIA_IMAGES");
                zA2 = true;
            } else {
                zA = e.a(this.ak, "android.permission.READ_EXTERNAL_STORAGE");
                zA2 = e.a(this.ak, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isHasRead", zA);
            jSONObject.put("isHasWrite", zA2);
            if (!zA || !zA2) {
                z = false;
            }
            jSONObject.put("result", z);
            return jSONObject;
        } catch (Throwable th) {
            g.a("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public void n(JSONObject jSONObject) {
        if (jSONObject != null) {
            boolean zOptBoolean = jSONObject.optBoolean("success", true);
            if (zOptBoolean) {
                this.ai = 3;
                I();
            } else {
                this.ai = -2;
                com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
                if (aVar != null) {
                    aVar.b(false);
                }
            }
            if (zOptBoolean || !this.w) {
                return;
            }
            this.w = false;
            this.h.removeCallbacks(this.i);
            this.h.removeCallbacks(this.j);
            a(4, "CaseRenderFail");
        }
    }

    public JSONObject o() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("scene_type", this.aj.ordinal());
            jSONObject.put("safe_area_top_height", this.aD);
            jSONObject.put("safe_area_bottom_height", this.aE);
            jSONObject.put("playable_enter_from", this.W);
            jSONObject.put("playable_retry_count", this.V);
            jSONObject.put("playable_card_session", this.M);
            jSONObject.put("playable_video_session", this.N);
            jSONObject.put("playable_network_type", p());
            jSONObject.put("aweme_id", this.P);
            return jSONObject;
        } catch (Throwable th) {
            g.a("PlayablePlugin", "playableInfo error", th);
            return new JSONObject();
        }
    }

    protected void o(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.d(jSONObject);
        }
    }

    public String p() {
        com.bytedance.sdk.openadsdk.l.a aVar;
        if (TextUtils.isEmpty(this.O) && (aVar = this.ao) != null) {
            this.O = aVar.a().toString();
        }
        return this.O;
    }

    protected void p(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.e(jSONObject);
        }
    }

    public com.bytedance.sdk.openadsdk.l.a q() {
        return this.ao;
    }

    protected void q(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.f(jSONObject);
        }
    }

    public JSONObject r() {
        if (this.as.isNull("width")) {
            View view = this.am.get();
            if (view == null) {
                return this.as;
            }
            b(view);
        }
        return this.as;
    }

    public JSONObject s() {
        return this.ax;
    }

    public JSONObject t() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("devicePixelRatio", this.aF);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", this.aG);
            jSONObject2.put("height", this.aH);
            jSONObject.put("screen", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("x", this.aJ);
            jSONObject3.put("y", this.aI);
            jSONObject3.put("width", this.aK);
            jSONObject3.put("height", this.aL);
            jSONObject.put(o2.h.K, jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("x", this.aN);
            jSONObject4.put("y", this.aM);
            jSONObject4.put("width", this.aO);
            jSONObject4.put("height", this.aP);
            jSONObject.put("visible", jSONObject4);
        } catch (Throwable th) {
            g.a("PlayablePlugin", "getViewport error", th);
        }
        return jSONObject;
    }

    public void u() {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.b();
        }
    }

    public void v() {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.b(true);
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.J > 0) {
                jSONObject.put("playable_material_interactable_duration", System.currentTimeMillis() - this.J);
            } else {
                jSONObject.put("playable_material_interactable_duration", 0L);
            }
            if (this.H > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.H;
                this.L = jCurrentTimeMillis;
                jSONObject.put("playable_material_interactable_load_duration", jCurrentTimeMillis);
            } else {
                jSONObject.put("playable_material_interactable_load_duration", 0L);
            }
            c("PL_sdk_material_interactable", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void w() {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            aVar.d();
        }
        this.U = 2;
    }

    public void x() {
        this.Z = true;
    }

    public void y() {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            if (this.aj != a.FEED_AWEME) {
                aVar.e();
                return;
            }
            int i = this.U;
            if (i == 0 || i == 1) {
                return;
            }
            aVar.e();
        }
    }

    public void z() {
        com.bytedance.sdk.openadsdk.l.a aVar = this.ao;
        if (aVar != null) {
            if (this.aj != a.FEED_AWEME) {
                aVar.f();
                return;
            }
            int i = this.U;
            if (i == 0 || i == 1) {
                return;
            }
            aVar.f();
        }
    }
}
