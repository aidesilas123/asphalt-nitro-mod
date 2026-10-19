package com.bytedance.sdk.openadsdk.component.reward.view;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.b.n;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.r;
import com.bytedance.sdk.openadsdk.core.nativeexpress.FullRewardExpressBackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.l;
import com.bytedance.sdk.openadsdk.core.nativeexpress.p;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class FullRewardExpressView extends NativeExpressView {
    public static float a = 100.0f;
    l b;
    FullRewardExpressBackupView c;

    public FullRewardExpressView(com.bytedance.sdk.openadsdk.component.reward.a.a aVar, AdSlot adSlot, String str) {
        super(aVar.V, aVar.a, adSlot, str, aVar.f1314d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(n nVar) {
        if (nVar == null) {
            return;
        }
        double dF = nVar.f();
        double dG = nVar.g();
        double dH = nVar.h();
        double dI = nVar.i();
        int iB = ad.b(this.f1628g, (float) dF);
        int iB2 = ad.b(this.f1628g, (float) dG);
        int iB3 = ad.b(this.f1628g, (float) dH);
        int iB4 = ad.b(this.f1628g, (float) dI);
        com.bytedance.sdk.component.utils.l.b("ExpressView", "vW x vH =" + dH + "x" + dI);
        if (dI == 0.0d || dH == 0.0d) {
            return;
        }
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
    }

    private void h() {
        setBackupListener(new com.bytedance.sdk.component.adexpress.b.c() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView.1
            @Override // com.bytedance.sdk.component.adexpress.b.c
            public boolean a(ViewGroup viewGroup, int i) {
                try {
                    ((NativeExpressView) viewGroup).m();
                    FullRewardExpressView.this.c = new FullRewardExpressBackupView(viewGroup.getContext());
                    FullRewardExpressView fullRewardExpressView = FullRewardExpressView.this;
                    fullRewardExpressView.c.a(((NativeExpressView) fullRewardExpressView).j, (NativeExpressView) viewGroup);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void a() {
        com.bytedance.sdk.component.utils.l.b("TTAD.FRExpressView", "onSkipVideo");
        l lVar = this.b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void a(int i) {
        com.bytedance.sdk.component.utils.l.b("TTAD.FRExpressView", "onChangeVideoState,stateType:" + i);
        l lVar = this.b;
        if (lVar != null) {
            lVar.a(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.b.h
    public void a(View view, int i, com.bytedance.sdk.component.adexpress.c cVar) {
        if (i == -1 || cVar == null || i != 3) {
            super.a(view, i, cVar);
        } else {
            e();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.b.o
    public void a(com.bytedance.sdk.component.adexpress.b.d<? extends View> dVar, n nVar) {
        q qVar = this.j;
        if (qVar != null && qVar.bd()) {
            super.a(dVar, nVar);
            return;
        }
        if (dVar instanceof p) {
            p pVar = (p) dVar;
            if (pVar.q() != null) {
                pVar.q().a((l) this);
            }
        }
        if (nVar != null && nVar.c()) {
            b(nVar);
        }
        super.a(dVar, nVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void a(boolean z) {
        com.bytedance.sdk.component.utils.l.b("TTAD.FRExpressView", "onMuteVideo,mute:" + z);
        l lVar = this.b;
        if (lVar != null) {
            lVar.a(z);
        }
        setSoundMute(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    protected boolean a(n nVar) {
        q qVar = this.j;
        if ((qVar instanceof r) && ((r) qVar).bw() && nVar.c() && nVar.b() == 1) {
            return false;
        }
        return super.a(nVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void b() {
        l lVar = this.b;
        if (lVar != null) {
            lVar.b();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void b(int i) {
        l lVar = this.b;
        if (lVar != null) {
            lVar.b(i);
        }
    }

    public void b(final n nVar) {
        if (nVar == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView.2
            @Override // java.lang.Runnable
            public void run() {
                FullRewardExpressView.this.c(nVar);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public long c() {
        l lVar = this.b;
        if (lVar != null) {
            return lVar.c();
        }
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public int d() {
        l lVar = this.b;
        if (lVar != null) {
            return lVar.d();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void e() {
        l lVar = this.b;
        if (lVar != null) {
            lVar.e();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    protected void g() {
        this.m = true;
        FrameLayout frameLayout = new FrameLayout(this.f1628g);
        this.k = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        super.g();
        SSWebView webView = getWebView();
        if (webView != null) {
            webView.setBackgroundColor(0);
        }
        h();
    }

    public View getBackupContainerBackgroundView() {
        if (n()) {
            return this.c.getBackupContainerBackgroundView();
        }
        return null;
    }

    public FrameLayout getVideoFrameLayout() {
        return n() ? this.c.getVideoContainer() : this.k;
    }

    public void setExpressVideoListenerProxy(l lVar) {
        this.b = lVar;
    }
}
