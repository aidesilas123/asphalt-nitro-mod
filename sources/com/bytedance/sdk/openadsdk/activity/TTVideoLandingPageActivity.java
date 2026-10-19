package com.bytedance.sdk.openadsdk.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.component.video.api.d.b;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.d.k;
import com.bytedance.sdk.component.d.t;
import com.bytedance.sdk.component.d.u;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.utils.v;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.b.c;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.b.j;
import com.bytedance.sdk.openadsdk.common.PangleViewStub;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.widget.CornerIV;
import com.bytedance.sdk.openadsdk.core.widget.a.e;
import com.bytedance.sdk.openadsdk.core.x;
import com.bytedance.sdk.openadsdk.g.d;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;
import com.com.bytedance.overseas.sdk.a.c;
import com.facebook.share.internal.ShareConstants;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TTVideoLandingPageActivity extends TTBaseActivity implements d {
    protected Button A;
    protected c B;
    protected String D;
    protected int I;
    protected com.bytedance.sdk.openadsdk.multipro.b.a J;
    protected j K;
    protected String N;
    private ILoader P;
    private int T;
    private int U;
    protected SSWebView a;
    protected ImageView b;
    protected ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected TextView f1130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Context f1131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f1132f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f1133g;
    protected String h;
    protected x i;
    protected int j;
    protected FrameLayout k;
    protected NativeVideoTsView m;
    protected long n;
    protected q o;
    protected RelativeLayout u;
    protected TextView v;
    protected CornerIV w;
    protected TextView x;
    protected TextView y;
    protected PangleViewStub z;
    protected int l = -1;
    protected int p = 0;
    protected int q = 0;
    protected int r = 0;
    protected int s = 0;
    protected String t = "ダウンロード";
    protected boolean C = false;
    protected boolean E = false;
    protected boolean F = true;
    protected boolean G = false;
    protected String H = null;
    protected AtomicBoolean L = new AtomicBoolean(true);
    protected JSONArray M = null;
    private final AtomicInteger Q = new AtomicInteger(0);
    private final AtomicInteger R = new AtomicInteger(0);
    private final AtomicInteger S = new AtomicInteger(0);
    protected com.bytedance.sdk.openadsdk.core.b.a O = null;
    private final c.b V = new c.b() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.11
        @Override // com.bykv.vk.openvk.component.video.api.d.c.b
        public void a(boolean z) {
            TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
            tTVideoLandingPageActivity.C = z;
            if (tTVideoLandingPageActivity.isFinishing()) {
                return;
            }
            if (!z) {
                ad.a((View) TTVideoLandingPageActivity.this.a, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) TTVideoLandingPageActivity.this.k.getLayoutParams();
                TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                marginLayoutParams.width = tTVideoLandingPageActivity2.r;
                marginLayoutParams.height = tTVideoLandingPageActivity2.s;
                marginLayoutParams.leftMargin = tTVideoLandingPageActivity2.q;
                marginLayoutParams.topMargin = tTVideoLandingPageActivity2.p;
                tTVideoLandingPageActivity2.k.setLayoutParams(marginLayoutParams);
                return;
            }
            ad.a((View) TTVideoLandingPageActivity.this.a, 8);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) TTVideoLandingPageActivity.this.k.getLayoutParams();
            TTVideoLandingPageActivity tTVideoLandingPageActivity3 = TTVideoLandingPageActivity.this;
            tTVideoLandingPageActivity3.q = marginLayoutParams2.leftMargin;
            tTVideoLandingPageActivity3.p = marginLayoutParams2.topMargin;
            tTVideoLandingPageActivity3.r = marginLayoutParams2.width;
            tTVideoLandingPageActivity3.s = marginLayoutParams2.height;
            marginLayoutParams2.width = -1;
            marginLayoutParams2.height = -1;
            marginLayoutParams2.topMargin = 0;
            marginLayoutParams2.leftMargin = 0;
            tTVideoLandingPageActivity3.k.setLayoutParams(marginLayoutParams2);
        }
    };
    private final v.a W = new v.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.2
        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i) {
            SSWebView sSWebView;
            String str;
            TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
            if (tTVideoLandingPageActivity.I == 0 && i != 0 && (sSWebView = tTVideoLandingPageActivity.a) != null && (str = tTVideoLandingPageActivity.H) != null) {
                sSWebView.a_(str);
            }
            NativeVideoTsView nativeVideoTsView = TTVideoLandingPageActivity.this.m;
            if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null) {
                TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                if (!tTVideoLandingPageActivity2.E && tTVideoLandingPageActivity2.I != i) {
                    ((com.bytedance.sdk.openadsdk.core.video.nativevideo.c) tTVideoLandingPageActivity2.m.getNativeVideoController()).d(i);
                }
            }
            TTVideoLandingPageActivity.this.I = i;
        }

        @Override // com.bytedance.sdk.component.utils.v.a
        public void a(Context context, Intent intent, boolean z, final int i) {
            aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.2.1
                @Override // java.lang.Runnable
                public void run() {
                    a(i);
                }
            });
        }
    };

    @SuppressLint({"StaticFieldLeak"})
    private static class a extends AsyncTask<Void, Void, Drawable> {
        private final Bitmap a;
        private final WeakReference<b> b;

        private a(Bitmap bitmap, b bVar) {
            this.a = bitmap;
            this.b = new WeakReference<>(bVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Drawable doInBackground(Void... voidArr) {
            try {
                Bitmap bitmapA = com.bytedance.sdk.component.adexpress.c.a.a(o.a(), this.a, 25);
                if (bitmapA == null) {
                    return null;
                }
                return new BitmapDrawable(o.a().getResources(), bitmapA);
            } catch (Throwable th) {
                l.e("TTVideoLandingPage", th.getMessage());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Drawable drawable) {
            WeakReference<b> weakReference;
            if (drawable == null || (weakReference = this.b) == null || weakReference.get() == null) {
                return;
            }
            this.b.get().a(drawable);
        }
    }

    private void a(final int i) {
        if (this.c == null || !q()) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.3
            @Override // java.lang.Runnable
            public void run() {
                ad.a((View) TTVideoLandingPageActivity.this.c, i);
            }
        });
    }

    private void a(com.bykv.vk.openvk.component.video.api.d.c cVar) {
        this.E = this.E || cVar.o();
        Boolean bool = Boolean.TRUE;
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_is_update_flag", bool);
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_isfromvideodetailpage", bool);
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_native_video_complete", Boolean.valueOf(this.E));
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_current_play_position", Long.valueOf(cVar.e()));
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_total_play_duration", Long.valueOf(cVar.h() + cVar.f()));
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_duration", Long.valueOf(cVar.h()));
    }

    private void a(final String str) {
        Button button;
        if (TextUtils.isEmpty(str) || (button = this.A) == null) {
            return;
        }
        button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.7
            @Override // java.lang.Runnable
            public void run() {
                TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                if (tTVideoLandingPageActivity.A == null || tTVideoLandingPageActivity.isFinishing()) {
                    return;
                }
                TTVideoLandingPageActivity.this.A.setText(str);
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void l() {
        q qVar = this.o;
        if (qVar == null || qVar.M() != 4) {
            return;
        }
        this.z.setVisibility(0);
        Button button = (Button) findViewById(i.am);
        this.A = button;
        if (button != null) {
            a(b());
            this.A.setOnClickListener(this.O);
            this.A.setOnTouchListener(this.O);
        }
    }

    private void m() {
        x xVar = new x(this);
        this.i = xVar;
        xVar.b(this.a).d(this.f1133g).e(this.h).b(this.j).a(this.o).a(this.o.H()).a(this.a).c("landingpage_split_screen").f(this.o.bb());
    }

    private void n() {
        NativeVideoTsView nativeVideoTsView = this.m;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null || p()) {
            return;
        }
        this.m.m();
    }

    private void o() {
        if (this.m == null || p()) {
            return;
        }
        this.m.m();
    }

    private boolean p() {
        NativeVideoTsView nativeVideoTsView = this.m;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return true;
        }
        return this.m.getNativeVideoController().o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q() {
        return !TextUtils.isEmpty(this.H) && this.H.contains("__luban_sdk");
    }

    private void r() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isBackIntercept", true);
            this.i.a("temai_back_event", jSONObject);
        } catch (Exception unused) {
        }
    }

    protected abstract View a();

    @Override // com.bytedance.sdk.openadsdk.g.d
    public void a(boolean z, JSONArray jSONArray) {
        if (!z || jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        this.M = jSONArray;
    }

    protected String b() {
        q qVar = this.o;
        if (qVar != null && !TextUtils.isEmpty(qVar.X())) {
            this.t = this.o.X();
        }
        return this.t;
    }

    protected void c() {
        this.z = (PangleViewStub) findViewById(i.W);
        this.a = (SSWebView) findViewById(i.O);
        ImageView imageView = (ImageView) findViewById(520093720);
        this.b = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SSWebView sSWebView = TTVideoLandingPageActivity.this.a;
                    if (sSWebView != null) {
                        if (sSWebView.e()) {
                            TTVideoLandingPageActivity.this.a.f();
                            return;
                        }
                        if (TTVideoLandingPageActivity.this.q()) {
                            TTVideoLandingPageActivity.this.onBackPressed();
                            return;
                        }
                        JSONObject jSONObjectA = null;
                        NativeVideoTsView nativeVideoTsView = TTVideoLandingPageActivity.this.m;
                        if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null) {
                            TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                            jSONObjectA = ac.a(tTVideoLandingPageActivity.o, tTVideoLandingPageActivity.m.getNativeVideoController().f(), TTVideoLandingPageActivity.this.m.getNativeVideoController().l());
                        }
                        JSONObject jSONObject = jSONObjectA;
                        TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                        com.bytedance.sdk.openadsdk.b.c.a(tTVideoLandingPageActivity2.o, "embeded_ad", "detail_back", tTVideoLandingPageActivity2.f(), TTVideoLandingPageActivity.this.g(), jSONObject, (g) null);
                        TTVideoLandingPageActivity.this.finish();
                    }
                }
            });
        }
        NativeVideoTsView nativeVideoTsView = this.m;
        if (nativeVideoTsView != null) {
            nativeVideoTsView.setIsAutoPlay(this.G);
        }
        ImageView imageView2 = (ImageView) findViewById(i.I);
        this.c = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NativeVideoTsView nativeVideoTsView2 = TTVideoLandingPageActivity.this.m;
                    if (nativeVideoTsView2 != null) {
                        JSONObject jSONObjectA = null;
                        if (nativeVideoTsView2.getNativeVideoController() != null) {
                            TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                            jSONObjectA = ac.a(tTVideoLandingPageActivity.o, tTVideoLandingPageActivity.m.getNativeVideoController().f(), TTVideoLandingPageActivity.this.m.getNativeVideoController().l());
                        }
                        TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                        com.bytedance.sdk.openadsdk.b.c.a(tTVideoLandingPageActivity2.o, "embeded_ad", "detail_skip", tTVideoLandingPageActivity2.f(), TTVideoLandingPageActivity.this.g(), jSONObjectA, (g) null);
                    }
                    TTVideoLandingPageActivity.this.finish();
                }
            });
        }
        this.f1130d = (TextView) findViewById(i.ao);
        this.k = (FrameLayout) findViewById(i.H);
        this.u = (RelativeLayout) findViewById(i.J);
        this.v = (TextView) findViewById(i.L);
        this.x = (TextView) findViewById(i.M);
        this.y = (TextView) findViewById(i.N);
        this.w = (CornerIV) findViewById(i.K);
        h();
    }

    protected void d() {
        if (e()) {
            try {
                NativeVideoTsView nativeVideoTsView = new NativeVideoTsView(this.f1131e, this.o, true, null);
                this.m = nativeVideoTsView;
                if (nativeVideoTsView.getNativeVideoController() != null) {
                    this.m.getNativeVideoController().a(false);
                }
                if (this.E) {
                    this.k.setVisibility(0);
                    this.k.removeAllViews();
                    this.k.addView(this.m);
                    this.m.b(true);
                } else {
                    if (!this.G) {
                        this.n = 0L;
                    }
                    if (this.J != null && this.m.getNativeVideoController() != null) {
                        this.m.getNativeVideoController().b(this.J.f1844g);
                        this.m.getNativeVideoController().c(this.J.f1842e);
                        this.m.setIsQuiet(o.d().c(String.valueOf(this.o.aZ())));
                    }
                    if (this.m.a(this.n, this.F, this.E)) {
                        this.k.setVisibility(0);
                        this.k.removeAllViews();
                        this.k.addView(this.m);
                    }
                    if (this.m.getNativeVideoController() != null) {
                        this.m.getNativeVideoController().a(false);
                        this.m.getNativeVideoController().a(this.V);
                    }
                }
                String strA = this.o.Q().get(0).a();
                com.bytedance.sdk.openadsdk.f.d.a().a(strA).a(this.o.Q().get(0).b()).b(this.o.Q().get(0).c()).d(ad.d(o.a())).c(ad.c(o.a())).a(u.BITMAP).a(new com.bytedance.sdk.openadsdk.f.b(this.o, strA, new com.bytedance.sdk.component.d.o<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.10
                    @Override // com.bytedance.sdk.component.d.o
                    public void a(int i, String str, @Nullable Throwable th) {
                    }

                    @Override // com.bytedance.sdk.component.d.o
                    public void a(k<Bitmap> kVar) {
                        try {
                            Bitmap bitmapB = kVar.b();
                            if (Build.VERSION.SDK_INT >= 17) {
                                new a(bitmapB, TTVideoLandingPageActivity.this.m.getNativeVideoController().m()).execute(new Void[0]);
                            }
                        } catch (Exception unused) {
                        }
                    }
                }), t.IO);
                this.m.findViewById(520093726).setOnTouchListener(null);
                this.m.findViewById(520093726).setOnClickListener(null);
            } catch (Exception e2) {
                l.e("TTVideoLandingPage", e2.getMessage());
                if (this.m == null) {
                    ApmHelper.reportCustomError("mNativeVideoTsView is null", "FUNCTION EXCEPTION", e2);
                }
            }
            if (this.I == 0) {
                try {
                    Toast.makeText(this, s.b(this, "tt_no_network"), 0).show();
                } catch (Throwable unused) {
                }
            }
        }
    }

    protected abstract boolean e();

    protected long f() {
        NativeVideoTsView nativeVideoTsView = this.m;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return 0L;
        }
        return this.m.getNativeVideoController().h();
    }

    protected int g() {
        NativeVideoTsView nativeVideoTsView = this.m;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return 0;
        }
        return this.m.getNativeVideoController().j();
    }

    protected void h() {
        q qVar = this.o;
        if (qVar == null || qVar.M() != 4) {
            return;
        }
        ad.a((View) this.u, 0);
        String strV = !TextUtils.isEmpty(this.o.V()) ? this.o.V() : !TextUtils.isEmpty(this.o.W()) ? this.o.W() : !TextUtils.isEmpty(this.o.L()) ? this.o.L() : "";
        if (this.o.N() != null && this.o.N().a() != null) {
            ad.a((View) this.w, 0);
            ad.a((View) this.v, 4);
            com.bytedance.sdk.openadsdk.k.c.a().a(this.o.N(), this.w, this.o);
        } else if (!TextUtils.isEmpty(strV)) {
            ad.a((View) this.w, 4);
            ad.a((View) this.v, 0);
            this.v.setText(strV.substring(0, 1));
        }
        if (!TextUtils.isEmpty(this.o.X())) {
            this.y.setText(this.o.X());
        }
        if (!TextUtils.isEmpty(strV)) {
            this.x.setText(strV);
        }
        ad.a((View) this.x, 0);
        ad.a((View) this.y, 0);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void i() {
        q qVar = this.o;
        if (qVar == null) {
            return;
        }
        this.B = com.com.bytedance.overseas.sdk.a.d.a(this, qVar, this.D);
        com.bytedance.sdk.openadsdk.core.b.a aVar = new com.bytedance.sdk.openadsdk.core.b.a(this, this.o, this.D, this.j);
        this.O = aVar;
        aVar.a(false);
        this.O.c(true);
        this.y.setOnClickListener(this.O);
        this.y.setOnTouchListener(this.O);
        this.O.a(this.B);
    }

    protected void j() {
        v.a(this.W, this.f1131e);
    }

    protected void k() {
        try {
            v.a(this.W);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        NativeVideoTsView nativeVideoTsView;
        if (this.C && (nativeVideoTsView = this.m) != null && nativeVideoTsView.getNativeVideoController() != null) {
            ((com.bykv.vk.openvk.component.video.api.d.a) this.m.getNativeVideoController()).e(null, null);
            this.C = false;
        } else if (!q() || this.L.getAndSet(true)) {
            super.onBackPressed();
        } else {
            r();
            a(0);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        l();
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        SSWebView sSWebView;
        super.onCreate(bundle);
        if (!com.bytedance.sdk.openadsdk.core.l.e()) {
            finish();
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            getWindow().addFlags(16777216);
        } catch (Throwable unused) {
        }
        try {
            o.a(this);
        } catch (Throwable unused2) {
        }
        this.I = com.bytedance.sdk.component.utils.o.c(getApplicationContext());
        try {
            setContentView(a());
            this.f1131e = this;
            Intent intent = getIntent();
            this.f1132f = intent.getIntExtra("sdk_version", 1);
            this.f1133g = intent.getStringExtra("adid");
            this.h = intent.getStringExtra("log_extra");
            this.j = intent.getIntExtra(ShareConstants.FEED_SOURCE_PARAM, -1);
            this.H = intent.getStringExtra("url");
            String stringExtra = intent.getStringExtra("web_title");
            this.D = intent.getStringExtra("event_tag");
            this.N = intent.getStringExtra("gecko_id");
            this.G = intent.getBooleanExtra("video_is_auto_play", true);
            if (bundle != null && bundle.getLong("video_play_position") > 0) {
                this.n = bundle.getLong("video_play_position", 0L);
            }
            String stringExtra2 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_DATA);
            if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
                String stringExtra3 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra3 != null) {
                    try {
                        this.o = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(stringExtra3));
                    } catch (Exception unused3) {
                    }
                }
                q qVar = this.o;
                if (qVar != null) {
                    this.l = qVar.ad();
                }
            } else {
                q qVarB = com.bytedance.sdk.openadsdk.core.s.a().b();
                this.o = qVarB;
                if (qVarB != null) {
                    this.l = qVarB.ad();
                }
                com.bytedance.sdk.openadsdk.core.s.a().f();
            }
            if (this.o == null) {
                finish();
                return;
            }
            if (!TextUtils.isEmpty(this.N)) {
                this.P = com.bytedance.sdk.openadsdk.d.b.a().b();
                int iA = com.bytedance.sdk.openadsdk.d.b.a().a(this.P, this.N);
                this.T = iA;
                this.U = iA > 0 ? 2 : 0;
            }
            if (stringExtra2 != null) {
                try {
                    this.J = com.bytedance.sdk.openadsdk.multipro.b.a.a(new JSONObject(stringExtra2));
                } catch (Exception unused4) {
                }
                com.bytedance.sdk.openadsdk.multipro.b.a aVar = this.J;
                if (aVar != null) {
                    this.n = aVar.f1844g;
                }
            }
            if (bundle != null) {
                String string = bundle.getString("material_meta");
                if (this.o == null) {
                    try {
                        this.o = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(string));
                    } catch (Throwable unused5) {
                    }
                }
                long j = bundle.getLong("video_play_position");
                if (j > 0) {
                    this.n = j;
                }
            }
            c();
            i();
            m();
            a(4);
            if (this.a != null) {
                com.bytedance.sdk.openadsdk.core.widget.a.c.a(this.f1131e).a(true).b(false).a(this.a.getWebView());
                j jVarA = new j(this.o, this.a.getWebView(), new com.bytedance.sdk.openadsdk.b.i() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.1
                    @Override // com.bytedance.sdk.openadsdk.b.i
                    public void a(int i) {
                        c.a.a(TTVideoLandingPageActivity.this.T, TTVideoLandingPageActivity.this.S.get(), TTVideoLandingPageActivity.this.R.get(), TTVideoLandingPageActivity.this.Q.get() - TTVideoLandingPageActivity.this.R.get(), TTVideoLandingPageActivity.this.o, "landingpage_split_screen", i);
                    }
                }, this.U).a(true);
                this.K = jVarA;
                jVarA.a("landingpage_split_screen");
            }
            SSWebView sSWebView2 = this.a;
            if (sSWebView2 != null) {
                sSWebView2.setLandingPage(true);
                this.a.setTag("landingpage_split_screen");
                this.a.setMaterialMeta(this.o.aJ());
                this.a.setWebViewClient(new e(this.f1131e, this.i, this.f1133g, this.K, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.4
                    @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
                    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                        try {
                            if (TextUtils.isEmpty(TTVideoLandingPageActivity.this.N)) {
                                return super.shouldInterceptRequest(webView, str);
                            }
                            TTVideoLandingPageActivity.this.Q.incrementAndGet();
                            WebResourceResponseModel webResourceResponseModelA = com.bytedance.sdk.openadsdk.d.b.a().a(TTVideoLandingPageActivity.this.P, TTVideoLandingPageActivity.this.N, str);
                            if (webResourceResponseModelA != null && webResourceResponseModelA.getWebResourceResponse() != null) {
                                TTVideoLandingPageActivity.this.R.incrementAndGet();
                                l.b("TTVideoLandingPage", "GeckoLog: hit++");
                                return webResourceResponseModelA.getWebResourceResponse();
                            }
                            if (webResourceResponseModelA != null && webResourceResponseModelA.getMsg() == 2) {
                                TTVideoLandingPageActivity.this.S.incrementAndGet();
                            }
                            return super.shouldInterceptRequest(webView, str);
                        } catch (Throwable th) {
                            l.c("TTVideoLandingPage", "shouldInterceptRequest url error", th);
                            return super.shouldInterceptRequest(webView, str);
                        }
                    }
                });
                SSWebView sSWebView3 = this.a;
                sSWebView3.setUserAgentString(com.bytedance.sdk.openadsdk.utils.l.a(sSWebView3.getWebView(), this.f1132f));
            }
            if (Build.VERSION.SDK_INT >= 21 && (sSWebView = this.a) != null) {
                sSWebView.setMixedContentMode(0);
            }
            com.bytedance.sdk.openadsdk.b.c.a(this.o, "landingpage_split_screen", this.U);
            com.bytedance.sdk.openadsdk.utils.o.a(this.a, this.H);
            this.a.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.a.d(this.i, this.K) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.5
                @Override // com.bytedance.sdk.openadsdk.core.widget.a.d, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    super.onProgressChanged(webView, i);
                }
            });
            this.a.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.6
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
                    com.com.bytedance.overseas.sdk.a.c cVar = TTVideoLandingPageActivity.this.B;
                    if (cVar != null) {
                        cVar.d();
                    }
                }
            });
            TextView textView = this.f1130d;
            if (textView != null) {
                if (TextUtils.isEmpty(stringExtra)) {
                    stringExtra = s.a(this, "tt_web_title_default");
                }
                textView.setText(stringExtra);
            }
            j();
            d();
            l();
            c.a.a(SystemClock.elapsedRealtime() - jElapsedRealtime, this.o, "landingpage_split_screen", this.P, this.N);
        } catch (Throwable unused6) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        k();
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
            this.o.e(false);
        } catch (Throwable unused) {
        }
        SSWebView sSWebView = this.a;
        if (sSWebView != null) {
            com.bytedance.sdk.openadsdk.core.aa.a(sSWebView.getWebView());
        }
        this.a = null;
        x xVar = this.i;
        if (xVar != null) {
            xVar.m();
        }
        NativeVideoTsView nativeVideoTsView = this.m;
        if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null) {
            this.m.getNativeVideoController().d();
        }
        this.m = null;
        this.o = null;
        j jVar = this.K;
        if (jVar != null) {
            jVar.c(true);
        }
        if (!TextUtils.isEmpty(this.N)) {
            c.a.a(this.R.get(), this.Q.get(), this.o);
        }
        com.bytedance.sdk.openadsdk.d.b.a().a(this.P);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        x xVar = this.i;
        if (xVar != null) {
            xVar.l();
        }
        o();
        NativeVideoTsView nativeVideoTsView = this.m;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return;
        }
        a(this.m.getNativeVideoController());
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!this.F) {
            n();
        }
        this.F = false;
        x xVar = this.i;
        if (xVar != null) {
            xVar.k();
        }
        j jVar = this.K;
        if (jVar != null) {
            jVar.g();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        q qVar = this.o;
        bundle.putString("material_meta", qVar != null ? qVar.ao().toString() : null);
        bundle.putLong("video_play_position", this.n);
        bundle.putBoolean("is_complete", this.E);
        long jE = this.n;
        NativeVideoTsView nativeVideoTsView = this.m;
        if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null) {
            jE = this.m.getNativeVideoController().e();
        }
        bundle.putLong("video_play_position", jE);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.openadsdk.utils.c.a(this, this.o);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        j jVar = this.K;
        if (jVar != null) {
            jVar.h();
        }
    }
}
