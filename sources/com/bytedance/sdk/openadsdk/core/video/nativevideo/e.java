package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Message;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.openvk.component.video.api.renderview.SSRenderSurfaceView;
import com.bykv.vk.openvk.component.video.api.renderview.SSRenderTextureView;
import com.bytedance.sdk.component.d.k;
import com.bytedance.sdk.component.d.u;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.b.a;
import com.bytedance.sdk.openadsdk.core.b.b;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.widget.CornerIV;
import com.bytedance.sdk.openadsdk.core.widget.d;
import com.bytedance.sdk.openadsdk.core.widget.e;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;
import com.facebook.internal.security.CertificateUtil;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: compiled from: NativeVideoLayout.java */
/* JADX INFO: loaded from: classes2.dex */
public class e implements com.bykv.vk.openvk.component.video.api.d.b<q>, com.bykv.vk.openvk.component.video.api.renderview.a, x.a, a.InterfaceC0131a, d.a, e.b {
    boolean A;
    com.com.bytedance.overseas.sdk.a.c B;
    com.bykv.vk.openvk.component.video.api.d.c C;
    com.bytedance.sdk.openadsdk.core.b.a D;
    com.bytedance.sdk.openadsdk.core.b.a E;
    boolean F;
    private NativeVideoTsView.a G;
    private long H;
    private final String I;
    ViewGroup a;
    com.bykv.vk.openvk.component.video.api.renderview.b b;
    ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f1713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f1714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ImageView f1715f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    View f1716g;
    View h;
    ImageView i;
    View j;
    CornerIV k;
    TextView l;
    TextView m;
    TextView n;
    int o;
    int p;
    int q;
    int r;
    boolean s;
    boolean t;
    int u;
    int v;
    q w;
    Context x;
    com.bytedance.sdk.openadsdk.core.widget.e y;
    a z;

    public e(Context context, ViewGroup viewGroup, boolean z, int i, q qVar, com.bykv.vk.openvk.component.video.api.d.c cVar) {
        this(context, viewGroup, z, i, qVar, cVar, true);
    }

    public e(Context context, ViewGroup viewGroup, boolean z, int i, q qVar, com.bykv.vk.openvk.component.video.api.d.c cVar, boolean z2) {
        this.s = true;
        this.A = true;
        this.F = true;
        this.I = Build.MODEL;
        if (this instanceof d) {
            return;
        }
        this.x = o.a().getApplicationContext();
        d(z2);
        this.a = viewGroup;
        this.s = z;
        this.v = i;
        this.C = cVar;
        this.w = qVar;
        d(8);
        a(context, this.a);
        d();
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final String str, final q qVar) {
        com.bytedance.sdk.openadsdk.b.c.a(new h("load_vast_icon_fail") { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.e.7
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", i);
                    jSONObject.put("description", i + CertificateUtil.DELIMITER + str);
                    jSONObject.put("url", e.this.w.N().a());
                } catch (Throwable unused) {
                }
                com.bytedance.sdk.openadsdk.b.c.b(e.this.w, e.this.w != null ? ac.c(qVar.aS()) : null, "load_vast_icon_fail", jSONObject);
            }
        });
    }

    private int e(int i) {
        if (this.q <= 0 || this.r <= 0) {
            return 0;
        }
        int dimensionPixelSize = this.x.getResources().getDimensionPixelSize(s.g(this.x, "tt_video_container_maxheight"));
        int dimensionPixelSize2 = this.x.getResources().getDimensionPixelSize(s.g(this.x, "tt_video_container_minheight"));
        int i2 = (int) (this.r * ((i * 1.0f) / this.q));
        return i2 > dimensionPixelSize ? dimensionPixelSize : i2 < dimensionPixelSize2 ? dimensionPixelSize2 : i2;
    }

    private void f(int i) {
        ad.a(this.j, i);
    }

    private boolean y() {
        return q.c(this.w) && this.w.I() == null && this.w.w() == 1;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.b
    public void a() {
        a(false, this.s);
        s();
    }

    public void a(int i) {
        l.c("Progress", "setSeekProgress-percent=" + i);
    }

    public void a(int i, int i2) {
        if (i == -1) {
            i = ad.c(this.x);
        }
        if (i <= 0) {
            return;
        }
        this.o = i;
        if (u() || j() || (this.v & 8) == 8) {
            this.p = i2;
        } else {
            this.p = e(i);
        }
        b(this.o, this.p);
    }

    public void a(long j) {
    }

    public void a(long j, long j2) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.widget.RelativeLayout] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.view.View, com.bykv.vk.openvk.component.video.api.renderview.b] */
    void a(Context context, View view) {
        ?? r6;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (view != null) {
            view.setKeepScreenOn(true);
        }
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.C;
        if (cVar == null || !cVar.q()) {
            SSRenderSurfaceView sSRenderSurfaceView = new SSRenderSurfaceView(this.x);
            l.b("NewLiveViewLayout", "use SurfaceView......");
            r6 = sSRenderSurfaceView;
        } else {
            SSRenderTextureView sSRenderTextureView = new SSRenderTextureView(this.x);
            l.b("NewLiveViewLayout", "use TextureView......");
            r6 = sSRenderTextureView;
        }
        if (view instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            ((RelativeLayout) view).addView(r6, 0, layoutParams);
        }
        ad.a((View) r6, 8);
        this.b = r6;
        this.c = (ImageView) view.findViewById(i.aJ);
        this.f1713d = view.findViewById(i.aG);
        this.f1714e = view.findViewById(i.aI);
        this.f1715f = (ImageView) view.findViewById(i.aH);
        this.f1716g = view.findViewById(i.aD);
        l.b("useTime", "NativeVideoLayout**findViews use time :" + (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.a
    public void a(SurfaceTexture surfaceTexture, int i, int i2) {
        this.t = true;
        if (p()) {
            this.z.a(this, surfaceTexture);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.b
    public void a(Drawable drawable) {
        ViewGroup viewGroup = this.a;
        if (viewGroup != null) {
            viewGroup.setBackgroundDrawable(drawable);
        }
    }

    public void a(Message message) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.a
    public void a(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.b.getHolder()) {
            return;
        }
        this.t = true;
        if (p()) {
            this.z.a(this, surfaceHolder);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.a
    public void a(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (surfaceHolder == this.b.getHolder() && p()) {
            this.z.a(this, surfaceHolder, i, i2, i3);
        }
    }

    void a(View view, Context context) {
        View view2;
        if (view == null || context == null || (view2 = this.f1716g) == null || view2.getParent() == null || this.h != null) {
            return;
        }
        this.h = this.f1716g;
        this.i = (ImageView) view.findViewById(i.aF);
        this.j = view.findViewById(i.aE);
        this.k = (CornerIV) view.findViewById(i.K);
        this.l = (TextView) view.findViewById(i.L);
        this.m = (TextView) view.findViewById(i.M);
        this.n = (TextView) view.findViewById(i.N);
    }

    public void a(View view, boolean z) {
    }

    public void a(ViewGroup viewGroup) {
    }

    public void a(com.bykv.vk.openvk.component.video.api.d.a aVar) {
        if (aVar instanceof a) {
            this.z = (a) aVar;
            n();
        }
    }

    public void a(PAGNativeAd pAGNativeAd) {
        com.bytedance.sdk.openadsdk.core.b.a aVar = this.D;
        if (aVar != null) {
            aVar.a(pAGNativeAd);
        }
        com.bytedance.sdk.openadsdk.core.b.a aVar2 = this.E;
        if (aVar2 != null) {
            aVar2.a(pAGNativeAd);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @SuppressLint({"ClickableViewAccessibility"})
    public void a(final q qVar, WeakReference<Context> weakReference, boolean z) {
        q qVar2;
        q qVar3;
        if (qVar == null) {
            return;
        }
        a(false, this.s);
        a(this.a, o.a());
        View view = this.h;
        if (view != null) {
            ad.a(view, 0);
        }
        ImageView imageView = this.i;
        if (imageView != null) {
            ad.a((View) imageView, 0);
        }
        ad.a(this.j, 0);
        if (this.i != null && (qVar3 = this.w) != null && qVar3.K() != null && this.w.K().j() != null) {
            com.bytedance.sdk.openadsdk.k.c.a().a(this.w.K().j(), this.w.K().c(), this.w.K().b(), this.i, qVar);
        }
        String strL = !TextUtils.isEmpty(qVar.L()) ? qVar.L() : !TextUtils.isEmpty(qVar.V()) ? qVar.V() : !TextUtils.isEmpty(qVar.W()) ? qVar.W() : "";
        if (this.k != null && (qVar2 = this.w) != null && qVar2.N() != null && this.w.N().a() != null) {
            ad.a((View) this.k, 0);
            ad.a((View) this.l, 4);
            q qVar4 = this.w;
            if (qVar4 == null || !qVar4.at()) {
                com.bytedance.sdk.openadsdk.k.c.a().a(this.w.N(), this.k, qVar);
            } else {
                com.bytedance.sdk.openadsdk.f.d.a(this.w.N()).a(u.BITMAP).a(new com.bytedance.sdk.openadsdk.f.b(qVar, this.w.N().a(), new com.bytedance.sdk.component.d.o<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.e.5
                    @Override // com.bytedance.sdk.component.d.o
                    public void a(int i, String str, Throwable th) {
                        e.this.a(i, str, qVar);
                    }

                    @Override // com.bytedance.sdk.component.d.o
                    public void a(k<Bitmap> kVar) {
                        if (kVar == null || kVar.b() == null) {
                            return;
                        }
                        CornerIV cornerIV = e.this.k;
                        if (cornerIV != null) {
                            cornerIV.setImageBitmap(kVar.b());
                        }
                        com.bytedance.sdk.openadsdk.b.c.b(e.this.w, e.this.w != null ? ac.c(qVar.aS()) : null, "load_vast_icon_success", (JSONObject) null);
                    }
                }));
                if (this.w.au() != null && this.w.au().b() != null) {
                    this.w.au().b().b(0L);
                }
            }
            q qVar5 = this.w;
            if (qVar5 != null && qVar5.at()) {
                try {
                    this.k.setTag(570425345, "VAST_ICON");
                } catch (Throwable unused) {
                }
            }
            q qVar6 = this.w;
            if (qVar6 != null && qVar6.au() != null && this.w.au().b() != null) {
                final com.bytedance.sdk.openadsdk.core.g.b bVarB = this.w.au().b();
                CornerIV cornerIV = this.k;
                if (cornerIV != null) {
                    cornerIV.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.e.6
                        @Override // java.lang.Runnable
                        public void run() {
                            com.bytedance.sdk.openadsdk.core.g.b bVar;
                            CornerIV cornerIV2 = e.this.k;
                            if (cornerIV2 == null || !cornerIV2.isShown() || (bVar = bVarB) == null) {
                                return;
                            }
                            bVar.b(e.this.getVideoProgress());
                        }
                    });
                }
            }
            if (y()) {
                this.k.setOnClickListener(this.E);
                this.k.setOnTouchListener(this.E);
            } else {
                this.k.setOnClickListener(this.D);
                this.k.setOnTouchListener(this.D);
            }
        } else if (!TextUtils.isEmpty(strL)) {
            ad.a((View) this.k, 4);
            ad.a((View) this.l, 0);
            TextView textView = this.l;
            if (textView != null) {
                textView.setText(strL.substring(0, 1));
                if (y()) {
                    this.l.setOnClickListener(this.E);
                    this.l.setOnTouchListener(this.E);
                } else {
                    this.l.setOnClickListener(this.D);
                    this.l.setOnTouchListener(this.D);
                }
            }
        }
        if (this.m != null && !TextUtils.isEmpty(strL)) {
            this.m.setText(strL);
            this.m.setTag(570425345, "VAST_TITLE");
        }
        ad.a((View) this.m, 0);
        ad.a((View) this.n, 0);
        String strX = qVar.X();
        if (TextUtils.isEmpty(strX)) {
            int iM = qVar.M();
            strX = (iM == 2 || iM == 3) ? s.a(this.x, "tt_video_mobile_go_detail") : iM != 4 ? iM != 5 ? s.a(this.x, "tt_video_mobile_go_detail") : s.a(this.x, "tt_video_dial_phone") : s.a(this.x, "tt_video_download_apk");
        }
        TextView textView2 = this.n;
        if (textView2 != null) {
            textView2.setText(strX);
            this.n.setOnClickListener(this.D);
            this.n.setOnTouchListener(this.D);
        }
        if (this.F) {
            return;
        }
        f(4);
    }

    public void a(NativeVideoTsView.a aVar) {
        this.G = aVar;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.b
    @SuppressLint({"ClickableViewAccessibility"})
    public /* bridge */ /* synthetic */ void a(q qVar, WeakReference weakReference, boolean z) {
        a(qVar, (WeakReference<Context>) weakReference, z);
    }

    public void a(String str) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.b
    public void a(boolean z) {
        this.F = z;
    }

    public void a(boolean z, boolean z2) {
        ad.a((View) this.c, 8);
    }

    public void a(boolean z, boolean z2, boolean z3) {
        ad.a((View) this.c, (!z || this.f1713d.getVisibility() == 0) ? 8 : 0);
    }

    public boolean a(int i, com.bykv.vk.openvk.component.video.api.c.b bVar, boolean z) {
        com.bytedance.sdk.openadsdk.core.widget.e eVar = this.y;
        return eVar == null || eVar.a(i, bVar, z);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.a
    public boolean a(SurfaceTexture surfaceTexture) {
        this.t = false;
        if (!p()) {
            return true;
        }
        this.z.b(this, surfaceTexture);
        return true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.b
    public void b() {
        ad.e(this.f1713d);
        ad.e(this.f1714e);
        ImageView imageView = this.f1715f;
        if (imageView != null) {
            ad.e(imageView);
        }
    }

    public void b(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
        if (i == -1 || i == -2 || i > 0) {
            layoutParams.width = i;
        }
        if (i2 == -1 || i2 == -2 || i2 > 0) {
            layoutParams.height = i2;
        }
        this.a.setLayoutParams(layoutParams);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.a
    public void b(SurfaceTexture surfaceTexture) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.a
    public void b(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.a
    public void b(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.b.getHolder()) {
            return;
        }
        this.t = false;
        if (p()) {
            this.z.b(this, surfaceHolder);
        }
    }

    public void b(ViewGroup viewGroup) {
    }

    public void b(boolean z) {
    }

    public void b(boolean z, boolean z2) {
        ImageView imageView = this.c;
        if (imageView != null) {
            if (z) {
                imageView.setImageResource(s.d(this.x, "tt_play_movebar_textpage"));
            } else {
                imageView.setImageResource(s.d(this.x, "tt_stop_movebar_textpage"));
            }
        }
    }

    public boolean b(int i) {
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.b
    public View c() {
        return this.a;
    }

    public void c(int i) {
        ad.a((View) this.a, 0);
        com.bykv.vk.openvk.component.video.api.renderview.b bVar = this.b;
        if (bVar != null) {
            bVar.setVisibility(i);
        }
    }

    public void c(int i, int i2) {
        this.q = i;
        this.r = i2;
    }

    public void c(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (this.a.getParent() == null) {
            viewGroup.addView(this.a);
        }
        d(0);
    }

    public void c(boolean z) {
    }

    void d() {
        this.b.a(this);
        this.c.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.e.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (e.this.p()) {
                    TextView textView = e.this.n;
                    if (textView == null || textView.getVisibility() != 0) {
                        e eVar = e.this;
                        eVar.z.a(eVar, view);
                    }
                }
            }
        });
    }

    public void d(int i) {
        this.u = i;
        ad.a((View) this.a, i);
    }

    public void d(boolean z) {
        this.A = z;
        if (z) {
            com.bytedance.sdk.openadsdk.core.b.a aVar = this.D;
            if (aVar != null) {
                aVar.a(true);
            }
            com.bytedance.sdk.openadsdk.core.b.a aVar2 = this.E;
            if (aVar2 != null) {
                aVar2.a(true);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.b.a aVar3 = this.D;
        if (aVar3 != null) {
            aVar3.a(false);
        }
        com.bytedance.sdk.openadsdk.core.b.a aVar4 = this.E;
        if (aVar4 != null) {
            aVar4.a(false);
        }
    }

    public void e() {
    }

    public void f() {
    }

    public void g() {
        q qVar;
        ad.f(this.f1713d);
        ad.f(this.f1714e);
        if (this.f1715f != null && (qVar = this.w) != null && qVar.K() != null && this.w.K().j() != null) {
            ad.f(this.f1715f);
            com.bytedance.sdk.openadsdk.k.c.a().a(this.w.K().j(), this.w.K().c(), this.w.K().b(), this.f1715f, this.w);
        }
        if (this.c.getVisibility() == 0) {
            ad.a((View) this.c, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.a.InterfaceC0131a
    public long getVideoProgress() {
        if (this.H <= 0) {
            q qVar = this.w;
            if (qVar != null && qVar.K() != null) {
                this.H = (long) (this.w.K().f() * 1000.0d);
            }
            com.bykv.vk.openvk.component.video.api.d.c cVar = this.C;
            if (cVar != null) {
                this.H = cVar.h();
            }
        }
        return this.H;
    }

    public void h() {
        ad.e(this.f1713d);
    }

    public void i() {
        d(8);
        if (x()) {
            this.b.setVisibility(8);
        }
        ImageView imageView = this.f1715f;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        d(8);
        ad.a(this.h, 8);
        ad.a((View) this.i, 8);
        ad.a(this.j, 8);
        ad.a((View) this.k, 8);
        ad.a((View) this.l, 8);
        ad.a((View) this.m, 8);
        com.bytedance.sdk.openadsdk.core.widget.e eVar = this.y;
        if (eVar != null) {
            eVar.a(true);
        }
    }

    public boolean j() {
        return false;
    }

    public void k() {
        a(true, false);
    }

    void l() {
        String str;
        int i;
        com.bytedance.sdk.openadsdk.core.b.a aVar;
        String str2 = this.A ? "embeded_ad" : "embeded_ad_landingpage";
        if (this.w.aW()) {
            str = "rewarded_video";
            i = 7;
        } else if (this.w.aX()) {
            str = "fullscreen_interstitial_ad";
            i = 5;
        } else if (this.w.aY()) {
            str = "banner_ad";
            i = 2;
        } else {
            str = str2;
            i = 1;
        }
        if (this.w.M() == 4) {
            this.B = com.com.bytedance.overseas.sdk.a.d.a(this.x, this.w, str);
        }
        com.bytedance.sdk.openadsdk.core.b.a aVar2 = new com.bytedance.sdk.openadsdk.core.b.a(this.x, this.w, str, i);
        this.D = aVar2;
        aVar2.a(this);
        this.D.b(true);
        if (this.A) {
            this.D.a(true);
        } else {
            this.D.a(false);
            this.D.c(true);
        }
        this.D.a(this.C);
        this.D.d(true);
        this.D.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.e.1
            @Override // com.bytedance.sdk.openadsdk.core.b.b.a
            public void a(View view, int i2) {
                if (e.this.G != null) {
                    e.this.G.a(view, i2);
                }
            }
        });
        com.com.bytedance.overseas.sdk.a.c cVar = this.B;
        if (cVar != null && (aVar = this.D) != null) {
            aVar.a(cVar);
        }
        if (y()) {
            com.bytedance.sdk.openadsdk.core.b.a aVar3 = new com.bytedance.sdk.openadsdk.core.b.a(this.x, this.w, str, i) { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.e.2
                @Override // com.bytedance.sdk.openadsdk.core.b.a
                public boolean b() {
                    com.bytedance.sdk.openadsdk.core.widget.e eVar = e.this.y;
                    boolean zA = eVar != null ? eVar.a() : false;
                    StringBuilder sb = new StringBuilder();
                    sb.append("isVisible=");
                    sb.append(zA);
                    sb.append(",mPlayBtn.getVisibility() == VISIBLE->");
                    sb.append(e.this.c.getVisibility() == 0);
                    l.c("ClickCreativeListener", sb.toString());
                    return zA || e.this.c.getVisibility() == 0;
                }

                @Override // com.bytedance.sdk.openadsdk.core.b.a
                public boolean c() {
                    View view;
                    CornerIV cornerIV;
                    TextView textView;
                    View view2 = e.this.h;
                    return (view2 != null && view2.getVisibility() == 0) || ((view = e.this.j) != null && view.getVisibility() == 0) || (((cornerIV = e.this.k) != null && cornerIV.getVisibility() == 0) || ((textView = e.this.l) != null && textView.getVisibility() == 0));
                }
            };
            this.E = aVar3;
            aVar3.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.e.3
                @Override // com.bytedance.sdk.openadsdk.core.b.b.a
                public void a(View view, int i2) {
                    if (e.this.G != null) {
                        e.this.G.a(view, i2);
                    }
                }
            });
            this.E.b(true);
            this.E.a(this.A);
            this.E.a(this.C);
            this.E.d(true);
            com.com.bytedance.overseas.sdk.a.c cVar2 = this.B;
            if (cVar2 != null) {
                this.E.a(cVar2);
            }
            this.E.a(this);
        }
    }

    public com.bykv.vk.openvk.component.video.api.renderview.b m() {
        return this.b;
    }

    void n() {
        if (this.z == null || this.y != null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.bytedance.sdk.openadsdk.core.widget.e eVar = new com.bytedance.sdk.openadsdk.core.widget.e();
        this.y = eVar;
        eVar.a(this.x, this.a);
        this.y.a(this.z, this);
        l.b("useTime", "mVideoTrafficTipLayout use time :" + (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    public void o() {
        com.bytedance.sdk.openadsdk.core.widget.e eVar = this.y;
        if (eVar != null) {
            eVar.a(false);
        }
    }

    boolean p() {
        if (this.z != null) {
            return true;
        }
        l.e("NewLiveViewLayout", "callback is null");
        return false;
    }

    public void q() {
        ad.f(this.f1713d);
        ad.f(this.f1714e);
        if (this.c.getVisibility() == 0) {
            ad.a((View) this.c, 8);
        }
    }

    @TargetApi(14)
    public void r() {
        ad.a((View) this.a, 0);
        com.bykv.vk.openvk.component.video.api.renderview.b bVar = this.b;
        if (bVar != null) {
            ad.a(bVar.getView(), 0);
        }
    }

    void s() {
        try {
            ad.a(this.h, 8);
            ad.a((View) this.i, 8);
            ad.a(this.j, 8);
            ad.a((View) this.k, 8);
            ad.a((View) this.l, 8);
            ad.a((View) this.m, 8);
            ad.a((View) this.n, 8);
        } catch (Exception unused) {
        }
    }

    public void t() {
        ImageView imageView = this.i;
        if (imageView != null) {
            imageView.setImageBitmap(null);
        }
        CornerIV cornerIV = this.k;
        if (cornerIV != null) {
            cornerIV.setImageBitmap(null);
        }
    }

    public boolean u() {
        return this.s;
    }

    public boolean v() {
        return this.t;
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.d.a
    public boolean w() {
        com.bytedance.sdk.openadsdk.core.widget.e eVar = this.y;
        return eVar != null && eVar.a();
    }

    boolean x() {
        return (this.v & 4) != 4 || this.s;
    }
}
