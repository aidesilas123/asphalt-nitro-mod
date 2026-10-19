package com.bytedance.sdk.openadsdk.activity;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.a.f;
import com.bytedance.sdk.component.adexpress.c.f;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.b.c;
import com.bytedance.sdk.openadsdk.b.c.e;
import com.bytedance.sdk.openadsdk.b.i;
import com.bytedance.sdk.openadsdk.b.j;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.aa;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.b.d;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.s;
import com.bytedance.sdk.openadsdk.core.t;
import com.bytedance.sdk.openadsdk.core.widget.PlayableLoadingView;
import com.bytedance.sdk.openadsdk.core.widget.ShadowImageView;
import com.bytedance.sdk.openadsdk.core.widget.ShadowTextView;
import com.bytedance.sdk.openadsdk.i.g;
import com.bytedance.sdk.openadsdk.l.a;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.l.h;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.com.bytedance.overseas.sdk.a.c;
import com.facebook.share.internal.ShareConstants;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TTPlayableLandingPageActivity extends TTBaseActivity implements x.a, d, g {
    private static final g.a O = new g.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.1
        @Override // com.bytedance.sdk.openadsdk.l.g.a
        public void a(String str, String str2) {
            l.b(str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.l.g.a
        public void a(String str, String str2, Throwable th) {
            l.c(str, str2, th);
        }
    };
    private boolean A;
    private c B;
    private String D;
    private int H;
    private int I;
    private h J;
    private ILoader K;
    private e M;
    private j N;
    t a;
    TTAdDislikeToast b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SSWebView f1122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SSWebView f1123f;
    private RelativeLayout i;
    private ShadowTextView j;
    private ShadowImageView k;
    private Context l;
    private int m;
    private PAGProgressBar n;
    private PlayableLoadingView o;
    private String p;
    private String q;
    private com.bytedance.sdk.openadsdk.core.x r;
    private com.bytedance.sdk.openadsdk.core.x s;
    private int t;
    private String u;
    private String v;
    private q x;
    private boolean z;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1124g = true;
    private boolean h = true;
    final AtomicBoolean c = new AtomicBoolean(false);
    private final String w = "embeded_ad";
    private final x y = new x(Looper.getMainLooper(), this);
    private final AtomicBoolean C = new AtomicBoolean(false);
    private final AtomicInteger E = new AtomicInteger(0);
    private final AtomicInteger F = new AtomicInteger(0);
    private final AtomicInteger G = new AtomicInteger(0);
    private boolean L = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected com.bytedance.sdk.openadsdk.i.d f1121d = new com.bytedance.sdk.openadsdk.i.d() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.8
        @Override // com.bytedance.sdk.openadsdk.i.d
        public void a() {
            if (!TTPlayableLandingPageActivity.this.isFinishing() && com.bytedance.sdk.openadsdk.core.model.t.g(TTPlayableLandingPageActivity.this.x) && com.bytedance.sdk.openadsdk.core.model.t.i(TTPlayableLandingPageActivity.this.x)) {
                TTPlayableLandingPageActivity.this.y.removeMessages(2);
                TTPlayableLandingPageActivity.this.y.sendMessage(TTPlayableLandingPageActivity.this.b(1));
            }
        }

        @Override // com.bytedance.sdk.openadsdk.i.d
        public void a(int i) {
            if (!com.bytedance.sdk.openadsdk.core.model.t.g(TTPlayableLandingPageActivity.this.x) || TTPlayableLandingPageActivity.this.o == null) {
                return;
            }
            TTPlayableLandingPageActivity.this.o.setProgress(i);
        }

        @Override // com.bytedance.sdk.openadsdk.i.d
        public void b() {
            if (com.bytedance.sdk.openadsdk.core.model.t.g(TTPlayableLandingPageActivity.this.x) && com.bytedance.sdk.openadsdk.core.model.t.h(TTPlayableLandingPageActivity.this.x)) {
                TTPlayableLandingPageActivity.this.y.sendMessageDelayed(TTPlayableLandingPageActivity.this.b(0), 1000L);
            }
        }
    };

    private void a(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null) {
            this.m = intent.getIntExtra("sdk_version", 1);
            this.p = intent.getStringExtra("adid");
            this.q = intent.getStringExtra("log_extra");
            this.t = intent.getIntExtra(ShareConstants.FEED_SOURCE_PARAM, -1);
            this.z = intent.getBooleanExtra("ad_pending_download", false);
            this.u = intent.getStringExtra("url");
            this.D = intent.getStringExtra("gecko_id");
            this.v = intent.getStringExtra("web_title");
            if (b.c()) {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra != null) {
                    try {
                        this.x = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(stringExtra));
                    } catch (Exception e2) {
                        l.c("TTPWPActivity", "TTPlayableLandingPageActivity - onCreate MultiGlobalInfo : ", e2);
                    }
                }
            } else {
                this.x = s.a().b();
                s.a().f();
            }
        }
        if (bundle != null) {
            try {
                this.m = bundle.getInt("sdk_version", 1);
                this.p = bundle.getString("adid");
                this.q = bundle.getString("log_extra");
                this.t = bundle.getInt(ShareConstants.FEED_SOURCE_PARAM, -1);
                this.z = bundle.getBoolean("ad_pending_download", false);
                this.u = bundle.getString("url");
                this.v = bundle.getString("web_title");
                String string = bundle.getString("material_meta", null);
                if (!TextUtils.isEmpty(string)) {
                    this.x = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(string));
                }
            } catch (Throwable unused) {
            }
        }
        if (this.x == null) {
            l.e("TTPWPActivity", "material is null, no data to display");
            finish();
        } else {
            try {
                this.L = o.d().p(this.x.D().getCodeId());
            } catch (Throwable th) {
                l.e("TTPWPActivity", th.getMessage());
            }
        }
    }

    private void a(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.a.c.a(this.l).a(false).b(false).a(sSWebView.getWebView());
        sSWebView.setUserAgentString(com.bytedance.sdk.openadsdk.utils.l.a(sSWebView.getWebView(), this.m));
        if (Build.VERSION.SDK_INT >= 21) {
            sSWebView.setMixedContentMode(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        com.bytedance.sdk.openadsdk.b.c.c(this.x, "embeded_ad", str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Message b(int i) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 2;
        messageObtain.arg1 = i;
        return messageObtain;
    }

    private View d() {
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(this);
        pAGFrameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f1122e = new SSWebView(this);
        this.f1122e.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f1122e.setVisibility(4);
        this.n = new PAGProgressBar(this, null, R.style.Widget.ProgressBar.Horizontal);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, ad.b(this, 3.0f));
        layoutParams.gravity = 49;
        this.n.setLayoutParams(layoutParams);
        this.n.setProgress(1);
        this.n.setProgressDrawable(com.bytedance.sdk.component.utils.s.c(this, "tt_browser_progress_style"));
        this.f1123f = new SSWebView(this);
        this.f1123f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.o = new PlayableLoadingView(this);
        this.o.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.o.setClickable(true);
        this.o.setFocusable(true);
        this.k = new ShadowImageView(this);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(ad.b(this, 28.0f), ad.b(this, 28.0f));
        layoutParams2.leftMargin = ad.b(this, 12.0f);
        layoutParams2.topMargin = ad.b(this, 20.0f);
        this.k.setLayoutParams(layoutParams2);
        this.k.setScaleType(ImageView.ScaleType.CENTER);
        this.k.setImageResource(com.bytedance.sdk.component.utils.s.d(this, "tt_unmute_wrapper"));
        this.j = new ShadowTextView(this);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, ad.b(this, 28.0f));
        layoutParams3.gravity = 8388661;
        layoutParams3.leftMargin = ad.b(this, 16.0f);
        layoutParams3.rightMargin = ad.b(this, 80.0f);
        layoutParams3.topMargin = ad.b(this, 20.0f);
        this.j.setLayoutParams(layoutParams3);
        this.j.setGravity(17);
        this.j.setText(com.bytedance.sdk.component.utils.s.a(this, "tt_reward_feedback"));
        this.j.setTextColor(Color.parseColor("#ffffff"));
        this.j.setTextSize(14.0f);
        this.i = new PAGRelativeLayout(this);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(ad.b(this, 28.0f), ad.b(this, 28.0f));
        layoutParams4.gravity = 8388661;
        layoutParams4.topMargin = ad.b(this, 20.0f);
        layoutParams4.rightMargin = ad.b(this, 24.0f);
        this.i.setLayoutParams(layoutParams4);
        this.i.setBackground(com.bytedance.sdk.component.utils.s.c(this, "tt_mute_btn_bg"));
        this.i.setGravity(17);
        this.i.setVisibility(8);
        PAGImageView pAGImageView = new PAGImageView(this);
        pAGImageView.setLayoutParams(new RelativeLayout.LayoutParams(ad.b(this, 12.0f), ad.b(this, 12.0f)));
        pAGImageView.setImageDrawable(com.bytedance.sdk.component.utils.s.c(this, "tt_video_close_drawable"));
        pAGImageView.setVisibility(0);
        this.i.addView(pAGImageView);
        pAGFrameLayout.addView(this.f1122e);
        pAGFrameLayout.addView(this.n);
        pAGFrameLayout.addView(this.f1123f);
        pAGFrameLayout.addView(this.o);
        pAGFrameLayout.addView(this.k);
        pAGFrameLayout.addView(this.j);
        pAGFrameLayout.addView(this.i);
        return pAGFrameLayout;
    }

    private void e() {
        if (this.J != null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.core.h.b().q()) {
            com.bytedance.sdk.openadsdk.l.g.a(O);
        }
        a aVar = new a() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.9
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
                com.bytedance.sdk.openadsdk.b.c.b(TTPlayableLandingPageActivity.this.x, "embeded_ad", "playable_track", jSONObject);
            }
        };
        com.bytedance.sdk.openadsdk.l.c cVar = new com.bytedance.sdk.openadsdk.l.c() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.10
            @Override // com.bytedance.sdk.openadsdk.l.c
            public void a(String str, JSONObject jSONObject) {
                TTPlayableLandingPageActivity.this.r.a(str, jSONObject);
            }
        };
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(BidResponsedEx.KEY_CID, this.p);
            jSONObject.put("log_extra", this.q);
            this.J = h.a(getApplicationContext(), this.f1122e.getWebView(), cVar, aVar).f(this.u).e(com.bytedance.sdk.openadsdk.common.a.a(o.a())).a(com.bytedance.sdk.openadsdk.common.a.a()).e(jSONObject).b(com.bytedance.sdk.openadsdk.common.a.e()).a("sdkEdition", com.bytedance.sdk.openadsdk.common.a.c()).d(com.bytedance.sdk.openadsdk.common.a.d()).c(false).a(this.L).b(true);
        } catch (Throwable unused) {
        }
        if (this.J == null) {
            l.e("Pangle", "new PlayablePlugin Object failed, mPlayablePlugin is null");
            return;
        }
        if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.model.t.d(this.x))) {
            this.J.c(com.bytedance.sdk.openadsdk.core.model.t.d(this.x));
        }
        Set<String> setK = this.J.k();
        final WeakReference weakReference = new WeakReference(this.J);
        for (String str : setK) {
            if (!"subscribe_app_ad".equals(str) && !"adInfo".equals(str) && !"webview_time_track".equals(str) && !"download_app_ad".equals(str)) {
                this.r.a().a(str, new com.bytedance.sdk.component.a.e<JSONObject, JSONObject>() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.11
                    @Override // com.bytedance.sdk.component.a.e
                    public JSONObject a(@NonNull JSONObject jSONObject2, @NonNull f fVar) {
                        try {
                            h hVar = (h) weakReference.get();
                            if (hVar == null) {
                                return null;
                            }
                            return hVar.d(a(), jSONObject2);
                        } catch (Throwable unused2) {
                            return null;
                        }
                    }
                });
            }
        }
    }

    private void f() {
        if (this.x.M() == 4) {
            this.B = com.com.bytedance.overseas.sdk.a.d.a(this.l, this.x, "interaction");
        }
    }

    private void g() {
        int i = o.d().z(String.valueOf(this.x.aZ())).p;
        if (i >= 0) {
            this.y.sendEmptyMessageDelayed(1, ((long) i) * 1000);
        } else {
            ad.a((View) this.i, 0);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void h() {
        SSWebView sSWebView = this.f1122e;
        if (sSWebView == null) {
            return;
        }
        sSWebView.setLandingPage(true);
        this.f1122e.setTag("landingpage");
        this.f1122e.setMaterialMeta(this.x.aJ());
        j jVarA = new j(this.x, this.f1122e.getWebView(), new i() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.12
            @Override // com.bytedance.sdk.openadsdk.b.i
            public void a(int i) {
                c.a.a(TTPlayableLandingPageActivity.this.H, TTPlayableLandingPageActivity.this.G.get(), TTPlayableLandingPageActivity.this.F.get(), TTPlayableLandingPageActivity.this.E.get() - TTPlayableLandingPageActivity.this.F.get(), TTPlayableLandingPageActivity.this.x, "embeded_ad", i);
            }
        }, this.I).a(true);
        this.N = jVarA;
        jVarA.a("embeded_ad");
        this.N.a(this.M);
        this.f1122e.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.a.e(this.l, this.r, this.p, this.N, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.13
            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (TTPlayableLandingPageActivity.this.isFinishing()) {
                    return;
                }
                if (TTPlayableLandingPageActivity.this.J != null) {
                    TTPlayableLandingPageActivity.this.J.h(str);
                }
                try {
                    TTPlayableLandingPageActivity.this.f1121d.b();
                } catch (Throwable unused) {
                }
                try {
                    if (TTPlayableLandingPageActivity.this.n != null) {
                        TTPlayableLandingPageActivity.this.n.setVisibility(8);
                    }
                    if (TTPlayableLandingPageActivity.this.f1124g) {
                        TTPlayableLandingPageActivity.this.j();
                        TTPlayableLandingPageActivity.this.a("py_loading_success");
                        com.bytedance.sdk.openadsdk.core.x xVar = this.c;
                        if (xVar != null) {
                            xVar.b(true);
                        }
                    }
                } catch (Throwable unused2) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                if (TTPlayableLandingPageActivity.this.J != null) {
                    TTPlayableLandingPageActivity.this.J.g(str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                TTPlayableLandingPageActivity.this.f1124g = false;
                if (TTPlayableLandingPageActivity.this.J != null) {
                    TTPlayableLandingPageActivity.this.J.a(i, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                TTPlayableLandingPageActivity.this.f1124g = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            @RequiresApi(api = 21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (TTPlayableLandingPageActivity.this.u != null && webResourceRequest != null && webResourceRequest.getUrl() != null && TTPlayableLandingPageActivity.this.u.equals(webResourceRequest.getUrl().toString())) {
                    TTPlayableLandingPageActivity.this.f1124g = false;
                }
                if (TTPlayableLandingPageActivity.this.J != null && webResourceRequest != null) {
                    try {
                        TTPlayableLandingPageActivity.this.J.a(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                    } catch (Throwable unused) {
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                try {
                    if (TTPlayableLandingPageActivity.this.J != null) {
                        TTPlayableLandingPageActivity.this.J.i(str);
                    }
                    if (!TextUtils.isEmpty(TTPlayableLandingPageActivity.this.D)) {
                        TTPlayableLandingPageActivity.this.E.incrementAndGet();
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    WebResourceResponseModel webResourceResponseModelA = com.bytedance.sdk.openadsdk.d.b.a().a(TTPlayableLandingPageActivity.this.K, TTPlayableLandingPageActivity.this.D, str);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (TTPlayableLandingPageActivity.this.M != null) {
                        f.a aVarA = com.bytedance.sdk.component.adexpress.c.f.a(str);
                        int i = (webResourceResponseModelA == null || webResourceResponseModelA.getWebResourceResponse() == null) ? 2 : 1;
                        if (aVarA == f.a.HTML) {
                            TTPlayableLandingPageActivity.this.M.a(str, jCurrentTimeMillis, jCurrentTimeMillis2, i);
                        } else if (aVarA == f.a.JS) {
                            TTPlayableLandingPageActivity.this.M.b(str, jCurrentTimeMillis, jCurrentTimeMillis2, i);
                        }
                    }
                    if (webResourceResponseModelA == null || webResourceResponseModelA.getWebResourceResponse() == null) {
                        if (webResourceResponseModelA != null && webResourceResponseModelA.getMsg() == 2) {
                            TTPlayableLandingPageActivity.this.G.incrementAndGet();
                        }
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTPlayableLandingPageActivity.this.F.incrementAndGet();
                    l.b("TTPWPActivity", "GeckoLog: hit++");
                    if (TTPlayableLandingPageActivity.this.J != null) {
                        TTPlayableLandingPageActivity.this.J.j(str);
                    }
                    return webResourceResponseModelA.getWebResourceResponse();
                } catch (Exception unused) {
                    return super.shouldInterceptRequest(webView, str);
                }
            }
        });
        a(this.f1122e);
        a(this.f1123f);
        k();
        com.bytedance.sdk.openadsdk.utils.o.a(this.f1122e, this.u);
        this.f1122e.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.a.d(this.r, this.N) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.14
            @Override // com.bytedance.sdk.openadsdk.core.widget.a.d, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (TTPlayableLandingPageActivity.this.isFinishing()) {
                    return;
                }
                try {
                    TTPlayableLandingPageActivity.this.f1121d.a(i);
                } catch (Throwable unused) {
                }
                if (TTPlayableLandingPageActivity.this.n != null) {
                    if (i != 100 || !TTPlayableLandingPageActivity.this.n.isShown()) {
                        TTPlayableLandingPageActivity.this.n.setProgress(i);
                    } else {
                        TTPlayableLandingPageActivity.this.n.setVisibility(8);
                        TTPlayableLandingPageActivity.this.j();
                    }
                }
            }
        });
        this.f1122e.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.15
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (TTPlayableLandingPageActivity.this.N == null) {
                    return false;
                }
                TTPlayableLandingPageActivity.this.N.b(motionEvent.getActionMasked());
                return false;
            }
        });
    }

    private void i() {
        RelativeLayout relativeLayout = this.i;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTPlayableLandingPageActivity.this.M != null) {
                        TTPlayableLandingPageActivity.this.M.h();
                    }
                    TTPlayableLandingPageActivity.this.a("playable_close");
                    TTPlayableLandingPageActivity.this.finish();
                }
            });
        }
        ShadowTextView shadowTextView = this.j;
        if (shadowTextView != null) {
            shadowTextView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTPlayableLandingPageActivity.this.b();
                }
            });
        }
        ShadowImageView shadowImageView = this.k;
        if (shadowImageView != null) {
            shadowImageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTPlayableLandingPageActivity.this.L = !r2.L;
                    TTPlayableLandingPageActivity tTPlayableLandingPageActivity = TTPlayableLandingPageActivity.this;
                    tTPlayableLandingPageActivity.b(tTPlayableLandingPageActivity.L);
                    if (TTPlayableLandingPageActivity.this.J != null) {
                        TTPlayableLandingPageActivity.this.J.a(TTPlayableLandingPageActivity.this.L);
                    }
                }
            });
        }
        this.f1122e.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.f1123f.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        ad.a((View) this.f1122e, 4);
        ad.a((View) this.f1123f, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        SSWebView sSWebView;
        if (this.C.getAndSet(true) || (sSWebView = this.f1122e) == null || this.f1123f == null) {
            return;
        }
        ad.a((View) sSWebView, 0);
        ad.a((View) this.f1123f, 8);
    }

    private void k() {
        if (this.f1123f == null) {
            return;
        }
        String strL = l();
        if (TextUtils.isEmpty(strL)) {
            return;
        }
        this.f1123f.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.a.e(this.l, this.s, this.p, null, false) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.6
            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (TTPlayableLandingPageActivity.this.h) {
                    TTPlayableLandingPageActivity.this.a("loading_h5_success");
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                TTPlayableLandingPageActivity.this.h = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                TTPlayableLandingPageActivity.this.h = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                TTPlayableLandingPageActivity.this.h = false;
            }
        });
        this.f1123f.a_(strL);
    }

    private String l() {
        q qVar;
        String strY = o.d().y();
        if (TextUtils.isEmpty(strY) || (qVar = this.x) == null || qVar.aa() == null) {
            return strY;
        }
        return strY + "?appname=" + this.x.aa().b() + "&stars=" + this.x.aa().d() + "&comments=" + this.x.aa().e() + "&icon=" + ((this.x.N() == null || TextUtils.isEmpty(this.x.N().a())) ? "" : this.x.N().a()) + "&downloading=false&id=" + this.x.Y() + "&pkg_name=" + this.x.aa().c() + "&download_url=" + this.x.aa().a() + "&name=" + this.x.aa().b();
    }

    private void m() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.x);
        this.M = new com.bytedance.sdk.openadsdk.b.o(3, "embeded_ad", this.x);
        this.r = new com.bytedance.sdk.openadsdk.core.x(this);
        String strBb = this.x.bb();
        this.r.b(this.f1122e).a(this.x).a(arrayList).d(this.p).e(this.q).c("embeded_ad").b(this.t).a(this).a(this.M).a(this.f1121d).a(this.f1122e).f(strBb);
        com.bytedance.sdk.openadsdk.core.x xVar = new com.bytedance.sdk.openadsdk.core.x(this);
        this.s = xVar;
        xVar.b(this.f1123f).a(this.x).d(this.p).e(this.q).a(this).b(this.t).c(false).a(this.M).a(this.f1123f).f(strBb);
        e();
    }

    private void n() {
        TTAdDislikeToast tTAdDislikeToast = this.b;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.a(TTAdDislikeToast.getDislikeTip());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        TTAdDislikeToast tTAdDislikeToast = this.b;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.a(TTAdDislikeToast.getDislikeSendTip());
        }
    }

    protected void a() {
        if (this.o == null) {
            return;
        }
        q qVar = this.x;
        if (qVar != null && !com.bytedance.sdk.openadsdk.core.model.t.g(qVar)) {
            this.o.a();
            return;
        }
        this.o.b();
        if (this.o.getPlayView() != null) {
            com.bytedance.sdk.openadsdk.core.b.a aVar = new com.bytedance.sdk.openadsdk.core.b.a(this, this.x, "embeded_ad", this.t) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.5
                @Override // com.bytedance.sdk.openadsdk.core.b.a, com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
                public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
                    q qVar2 = this.f1457e;
                    if (qVar2 == null || qVar2.r() != 1 || z) {
                        super.a(view, f2, f3, f4, f5, sparseArray, z);
                        TTPlayableLandingPageActivity.this.z = true;
                        TTPlayableLandingPageActivity.this.A = true;
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("playable_url", TTPlayableLandingPageActivity.this.u);
                        } catch (JSONException e2) {
                            l.c("TTPWPActivity", "onClick JSON ERROR", e2);
                        }
                        com.bytedance.sdk.openadsdk.b.c.b(TTPlayableLandingPageActivity.this.x, ((com.bytedance.sdk.openadsdk.core.b.b) this).f1458f, "click_playable_download_button_loading", jSONObject);
                    }
                }
            };
            aVar.a(this.B);
            this.o.getPlayView().setOnClickListener(aVar);
        }
        if (com.bytedance.sdk.openadsdk.core.model.t.i(this.x)) {
            this.y.sendMessageDelayed(b(2), 10000L);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.i.g
    public void a(int i) {
        b(i <= 0);
    }

    @Override // com.bytedance.sdk.component.utils.x.a
    public void a(Message message) {
        int i = message.what;
        if (i == 1) {
            ad.a((View) this.i, 0);
            return;
        }
        if (i != 2) {
            return;
        }
        l.b("playable hidden loading , type:" + message.arg1);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("remove_loading_page_type", message.arg1);
            jSONObject.put("playable_url", this.u);
        } catch (JSONException e2) {
            l.c("TTPWPActivity", "handleMsg json error", e2);
        }
        com.bytedance.sdk.openadsdk.b.c.b(this.x, "embeded_ad", "remove_loading_page", jSONObject);
        this.y.removeMessages(2);
        PlayableLoadingView playableLoadingView = this.o;
        if (playableLoadingView != null) {
            playableLoadingView.a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.d
    public void a(boolean z) {
        com.com.bytedance.overseas.sdk.a.c cVar;
        this.z = true;
        this.A = z;
        if (!z) {
            try {
                Toast.makeText(this.l, com.bytedance.sdk.component.utils.s.a(o.a(), "tt_toast_later_download"), 0).show();
            } catch (Throwable unused) {
            }
        }
        if (!this.A || (cVar = this.B) == null) {
            return;
        }
        cVar.d();
    }

    protected void b() {
        if (this.x == null || isFinishing()) {
            return;
        }
        if (this.c.get()) {
            n();
            return;
        }
        if (this.a == null) {
            c();
        }
        this.a.a(new t.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.7
            @Override // com.bytedance.sdk.openadsdk.core.t.a
            public void a() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.t.a
            public void a(int i, String str) {
                if (TTPlayableLandingPageActivity.this.c.get() || TextUtils.isEmpty(str)) {
                    return;
                }
                TTPlayableLandingPageActivity.this.c.set(true);
                TTPlayableLandingPageActivity.this.o();
            }
        });
        t tVar = this.a;
        if (tVar != null) {
            tVar.a();
        }
    }

    protected void b(boolean z) {
        try {
            this.L = z;
            this.k.setImageResource(z ? com.bytedance.sdk.component.utils.s.d(this.l, "tt_mute_wrapper") : com.bytedance.sdk.component.utils.s.d(this.l, "tt_unmute_wrapper"));
            h hVar = this.J;
            if (hVar != null) {
                hVar.a(z);
            }
        } catch (Exception e2) {
            l.e("TTPWPActivity", e2.getMessage());
        }
    }

    void c() {
        q qVar = this.x;
        if (qVar != null) {
            this.a = new com.bytedance.sdk.openadsdk.dislike.b(this, qVar.ac(), this.x.ae(), this.x.ao().toString());
        }
        if (this.b == null) {
            this.b = new TTAdDislikeToast(this);
            ((FrameLayout) findViewById(R.id.content)).addView(this.b);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        e eVar = this.M;
        if (eVar != null) {
            eVar.h();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    @SuppressLint({"SourceLockedOrientationActivity"})
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!com.bytedance.sdk.openadsdk.core.l.e()) {
            finish();
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            requestWindowFeature(1);
            getWindow().addFlags(1024);
            getWindow().addFlags(16777216);
            o.a(this);
        } catch (Throwable unused) {
        }
        a(bundle);
        q qVar = this.x;
        if (qVar == null) {
            return;
        }
        int iJ = com.bytedance.sdk.openadsdk.core.model.t.j(qVar);
        if (iJ != 0) {
            if (iJ == 1) {
                setRequestedOrientation(1);
            } else if (iJ == 2) {
                setRequestedOrientation(0);
            }
        } else if (Build.VERSION.SDK_INT >= 18) {
            setRequestedOrientation(14);
        } else {
            setRequestedOrientation(1);
        }
        this.l = this;
        try {
            setContentView(d());
            i();
            f();
            a();
            m();
            g();
            if (!TextUtils.isEmpty(this.D)) {
                this.K = com.bytedance.sdk.openadsdk.d.b.a().b();
                int iA = com.bytedance.sdk.openadsdk.d.b.a().a(this.K, this.D);
                this.H = iA;
                this.I = iA > 0 ? 2 : 0;
            }
            h();
            e eVar = this.M;
            if (eVar != null) {
                eVar.g();
            }
            c.a.a(SystemClock.elapsedRealtime() - jElapsedRealtime, this.x, "embeded_ad", this.K, this.D);
        } catch (Throwable unused2) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        e eVar = this.M;
        if (eVar != null) {
            eVar.a(true);
            this.M.l();
        }
        this.y.removeCallbacksAndMessages(null);
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(this.D)) {
            c.a.a(this.F.get(), this.E.get(), this.x);
        }
        com.bytedance.sdk.openadsdk.d.b.a().a(this.K);
        SSWebView sSWebView = this.f1122e;
        if (sSWebView != null) {
            aa.a(sSWebView.getWebView());
            this.f1122e.l();
        }
        this.f1122e = null;
        com.bytedance.sdk.openadsdk.core.x xVar = this.r;
        if (xVar != null) {
            xVar.m();
        }
        com.bytedance.sdk.openadsdk.core.x xVar2 = this.s;
        if (xVar2 != null) {
            xVar2.m();
        }
        h hVar = this.J;
        if (hVar != null) {
            hVar.L();
        }
        j jVar = this.N;
        if (jVar != null) {
            jVar.c(true);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        com.bytedance.sdk.openadsdk.core.x xVar = this.r;
        if (xVar != null) {
            xVar.l();
            this.r.b(false);
        }
        com.bytedance.sdk.openadsdk.core.x xVar2 = this.s;
        if (xVar2 != null) {
            xVar2.l();
        }
        h hVar = this.J;
        if (hVar != null) {
            hVar.a(true);
            this.J.F();
            this.J.b(false);
        }
        DeviceUtils.AudioInfoReceiver.b((com.bytedance.sdk.openadsdk.i.g) this);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.bytedance.sdk.openadsdk.core.x xVar = this.r;
        if (xVar != null) {
            xVar.k();
            SSWebView sSWebView = this.f1122e;
            if (sSWebView != null) {
                this.r.b(sSWebView.getVisibility() == 0);
            }
        }
        com.bytedance.sdk.openadsdk.core.x xVar2 = this.s;
        if (xVar2 != null) {
            xVar2.k();
        }
        h hVar = this.J;
        if (hVar != null) {
            hVar.G();
            this.J.b(true);
        }
        j jVar = this.N;
        if (jVar != null) {
            jVar.g();
        }
        DeviceUtils.AudioInfoReceiver.a((com.bytedance.sdk.openadsdk.i.g) this);
        if (DeviceUtils.f() == 0) {
            this.L = true;
        }
        b(this.L);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            q qVar = this.x;
            bundle.putString("material_meta", qVar != null ? qVar.ao().toString() : null);
            bundle.putInt("sdk_version", this.m);
            bundle.putString("adid", this.p);
            bundle.putString("log_extra", this.q);
            bundle.putInt(ShareConstants.FEED_SOURCE_PARAM, this.t);
            bundle.putBoolean("ad_pending_download", this.z);
            bundle.putString("url", this.u);
            bundle.putString("web_title", this.v);
            bundle.putString("event_tag", "embeded_ad");
        } catch (Throwable unused) {
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        e eVar = this.M;
        if (eVar != null) {
            eVar.j();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        e eVar = this.M;
        if (eVar != null) {
            eVar.i();
        }
        j jVar = this.N;
        if (jVar != null) {
            jVar.h();
        }
    }
}
