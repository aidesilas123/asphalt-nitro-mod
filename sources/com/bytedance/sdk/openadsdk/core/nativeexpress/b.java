package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView;
import com.bytedance.sdk.openadsdk.core.t;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: BrandBannerController.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    q a;
    private final Context b;
    private a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.b.o f1629d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private NativeExpressView f1630e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1631f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1632g;
    private ScheduledFuture<?> h;

    /* JADX INFO: compiled from: BrandBannerController.java */
    public static class a implements com.bytedance.sdk.component.adexpress.b.d<View>, DspHtmlWebView.b {
        AtomicBoolean a = new AtomicBoolean(false);
        WeakReference<View> b;
        private com.bytedance.sdk.openadsdk.dislike.b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TTDislikeDialogAbstract f1633d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f1634e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Context f1635f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f1636g;
        private final int h;
        private FrameLayout i;
        private q j;
        private final int k;
        private String l;
        private DspHtmlWebView m;
        private com.bytedance.sdk.component.adexpress.b.g n;
        private PAGBannerAdWrapperListener o;

        public a(Context context, q qVar, int i, int i2, String str) {
            this.l = str;
            if (qVar != null && qVar.bd()) {
                this.l = "fullscreen_interstitial_ad";
            }
            this.f1635f = context;
            this.f1636g = i;
            this.h = i2;
            this.j = qVar;
            this.k = ad.b(context, 3.0f);
            g();
        }

        private void g() {
            FrameLayout frameLayout = new FrameLayout(this.f1635f);
            this.i = frameLayout;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(this.f1636g, this.h);
            }
            layoutParams.width = this.f1636g;
            layoutParams.height = this.h;
            layoutParams.gravity = 17;
            this.i.setLayoutParams(layoutParams);
            DspHtmlWebView dspHtmlWebViewJ = j();
            this.i.addView(dspHtmlWebViewJ);
            View viewH = h();
            this.i.addView(viewH);
            q qVar = this.j;
            if (qVar == null || !qVar.bd()) {
                ImageView imageViewI = i();
                this.i.addView(imageViewI);
                this.b = new WeakReference<>(imageViewI);
                dspHtmlWebViewJ.a(imageViewI, FriendlyObstructionPurpose.CLOSE_AD);
            } else {
                dspHtmlWebViewJ.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                this.b = new WeakReference<>(((Activity) this.f1635f).findViewById(520093713));
                dspHtmlWebViewJ.a(((Activity) this.f1635f).findViewById(com.bytedance.sdk.openadsdk.utils.i.bs), FriendlyObstructionPurpose.OTHER);
            }
            dspHtmlWebViewJ.a(viewH, FriendlyObstructionPurpose.OTHER);
        }

        private View h() {
            PAGLogoView pAGLogoView = new PAGLogoView(this.f1635f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            q qVar = this.j;
            if (qVar == null || !qVar.bd()) {
                int i = this.k;
                layoutParams.topMargin = i;
                layoutParams.leftMargin = i;
            } else {
                layoutParams.leftMargin = ad.b(this.f1635f, 20.0f);
                layoutParams.bottomMargin = ad.b(this.f1635f, 20.0f);
                layoutParams.gravity = 8388691;
            }
            pAGLogoView.setLayoutParams(layoutParams);
            pAGLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.b.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTWebsiteActivity.a(a.this.f1635f, a.this.j, a.this.l);
                }
            });
            return pAGLogoView;
        }

        private ImageView i() {
            PAGImageView pAGImageView = new PAGImageView(this.f1635f);
            pAGImageView.setImageDrawable(ResourcesCompat.getDrawable(this.f1635f.getResources(), s.d(this.f1635f, "tt_dislike_icon2"), null));
            int iB = ad.b(this.f1635f, 15.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iB, iB);
            layoutParams.gravity = GravityCompat.END;
            int i = this.k;
            layoutParams.rightMargin = i;
            layoutParams.topMargin = i;
            pAGImageView.setLayoutParams(layoutParams);
            pAGImageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.b.a.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    a.this.f();
                }
            });
            return pAGImageView;
        }

        @SuppressLint({"ClickableViewAccessibility"})
        private DspHtmlWebView j() {
            DspHtmlWebView dspHtmlWebViewB = com.bytedance.sdk.openadsdk.core.nativeexpress.c.a().b();
            this.m = dspHtmlWebViewB;
            if (dspHtmlWebViewB == null) {
                this.m = new DspHtmlWebView(this.f1635f);
            }
            com.bytedance.sdk.openadsdk.core.nativeexpress.c.a().c(this.m);
            this.m.a(this.j, this, this.l);
            this.m.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            return this.m;
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.b
        public View a() {
            WeakReference<View> weakReference = this.b;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.b
        public void a(int i, int i2) {
            com.bytedance.sdk.component.adexpress.b.g gVar = this.n;
            if (gVar != null) {
                gVar.a(i);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.b
        public void a(View view, int i) {
            PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.o;
            if (pAGBannerAdWrapperListener != null) {
                pAGBannerAdWrapperListener.onAdClicked(this.m, 2);
            }
        }

        @Override // com.bytedance.sdk.component.adexpress.b.d
        public void a(com.bytedance.sdk.component.adexpress.b.g gVar) {
            q qVar;
            if (this.a.get()) {
                return;
            }
            if (this.f1635f == null || (qVar = this.j) == null) {
                gVar.a(106);
                return;
            }
            this.n = gVar;
            if (TextUtils.isEmpty(qVar.aw())) {
                gVar.a(106);
            } else {
                this.m.p();
            }
        }

        public void a(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
            q qVar;
            if (tTDislikeDialogAbstract != null && (qVar = this.j) != null) {
                tTDislikeDialogAbstract.setMaterialMeta(qVar.ac(), this.j.ae());
            }
            this.f1633d = tTDislikeDialogAbstract;
        }

        public void a(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
            this.o = pAGBannerAdWrapperListener;
        }

        public void a(t tVar) {
            if (tVar instanceof com.bytedance.sdk.openadsdk.dislike.b) {
                this.c = (com.bytedance.sdk.openadsdk.dislike.b) tVar;
            }
        }

        public void a(String str) {
            this.f1634e = str;
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.b
        public View b() {
            FrameLayout frameLayout = this.i;
            if (frameLayout == null) {
                return null;
            }
            return (View) frameLayout.getParent();
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.b
        @SuppressLint({"ClickableViewAccessibility"})
        public void b_() {
            if (this.n != null) {
                com.bytedance.sdk.component.adexpress.b.n nVar = new com.bytedance.sdk.component.adexpress.b.n();
                nVar.a(true);
                nVar.a(ad.c(this.f1635f, this.f1636g));
                nVar.b(ad.c(this.f1635f, this.h));
                this.n.a(this.i, nVar);
            }
        }

        @Override // com.bytedance.sdk.component.adexpress.b.d
        public int c() {
            return 5;
        }

        public void d() {
            this.i = null;
            this.c = null;
            this.f1633d = null;
            this.n = null;
            this.j = null;
            DspHtmlWebView dspHtmlWebView = this.m;
            if (dspHtmlWebView != null) {
                dspHtmlWebView.l();
                com.bytedance.sdk.openadsdk.core.nativeexpress.c.a().a(this.m);
            }
            this.a.set(true);
        }

        @Override // com.bytedance.sdk.component.adexpress.b.d
        public View e() {
            return this.i;
        }

        public void f() {
            TTDislikeDialogAbstract tTDislikeDialogAbstract = this.f1633d;
            if (tTDislikeDialogAbstract != null) {
                tTDislikeDialogAbstract.show();
                return;
            }
            com.bytedance.sdk.openadsdk.dislike.b bVar = this.c;
            if (bVar != null) {
                bVar.a();
            } else {
                TTDelegateActivity.a(this.j, this.f1634e);
            }
        }
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BrandBannerController.java */
    private static class RunnableC0138b implements Runnable {
        c a;

        public RunnableC0138b(c cVar) {
            this.a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = this.a;
            if (cVar != null) {
                cVar.a(107, 107);
            }
        }
    }

    /* JADX INFO: compiled from: BrandBannerController.java */
    interface c {
        void a();

        void a(int i, int i2);

        void a(String str);

        void b(String str);
    }

    public b(Context context, NativeExpressView nativeExpressView, q qVar, String str) {
        this.a = qVar;
        this.b = context;
        this.f1630e = nativeExpressView;
        a(nativeExpressView);
        this.c = new a(context, qVar, this.f1631f, this.f1632g, str);
    }

    private void a(NativeExpressView nativeExpressView) {
        q qVar = this.a;
        if (qVar != null && qVar.bd()) {
            this.f1631f = -1;
            this.f1632g = -1;
            return;
        }
        m mVarA = BannerExpressBackupView.a(nativeExpressView.getExpectExpressWidth(), nativeExpressView.getExpectExpressHeight());
        if (nativeExpressView.getExpectExpressWidth() <= 0 || nativeExpressView.getExpectExpressHeight() <= 0) {
            int iC = ad.c(this.b);
            this.f1631f = iC;
            this.f1632g = Float.valueOf(iC / mVarA.b).intValue();
        } else {
            this.f1631f = ad.b(this.b, nativeExpressView.getExpectExpressWidth());
            this.f1632g = ad.b(this.b, nativeExpressView.getExpectExpressHeight());
        }
        int i = this.f1631f;
        if (i <= 0 || i <= ad.c(this.b)) {
            return;
        }
        this.f1631f = ad.c(this.b);
        this.f1632g = Float.valueOf(this.f1632g * (ad.c(this.b) / this.f1631f)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            ScheduledFuture<?> scheduledFuture = this.h;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.h.cancel(false);
            this.h = null;
        } catch (Throwable unused) {
        }
    }

    public void a() {
        q qVar = this.a;
        if (qVar != null && qVar.bd()) {
            this.h = aa.a().schedule(new RunnableC0138b(this.c.m), com.bytedance.sdk.openadsdk.core.o.d().B(), TimeUnit.MILLISECONDS);
        }
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(new com.bytedance.sdk.component.adexpress.b.g() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.b.1
                @Override // com.bytedance.sdk.component.adexpress.b.g
                public void a(int i) {
                    if (b.this.f1629d != null) {
                        b.this.f1629d.a_(106);
                    }
                    b.this.c();
                }

                @Override // com.bytedance.sdk.component.adexpress.b.g
                public void a(View view, com.bytedance.sdk.component.adexpress.b.n nVar) {
                    if (b.this.f1630e != null && view != null) {
                        b.this.f1630e.removeView(view);
                        if (view.getParent() != null) {
                            ((ViewGroup) view.getParent()).removeView(view);
                        }
                        b.this.f1630e.addView(view, new ViewGroup.LayoutParams(-1, -1));
                        if (b.this.f1629d != null) {
                            b.this.f1629d.a(b.this.c, nVar);
                        }
                    } else if (b.this.f1629d != null) {
                        b.this.f1629d.a_(106);
                    }
                    b.this.c();
                }
            });
            return;
        }
        com.bytedance.sdk.component.adexpress.b.o oVar = this.f1629d;
        if (oVar != null) {
            oVar.a_(106);
        }
    }

    public void a(com.bytedance.sdk.component.adexpress.b.o oVar) {
        this.f1629d = oVar;
    }

    public void a(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(tTDislikeDialogAbstract);
        }
    }

    public void a(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(pAGBannerAdWrapperListener);
        }
    }

    public void a(t tVar) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(tVar);
        }
    }

    public void a(String str) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(str);
        }
    }

    public void b() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.d();
            this.c = null;
        }
        c();
        this.f1629d = null;
        this.f1630e = null;
    }
}
