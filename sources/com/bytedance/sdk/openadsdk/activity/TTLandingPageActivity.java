package com.bytedance.sdk.openadsdk.activity;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.b.c;
import com.bytedance.sdk.openadsdk.b.j;
import com.bytedance.sdk.openadsdk.common.LandingPageBrowserDownloadButton;
import com.bytedance.sdk.openadsdk.common.LandingPageBrowserNewBottomBar;
import com.bytedance.sdk.openadsdk.common.LandingPageBrowserNewTitleBar;
import com.bytedance.sdk.openadsdk.common.LandingPageBrowserTitleBar;
import com.bytedance.sdk.openadsdk.common.LandingPageBrowserTitleBarForDark;
import com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout;
import com.bytedance.sdk.openadsdk.common.PangleViewStub;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.common.g;
import com.bytedance.sdk.openadsdk.common.i;
import com.bytedance.sdk.openadsdk.core.b.a;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.widget.a.e;
import com.bytedance.sdk.openadsdk.core.x;
import com.bytedance.sdk.openadsdk.g.d;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.com.bytedance.overseas.sdk.a.c;
import com.facebook.share.internal.ShareConstants;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TTLandingPageActivity extends TTBaseActivity implements d {
    private int A;
    private boolean C;
    private i D;
    private g E;
    private LandingPageLoadingLayout F;
    private boolean G;
    j a;
    TTAdDislikeDialog b;
    TTAdDislikeToast c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SSWebView f1119f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f1120g;
    private TextView h;
    private Context i;
    private PangleViewStub j;
    private Button k;
    private PAGProgressBar l;
    private String m;
    private String n;
    private x o;
    private int p;
    private String q;
    private q r;
    private c s;
    private String t;
    private String v;
    private ILoader w;
    private int z;
    private final AtomicBoolean u = new AtomicBoolean(true);
    private final AtomicInteger x = new AtomicInteger(0);
    private final AtomicInteger y = new AtomicInteger(0);
    private final AtomicInteger B = new AtomicInteger(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final AtomicBoolean f1117d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final AtomicBoolean f1118e = new AtomicBoolean(false);
    private String H = "ダウンロード";

    private void a(int i) {
        int i2;
        if (i == 1 || (i2 = Build.VERSION.SDK_INT) == 26) {
            return;
        }
        if (i2 != 27) {
            setRequestedOrientation(i);
        } else {
            try {
                setRequestedOrientation(i);
            } catch (Throwable unused) {
            }
        }
    }

    private void a(final String str) {
        Button button;
        if (TextUtils.isEmpty(str) || (button = this.k) == null) {
            return;
        }
        button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.4
            @Override // java.lang.Runnable
            public void run() {
                if (TTLandingPageActivity.this.k == null || TTLandingPageActivity.this.isFinishing()) {
                    return;
                }
                TTLandingPageActivity.this.k.setText(str);
            }
        });
    }

    private View b() {
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(this);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(this);
        pAGLinearLayout.setOrientation(1);
        pAGFrameLayout.addView(pAGLinearLayout, new FrameLayout.LayoutParams(-1, -1));
        View pangleViewStub = new PangleViewStub(this, new PangleViewStub.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.16
            @Override // com.bytedance.sdk.openadsdk.common.PangleViewStub.a
            public View a(Context context) {
                return new LandingPageBrowserTitleBar(context);
            }
        });
        pangleViewStub.setId(com.bytedance.sdk.openadsdk.utils.i.Y);
        pAGLinearLayout.addView(pangleViewStub, new LinearLayout.LayoutParams(-1, ad.b(this, 44.0f)));
        View pangleViewStub2 = new PangleViewStub(this, new PangleViewStub.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.17
            @Override // com.bytedance.sdk.openadsdk.common.PangleViewStub.a
            public View a(Context context) {
                return new LandingPageBrowserTitleBarForDark(context);
            }
        });
        pangleViewStub2.setId(com.bytedance.sdk.openadsdk.utils.i.Z);
        pAGLinearLayout.addView(pangleViewStub2, new LinearLayout.LayoutParams(-1, ad.b(this, 44.0f)));
        View pangleViewStub3 = new PangleViewStub(this, new PangleViewStub.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.18
            @Override // com.bytedance.sdk.openadsdk.common.PangleViewStub.a
            public View a(Context context) {
                return new LandingPageBrowserNewTitleBar(context);
            }
        });
        pangleViewStub3.setId(com.bytedance.sdk.openadsdk.utils.i.aa);
        pAGLinearLayout.addView(pangleViewStub3, new LinearLayout.LayoutParams(-1, ad.b(this, 44.0f)));
        PAGFrameLayout pAGFrameLayout2 = new PAGFrameLayout(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        pAGLinearLayout.addView(pAGFrameLayout2, layoutParams);
        SSWebView sSWebView = new SSWebView(this);
        sSWebView.setId(com.bytedance.sdk.openadsdk.utils.i.O);
        pAGFrameLayout2.addView(sSWebView, new FrameLayout.LayoutParams(-1, -1));
        PangleViewStub pangleViewStub4 = new PangleViewStub(this, new PangleViewStub.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.2
            @Override // com.bytedance.sdk.openadsdk.common.PangleViewStub.a
            public View a(Context context) {
                return new LandingPageBrowserDownloadButton(context);
            }
        });
        pangleViewStub4.setId(com.bytedance.sdk.openadsdk.utils.i.W);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 81;
        pAGFrameLayout2.addView(pangleViewStub4, layoutParams2);
        PAGProgressBar pAGProgressBar = new PAGProgressBar(this, null, R.style.Widget.ProgressBar.Horizontal);
        pAGProgressBar.setId(com.bytedance.sdk.openadsdk.utils.i.ab);
        pAGProgressBar.setProgress(1);
        pAGProgressBar.setVisibility(8);
        pAGProgressBar.setProgressDrawable(s.c(this, "tt_browser_progress_style"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, ad.b(this, 3.0f));
        layoutParams3.gravity = 49;
        pAGFrameLayout2.addView(pAGProgressBar, layoutParams3);
        PangleViewStub pangleViewStub5 = new PangleViewStub(this, new PangleViewStub.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.3
            @Override // com.bytedance.sdk.openadsdk.common.PangleViewStub.a
            public View a(Context context) {
                return new LandingPageBrowserNewBottomBar(context);
            }
        });
        pangleViewStub5.setId(com.bytedance.sdk.openadsdk.utils.i.X);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, ad.b(this, 44.0f));
        layoutParams4.gravity = 80;
        pAGFrameLayout2.addView(pangleViewStub5, layoutParams4);
        LandingPageLoadingLayout landingPageLoadingLayout = new LandingPageLoadingLayout(this);
        landingPageLoadingLayout.setId(520093721);
        pAGFrameLayout.addView(landingPageLoadingLayout, new FrameLayout.LayoutParams(-1, -1));
        return pAGFrameLayout;
    }

    private void b(final int i) {
        if (this.f1120g == null || !g()) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.9
            @Override // java.lang.Runnable
            public void run() {
                ad.a((View) TTLandingPageActivity.this.f1120g, i);
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void c() {
        q qVar = this.r;
        if (qVar == null || qVar.M() != 4) {
            return;
        }
        PangleViewStub pangleViewStub = this.j;
        if (pangleViewStub != null) {
            pangleViewStub.setVisibility(0);
        }
        Button button = (Button) findViewById(com.bytedance.sdk.openadsdk.utils.i.am);
        this.k = button;
        if (button != null) {
            a(d());
            if (this.s == null) {
                this.s = com.com.bytedance.overseas.sdk.a.d.a(this, this.r, TextUtils.isEmpty(this.q) ? ac.b(this.p) : this.q);
            }
            a aVar = new a(this, this.r, this.q, this.p);
            aVar.a(false);
            this.k.setOnClickListener(aVar);
            this.k.setOnTouchListener(aVar);
            aVar.c(true);
            aVar.a(this.s);
        }
    }

    private String d() {
        q qVar = this.r;
        if (qVar != null && !TextUtils.isEmpty(qVar.X())) {
            this.H = this.r.X();
        }
        return this.H;
    }

    private void e() {
        this.f1119f = (SSWebView) findViewById(com.bytedance.sdk.openadsdk.utils.i.O);
        this.j = (PangleViewStub) findViewById(com.bytedance.sdk.openadsdk.utils.i.W);
        PangleViewStub pangleViewStub = (PangleViewStub) findViewById(com.bytedance.sdk.openadsdk.utils.i.Y);
        PangleViewStub pangleViewStub2 = (PangleViewStub) findViewById(com.bytedance.sdk.openadsdk.utils.i.Z);
        LandingPageLoadingLayout landingPageLoadingLayout = (LandingPageLoadingLayout) findViewById(520093721);
        this.F = landingPageLoadingLayout;
        if (landingPageLoadingLayout != null) {
            landingPageLoadingLayout.a(this.r, this.q, true);
            this.F.a();
        }
        if (this.C) {
            PangleViewStub pangleViewStub3 = (PangleViewStub) findViewById(com.bytedance.sdk.openadsdk.utils.i.aa);
            PangleViewStub pangleViewStub4 = (PangleViewStub) findViewById(com.bytedance.sdk.openadsdk.utils.i.X);
            pangleViewStub3.setVisibility(0);
            pangleViewStub4.setVisibility(0);
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(com.bytedance.sdk.openadsdk.utils.i.ac);
            LinearLayout linearLayout = (LinearLayout) findViewById(com.bytedance.sdk.openadsdk.utils.i.ah);
            i iVar = new i(this, relativeLayout, this.r);
            this.D = iVar;
            ImageView imageViewC = iVar.c();
            this.f1120g = imageViewC;
            imageViewC.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTLandingPageActivity.this.finish();
                }
            });
            this.E = new g(this, linearLayout, this.f1119f, this.r, "landingpage");
            return;
        }
        int iM = h.b().m();
        if (iM != 0) {
            if (iM == 1 && pangleViewStub2 != null) {
                pangleViewStub2.setVisibility(0);
            }
        } else if (pangleViewStub != null) {
            pangleViewStub.setVisibility(0);
        }
        ImageView imageView = (ImageView) findViewById(520093720);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTLandingPageActivity.this.f1119f != null) {
                        if (TTLandingPageActivity.this.f1119f.e()) {
                            TTLandingPageActivity.this.f1119f.f();
                        } else if (TTLandingPageActivity.this.g()) {
                            TTLandingPageActivity.this.onBackPressed();
                        } else {
                            TTLandingPageActivity.this.finish();
                        }
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(520093716);
        this.f1120g = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTLandingPageActivity.this.finish();
                }
            });
        }
        this.h = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.i.ao);
        PAGProgressBar pAGProgressBar = (PAGProgressBar) findViewById(com.bytedance.sdk.openadsdk.utils.i.ab);
        this.l = pAGProgressBar;
        pAGProgressBar.setVisibility(0);
        TextView textView = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.i.an);
        textView.setText(s.a(o.a(), "tt_reward_feedback"));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTLandingPageActivity.this.a();
            }
        });
    }

    private void f() {
        x xVar = new x(this);
        this.o = xVar;
        xVar.b(this.f1119f).d(this.m).e(this.n).a(this.r).b(this.p).a(this.r.H()).f(this.r.bb()).a(this.f1119f).c("landingpage").a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        return !TextUtils.isEmpty(this.t) && this.t.contains("__luban_sdk");
    }

    private void h() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isBackIntercept", true);
            this.o.a("temai_back_event", jSONObject);
        } catch (Exception unused) {
        }
    }

    private void i() {
        try {
            if (this.b == null) {
                TTAdDislikeDialog tTAdDislikeDialog = new TTAdDislikeDialog(this.i, this.r);
                this.b = tTAdDislikeDialog;
                tTAdDislikeDialog.setCallback(new TTAdDislikeDialog.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.10
                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void a(int i, FilterWord filterWord) {
                        if (TTLandingPageActivity.this.f1118e.get() || filterWord == null || filterWord.hasSecondOptions()) {
                            return;
                        }
                        TTLandingPageActivity.this.f1118e.set(true);
                        TTLandingPageActivity.this.k();
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void a(View view) {
                        TTLandingPageActivity.this.f1117d.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void b(View view) {
                        TTLandingPageActivity.this.f1117d.set(false);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void c(View view) {
                    }
                });
            }
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
            frameLayout.addView(this.b);
            if (this.c == null) {
                TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this.i);
                this.c = tTAdDislikeToast;
                frameLayout.addView(tTAdDislikeToast);
            }
        } catch (Throwable unused) {
        }
    }

    private void j() {
        TTAdDislikeToast tTAdDislikeToast = this.c;
        if (tTAdDislikeToast == null) {
            return;
        }
        tTAdDislikeToast.a(TTAdDislikeToast.getDislikeTip());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        TTAdDislikeToast tTAdDislikeToast;
        if (isFinishing() || (tTAdDislikeToast = this.c) == null) {
            return;
        }
        tTAdDislikeToast.a(TTAdDislikeToast.getDislikeSendTip());
    }

    protected void a() {
        if (isFinishing()) {
            return;
        }
        if (this.f1118e.get()) {
            j();
            return;
        }
        if (this.b == null) {
            i();
        }
        this.b.a();
    }

    @Override // com.bytedance.sdk.openadsdk.g.d
    public void a(boolean z, JSONArray jSONArray) {
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (g() && !this.u.getAndSet(true)) {
            h();
            b(0);
        } else {
            try {
                super.onBackPressed();
            } catch (Throwable th) {
                l.d("TTAD.LandingPageAct", "onBackPressed: ", th.getMessage());
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c();
    }

    @Override // android.app.Activity
    @SuppressLint({"ClickableViewAccessibility"})
    protected void onCreate(@Nullable Bundle bundle) {
        SSWebView sSWebView;
        a(3);
        super.onCreate(bundle);
        if (!com.bytedance.sdk.openadsdk.core.l.e()) {
            finish();
            return;
        }
        try {
            o.a(this);
        } catch (Throwable unused) {
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            setContentView(b());
            Intent intent = getIntent();
            int intExtra = intent.getIntExtra("sdk_version", 1);
            this.m = intent.getStringExtra("adid");
            this.n = intent.getStringExtra("log_extra");
            this.p = intent.getIntExtra(ShareConstants.FEED_SOURCE_PARAM, -1);
            String stringExtra = intent.getStringExtra("url");
            this.t = stringExtra;
            b(4);
            String stringExtra2 = intent.getStringExtra("web_title");
            this.q = intent.getStringExtra("event_tag");
            this.v = intent.getStringExtra("gecko_id");
            if (b.c()) {
                String stringExtra3 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra3 != null) {
                    try {
                        this.r = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(stringExtra3));
                    } catch (Exception e2) {
                        l.c("TTAD.LandingPageAct", "TTLandingPageActivity - onCreate MultiGlobalInfo : ", e2);
                    }
                }
            } else {
                this.r = com.bytedance.sdk.openadsdk.core.s.a().b();
                com.bytedance.sdk.openadsdk.core.s.a().f();
            }
            if (this.r == null) {
                finish();
                return;
            }
            this.C = o.d().v();
            e();
            if (!TextUtils.isEmpty(this.v)) {
                this.w = com.bytedance.sdk.openadsdk.d.b.a().b();
                int iA = com.bytedance.sdk.openadsdk.d.b.a().a(this.w, this.v);
                this.z = iA;
                this.A = iA > 0 ? 2 : 0;
            }
            this.i = this;
            if (this.f1119f != null) {
                com.bytedance.sdk.openadsdk.core.widget.a.c.a(this).a(false).b(false).a(this.f1119f.getWebView());
            }
            SSWebView sSWebView2 = this.f1119f;
            if (sSWebView2 != null && sSWebView2.getWebView() != null) {
                this.a = new j(this.r, this.f1119f.getWebView(), new com.bytedance.sdk.openadsdk.b.i() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.1
                    @Override // com.bytedance.sdk.openadsdk.b.i
                    public void a(int i) {
                        c.a.a(TTLandingPageActivity.this.z, TTLandingPageActivity.this.y.get(), TTLandingPageActivity.this.B.get(), TTLandingPageActivity.this.x.get() - TTLandingPageActivity.this.B.get(), TTLandingPageActivity.this.r, "landingpage", i);
                    }
                }, this.A).a(true);
            }
            f();
            this.f1119f.setLandingPage(true);
            this.f1119f.setTag("landingpage");
            this.f1119f.setMaterialMeta(this.r.aJ());
            this.f1119f.setWebViewClient(new e(this.i, this.o, this.m, this.a, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.11
                @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    try {
                        if (TTLandingPageActivity.this.l != null && !TTLandingPageActivity.this.isFinishing()) {
                            TTLandingPageActivity.this.l.setVisibility(8);
                        }
                    } catch (Throwable unused2) {
                    }
                    if (TTLandingPageActivity.this.F != null) {
                        TTLandingPageActivity.this.F.b();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                    try {
                        if (TextUtils.isEmpty(TTLandingPageActivity.this.v)) {
                            return super.shouldInterceptRequest(webView, str);
                        }
                        TTLandingPageActivity.this.x.incrementAndGet();
                        WebResourceResponseModel webResourceResponseModelA = com.bytedance.sdk.openadsdk.d.b.a().a(TTLandingPageActivity.this.w, TTLandingPageActivity.this.v, str);
                        if (webResourceResponseModelA != null && webResourceResponseModelA.getWebResourceResponse() != null) {
                            TTLandingPageActivity.this.B.incrementAndGet();
                            l.b("TTAD.LandingPageAct", "GeckoLog: hit++");
                            return webResourceResponseModelA.getWebResourceResponse();
                        }
                        if (webResourceResponseModelA != null && webResourceResponseModelA.getMsg() == 2) {
                            TTLandingPageActivity.this.y.incrementAndGet();
                        }
                        return super.shouldInterceptRequest(webView, str);
                    } catch (Throwable th) {
                        l.c("TTAD.LandingPageAct", "shouldInterceptRequest url error", th);
                        return super.shouldInterceptRequest(webView, str);
                    }
                }
            });
            SSWebView sSWebView3 = this.f1119f;
            if (sSWebView3 != null) {
                sSWebView3.setUserAgentString(com.bytedance.sdk.openadsdk.utils.l.a(sSWebView3.getWebView(), intExtra));
            }
            if (Build.VERSION.SDK_INT >= 21 && (sSWebView = this.f1119f) != null) {
                sSWebView.setMixedContentMode(0);
            }
            com.bytedance.sdk.openadsdk.b.c.a(this.r, "landingpage", this.A);
            com.bytedance.sdk.openadsdk.utils.o.a(this.f1119f, stringExtra);
            this.f1119f.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.a.d(this.o, this.a) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.12
                @Override // com.bytedance.sdk.openadsdk.core.widget.a.d, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    super.onProgressChanged(webView, i);
                    if (TTLandingPageActivity.this.F != null) {
                        TTLandingPageActivity.this.F.a(i);
                    }
                    if (TTLandingPageActivity.this.C) {
                        if (TTLandingPageActivity.this.D != null) {
                            TTLandingPageActivity.this.D.a(i);
                        }
                        if (TTLandingPageActivity.this.E == null || i != 100) {
                            return;
                        }
                        TTLandingPageActivity.this.E.a(webView);
                        return;
                    }
                    if (TTLandingPageActivity.this.l == null || TTLandingPageActivity.this.isFinishing()) {
                        return;
                    }
                    if (i == 100 && TTLandingPageActivity.this.l.isShown()) {
                        TTLandingPageActivity.this.l.setVisibility(8);
                    } else {
                        TTLandingPageActivity.this.l.setProgress(i);
                    }
                }
            });
            if (this.f1119f.getWebView() != null) {
                if (this.C) {
                    this.f1119f.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.13
                        float a = 0.0f;

                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            j jVar = TTLandingPageActivity.this.a;
                            if (jVar != null) {
                                jVar.b(motionEvent.getActionMasked());
                            }
                            if (motionEvent.getAction() == 0) {
                                this.a = motionEvent.getY();
                            }
                            if (motionEvent.getAction() == 2) {
                                float y = motionEvent.getY();
                                float f2 = this.a;
                                if (y - f2 > 8.0f) {
                                    if (TTLandingPageActivity.this.D != null) {
                                        TTLandingPageActivity.this.D.a();
                                    }
                                    if (TTLandingPageActivity.this.E != null) {
                                        TTLandingPageActivity.this.E.a();
                                    }
                                    return false;
                                }
                                if (y - f2 < -8.0f) {
                                    if (TTLandingPageActivity.this.D != null) {
                                        TTLandingPageActivity.this.D.b();
                                    }
                                    if (TTLandingPageActivity.this.E != null) {
                                        TTLandingPageActivity.this.E.b();
                                    }
                                }
                            }
                            return false;
                        }
                    });
                } else {
                    this.f1119f.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.14
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            j jVar = TTLandingPageActivity.this.a;
                            if (jVar == null) {
                                return false;
                            }
                            jVar.b(motionEvent.getActionMasked());
                            return false;
                        }
                    });
                }
            }
            this.f1119f.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.15
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                    if (TTLandingPageActivity.this.s != null) {
                        TTLandingPageActivity.this.s.d();
                    }
                }
            });
            TextView textView = this.h;
            if (textView != null) {
                if (TextUtils.isEmpty(stringExtra2)) {
                    stringExtra2 = s.a(this, "tt_web_title_default");
                }
                textView.setText(stringExtra2);
            }
            c();
            c.a.a(SystemClock.elapsedRealtime() - jElapsedRealtime, this.r, "landingpage", this.w, this.v);
        } catch (Throwable unused2) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        SSWebView sSWebView;
        super.onDestroy();
        j jVar = this.a;
        if (jVar != null && (sSWebView = this.f1119f) != null) {
            jVar.a(sSWebView);
        }
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
        } catch (Throwable unused) {
        }
        SSWebView sSWebView2 = this.f1119f;
        if (sSWebView2 != null) {
            com.bytedance.sdk.openadsdk.core.aa.a(sSWebView2.getWebView());
        }
        this.f1119f = null;
        x xVar = this.o;
        if (xVar != null) {
            xVar.m();
        }
        j jVar2 = this.a;
        if (jVar2 != null) {
            jVar2.c(true);
        }
        if (!TextUtils.isEmpty(this.v)) {
            c.a.a(this.B.get(), this.x.get(), this.r);
        }
        com.bytedance.sdk.openadsdk.d.b.a().a(this.w);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        x xVar = this.o;
        if (xVar != null) {
            xVar.l();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        x xVar = this.o;
        if (xVar != null) {
            xVar.k();
        }
        j jVar = this.a;
        if (jVar != null) {
            jVar.g();
        }
        if (this.G) {
            return;
        }
        this.G = true;
        a(4);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.openadsdk.utils.c.a(this, this.r);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        j jVar = this.a;
        if (jVar != null) {
            jVar.h();
        }
    }
}
