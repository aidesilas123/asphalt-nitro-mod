package com.bytedance.sdk.openadsdk.component.reward.a;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.component.a.r;
import com.bytedance.sdk.component.utils.HomeWatcherReceiver;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.widget.PlayableLoadingView;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.json.o2;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardFullPlayableManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class g implements Handler.Callback, com.bytedance.sdk.openadsdk.i.g {
    private static final g.a h = new g.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.g.1
        @Override // com.bytedance.sdk.openadsdk.l.g.a
        public void a(String str, String str2) {
            com.bytedance.sdk.component.utils.l.b(str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.l.g.a
        public void a(String str, String str2, Throwable th) {
            com.bytedance.sdk.component.utils.l.c(str, str2, th);
        }
    };
    private volatile boolean i;
    private final Activity j;

    @NonNull
    private final q k;
    private final String l;
    private final a m;
    private m o;
    private PlayableLoadingView q;
    private HomeWatcherReceiver s;
    private com.bytedance.sdk.openadsdk.l.h t;
    private boolean u;
    private boolean v;
    protected final AtomicBoolean a = new AtomicBoolean(false);
    private final Handler n = new Handler(this);
    boolean b = false;
    boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f1320d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1321e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f1322f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f1323g = 0;
    private int p = 1;
    private boolean r = true;
    private final com.bytedance.sdk.openadsdk.i.d w = new com.bytedance.sdk.openadsdk.i.d() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.g.8
        @Override // com.bytedance.sdk.openadsdk.i.d
        public void a() {
            if (g.this.m.V.isFinishing() || !g.this.m.a.aQ() || t.i(g.this.m.a)) {
                return;
            }
            g.this.n.removeMessages(800);
            g.this.n.sendMessage(g.b(1));
        }

        @Override // com.bytedance.sdk.openadsdk.i.d
        public void a(int i) {
        }

        @Override // com.bytedance.sdk.openadsdk.i.d
        public void b() {
        }
    };

    public g(a aVar) {
        this.m = aVar;
        this.j = aVar.V;
        this.l = aVar.f1317g;
        this.k = aVar.a;
    }

    private void a(Context context) {
        try {
            this.s.a(null);
            context.getApplicationContext().unregisterReceiver(this.s);
        } catch (Throwable unused) {
        }
    }

    public static Message b(int i) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 800;
        messageObtain.arg1 = i;
        return messageObtain;
    }

    private void p() {
        this.q = (PlayableLoadingView) this.j.findViewById(com.bytedance.sdk.openadsdk.utils.i.bi);
    }

    private boolean q() {
        if (this.q == null) {
            return false;
        }
        if (this.k.aQ() && t.k(this.k)) {
            this.q.b();
            return true;
        }
        this.q.a();
        return false;
    }

    private String r() {
        String strA = o.d().A();
        com.bytedance.sdk.component.utils.l.c("Playable", "getPlayableLoadH5Url->loadH5Url=" + strA);
        if (TextUtils.isEmpty(strA) || this.k.aa() == null) {
            return strA;
        }
        String strB = this.k.aa().b();
        double d2 = this.k.aa().d();
        int iE = this.k.aa().e();
        String strA2 = (this.k.N() == null || TextUtils.isEmpty(this.k.N().a())) ? "" : this.k.N().a();
        String strY = this.k.Y();
        String strC = this.k.aa().c();
        String strA3 = this.k.aa().a();
        String strB2 = this.k.aa().b();
        String strV = this.k.V();
        StringBuilder sb = new StringBuilder();
        sb.append("appname=");
        sb.append(URLEncoder.encode(strB));
        sb.append("&stars=");
        sb.append(d2);
        sb.append("&comments=");
        sb.append(iE);
        sb.append("&icon=");
        sb.append(URLEncoder.encode(strA2));
        sb.append("&downloading=");
        sb.append(true);
        sb.append("&id=");
        sb.append(URLEncoder.encode(strY));
        sb.append("&packageName=");
        sb.append(URLEncoder.encode(strC));
        sb.append("&downloadUrl=");
        sb.append(URLEncoder.encode(strA3));
        sb.append("&name=");
        sb.append(URLEncoder.encode(strB2));
        sb.append("&orientation=");
        sb.append(this.p == 1 ? o2.h.D : o2.h.C);
        sb.append("&apptitle=");
        sb.append(URLEncoder.encode(strV));
        String str = strA + "?" + ((Object) sb);
        com.bytedance.sdk.component.utils.l.c("Playable", "Playable-loadH5Url=" + str);
        return str;
    }

    public void a() {
        if (this.u) {
            return;
        }
        this.u = true;
        a aVar = this.m;
        this.o = aVar.Q;
        this.p = aVar.j;
        p();
        if (t.b(this.k)) {
            DeviceUtils.AudioInfoReceiver.a(this);
        }
        if (q() && t.k(this.k) && t.i(this.k)) {
            Handler handler = this.n;
            handler.sendMessageDelayed(handler.obtainMessage(800, 2, 0), 10000L);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.i.g
    public void a(int i) {
        if (!t.l(this.m.a) || this.m.u.get()) {
            if (t.k(this.m.a) || t.l(this.m.a)) {
                if (this.m.O.b()) {
                    com.bytedance.sdk.component.utils.l.b("TTAD.RFPM", "onVolumeChanged by SDK mIsMute=" + this.m.f1314d + " mVolume=" + i + " mLastVolume=" + this.m.O.a());
                    if (i == 0) {
                        this.m.R.b(true);
                        this.m.G.b(true);
                        return;
                    } else {
                        this.m.R.b(false);
                        this.m.G.b(false);
                        return;
                    }
                }
                this.m.O.a(-1);
                com.bytedance.sdk.component.utils.l.b("TTAD.RFPM", "onVolumeChanged by User mIsMute=" + this.m.f1314d + " mVolume=" + i + " mLastVolume=" + this.m.O.a());
                a aVar = this.m;
                if (aVar.f1315e) {
                    if (i == 0) {
                        aVar.f1314d = true;
                        aVar.R.b(true);
                        this.m.G.b(true);
                    } else {
                        aVar.f1314d = false;
                        aVar.R.b(false);
                        this.m.G.b(false);
                    }
                }
            }
        }
    }

    public void a(int i, q qVar, boolean z) {
        if (qVar == null) {
            return;
        }
        this.f1322f = qVar.aq();
        this.f1323g = o.d().a(String.valueOf(i), z);
    }

    public void a(int i, String str, String str2) {
        try {
            com.bytedance.sdk.openadsdk.l.h hVar = this.t;
            if (hVar != null) {
                hVar.a(i, str, str2);
            }
        } catch (Exception unused) {
        }
    }

    public void a(long j) {
        Message messageObtain = Message.obtain();
        messageObtain.what = TypedValues.Custom.TYPE_INT;
        messageObtain.arg1 = k();
        this.n.sendMessageDelayed(messageObtain, j);
    }

    public void a(DownloadListener downloadListener) {
        SSWebView sSWebViewI = this.o.i();
        if (sSWebViewI == null) {
            return;
        }
        String strR = r();
        if (TextUtils.isEmpty(strR)) {
            return;
        }
        sSWebViewI.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.a.e(this.j, this.o.k(), this.k.Y(), null, false) { // from class: com.bytedance.sdk.openadsdk.component.reward.a.g.6
            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (g.this.r) {
                    com.bytedance.sdk.openadsdk.b.c.c(g.this.k, g.this.l, "loading_h5_success", null);
                }
                super.onPageFinished(webView, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                g.this.r = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                g.this.r = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                g.this.r = false;
            }
        });
        com.bytedance.sdk.component.utils.l.b("TTAD.RFPM", "startWebViewLoading: " + strR);
        sSWebViewI.a_(strR);
        sSWebViewI.setDisplayZoomControls(false);
        sSWebViewI.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.a.d(this.o.k(), this.o.l()));
        sSWebViewI.setDownloadListener(downloadListener);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void a(com.bytedance.sdk.openadsdk.core.b.e eVar) {
        PlayableLoadingView playableLoadingView = this.q;
        if (playableLoadingView == null || playableLoadingView.getPlayView() == null || !t.k(this.k)) {
            return;
        }
        this.q.getPlayView().setOnClickListener(eVar);
        this.q.getPlayView().setOnTouchListener(eVar);
    }

    public void a(final com.bytedance.sdk.openadsdk.i.e eVar, boolean z) {
        com.bytedance.sdk.openadsdk.j.a aVar;
        r rVarA;
        com.bytedance.sdk.openadsdk.l.h hVarA;
        if (t.b(this.k)) {
            if (com.bytedance.sdk.openadsdk.core.h.b().q()) {
                com.bytedance.sdk.openadsdk.l.g.a(h);
            }
            com.bytedance.sdk.openadsdk.l.a aVar2 = new com.bytedance.sdk.openadsdk.l.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.g.2
                @Override // com.bytedance.sdk.openadsdk.l.a
                public com.bytedance.sdk.openadsdk.l.d a() {
                    String strF = com.bytedance.sdk.openadsdk.common.a.f();
                    strF.hashCode();
                    switch (strF) {
                        case "2g":
                            return com.bytedance.sdk.openadsdk.l.d.TYPE_2G;
                        case "3g":
                            return com.bytedance.sdk.openadsdk.l.d.TYPE_3G;
                        case "4g":
                            return com.bytedance.sdk.openadsdk.l.d.TYPE_4G;
                        case "5g":
                            return com.bytedance.sdk.openadsdk.l.d.TYPE_5G;
                        case "wifi":
                            return com.bytedance.sdk.openadsdk.l.d.TYPE_WIFI;
                        default:
                            return com.bytedance.sdk.openadsdk.l.d.TYPE_UNKNOWN;
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.l.a
                public void a(JSONObject jSONObject) {
                    com.bytedance.sdk.openadsdk.b.c.b(g.this.k, g.this.l, "playable_track", jSONObject);
                }

                @Override // com.bytedance.sdk.openadsdk.l.a
                public void b() {
                    g.this.m.Q.j().d(true);
                    com.bytedance.sdk.openadsdk.i.e eVar2 = eVar;
                    if (eVar2 != null) {
                        eVar2.a();
                    }
                }
            };
            com.bytedance.sdk.openadsdk.l.c cVar = new com.bytedance.sdk.openadsdk.l.c() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.g.3
                @Override // com.bytedance.sdk.openadsdk.l.c
                public void a(String str, JSONObject jSONObject) {
                    g.this.m.Q.j().a(str, jSONObject);
                }
            };
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(BidResponsedEx.KEY_CID, this.k.Y());
                jSONObject.put("log_extra", this.k.ac());
                hVarA = com.bytedance.sdk.openadsdk.l.h.a(o.a(), this.m.Q.h().getWebView(), cVar, aVar2).f(this.m.Q.v()).e(com.bytedance.sdk.openadsdk.common.a.a(o.a())).a(com.bytedance.sdk.openadsdk.common.a.a()).e(jSONObject).a("sdkEdition", com.bytedance.sdk.openadsdk.common.a.c()).b(com.bytedance.sdk.openadsdk.common.a.e()).d(com.bytedance.sdk.openadsdk.common.a.d()).c(false).a(z);
                this.t = hVarA;
            } catch (Exception unused) {
                if (this.t == null) {
                    aVar = new com.bytedance.sdk.openadsdk.j.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.g.4
                        @Override // com.bytedance.sdk.openadsdk.j.a
                        public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("PlayablePlugin_is_null", true);
                            return com.bytedance.sdk.openadsdk.j.a.b.b().a("PlayablePlugin_init").b(jSONObject2.toString());
                        }
                    };
                }
            } catch (Throwable th) {
                if (this.t == null) {
                    com.bytedance.sdk.openadsdk.j.b.a("PlayablePlugin_init", false, new com.bytedance.sdk.openadsdk.j.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.g.4
                        @Override // com.bytedance.sdk.openadsdk.j.a
                        public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("PlayablePlugin_is_null", true);
                            return com.bytedance.sdk.openadsdk.j.a.b.b().a("PlayablePlugin_init").b(jSONObject2.toString());
                        }
                    });
                }
                throw th;
            }
            if (hVarA == null) {
                aVar = new com.bytedance.sdk.openadsdk.j.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.g.4
                    @Override // com.bytedance.sdk.openadsdk.j.a
                    public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("PlayablePlugin_is_null", true);
                        return com.bytedance.sdk.openadsdk.j.a.b.b().a("PlayablePlugin_init").b(jSONObject2.toString());
                    }
                };
                com.bytedance.sdk.openadsdk.j.b.a("PlayablePlugin_init", false, aVar);
            }
            if (this.t != null && !TextUtils.isEmpty(t.d(this.k))) {
                this.t.c(t.d(this.k));
            }
            com.bytedance.sdk.openadsdk.l.h hVar = this.t;
            if (hVar != null) {
                Set<String> setK = hVar.k();
                final WeakReference weakReference = new WeakReference(this.t);
                for (String str : setK) {
                    if (!"subscribe_app_ad".equals(str) && !"adInfo".equals(str) && !"webview_time_track".equals(str) && !"download_app_ad".equals(str) && (rVarA = this.m.Q.j().a()) != null) {
                        rVarA.a(str, new com.bytedance.sdk.component.a.e<JSONObject, JSONObject>() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.g.5
                            @Override // com.bytedance.sdk.component.a.e
                            public JSONObject a(@NonNull JSONObject jSONObject2, @NonNull com.bytedance.sdk.component.a.f fVar) {
                                try {
                                    com.bytedance.sdk.openadsdk.l.h hVar2 = (com.bytedance.sdk.openadsdk.l.h) weakReference.get();
                                    if (hVar2 == null) {
                                        return null;
                                    }
                                    return hVar2.d(a(), jSONObject2);
                                } catch (Throwable unused2) {
                                    return null;
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    public void a(String str) {
        if (this.c) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("duration", System.currentTimeMillis() - this.f1320d);
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.l.c("TTAD.RFPM", "sendPlayableEvent error", e2);
            }
            com.bytedance.sdk.openadsdk.b.c.b(this.k, this.l, str, jSONObject);
            if ("return_foreground".equals(str)) {
                this.c = false;
            }
        }
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                jSONObject.put("duration", System.currentTimeMillis() - this.f1320d);
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.l.c("TTAD.RFPM", "endShow json error", e2);
            }
        }
    }

    public void a(boolean z) {
        if (Build.VERSION.SDK_INT < 19 || !z) {
            return;
        }
        this.o.h().setDomStorageEnabled(true);
    }

    public void a(boolean z, String str, int i) {
        try {
            com.bytedance.sdk.openadsdk.l.h hVar = this.t;
            if (hVar != null) {
                hVar.a(z, str, i);
            }
        } catch (Exception unused) {
        }
    }

    public void b() {
        if (this.a.getAndSet(true)) {
            return;
        }
        this.o.F();
        if (t.c(this.k)) {
            this.o.f();
        }
    }

    public void b(String str) {
        com.bytedance.sdk.openadsdk.l.h hVar = this.t;
        if (hVar != null) {
            hVar.h(str);
        }
    }

    public void b(boolean z) {
        if (z) {
            try {
                if (!TextUtils.isEmpty(this.o.v()) && this.o.t() != 0) {
                    com.bytedance.sdk.openadsdk.j.b.a().a(this.o.v(), this.o.t(), this.o.u());
                }
            } catch (Throwable unused) {
            }
        }
        if (z) {
            try {
                if (TextUtils.isEmpty(this.o.v())) {
                    return;
                }
                com.bytedance.sdk.openadsdk.j.b.a().b(this.o.v());
            } catch (Throwable unused2) {
            }
        }
    }

    public void c() {
        this.b = true;
    }

    public void c(int i) {
        PlayableLoadingView playableLoadingView = this.q;
        if (playableLoadingView != null) {
            playableLoadingView.setProgress(i);
        }
    }

    public void c(String str) {
        com.bytedance.sdk.openadsdk.l.h hVar = this.t;
        if (hVar != null) {
            hVar.g(str);
        }
    }

    public void c(boolean z) {
        this.i = z;
        if (z) {
            return;
        }
        this.n.removeMessages(TypedValues.Custom.TYPE_INT);
    }

    public int d(int i) {
        return this.f1323g - (this.f1322f - i);
    }

    public void d(boolean z) {
        com.bytedance.sdk.openadsdk.l.h hVar = this.t;
        if (hVar != null) {
            hVar.b(z);
        }
    }

    public boolean d() {
        return this.b;
    }

    public void e() {
        if (this.v) {
            return;
        }
        this.v = true;
        c(false);
        a(this.j.getApplicationContext());
        com.bytedance.sdk.openadsdk.l.h hVar = this.t;
        if (hVar != null) {
            hVar.L();
        }
        this.n.removeCallbacksAndMessages(null);
        DeviceUtils.AudioInfoReceiver.b(this);
    }

    public void e(int i) {
        this.f1321e = i - 1;
    }

    public void e(boolean z) {
        com.bytedance.sdk.openadsdk.l.h hVar = this.t;
        if (hVar != null) {
            hVar.a(z);
        }
    }

    public void f() {
        try {
            HomeWatcherReceiver homeWatcherReceiver = new HomeWatcherReceiver();
            this.s = homeWatcherReceiver;
            homeWatcherReceiver.a(new HomeWatcherReceiver.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.g.7
                @Override // com.bytedance.sdk.component.utils.HomeWatcherReceiver.a
                public void a() {
                    g.this.c = true;
                }

                @Override // com.bytedance.sdk.component.utils.HomeWatcherReceiver.a
                public void b() {
                    g.this.c = true;
                }
            });
            this.j.getApplicationContext().registerReceiver(this.s, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        } catch (Throwable unused) {
        }
    }

    public void f(int i) {
        this.f1321e = i;
    }

    public void f(boolean z) {
        if (z) {
            boolean zK = t.k(this.k);
            if (zK && this.k.aQ() && !t.i(this.k)) {
                Handler handler = this.n;
                handler.sendMessageDelayed(handler.obtainMessage(800, 0, 0), 1000L);
            }
            if (zK) {
                this.m.I.b();
                this.m.Q.b(true);
                this.m.Q.c(true);
                com.bytedance.sdk.openadsdk.b.c.c(this.m.a, this.l, "py_loading_success", null);
            }
        }
    }

    public void g() {
        this.f1320d = System.currentTimeMillis();
        Handler handler = this.n;
        handler.sendMessage(handler.obtainMessage(TypedValues.Custom.TYPE_INT, j(), 0));
        c(true);
    }

    public void h() {
        PlayableLoadingView playableLoadingView = this.q;
        if (playableLoadingView != null) {
            playableLoadingView.a();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 900) {
            if (!this.i || !t.k(this.m.a)) {
                return true;
            }
            int i2 = message.arg1;
            if (i2 > 0) {
                this.m.R.d(true);
                int iD = this.m.I.d(i2);
                if (iD == i2) {
                    this.m.R.a(String.valueOf(i2), null);
                } else if (iD > 0) {
                    this.m.R.a(String.valueOf(i2), String.format(s.a(this.m.V.getApplicationContext(), "tt_skip_ad_time_text"), Integer.valueOf(iD)));
                } else {
                    this.m.R.a(String.valueOf(i2), s.a(this.m.V.getApplicationContext(), "tt_txt_skip"));
                    this.m.R.e(true);
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = TypedValues.Custom.TYPE_INT;
                messageObtain.arg1 = i2 - 1;
                this.n.sendMessageDelayed(messageObtain, 1000L);
                this.m.I.e(i2);
            } else if (t.c(this.k)) {
                this.m.R.c();
                this.m.R.e(true);
            } else {
                this.m.R.d(false);
                this.m.D.set(true);
                this.m.Y.p();
            }
            this.m.V.j();
        } else if (i == 800) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("remove_loading_page_type", message.arg1);
                if (this.m.a.K() != null) {
                    jSONObject.put("playable_url", this.m.a.K().l());
                }
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.l.c("TTAD.RFPM", "handleMessage json error", e2);
            }
            a aVar = this.m;
            com.bytedance.sdk.openadsdk.b.c.b(aVar.a, aVar.V.a, "remove_loading_page", jSONObject);
            this.n.removeMessages(800);
            this.m.I.h();
        }
        return true;
    }

    public boolean i() {
        return this.i;
    }

    public int j() {
        return this.f1322f;
    }

    public int k() {
        return this.f1321e;
    }

    public void l() {
        com.bytedance.sdk.openadsdk.l.h hVar = this.t;
        if (hVar != null) {
            hVar.G();
            if (ad.d(this.m.Q.h())) {
                this.t.b(true);
            }
        }
    }

    public void m() {
        com.bytedance.sdk.openadsdk.l.h hVar = this.t;
        if (hVar != null) {
            hVar.F();
            this.t.b(false);
        }
        this.n.removeMessages(TypedValues.Custom.TYPE_INT);
    }

    public void n() {
        this.n.removeMessages(TypedValues.Custom.TYPE_INT);
        this.n.removeMessages(600);
    }

    public com.bytedance.sdk.openadsdk.i.d o() {
        return this.w;
    }
}
