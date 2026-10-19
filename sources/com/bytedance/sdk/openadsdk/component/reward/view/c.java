package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.f;
import com.bytedance.sdk.openadsdk.core.nativeexpress.g;
import com.bytedance.sdk.openadsdk.core.nativeexpress.l;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: compiled from: RewardFullExpressVideoLayout.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    com.com.bytedance.overseas.sdk.a.c a;
    Handler b;
    boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1429d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f1430e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Activity f1431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final q f1432g;
    private final String h;
    private FullRewardExpressView i;
    private final com.bytedance.sdk.openadsdk.component.reward.a.a j;
    private boolean k;

    public c(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        this.j = aVar;
        this.f1431f = aVar.V;
        this.f1432g = aVar.a;
        this.h = aVar.f1317g;
    }

    private com.com.bytedance.overseas.sdk.a.c a(q qVar) {
        if (qVar.M() == 4) {
            return com.com.bytedance.overseas.sdk.a.d.a(this.f1431f, qVar, this.h);
        }
        return null;
    }

    public FullRewardExpressView a() {
        return this.i;
    }

    public void a(AdSlot adSlot) {
        if (this.f1430e) {
            return;
        }
        this.f1430e = true;
        this.i = new FullRewardExpressView(this.j, adSlot, this.h);
    }

    public void a(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        FullRewardExpressView fullRewardExpressView = this.i;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.setExpressInteractionListener(pAGBannerAdWrapperListener);
    }

    public void a(g gVar, f fVar) {
        q qVar;
        if (this.i == null || (qVar = this.f1432g) == null) {
            return;
        }
        this.a = a(qVar);
        gVar.a(this.i);
        gVar.a(this.a);
        this.i.setClickListener(gVar);
        fVar.a((View) this.i);
        fVar.a(this.a);
        this.i.setClickCreativeListener(fVar);
    }

    public void a(l lVar) {
        FullRewardExpressView fullRewardExpressView = this.i;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.setExpressVideoListenerProxy(lVar);
    }

    public void a(boolean z) {
        this.c = z;
    }

    public FrameLayout b() {
        FullRewardExpressView fullRewardExpressView = this.i;
        if (fullRewardExpressView == null) {
            return null;
        }
        FrameLayout videoFrameLayout = fullRewardExpressView.getVideoFrameLayout();
        if (this.i.n()) {
            l();
        }
        return videoFrameLayout;
    }

    public void b(boolean z) {
        this.f1429d = z;
    }

    public boolean c() {
        return this.c;
    }

    public boolean d() {
        return this.f1429d;
    }

    public Handler e() {
        if (this.b == null) {
            this.b = new Handler(Looper.getMainLooper());
        }
        return this.b;
    }

    public void f() {
        if (this.k) {
            return;
        }
        this.k = true;
        FullRewardExpressView fullRewardExpressView = this.i;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.l();
        }
        Handler handler = this.b;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public void g() {
        FullRewardExpressView fullRewardExpressView = this.i;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.k();
        }
    }

    public boolean h() {
        FullRewardExpressView fullRewardExpressView = this.i;
        if (fullRewardExpressView == null) {
            return false;
        }
        return fullRewardExpressView.n();
    }

    public int i() {
        FullRewardExpressView fullRewardExpressView = this.i;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.getDynamicShowType();
        }
        return 0;
    }

    public void j() {
        FullRewardExpressView fullRewardExpressView = this.i;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.i();
    }

    public void k() {
        FullRewardExpressView fullRewardExpressView = this.i;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.j();
        this.i.k();
    }

    public void l() {
        if (q.c(this.f1432g) && this.f1432g.A() == 3 && this.f1432g.B() == 0) {
            try {
                if (this.f1432g.ak() == 1) {
                    int iB = ad.b(o.a(), 90.0f);
                    FrameLayout frameLayout = (FrameLayout) this.i.getBackupContainerBackgroundView();
                    if (frameLayout != null) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
                        layoutParams.bottomMargin = iB;
                        frameLayout.setLayoutParams(layoutParams);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }
}
