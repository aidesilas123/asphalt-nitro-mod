package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class NativeExpressVideoView extends NativeExpressView implements c.InterfaceC0092c, c.d, l {
    private long A;
    private com.bytedance.sdk.openadsdk.apiImpl.feed.c B;
    int a;
    boolean b;
    boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1622d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f1623e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f1624f;
    private ExpressVideoView x;
    private com.bytedance.sdk.openadsdk.multipro.b.a y;
    private long z;

    public NativeExpressVideoView(@NonNull Context context, q qVar, AdSlot adSlot, String str) {
        super(context, qVar, adSlot, str, false);
        this.a = 1;
        this.b = false;
        this.c = true;
        this.f1623e = true;
        this.f1624f = true;
        h();
    }

    private void b(final com.bytedance.sdk.component.adexpress.b.n nVar) {
        if (nVar == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.2
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressVideoView.this.c(nVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(@NonNull com.bytedance.sdk.component.adexpress.b.n nVar) {
        double dF = nVar.f();
        double dG = nVar.g();
        double dH = nVar.h();
        double dI = nVar.i();
        com.bytedance.sdk.component.utils.l.b("TTAD.NativeExpressVideoView", "videoWH=" + dH + "x" + dI);
        if (dH == 0.0d || dI == 0.0d) {
            return;
        }
        int iB = ad.b(this.f1628g, (float) dF);
        int iB2 = ad.b(this.f1628g, (float) dG);
        int iB3 = ad.b(this.f1628g, (float) dH);
        int iB4 = ad.b(this.f1628g, (float) dI);
        float fMin = Math.min(Math.min(ad.b(this.f1628g, nVar.k()), ad.b(this.f1628g, nVar.l())), Math.min(ad.b(this.f1628g, nVar.m()), ad.b(this.f1628g, nVar.n())));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.k.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(iB3, iB4);
        }
        layoutParams.width = iB3;
        layoutParams.height = iB4;
        layoutParams.topMargin = iB2;
        layoutParams.leftMargin = iB;
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(iB);
            layoutParams.setMarginEnd(layoutParams.rightMargin);
        }
        this.k.setLayoutParams(layoutParams);
        this.k.removeAllViews();
        if (this.x != null) {
            if (nVar.a() == null) {
                this.k.addView(this.x);
            } else if (this.f1624f) {
                nVar.a().setTag(com.bytedance.sdk.component.adexpress.dynamic.a.f699f, 1);
                ((FrameLayout) nVar.a()).removeAllViews();
                ((FrameLayout) nVar.a()).addView(this.x, new FrameLayout.LayoutParams(-1, -1));
                this.f1624f = false;
            }
            ad.b(this.k, fMin);
            this.x.a(0L, true, false);
            c(this.f1622d);
            if (!com.bytedance.sdk.component.utils.o.d(this.f1628g) && !this.c && this.f1623e) {
                this.x.e();
            }
            if (TextUtils.equals("embeded_ad", this.h)) {
                return;
            }
            setShowAdInteractionView(false);
        }
    }

    private void q() {
        try {
            this.y = new com.bytedance.sdk.openadsdk.multipro.b.a();
            ExpressVideoView expressVideoView = new ExpressVideoView(this.f1628g, this.j, this.h, this.t);
            this.x = expressVideoView;
            expressVideoView.setShouldCheckNetChange(false);
            this.x.setControllerStatusCallBack(new NativeVideoTsView.b() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.1
                @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.b
                public void a(boolean z, long j, long j2, long j3, boolean z2) {
                    NativeExpressVideoView.this.y.a = z;
                    NativeExpressVideoView.this.y.f1842e = j;
                    NativeExpressVideoView.this.y.f1843f = j2;
                    NativeExpressVideoView.this.y.f1844g = j3;
                    NativeExpressVideoView.this.y.f1841d = z2;
                }
            });
            this.x.setVideoAdLoadListener(this);
            this.x.setVideoAdInteractionListener(this);
            if ("embeded_ad".equals(this.h)) {
                this.x.setIsAutoPlay(this.b ? this.i.isAutoPlay() : this.c);
            } else if ("open_ad".equals(this.h)) {
                this.x.setIsAutoPlay(true);
            } else {
                this.x.setIsAutoPlay(this.c);
            }
            if ("open_ad".equals(this.h)) {
                this.x.setIsQuiet(true);
            } else {
                boolean zC = com.bytedance.sdk.openadsdk.core.o.d().c(String.valueOf(this.f1622d));
                this.q = zC;
                this.x.setIsQuiet(zC);
            }
            this.x.d();
        } catch (Exception unused) {
            this.x = null;
        }
    }

    private void setShowAdInteractionView(boolean z) {
        ExpressVideoView expressVideoView = this.x;
        if (expressVideoView != null) {
            expressVideoView.setShowAdInteractionView(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void a() {
        com.bytedance.sdk.component.utils.l.b("TTAD.NativeExpressVideoView", "onSkipVideo");
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void a(int i) {
        com.bytedance.sdk.component.utils.l.b("TTAD.NativeExpressVideoView", "onChangeVideoState,stateType:" + i);
        ExpressVideoView expressVideoView = this.x;
        if (expressVideoView == null) {
            com.bytedance.sdk.component.utils.l.e("TTAD.NativeExpressVideoView", "onChangeVideoState,ExpressVideoView is null !!!!!!!!!!!!");
            return;
        }
        if (i == 1) {
            expressVideoView.a(0L, true, false);
            return;
        }
        if (i == 2 || i == 3) {
            expressVideoView.setCanInterruptVideoPlay(true);
            this.x.performClick();
        } else if (i == 4) {
            expressVideoView.getNativeVideoController().d();
        } else {
            if (i != 5) {
                return;
            }
            expressVideoView.a(0L, true, false);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.d
    public void a(int i, int i2) {
        com.bytedance.sdk.component.utils.l.b("TTAD.NativeExpressVideoView", "onVideoError,errorCode:" + i + ",extraCode:" + i2);
        this.z = this.A;
        this.a = 4;
        com.bytedance.sdk.openadsdk.apiImpl.feed.c cVar = this.B;
        if (cVar != null) {
            cVar.a(i, i2);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void a(long j, long j2) {
        this.f1623e = false;
        int i = this.a;
        if (i != 5 && i != 3 && j > this.z) {
            this.a = 2;
        }
        this.z = j;
        this.A = j2;
        com.bytedance.sdk.component.adexpress.b.b bVar = this.v;
        if (bVar != null && bVar.d() != null) {
            this.v.d().setTimeUpdate(((int) (j2 - j)) / 1000);
        }
        com.bytedance.sdk.openadsdk.apiImpl.feed.c cVar = this.B;
        if (cVar != null) {
            cVar.a(j, j2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.b.h
    public void a(View view, int i, com.bytedance.sdk.component.adexpress.c cVar) {
        if (i == -1 || cVar == null) {
            return;
        }
        if (i != 11) {
            super.a(view, i, cVar);
            return;
        }
        try {
            ExpressVideoView expressVideoView = this.x;
            if (expressVideoView != null) {
                expressVideoView.setCanInterruptVideoPlay(true);
                this.x.performClick();
                if (this.l) {
                    this.x.findViewById(com.bytedance.sdk.openadsdk.utils.i.aJ).setVisibility(0);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.b.o
    public void a(com.bytedance.sdk.component.adexpress.b.d<? extends View> dVar, com.bytedance.sdk.component.adexpress.b.n nVar) {
        this.w = dVar;
        if ((dVar instanceof p) && ((p) dVar).q() != null) {
            ((p) this.w).q().a((l) this);
        }
        if (nVar != null && nVar.c()) {
            b(nVar);
        }
        super.a(dVar, nVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void a(boolean z) {
        com.bytedance.sdk.component.utils.l.b("TTAD.NativeExpressVideoView", "onMuteVideo,mute:" + z);
        ExpressVideoView expressVideoView = this.x;
        if (expressVideoView != null) {
            expressVideoView.setIsQuiet(z);
            setSoundMute(z);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void a_() {
        this.f1623e = false;
        com.bytedance.sdk.component.utils.l.b("TTAD.NativeExpressVideoView", "onVideoAdStartPlay");
        this.a = 2;
        com.bytedance.sdk.openadsdk.apiImpl.feed.c cVar = this.B;
        if (cVar != null) {
            cVar.b(null);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void b() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public long c() {
        return this.z;
    }

    void c(int i) {
        int iB = com.bytedance.sdk.openadsdk.core.o.d().b(i);
        if (3 == iB) {
            this.b = false;
            this.c = false;
        } else if (4 == iB) {
            this.b = true;
        } else {
            int iC = com.bytedance.sdk.component.utils.o.c(com.bytedance.sdk.openadsdk.core.o.a());
            if (1 == iB) {
                this.b = false;
                this.c = ac.d(iC);
            } else if (2 == iB) {
                if (ac.e(iC) || ac.d(iC) || ac.f(iC)) {
                    this.b = false;
                    this.c = true;
                }
            } else if (5 == iB && (ac.d(iC) || ac.f(iC))) {
                this.b = false;
                this.c = true;
            }
        }
        if (!this.c) {
            this.a = 3;
        }
        com.bytedance.sdk.component.utils.l.c("NativeVideoAdView", "mIsAutoPlay=" + this.c + ",status=" + iB);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public int d() {
        ExpressVideoView expressVideoView;
        if (this.a == 3 && (expressVideoView = this.x) != null) {
            expressVideoView.d();
        }
        ExpressVideoView expressVideoView2 = this.x;
        if (expressVideoView2 == null || !expressVideoView2.getNativeVideoController().p()) {
            return this.a;
        }
        return 1;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void d_() {
        this.f1623e = false;
        com.bytedance.sdk.component.utils.l.b("TTAD.NativeExpressVideoView", "onVideoAdPaused");
        this.l = true;
        this.a = 3;
        com.bytedance.sdk.openadsdk.apiImpl.feed.c cVar = this.B;
        if (cVar != null) {
            cVar.c(null);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void e() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void e_() {
        this.f1623e = false;
        com.bytedance.sdk.component.utils.l.b("TTAD.NativeExpressVideoView", "onVideoAdContinuePlay");
        this.l = false;
        this.a = 2;
        com.bytedance.sdk.openadsdk.apiImpl.feed.c cVar = this.B;
        if (cVar != null) {
            cVar.d(null);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void f_() {
        this.f1623e = false;
        com.bytedance.sdk.component.utils.l.b("TTAD.NativeExpressVideoView", "onVideoComplete");
        this.a = 5;
        com.bytedance.sdk.component.adexpress.b.b bVar = this.v;
        if (bVar != null && bVar.d() != null) {
            this.v.d().f();
        }
        com.bytedance.sdk.openadsdk.apiImpl.feed.c cVar = this.B;
        if (cVar != null) {
            cVar.e(null);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.d
    public void g_() {
        com.bytedance.sdk.component.utils.l.b("TTAD.NativeExpressVideoView", "onVideoLoad");
        com.bytedance.sdk.openadsdk.apiImpl.feed.c cVar = this.B;
        if (cVar != null) {
            cVar.a(null);
        }
    }

    protected ExpressVideoView getExpressVideoView() {
        return this.x;
    }

    public com.bytedance.sdk.openadsdk.apiImpl.feed.c getVideoAdListener() {
        return this.B;
    }

    @Nullable
    public com.bykv.vk.openvk.component.video.api.d.c getVideoController() {
        ExpressVideoView expressVideoView = this.x;
        if (expressVideoView != null) {
            return expressVideoView.getNativeVideoController();
        }
        return null;
    }

    public com.bytedance.sdk.openadsdk.multipro.b.a getVideoModel() {
        return this.y;
    }

    protected void h() {
        this.k = new FrameLayout(this.f1628g);
        q qVar = this.j;
        int iAZ = qVar != null ? qVar.aZ() : 0;
        this.f1622d = iAZ;
        c(iAZ);
        q();
        addView(this.k, new FrameLayout.LayoutParams(-1, -1));
        if (getWebView() != null) {
            getWebView().setBackgroundColor(0);
        }
    }

    public void setVideoAdListener(com.bytedance.sdk.openadsdk.apiImpl.feed.c cVar) {
        this.B = cVar;
    }
}
