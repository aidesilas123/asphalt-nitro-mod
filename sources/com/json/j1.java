package com.json;

import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceBannerLayout;
import com.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener;
import com.json.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.l;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.model.Placement;
import com.json.t1;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class j1 extends t1<q> implements BannerAdListener, u {
    public static final String t = "bannerLayout";
    public static final String u = "bannerSize";
    private final IronSourceBannerLayout r;
    private final boolean s;

    class a extends jb {
        final /* synthetic */ View a;
        final /* synthetic */ FrameLayout.LayoutParams b;

        a(View view, FrameLayout.LayoutParams layoutParams) {
            this.a = view;
            this.b = layoutParams;
        }

        @Override // com.json.jb
        public void a() {
            j1.this.d0(this.a, this.b);
        }
    }

    class b extends jb {
        b() {
        }

        @Override // com.json.jb
        public void a() {
            j1.this.t();
        }
    }

    public j1(pa paVar, p pVar, BaseAdAdapter<?, AdapterAdViewListener> baseAdAdapter, IronSourceBannerLayout ironSourceBannerLayout, Placement placement, boolean z, d1 d1Var, q qVar) {
        super(paVar, pVar, baseAdAdapter, new h0(pVar.g(), pVar.g().getBannerSettings(), IronSource.AD_UNIT.BANNER), d1Var, qVar);
        this.r = ironSourceBannerLayout;
        this.f6623g = placement;
        this.s = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0(View view, FrameLayout.LayoutParams layoutParams) {
        Listener listener;
        super.onAdLoadSuccess();
        if (!x() || (listener = this.b) == 0) {
            return;
        }
        ((q) listener).a(this, view, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(U());
        if (x()) {
            super.onAdOpened();
        } else {
            if (this.f6621e == t1.h.FAILED) {
                return;
            }
            ironLog.error(String.format("unexpected onAdOpened for %s, state - %s", k(), this.f6621e));
            if (this.f6620d != null) {
                this.f6620d.k.l(String.format("unexpected onAdOpened, state - %s", this.f6621e));
            }
        }
    }

    @Override // com.json.t1
    protected boolean E() {
        return false;
    }

    @Override // com.json.t1
    protected AdData F(String str, Map<String, Object> map) {
        return new AdData(str, Z(), H(map));
    }

    @Override // com.json.t1
    protected Map<String, Object> H(Map<String, Object> map) {
        Map<String, Object> mapH = super.H(map);
        p pVar = this.a;
        if (pVar != null && this.r != null && TextUtils.isEmpty(pVar.g().getCustomNetwork())) {
            mapH.put("bannerLayout", this.r);
        }
        return mapH;
    }

    public void O() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(k());
        N(t1.h.NONE);
        Object obj = this.c;
        if (obj == null) {
            ironLog.warning("mAdapter == null");
            return;
        }
        try {
            if (obj instanceof AdapterBannerInterface) {
                ((AdapterBannerInterface) obj).destroyAd(this.k);
            } else {
                ironLog.error(G("adapter not instance of AdapterBannerInterface"));
            }
        } catch (Throwable th) {
            String str = "destroyBanner - exception = " + th.getLocalizedMessage() + " state = " + this.f6621e;
            IronLog.INTERNAL.error(G(str));
            v vVar = this.f6620d;
            if (vVar != null) {
                vVar.k.c(str);
            }
        }
        v vVar2 = this.f6620d;
        if (vVar2 != null) {
            vVar2.f6680g.a(r().intValue());
        }
    }

    @Override // com.json.t1, com.json.u
    public Map<String, Object> a(t tVar) {
        Map<String, Object> mapA = super.a(tVar);
        IronSourceBannerLayout ironSourceBannerLayout = this.r;
        if (ironSourceBannerLayout != null && !ironSourceBannerLayout.isDestroyed()) {
            l.a(mapA, this.r.getSize());
        }
        if (this.f6623g != null) {
            mapA.put("placement", X());
        }
        return mapA;
    }

    @Override // com.json.t1
    protected boolean c0() {
        return this.s;
    }

    @Override // com.json.t1
    protected void o() {
        Object obj = this.c;
        if (obj instanceof AdapterBannerInterface) {
            ((AdapterBannerInterface) obj).loadAd(this.k, ContextProvider.getInstance().getCurrentActiveActivity(), this.r.getSize(), this);
        } else {
            IronLog.INTERNAL.error(G("adapter not instance of AdapterBannerInterface"));
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.listener.BannerAdListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdLeftApplication() {
        v vVar;
        Placement placement = this.f6623g;
        if (placement != null && (vVar = this.f6620d) != null) {
            vVar.j.d(placement.getPlacementName());
        }
        Listener listener = this.b;
        if (listener != 0) {
            ((q) listener).d(this);
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.listener.BannerAdListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdLoadSuccess(View view, FrameLayout.LayoutParams layoutParams) {
        if (b0().c()) {
            b0().a(new a(view, layoutParams));
        } else {
            d0(view, layoutParams);
        }
    }

    @Override // com.json.t1, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener, com.json.mediationsdk.adunit.adapter.listener.BannerAdListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdOpened() {
        if (b0().c()) {
            b0().a(new b());
        } else {
            t();
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.listener.BannerAdListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdScreenDismissed() {
        v vVar;
        Placement placement = this.f6623g;
        if (placement != null && (vVar = this.f6620d) != null) {
            vVar.j.b(placement.getPlacementName());
        }
        Listener listener = this.b;
        if (listener != 0) {
            ((q) listener).c(this);
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.listener.BannerAdListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdScreenPresented() {
        v vVar;
        Placement placement = this.f6623g;
        if (placement != null && (vVar = this.f6620d) != null) {
            vVar.j.f(placement.getPlacementName());
        }
        Listener listener = this.b;
        if (listener != 0) {
            ((q) listener).a(this);
        }
    }
}
