package com.bytedance.sdk.openadsdk.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebBackForwardList;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import com.bytedance.sdk.component.widget.PangleWebView;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.io.IOException;
import java.util.HashMap;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: LandingPageLog.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {
    private static final int[] a = {10, 30, 50, 75, 100};
    private boolean A;
    private i B;
    private volatile long C;
    private final AtomicInteger D;
    private final AtomicInteger E;
    private final AtomicBoolean F;
    private volatile int G;
    private int H;
    private volatile long I;
    private volatile long J;
    private volatile long K;
    private final AtomicBoolean L;
    private String M;
    private long N;
    private int b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1232d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f1233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f1234f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicBoolean f1235g;
    private final AtomicBoolean h;
    private int i;
    private boolean j;
    private String k;
    private String l;
    private final Context m;
    private final q n;
    private String o;
    private long p;
    private long q;
    private long r;
    private long s;
    private long t;
    private boolean u;
    private final boolean v;
    private final AtomicInteger w;
    private WebView x;
    private boolean y;
    private com.bytedance.sdk.openadsdk.b.c.e z;

    /* JADX INFO: compiled from: LandingPageLog.java */
    private class a {
        private a() {
        }

        @JavascriptInterface
        public String getUrl() {
            return "";
        }

        @JavascriptInterface
        public void readPercent(String str) {
            int i = 0;
            try {
                int iIntValue = Float.valueOf(str).intValue();
                if (iIntValue > 100) {
                    i = 100;
                } else if (iIntValue >= 0) {
                    i = iIntValue;
                }
            } catch (Throwable unused) {
            }
            j.this.w.set(i);
        }
    }

    public j(q qVar, WebView webView) {
        this.b = 0;
        this.c = -1L;
        this.f1232d = 1;
        this.f1233e = new AtomicBoolean(false);
        this.f1234f = new AtomicBoolean(false);
        this.f1235g = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        this.i = -1;
        this.o = "landingpage";
        this.p = 0L;
        this.q = 0L;
        this.r = 0L;
        this.s = 0L;
        this.t = 0L;
        this.u = false;
        this.v = false;
        this.w = new AtomicInteger(0);
        this.y = false;
        this.A = false;
        this.C = 0L;
        this.D = new AtomicInteger(0);
        this.E = new AtomicInteger(0);
        this.F = new AtomicBoolean(false);
        this.G = 0;
        this.H = -1;
        this.L = new AtomicBoolean(false);
        this.m = com.bytedance.sdk.openadsdk.core.o.a();
        this.n = qVar;
        this.x = webView;
        if (webView == null) {
            return;
        }
        if (webView instanceof PangleWebView) {
            this.N = ((PangleWebView) webView).a;
        } else {
            this.N = System.currentTimeMillis();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                this.x.addJavascriptInterface(new a(), "JS_LANDING_PAGE_LOG_OBJ");
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.c("LandingPageLog", "addJavascriptInterface exception", e2);
            }
        }
        if (qVar == null || qVar.aR() == null) {
            return;
        }
        this.c = qVar.aR().optLong("page_id", -1L);
    }

    public j(q qVar, WebView webView, i iVar, int i) {
        this(qVar, webView);
        this.B = iVar;
        this.H = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str) {
        try {
            if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.settings.f.b)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            StringBuilder sb = new StringBuilder(com.bytedance.sdk.openadsdk.core.settings.f.b);
            jSONObject.putOpt(BidResponsedEx.KEY_CID, a().Y());
            jSONObject.putOpt("ad_id", a().Y());
            jSONObject.put("log_extra", a().ac());
            ac.a(sb, "\"/** adInfo **/\"", jSONObject.toString());
            ac.a(sb, "\"/** first_page **/\"", String.valueOf(i));
            ac.a(sb, "\"/** ix_to_externalurl **/\"", this.c != -1 ? "1" : "0");
            ac.a(sb, "\"/** preload_status **/\"", this.H == 2 ? MBridgeConstans.API_REUQEST_CATEGORY_APP : "0");
            ac.a(sb, "\"/** scene_state **/\"", str);
            ac.a(sb, "\"/** web_init_time **/\"", String.valueOf(this.N));
            ac.a(sb, "\"/** channel_name **/\"", "\"" + a().af() + "\"");
            ac.a(sb, "\"/** session_id **/\"", "\"" + UUID.randomUUID().toString() + "\"");
            ac.a(sb, "\"/** web_url **/\"", "\"" + a().P() + "\"");
            String string = sb.toString();
            if (TextUtils.isEmpty(string)) {
                return;
            }
            final String strC = c(string);
            if (TextUtils.isEmpty(strC) || this.x == null) {
                return;
            }
            aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.b.j.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.component.utils.k.a(j.this.x, strC);
                }
            });
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.d(th.getMessage());
        }
    }

    private void a(String str, String str2, long j) {
        if (this.f1235g.compareAndSet(false, true)) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("url", str);
                jSONObject.put("type", str2);
            } catch (Throwable unused) {
            }
            a("load_finish_progress", jSONObject, j);
        }
    }

    private void a(String str, JSONObject jSONObject) {
        a(str, jSONObject, -1L);
    }

    private void a(String str, JSONObject jSONObject, long j) {
        if (!this.y || this.n == null || TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject2 = null;
        if (jSONObject != null) {
            try {
                int i = 1;
                jSONObject.put("is_playable", t.b(this.n) ? 1 : 0);
                if (!com.bytedance.sdk.openadsdk.core.video.b.a.a().a(this.n)) {
                    i = 0;
                }
                jSONObject.put("usecache", i);
            } catch (JSONException unused) {
            }
            try {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("ad_extra_data", jSONObject.toString());
                    if (j > 0) {
                        jSONObject3.put("duration", j);
                    }
                } catch (JSONException unused2) {
                }
                jSONObject2 = jSONObject3;
            } catch (JSONException unused3) {
            }
        }
        c.c(this.n, this.o, str, jSONObject2);
    }

    private void a(boolean z, final String str) {
        if (z) {
            final int iJ = j();
            c.a(new com.bytedance.sdk.component.g.h("sendPrefLog") { // from class: com.bytedance.sdk.openadsdk.b.j.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.bytedance.sdk.openadsdk.core.settings.f fVarZ = com.bytedance.sdk.openadsdk.core.o.d().z();
                        boolean zA = j.this.a(fVarZ, str);
                        if (zA) {
                            if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.settings.f.b)) {
                                j.this.a(iJ, str);
                                return;
                            }
                            if (TextUtils.isEmpty(fVarZ.c) || !zA) {
                                return;
                            }
                            String str2 = fVarZ.c;
                            com.bytedance.sdk.component.f.b.b bVarC = com.bytedance.sdk.openadsdk.k.c.a().b().c();
                            bVarC.a(str2);
                            HashMap map = new HashMap();
                            map.put("content-type", "application/json; charset=utf-8");
                            bVarC.d(map);
                            bVarC.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.b.j.1.1
                                @Override // com.bytedance.sdk.component.f.a.a
                                public void a(com.bytedance.sdk.component.f.b.c cVar, com.bytedance.sdk.component.f.b bVar) {
                                    try {
                                        com.bytedance.sdk.openadsdk.core.settings.f.b = bVar.d();
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        j.this.a(iJ, str);
                                    } catch (Exception e2) {
                                        com.bytedance.sdk.component.utils.l.c("LandingPageLog", "TTWebViewClient : onPageFinished", e2);
                                    }
                                }

                                @Override // com.bytedance.sdk.component.f.a.a
                                public void a(com.bytedance.sdk.component.f.b.c cVar, IOException iOException) {
                                    com.bytedance.sdk.component.utils.l.b("send landing page js error", iOException.toString());
                                }
                            });
                        }
                    } catch (Throwable th) {
                        com.bytedance.sdk.component.utils.l.d(th.getMessage());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(com.bytedance.sdk.openadsdk.core.settings.f fVar, String str) {
        str.hashCode();
        switch (str) {
            case "0":
                return fVar.f1675d;
            case "1":
                return fVar.f1676e;
            case "2":
                return fVar.f1677f;
            default:
                return false;
        }
    }

    private String c(String str) {
        return "javascript:" + str;
    }

    private boolean i() {
        q qVar;
        return this.A && (qVar = this.n) != null && qVar.bu();
    }

    private int j() {
        WebView webView = this.x;
        if (webView == null) {
            return 0;
        }
        try {
            WebBackForwardList webBackForwardListCopyBackForwardList = webView.copyBackForwardList();
            if (webBackForwardListCopyBackForwardList != null) {
                return webBackForwardListCopyBackForwardList.getCurrentIndex() == 0 ? 1 : 0;
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public j a(boolean z) {
        this.y = z;
        return this;
    }

    public q a() {
        return this.n;
    }

    public void a(int i) {
        this.H = i;
    }

    public void a(long j) {
        this.q = j;
    }

    public void a(WebView webView, int i) {
        if (webView == null) {
            return;
        }
        com.bytedance.sdk.component.utils.l.b("LandingPageLog", "onWebProgress: " + i);
        if (this.C == 0) {
            this.C = SystemClock.elapsedRealtime();
        }
        if (this.r == 0 && i > 0) {
            this.r = System.currentTimeMillis();
        } else if (this.s == 0 && i == 100) {
            this.s = System.currentTimeMillis();
        }
        if (this.b != a.length && ("landingpage".equals(this.o) || "landingpage_endcard".equals(this.o) || "landingpage_split_screen".equals(this.o) || "landingpage_direct".equals(this.o))) {
            int i2 = this.b;
            while (true) {
                int[] iArr = a;
                if (i2 >= iArr.length || i < iArr[this.b]) {
                    break;
                }
                int i3 = i2 + 1;
                this.b = i3;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", webView.getUrl());
                    long j = this.c;
                    if (j != -1) {
                        jSONObject.put("page_id", j);
                    }
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                    jSONObject.put("pct", iArr[i2]);
                } catch (Exception unused) {
                }
                a("progress_load_finish", jSONObject);
                i2 = i3;
            }
        }
        if (i == 100) {
            a(webView.getUrl(), "progress", Math.min(this.s - this.r, 600000L));
        }
    }

    public void a(WebView webView, int i, String str, String str2, String str3, boolean z) {
        com.bytedance.sdk.openadsdk.b.c.e eVar = this.z;
        if (eVar != null) {
            eVar.a((JSONObject) null);
        }
        if (!(str3 != null && str3.startsWith("image")) && this.f1232d != 2) {
            this.f1232d = 3;
        }
        this.i = i;
        this.k = str;
        this.l = str2;
        this.j = z;
    }

    @RequiresApi(api = 21)
    public void a(WebView webView, WebResourceRequest webResourceRequest) {
    }

    public void a(WebView webView, String str, Bitmap bitmap) {
        WebView webView2 = this.x;
        if (webView2 != null) {
            try {
                WebBackForwardList webBackForwardListCopyBackForwardList = webView2.copyBackForwardList();
                if (webBackForwardListCopyBackForwardList != null && webBackForwardListCopyBackForwardList.getCurrentIndex() > this.G) {
                    this.D.incrementAndGet();
                }
                this.G = webBackForwardListCopyBackForwardList.getCurrentIndex();
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.c("LandingPageLog", "copyBackForwardList exception", e2);
            }
        }
        if (this.C == 0) {
            this.C = SystemClock.elapsedRealtime();
        }
        com.bytedance.sdk.openadsdk.b.c.e eVar = this.z;
        if (eVar != null) {
            eVar.e();
        }
        if (this.f1233e.compareAndSet(false, true)) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
                int i = this.H;
                if (i >= 0) {
                    jSONObject.putOpt("preload_status", Integer.valueOf(i));
                }
            } catch (Exception unused) {
            }
            a("load_start", jSONObject);
        }
    }

    public void a(WebView webView, String str, boolean z) {
        com.bytedance.sdk.openadsdk.b.c.e eVar = this.z;
        if (eVar != null) {
            eVar.f();
        }
        if (webView != null && !this.u && this.y) {
            this.u = true;
            com.bytedance.sdk.component.utils.k.a(webView, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log('LandingPageLogscroll status: (' + scrollH + '+' + clientH + ')/' + totalH + '=' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener('scroll', function(e){\n    sendScroll();\n});");
        }
        if (this.f1234f.compareAndSet(false, true)) {
            if (this.f1232d != 3) {
                this.f1232d = 2;
            }
            this.p = System.currentTimeMillis();
            boolean z2 = this.f1232d == 2;
            int iJ = j();
            if (!z2) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", this.i);
                    jSONObject.put("error_msg", this.k);
                    jSONObject.put("error_url", this.l);
                    jSONObject.put("first_page", iJ);
                    int i = this.H;
                    if (i >= 0) {
                        jSONObject.put("preload_status", i);
                    }
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                    jSONObject.put("url", this.n.P());
                } catch (Exception unused) {
                }
                a(z, MBridgeConstans.API_REUQEST_CATEGORY_APP);
                a("load_fail", jSONObject);
                if (i()) {
                    c.a(this.n, this.M, SystemClock.elapsedRealtime() - this.I, this.i, this.k);
                }
                if (this.j) {
                    jSONObject.remove("render_type");
                    jSONObject.remove("render_type_2");
                    a("load_fail_main", jSONObject);
                    return;
                }
                return;
            }
            long j = this.s - this.r;
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("error_code", this.i);
                jSONObject2.put("error_msg", this.k);
                jSONObject2.put("error_url", this.l);
                int i2 = this.H;
                if (i2 >= 0) {
                    jSONObject2.put("preload_status", i2);
                }
                jSONObject2.put("first_page", iJ);
                jSONObject2.putOpt("render_type", "h5");
                jSONObject2.putOpt("render_type_2", 0);
                jSONObject2.put("url", this.n.P());
            } catch (Exception unused2) {
            }
            a(z, "0");
            long jMin = Math.min(j, 600000L);
            a("load_finish", jSONObject2, jMin);
            if (i()) {
                this.K = SystemClock.elapsedRealtime();
                f();
                c.a(this.n, this.M, this.K - this.I);
            }
            a(str, "load_finish", jMin);
            i iVar = this.B;
            if (iVar != null) {
                iVar.a(iJ);
            }
        }
    }

    public void a(SSWebView sSWebView) {
        int iAb;
        Bitmap bitmapA;
        q qVar;
        if ((!"landingpage".equals(this.o) && !"landingpage_endcard".equals(this.o) && !"landingpage_split_screen".equals(this.o) && !"landingpage_direct".equals(this.o)) || (iAb = com.bytedance.sdk.openadsdk.core.o.d().ab()) == 0 || new Random().nextInt(100) + 1 > iAb || sSWebView == null || sSWebView.getWebView() == null || sSWebView.getVisibility() != 0 || (bitmapA = ad.a(sSWebView)) == null || (qVar = this.n) == null) {
            return;
        }
        ad.a(qVar, this.o, "landing_page_blank", bitmapA, sSWebView.getUrl(), this.c);
    }

    public void a(com.bytedance.sdk.openadsdk.b.c.e eVar) {
        this.z = eVar;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.o = str;
    }

    public com.bytedance.sdk.openadsdk.b.c.e b() {
        return this.z;
    }

    public void b(int i) {
        if (this.C != 0) {
            if (i == 1 || i == 3) {
                this.E.incrementAndGet();
                if (this.F.getAndSet(true)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", this.n.P());
                } catch (JSONException unused) {
                }
                a("click_time", jSONObject, Math.max(SystemClock.elapsedRealtime() - this.C, 0L));
            }
        }
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.M = str;
    }

    public void b(boolean z) {
        this.A = z;
    }

    public void c(boolean z) {
        com.bytedance.sdk.component.utils.l.b("LandingPageLog", "onDestroy");
        WebView webView = this.x;
        if (webView != null) {
            try {
                webView.removeJavascriptInterface("JS_LANDING_PAGE_LOG_OBJ");
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.c("LandingPageLog", "removeJavascriptInterface exception", e2);
            }
        }
        if (this.f1234f.compareAndSet(false, true)) {
            a(z, "1");
            if (this.y) {
                c.a(this.n, this.o, System.currentTimeMillis() - this.t, this.H, j());
            }
        } else if (this.f1232d == 2 && !this.h.get()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("load_status", this.f1232d);
                jSONObject.put("max_scroll_percent", this.w.get());
                jSONObject.put("jump_times", this.D.getAndSet(0));
                jSONObject.put("click_times", this.E.getAndSet(0));
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
            } catch (JSONException unused) {
            }
            a("stay_page", jSONObject, 0L);
        }
        this.x = null;
    }

    public boolean c() {
        return this.A;
    }

    public void d() {
        if (i()) {
            this.I = SystemClock.elapsedRealtime();
            c.a(this.n, this.M);
        }
    }

    public void e() {
        if (i()) {
            this.J = SystemClock.elapsedRealtime();
            f();
        }
    }

    public void f() {
        if (i() && this.J > 0 && this.K > 0 && !this.L.getAndSet(true)) {
            c.a(this.K - this.J, this.n, this.M);
        }
    }

    public void g() {
        com.bytedance.sdk.component.utils.l.b("LandingPageLog", o2.h.u0);
        if (this.t == 0) {
            this.t = System.currentTimeMillis();
        }
        this.p = System.currentTimeMillis();
    }

    public void h() {
        com.bytedance.sdk.component.utils.l.b("LandingPageLog", "onStop");
        if ("landingpage".equals(this.o) || "landingpage_endcard".equals(this.o) || "landingpage_split_screen".equals(this.o) || "landingpage_direct".equals(this.o)) {
            if (this.f1232d == 2) {
                if (this.q > 0 || !c()) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - Math.max(this.p, this.q);
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("load_status", this.f1232d);
                        jSONObject.put("max_scroll_percent", this.w.get());
                        jSONObject.put("jump_times", this.D.getAndSet(0));
                        jSONObject.put("click_times", this.E.getAndSet(0));
                        jSONObject.putOpt("render_type", "h5");
                        jSONObject.putOpt("render_type_2", 0);
                    } catch (JSONException unused) {
                    }
                    this.h.set(true);
                    a("stay_page", jSONObject, Math.min(jCurrentTimeMillis, 600000L));
                }
            }
        }
    }
}
