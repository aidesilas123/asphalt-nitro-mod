package com.bytedance.sdk.openadsdk.core.model;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.http.SslError;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.webkit.DownloadListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.b.c;
import com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout;
import com.bytedance.sdk.openadsdk.core.aa;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.core.x;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: LandingPageModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class o {
    private View A;
    private long B;
    private final Activity D;
    private String E;
    private com.com.bytedance.overseas.sdk.a.c F;
    private com.bytedance.sdk.openadsdk.b.j G;
    private boolean H;
    private boolean J;
    private com.bytedance.sdk.openadsdk.core.widget.a.e K;
    private String L;
    private ILoader M;
    private int Q;
    private int R;
    ImageView a;
    FrameLayout b;
    TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    FrameLayout f1585d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f1586e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    RelativeLayout f1587f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final q f1588g;
    FrameLayout h;
    ObjectAnimator i;
    ValueAnimator j;
    ObjectAnimator k;
    ObjectAnimator l;
    c.a m;
    com.bytedance.sdk.openadsdk.core.b.a n;
    com.bytedance.sdk.openadsdk.core.b.b o;
    private View p;
    private TextView q;
    private TextView r;
    private TTRoundRectImageView s;
    private TextView t;
    private x u;
    private SSWebView v;
    private FrameLayout w;
    private LandingPageLoadingLayout x;
    private View y;
    private ImageView z;
    private final AtomicBoolean C = new AtomicBoolean(false);
    private final AtomicBoolean I = new AtomicBoolean(false);
    private volatile int N = 0;
    private volatile int O = 0;
    private volatile int P = 0;

    public o(Activity activity, final q qVar, String str, FrameLayout frameLayout) {
        this.D = activity;
        this.f1588g = qVar;
        this.E = str;
        if (qVar != null) {
            this.L = qVar.af();
        }
        if (!TextUtils.isEmpty(this.L)) {
            this.M = com.bytedance.sdk.openadsdk.d.b.a().b();
            int iA = com.bytedance.sdk.openadsdk.d.b.a().a(this.M, this.L);
            this.Q = iA;
            this.R = iA > 0 ? 2 : 0;
        }
        boolean zC = c(qVar);
        if (b(qVar)) {
            this.E = "landingpage_split_screen";
        } else if (zC) {
            this.E = "landingpage_direct";
        }
        this.n = new com.bytedance.sdk.openadsdk.core.b.a(com.bytedance.sdk.openadsdk.core.o.a(), qVar, this.E, ac.a(str));
        View viewFindViewById = activity.findViewById(R.id.content);
        this.n.a(viewFindViewById);
        com.bytedance.sdk.openadsdk.core.b.b bVar = new com.bytedance.sdk.openadsdk.core.b.b(com.bytedance.sdk.openadsdk.core.o.a(), qVar, this.E, ac.a(str), true) { // from class: com.bytedance.sdk.openadsdk.core.model.o.1
            @Override // com.bytedance.sdk.openadsdk.core.b.b
            public boolean a(i iVar, Map<String, Object> map) {
                if (o.f(qVar) && o.this.K != null) {
                    o.this.K.a(iVar);
                    o.this.K.a(map);
                    if (o.e(o.this.f1588g) || o.this.J) {
                        return true;
                    }
                }
                return super.a(iVar, map);
            }
        };
        this.o = bVar;
        bVar.a(viewFindViewById);
        this.h = frameLayout;
        if (zC) {
            try {
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, (int) (qVar.i().b() * 1000));
                this.j = valueAnimatorOfInt;
                valueAnimatorOfInt.setDuration((long) ((qVar.i().b() / com.bytedance.sdk.openadsdk.core.l.f1545d) * 1000.0f));
                this.j.setInterpolator(new LinearInterpolator());
                this.j.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.model.o.8
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        c.a aVar = o.this.m;
                        if (aVar != null) {
                            aVar.a(((Integer) valueAnimator.getAnimatedValue()).longValue(), o.this.f1588g.i().b() * 1000);
                        }
                    }
                });
                this.j.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.model.o.9
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        o oVar = o.this;
                        c.a aVar = oVar.m;
                        if (aVar != null) {
                            aVar.a(oVar.f1588g.i().b() * 1000, 100);
                        }
                    }
                });
                this.j.start();
            } catch (Exception e2) {
                Log.e("LandingPageModel", "LandingPageModel: ", e2);
            }
        }
    }

    public static boolean a(q qVar) {
        if (qVar == null || g(qVar)) {
            return false;
        }
        return c(qVar) || b(qVar);
    }

    public static boolean b(q qVar) {
        if (qVar != null && qVar.M() == 3 && qVar.o() == 6 && !t.b(qVar) && qVar.ak() == 1) {
            return qVar.al() == 0.0f || qVar.al() == 100.0f;
        }
        return false;
    }

    public static boolean c(q qVar) {
        if (qVar == null) {
            return false;
        }
        if (g(qVar)) {
            return true;
        }
        if (qVar.M() == 3 && qVar.o() == 5 && !t.b(qVar)) {
            return qVar.al() == 0.0f || qVar.al() == 100.0f;
        }
        return false;
    }

    public static boolean d(q qVar) {
        return c(qVar) && !g(qVar);
    }

    public static boolean e(q qVar) {
        return (qVar == null || qVar.aP() == 1 || !f(qVar)) ? false : true;
    }

    public static boolean f(q qVar) {
        return qVar != null && (qVar.o() == 19 || qVar.o() == 20);
    }

    public static boolean g(q qVar) {
        return qVar != null && qVar.o() == 19;
    }

    public static boolean h(q qVar) {
        return (qVar == null || !com.bytedance.sdk.openadsdk.core.o.d().v() || !qVar.G() || b(qVar) || c(qVar)) ? false : true;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void i() {
        LandingPageLoadingLayout landingPageLoadingLayout;
        SSWebView sSWebView = this.v;
        if (sSWebView != null && sSWebView.getWebView() != null) {
            com.bytedance.sdk.openadsdk.core.widget.a.c.a(com.bytedance.sdk.openadsdk.core.o.a()).a(false).b(false).a(this.v.getWebView());
            SSWebView sSWebView2 = this.v;
            if (sSWebView2 != null && sSWebView2.getWebView() != null) {
                com.bytedance.sdk.openadsdk.b.j jVarA = new com.bytedance.sdk.openadsdk.b.j(this.f1588g, this.v.getWebView(), new com.bytedance.sdk.openadsdk.b.i() { // from class: com.bytedance.sdk.openadsdk.core.model.o.11
                    @Override // com.bytedance.sdk.openadsdk.b.i
                    public void a(int i) {
                        int i2 = o.this.Q;
                        int i3 = o.this.P;
                        int i4 = o.this.O;
                        int i5 = o.this.N - o.this.O;
                        o oVar = o.this;
                        c.a.a(i2, i3, i4, i5, oVar.f1588g, oVar.E, i);
                    }
                }, this.R).a(true);
                this.G = jVarA;
                jVarA.a(this.E);
            }
            j();
            this.v.setLandingPage(true);
            this.v.setTag(this.E);
            this.v.setMaterialMeta(this.f1588g.aJ());
            com.bytedance.sdk.openadsdk.core.widget.a.e eVar = new com.bytedance.sdk.openadsdk.core.widget.a.e(com.bytedance.sdk.openadsdk.core.o.a(), this.u, this.f1588g.Y(), this.G, true) { // from class: com.bytedance.sdk.openadsdk.core.model.o.12
                @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    o.this.k();
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
                public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                    super.onPageStarted(webView, str, bitmap);
                    if (o.this.D instanceof com.bytedance.sdk.openadsdk.core.video.c.c) {
                        ((com.bytedance.sdk.openadsdk.core.video.c.c) o.this.D).b();
                    }
                    o.this.B = System.currentTimeMillis();
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i, String str, String str2) {
                    super.onReceivedError(webView, i, str, str2);
                    String strD = com.bytedance.sdk.openadsdk.core.widget.a.e.d(str2);
                    if (this.f1750f != null) {
                        this.f1750f.a(webView, i, str, str2, com.bytedance.sdk.openadsdk.core.widget.a.e.d(str2), (webView == null || str2 == null || !str2.equals(webView.getUrl())) ? false : true);
                    }
                    boolean z = strD != null && strD.startsWith("image");
                    boolean z2 = strD != null && strD.startsWith("mp4");
                    if (z || z2 || o.this.C.get()) {
                        return;
                    }
                    o.this.m();
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
                public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                    if (sslErrorHandler != null) {
                        o.this.m();
                    }
                    super.onReceivedSslError(webView, sslErrorHandler, sslError);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                    try {
                        if (TextUtils.isEmpty(o.this.L)) {
                            return super.shouldInterceptRequest(webView, str);
                        }
                        o.n(o.this);
                        WebResourceResponseModel webResourceResponseModelA = com.bytedance.sdk.openadsdk.d.b.a().a(o.this.M, o.this.L, str);
                        if (webResourceResponseModelA != null && webResourceResponseModelA.getWebResourceResponse() != null) {
                            o.p(o.this);
                            com.bytedance.sdk.component.utils.l.b("LandingPageModel", "GeckoLog: hit++");
                            return webResourceResponseModelA.getWebResourceResponse();
                        }
                        if (webResourceResponseModelA != null && webResourceResponseModelA.getMsg() == 2) {
                            o.q(o.this);
                        }
                        return super.shouldInterceptRequest(webView, str);
                    } catch (Throwable th) {
                        com.bytedance.sdk.component.utils.l.c("LandingPageModel", "shouldInterceptRequest url error", th);
                        return super.shouldInterceptRequest(webView, str);
                    }
                }
            };
            this.K = eVar;
            this.v.setWebViewClient(eVar);
            this.K.a(this.f1588g);
            this.K.a(this.E);
            this.v.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.a.d(this.u, this.G) { // from class: com.bytedance.sdk.openadsdk.core.model.o.13
                @Override // com.bytedance.sdk.openadsdk.core.widget.a.d, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    super.onProgressChanged(webView, i);
                    if (o.this.D != null && !o.this.D.isFinishing() && i == 100) {
                        o.this.k();
                    }
                    if (o.this.x != null) {
                        o.this.x.a(i);
                    }
                }
            });
            if (this.F == null) {
                this.F = com.com.bytedance.overseas.sdk.a.d.a(com.bytedance.sdk.openadsdk.core.o.a(), this.f1588g, this.E);
            }
            this.v.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.core.model.o.14
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                    if (o.this.F != null) {
                        o.this.F.d();
                    }
                }
            });
            SSWebView sSWebView3 = this.v;
            sSWebView3.setUserAgentString(com.bytedance.sdk.openadsdk.utils.l.a(sSWebView3.getWebView(), BuildConfig.VERSION_CODE));
            if (Build.VERSION.SDK_INT >= 21) {
                this.v.setMixedContentMode(0);
            }
            this.v.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.model.o.15
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (!o.this.J || o.f(o.this.f1588g)) {
                        o.this.o.onTouch(view, motionEvent);
                    }
                    if ((!o.this.J || o.f(o.this.f1588g)) && motionEvent.getAction() == 1 && o.this.o.g()) {
                        o.this.v.getWebView().performClick();
                        o.this.J = true;
                    }
                    if (o.this.G == null) {
                        return false;
                    }
                    o.this.G.b(motionEvent.getActionMasked());
                    return false;
                }
            });
            this.v.getWebView().setOnClickListener(this.o);
            com.bytedance.sdk.openadsdk.b.c.a(this.f1588g, this.E, this.R);
            com.bytedance.sdk.openadsdk.utils.o.a(this.v, this.f1588g.P());
            this.H = true;
        }
        if (this.v == null || (landingPageLoadingLayout = this.x) == null) {
            return;
        }
        landingPageLoadingLayout.a();
    }

    private void j() {
        x xVar = new x(this.D);
        this.u = xVar;
        xVar.b(this.v).d(this.f1588g.Y()).e(this.f1588g.ac()).a(this.f1588g).b(-1).a(this.f1588g.H()).c(this.E).f(this.f1588g.bb()).a(this.v).a(new com.bytedance.sdk.openadsdk.core.widget.b() { // from class: com.bytedance.sdk.openadsdk.core.model.o.2
            @Override // com.bytedance.sdk.openadsdk.core.widget.b
            public void a() {
                if (o.this.K != null) {
                    o.this.K.a();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.C.get() || this.I.get()) {
            return;
        }
        this.C.set(true);
        com.bytedance.sdk.openadsdk.b.c.a(this.f1588g, this.E, System.currentTimeMillis() - this.B, true);
        l();
    }

    private void l() {
        this.f1587f.setVisibility(8);
        if (c(this.f1588g) || !c()) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "timeVisible", 0.0f, 1.0f);
        this.l = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(100L);
        this.l.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.model.o.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) o.this.w.getLayoutParams();
                layoutParams.weight = (float) (((double) ((Float) valueAnimator.getAnimatedValue()).floatValue()) * 0.25d);
                o.this.a((float) (1.0d - (((double) ((Float) valueAnimator.getAnimatedValue()).floatValue()) * 0.2d)));
                o.this.w.setLayoutParams(layoutParams);
            }
        });
        this.l.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void m() {
        if (this.C.get()) {
            return;
        }
        n();
        this.I.set(true);
        ComponentCallbacks2 componentCallbacks2 = this.D;
        if (componentCallbacks2 instanceof com.bytedance.sdk.openadsdk.core.video.c.c) {
            ((com.bytedance.sdk.openadsdk.core.video.c.c) componentCallbacks2).c();
        }
        LandingPageLoadingLayout landingPageLoadingLayout = this.x;
        if (landingPageLoadingLayout != null) {
            landingPageLoadingLayout.b();
        }
        this.p.setVisibility(0);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.p.getLayoutParams();
        layoutParams.addRule(13);
        layoutParams.addRule(10, 0);
        this.p.setLayoutParams(layoutParams);
        if (this.f1588g.N() != null && !TextUtils.isEmpty(this.f1588g.N().a())) {
            com.bytedance.sdk.openadsdk.k.c.a().a(this.f1588g.N().a(), this.f1588g.N().b(), this.f1588g.N().c(), this.s, this.f1588g);
        }
        this.q.setText(this.f1588g.L());
        this.r.setText(this.f1588g.W());
        if (this.t != null) {
            b();
            this.t.setClickable(true);
            this.t.setOnClickListener(this.n);
            this.t.setOnTouchListener(this.n);
        }
    }

    static /* synthetic */ int n(o oVar) {
        int i = oVar.N;
        oVar.N = i + 1;
        return i;
    }

    private void n() {
        if (c(this.f1588g)) {
            ComponentCallbacks2 componentCallbacks2 = this.D;
            if (componentCallbacks2 instanceof com.bytedance.sdk.openadsdk.core.video.c.c) {
                ((com.bytedance.sdk.openadsdk.core.video.c.c) componentCallbacks2).b();
                ((com.bytedance.sdk.openadsdk.core.video.c.c) this.D).i();
            }
        }
    }

    private void o() {
        if (c()) {
            this.y.setVisibility(0);
            ObjectAnimator duration = ObjectAnimator.ofFloat(this.z, "translationY", 16.0f, 0.0f).setDuration(500L);
            this.i = duration;
            duration.setRepeatMode(2);
            this.i.setRepeatCount(-1);
            this.i.start();
            this.y.setClickable(true);
            this.y.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.model.o.4
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (!o.this.J) {
                        o.this.o.onTouch(view, motionEvent);
                    }
                    if (motionEvent.getAction() != 3 && motionEvent.getAction() != 1) {
                        return false;
                    }
                    o.this.k = ObjectAnimator.ofFloat(this, "timeSlide", 0.0f, 1.0f);
                    o.this.k.setDuration(200L);
                    o.this.k.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.model.o.4.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) o.this.w.getLayoutParams();
                            layoutParams.weight = (float) (((double) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 2.07f)) + 0.25d);
                            o.this.a((float) (0.800000011920929d - (((double) ((Float) valueAnimator.getAnimatedValue()).floatValue()) * 0.5d)));
                            o.this.w.setLayoutParams(layoutParams);
                        }
                    });
                    if (o.this.o.g()) {
                        o.this.y.performClick();
                        o.this.J = true;
                    }
                    o.this.k.start();
                    o.this.y.setVisibility(8);
                    return true;
                }
            });
            this.y.setOnClickListener(this.o);
        }
        if (!p()) {
            this.h.setVisibility(8);
            this.b.setVisibility(0);
            this.a.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.a.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.model.o.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    o oVar = o.this;
                    com.bytedance.sdk.openadsdk.b.c.b(oVar.f1588g, oVar.E);
                }
            });
            q qVar = this.f1588g;
            if (qVar != null && qVar.Q() != null && this.f1588g.Q().size() > 0 && this.f1588g.Q().get(0) != null && !TextUtils.isEmpty(this.f1588g.Q().get(0).a())) {
                com.bytedance.sdk.openadsdk.k.c.a().a(this.f1588g.Q().get(0), this.a, this.f1588g);
            }
        }
        try {
            String strA = this.f1588g.Q().get(0).a();
            com.bytedance.sdk.openadsdk.f.d.a().a(strA).a(this.f1588g.Q().get(0).b()).b(this.f1588g.Q().get(0).c()).d(ad.d(com.bytedance.sdk.openadsdk.core.o.a())).c(ad.c(com.bytedance.sdk.openadsdk.core.o.a())).a(com.bytedance.sdk.component.d.u.BITMAP).a(new com.bytedance.sdk.component.d.h() { // from class: com.bytedance.sdk.openadsdk.core.model.o.7
                @Override // com.bytedance.sdk.component.d.h
                public Bitmap a(Bitmap bitmap) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        return com.bytedance.sdk.component.adexpress.c.a.a(com.bytedance.sdk.openadsdk.core.o.a(), bitmap, 25);
                    }
                    return null;
                }
            }).a(new com.bytedance.sdk.openadsdk.f.b(this.f1588g, strA, new com.bytedance.sdk.component.d.o<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.model.o.6
                @Override // com.bytedance.sdk.component.d.o
                public void a(int i, String str, @Nullable Throwable th) {
                }

                @Override // com.bytedance.sdk.component.d.o
                public void a(com.bytedance.sdk.component.d.k<Bitmap> kVar) {
                    try {
                        Bitmap bitmapB = kVar.b();
                        if (bitmapB != null && kVar.c() != null) {
                            BitmapDrawable bitmapDrawable = new BitmapDrawable(com.bytedance.sdk.openadsdk.core.o.a().getResources(), bitmapB);
                            if (!o.this.p()) {
                                o.this.b.setBackground(bitmapDrawable);
                                return;
                            }
                            o.this.f1585d.setBackground(bitmapDrawable);
                            View viewE = o.this.D instanceof com.bytedance.sdk.openadsdk.core.video.c.c ? ((com.bytedance.sdk.openadsdk.core.video.c.c) o.this.D).e() : null;
                            if (viewE == null || !(viewE.getParent() instanceof View)) {
                                return;
                            }
                            ((View) viewE.getParent()).setBackground(bitmapDrawable);
                        }
                    } catch (Exception unused) {
                    }
                }
            }));
        } catch (Exception unused) {
        }
    }

    static /* synthetic */ int p(o oVar) {
        int i = oVar.O;
        oVar.O = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean p() {
        return q.c(this.f1588g);
    }

    static /* synthetic */ int q(o oVar) {
        int i = oVar.P;
        oVar.P = i + 1;
        return i;
    }

    public void a() {
        View view;
        Long lValueOf = Long.valueOf(SystemClock.elapsedRealtime());
        SSWebView sSWebView = (SSWebView) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.t);
        this.v = sSWebView;
        if (sSWebView == null || q.a(this.f1588g)) {
            ad.a((View) this.v, 8);
        } else {
            this.v.c_();
        }
        this.w = (FrameLayout) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.s);
        this.x = (LandingPageLoadingLayout) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.x);
        this.y = this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.u);
        this.z = (ImageView) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.v);
        this.A = this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.E);
        this.b = (FrameLayout) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.q);
        this.a = (ImageView) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.r);
        this.f1587f = (RelativeLayout) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.w);
        this.c = (TextView) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.bt);
        this.f1585d = (FrameLayout) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.j);
        View viewFindViewById = this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.y);
        this.p = viewFindViewById;
        if (viewFindViewById == null) {
            this.p = this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.G);
        }
        this.q = (TextView) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.A);
        this.r = (TextView) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.B);
        this.s = (TTRoundRectImageView) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.z);
        this.t = (TextView) this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.C);
        if (this.c != null && this.f1588g.i() != null) {
            this.c.setText(this.f1588g.i().c());
        }
        this.f1586e = this.D.findViewById(com.bytedance.sdk.openadsdk.utils.i.D);
        if ((c(this.f1588g) || b(this.f1588g)) && this.f1588g.i() != null) {
            View view2 = this.f1586e;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            com.bytedance.sdk.openadsdk.core.l.c().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.model.o.10
                @Override // java.lang.Runnable
                public void run() {
                    if (o.this.C.get()) {
                        return;
                    }
                    o oVar = o.this;
                    com.bytedance.sdk.openadsdk.b.c.a(oVar.f1588g, oVar.E, System.currentTimeMillis() - o.this.B, false);
                    o.this.m();
                }
            }, this.f1588g.i().a() * 1000);
        }
        i();
        if (b(this.f1588g)) {
            o();
            if (!c()) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.w.getLayoutParams();
                layoutParams.weight = 2.33f;
                this.w.setLayoutParams(layoutParams);
            }
        }
        if (c(this.f1588g) && (view = this.A) != null) {
            view.setVisibility(8);
        }
        LandingPageLoadingLayout landingPageLoadingLayout = this.x;
        if (landingPageLoadingLayout != null) {
            landingPageLoadingLayout.a(this.f1588g, this.E);
        }
        c.a.a(SystemClock.elapsedRealtime() - lValueOf.longValue(), this.f1588g, this.E, this.M, this.L);
    }

    public void a(float f2) {
        try {
            ((com.bytedance.sdk.openadsdk.core.video.c.c) this.D).d();
        } catch (Throwable unused) {
        }
    }

    public void a(c.a aVar) {
        this.m = aVar;
    }

    protected void b() {
        q qVar = this.f1588g;
        if (qVar == null || TextUtils.isEmpty(qVar.X())) {
            return;
        }
        this.t.setText(this.f1588g.X());
    }

    public boolean c() {
        return this.f1588g.ad() == 15 || this.f1588g.ad() == 16;
    }

    public void d() {
        FrameLayout frameLayout = this.w;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
            View view = this.A;
            if (view != null) {
                view.setVisibility(0);
            }
        }
    }

    public void e() {
        SSWebView sSWebView;
        com.bytedance.sdk.openadsdk.b.j jVar = this.G;
        if (jVar != null && (sSWebView = this.v) != null) {
            jVar.a(sSWebView);
        }
        ValueAnimator valueAnimator = this.j;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.j.removeAllListeners();
            this.j.cancel();
        }
        ObjectAnimator objectAnimator = this.k;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.k.cancel();
        }
        ObjectAnimator objectAnimator2 = this.l;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllUpdateListeners();
            this.l.cancel();
        }
        LandingPageLoadingLayout landingPageLoadingLayout = this.x;
        if (landingPageLoadingLayout != null) {
            landingPageLoadingLayout.b();
        }
        ObjectAnimator objectAnimator3 = this.i;
        if (objectAnimator3 != null) {
            objectAnimator3.cancel();
        }
        SSWebView sSWebView2 = this.v;
        if (sSWebView2 != null) {
            aa.a(sSWebView2.getWebView());
        }
        this.v = null;
        x xVar = this.u;
        if (xVar != null) {
            xVar.m();
        }
        com.bytedance.sdk.openadsdk.b.j jVar2 = this.G;
        if (jVar2 != null) {
            jVar2.c(true);
        }
        if (!TextUtils.isEmpty(this.L) && this.H) {
            c.a.a(this.O, this.N, this.f1588g);
        }
        com.bytedance.sdk.openadsdk.d.b.a().a(this.M);
    }

    public void f() {
        x xVar = this.u;
        if (xVar != null) {
            xVar.k();
        }
        com.bytedance.sdk.openadsdk.b.j jVar = this.G;
        if (jVar != null) {
            jVar.g();
        }
    }

    public void g() {
        com.bytedance.sdk.openadsdk.b.j jVar = this.G;
        if (jVar != null) {
            jVar.h();
        }
    }

    public void h() {
        x xVar = this.u;
        if (xVar != null) {
            xVar.l();
        }
    }
}
