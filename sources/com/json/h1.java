package com.json;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.AdapterUtils;
import com.json.mediationsdk.AuctionRequestParams;
import com.json.mediationsdk.ISBannerSize;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceBannerLayout;
import com.json.mediationsdk.IronSourceSegment;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.l;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.n;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.b;
import com.json.q1;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h1 extends q1<j1, AdapterAdViewListener> implements q {
    private boolean I;
    private IronSourceBannerLayout J;

    public h1(List<NetworkSettings> list, k1 k1Var, String str, o8 o8Var, IronSourceSegment ironSourceSegment, boolean z) {
        super(new BannerAdManagerData(str, list, k1Var), o8Var, ironSourceSegment, z);
        this.I = false;
    }

    private ISBannerSize t0() {
        IronSourceBannerLayout ironSourceBannerLayout = this.J;
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.getSize() == null) {
            return null;
        }
        return this.J.getSize().isSmart() ? AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()) ? l.a() : ISBannerSize.BANNER : this.J.getSize();
    }

    private void v0(View view, FrameLayout.LayoutParams layoutParams) {
        l.a(this.J, view, layoutParams);
    }

    @Override // com.json.q1
    protected JSONObject K(NetworkSettings networkSettings) {
        return networkSettings.getBannerSettings();
    }

    public void K() {
        IronSourceBannerLayout ironSourceBannerLayout = this.J;
        if (ironSourceBannerLayout != null) {
            a(ironSourceBannerLayout);
        }
    }

    @Override // com.json.q1
    protected x X() {
        return new l1();
    }

    @Override // com.json.q1, com.json.u
    public Map<String, Object> a(t tVar) {
        Map<String, Object> mapA = super.a(tVar);
        if (x0(this.J)) {
            l.a(mapA, this.J.getSize());
        }
        if (this.i != null) {
            mapA.put("placement", f0());
        }
        return mapA;
    }

    @Override // com.json.q1, com.json.a9
    public void a() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(Y());
        try {
            if (this.J == null) {
                ironLog.error("mIronSourceBanner is null");
                this.s.f6680g.b(IronSourceError.ERROR_BN_RELOAD_SKIP_BANNER_LAYOUT_IS_NULL);
                return;
            }
            boolean z = false;
            if (!u0()) {
                ironLog.verbose("banner is not visible, reload skipped");
                this.s.f6680g.b(IronSourceError.ERROR_BN_RELOAD_SKIP_INVISIBLE);
                this.q.i();
                return;
            }
            synchronized (this.x) {
                if (I(q1.f.SHOWING, q1.f.READY_TO_LOAD)) {
                    ironLog.verbose("start reload");
                    this.I = true;
                    z = true;
                } else {
                    ironLog.error("wrong state = " + this.p);
                }
            }
            if (z) {
                a(this.J, this.i);
            }
        } catch (Throwable th) {
            this.s.k.b(th.getMessage());
        }
    }

    public void a(IronSourceBannerLayout ironSourceBannerLayout) {
        try {
            if (!x0(ironSourceBannerLayout)) {
                Object[] objArr = new Object[1];
                objArr[0] = ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed";
                String str = String.format("can't destroy banner - %s", objArr);
                IronLog.API.error("destroy banner failed - errorMessage = " + str);
                return;
            }
            IronLog.INTERNAL.verbose("destroying banner");
            this.q.a();
            j1 j1Var = (j1) this.a.d();
            if (j1Var != null) {
                this.s.f6680g.a(j1Var.r() != null ? j1Var.r().intValue() : this.C.a(this.o.getAdUnit()));
                j1Var.O();
                this.a.a(null);
            }
            l.a(ironSourceBannerLayout);
            this.J = null;
            this.i = null;
            this.I = false;
            w(q1.f.READY_TO_LOAD);
        } catch (Throwable th) {
            String str2 = "destroyBanner - exception = " + th.getLocalizedMessage() + " state = " + this.p;
            IronLog.INTERNAL.error(J(str2));
            v vVar = this.s;
            if (vVar != null) {
                vVar.k.c(str2);
            }
        }
    }

    public void a(IronSourceBannerLayout ironSourceBannerLayout, Placement placement) {
        String str;
        IronLog.INTERNAL.verbose("placement = " + placement);
        int iB = 510;
        if (!x0(ironSourceBannerLayout)) {
            Object[] objArr = new Object[1];
            objArr[0] = ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed";
            str = String.format("can't load banner - %s", objArr);
        } else if (placement == null || TextUtils.isEmpty(placement.getPlacementName())) {
            Object[] objArr2 = new Object[1];
            objArr2[0] = placement == null ? "placement is null" : "placement name is empty";
            str = String.format("can't load banner - %s", objArr2);
            iB = s.b(this.o.getAdUnit());
        } else if (b.b(ContextProvider.getInstance().getApplicationContext(), placement.getPlacementName(), this.o.getAdUnit())) {
            str = String.format("placement %s is capped", placement.getPlacementName());
            iB = s.f(this.o.getAdUnit());
        } else {
            str = null;
        }
        if (!TextUtils.isEmpty(str)) {
            IronLog.API.error(J(str));
            t(iB, str, false);
        } else {
            this.J = ironSourceBannerLayout;
            this.i = placement;
            w();
        }
    }

    @Override // com.json.q, com.json.b0
    public void a(t1<?> t1Var) {
        IronLog.INTERNAL.verbose(J(t1Var.k()));
        this.t.f(t1Var.f());
    }

    @Override // com.json.q
    public void a(t1<?> t1Var, View view, FrameLayout.LayoutParams layoutParams) {
        IronLog.INTERNAL.verbose("mState = " + this.p);
        super.e(t1Var);
        if (I(q1.f.READY_TO_SHOW, q1.f.SHOWING)) {
            this.a.a(t1Var);
            v0(view, layoutParams);
            this.q.i();
            this.t.a(t1Var.f(), l0());
        }
    }

    @Override // com.json.q1
    protected void a0(t1<?> t1Var) {
    }

    @Override // com.json.q1
    protected void b0(t1<?> t1Var) {
    }

    @Override // com.json.q, com.json.b0
    public void c(t1<?> t1Var) {
        IronLog.INTERNAL.verbose(J(t1Var.k()));
        this.t.e(t1Var.f());
    }

    @Override // com.json.q1
    protected String c0() {
        return "BN";
    }

    @Override // com.json.q, com.json.b0
    public void d(t1<?> t1Var) {
        IronLog.INTERNAL.verbose(J(t1Var.k()));
        this.t.b(t1Var.f());
    }

    @Override // com.json.q1
    protected String g0() {
        return IronSourceConstants.OPW_BN_MANAGER_NAME;
    }

    @Override // com.json.q1
    protected boolean l0() {
        return this.I;
    }

    @Override // com.json.q1
    protected AdData m(NetworkSettings networkSettings, String str) {
        return AdData.createAdDataForNetworkAdapter(K(networkSettings), this.o.getAdUnit(), str, this.J);
    }

    @Override // com.json.q1
    protected void t(int i, String str, boolean z) {
        if (!l0()) {
            super.t(i, str, z);
            return;
        }
        if (!z) {
            this.s.f6680g.b(t3.a(this.n), i, str);
            n.a().b(this.o.getAdUnit(), new IronSourceError(i, str), true);
        }
        if (this.I) {
            w(q1.f.SHOWING);
        }
        this.q.i();
    }

    @Override // com.json.q1
    protected void u(Context context, AuctionRequestParams auctionRequestParams, t0 t0Var) {
        if (this.c == null) {
            IronLog.INTERNAL.error(J("mAuctionHandler is null"));
        } else {
            auctionRequestParams.a(t0());
            this.c.a(context, auctionRequestParams, t0Var);
        }
    }

    boolean u0() {
        IronLog ironLog;
        String str;
        if (!this.J.isShown()) {
            ironLog = IronLog.INTERNAL;
            str = "banner or one of its parents are INVISIBLE or GONE";
        } else {
            if (this.J.hasWindowFocus()) {
                boolean globalVisibleRect = this.J.getGlobalVisibleRect(new Rect());
                IronLog.INTERNAL.verbose("visible = " + globalVisibleRect);
                return globalVisibleRect;
            }
            ironLog = IronLog.INTERNAL;
            str = "banner has no window focus";
        }
        ironLog.verbose(str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.json.q1
    /* JADX INFO: renamed from: w0, reason: merged with bridge method [inline-methods] */
    public j1 a(NetworkSettings networkSettings, BaseAdAdapter<?, AdapterAdViewListener> baseAdAdapter, int i, String str, d1 d1Var) {
        return new j1(this, new p(IronSource.AD_UNIT.BANNER, this.o.getUserId(), i, this.f6521g, str, this.f6519e, this.f6520f, networkSettings, this.o.getSmashLoadTimeout()), baseAdAdapter, this.J, this.i, l0(), d1Var, this);
    }

    boolean x0(IronSourceBannerLayout ironSourceBannerLayout) {
        return (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) ? false : true;
    }
}
