package com.json.mediationsdk.demandOnly;

import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.json.a1;
import com.json.a4;
import com.json.d1;
import com.json.e9;
import com.json.environment.ContextProvider;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.h0;
import com.json.mediationsdk.AbstractAdapter;
import com.json.mediationsdk.AuctionRequestParams;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.d;
import com.json.mediationsdk.demandOnly.a;
import com.json.mediationsdk.demandOnly.b;
import com.json.mediationsdk.demandOnly.m;
import com.json.mediationsdk.e;
import com.json.mediationsdk.l;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.sdk.BannerSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.q7;
import com.json.t3;
import com.json.x3;
import com.json.y0;
import com.json.z6;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class d extends m implements BannerSmashListener, y0 {
    private t3 n;
    private t3 o;
    private String p;
    private String q;
    private a1 r;
    private e s;
    private ISDemandOnlyBannerLayout t;
    private final z6 u;
    private final z6.a v;

    class a implements Runnable {
        final /* synthetic */ AuctionRequestParams a;

        a(AuctionRequestParams auctionRequestParams) {
            this.a = auctionRequestParams;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.r(b.c.TROUBLESHOOTING_INSTANCE_AUCTION_REQUEST, null);
            IronLog.INTERNAL.verbose("auction waterfallString = " + this.a.getWaterfallString());
            d.this.r(b.c.TROUBLESHOOTING_INSTANCE_AUCTION_REQUEST_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, this.a.getWaterfallString()}});
            d.this.s.a(ContextProvider.getInstance().getApplicationContext(), this.a, d.this);
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            IronLog.INTERNAL.verbose("load timed out state=" + d.this.k());
            d.this.u(new IronSourceError(608, "load timed out"));
        }
    }

    public d(String str, String str2, NetworkSettings networkSettings, long j, AbstractAdapter abstractAdapter, e eVar) {
        super(new h0(networkSettings, networkSettings.getBannerSettings(), IronSource.AD_UNIT.BANNER), abstractAdapter);
        this.u = e9.h().d();
        this.v = e9.g().b();
        this.f6310f = j;
        this.p = str;
        this.q = str2;
        this.r = new a1();
        this.a.initBannerForBidding(str, str2, this.c, this);
        this.s = eVar;
    }

    private void A() {
        IronLog.INTERNAL.verbose();
        IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new a(y()));
    }

    private void B() {
        this.f6311g = null;
        this.h = null;
        this.r = new a1();
    }

    private void C() {
        IronLog.INTERNAL.verbose();
        c(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(int i, Object[][] objArr) {
        Map<String, Object> mapJ = j();
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    if (objArr2[1] != null) {
                        mapJ.put(objArr2[0].toString(), objArr2[1]);
                    }
                }
            } catch (Exception e2) {
                IronLog.INTERNAL.error(e2.getMessage());
            }
        }
        q7.i().a(new a4(i, new JSONObject(mapJ)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("error = " + ironSourceError.getErrorMessage() + " smash - " + s());
        if (e(m.a.LOAD_IN_PROGRESS, m.a.NOT_LOADED)) {
            p();
            v(ironSourceError, t3.a(this.n));
            w(this.r.b(), IronSourceUtils.getCurrentMethodName());
            if (z()) {
                return;
            }
            this.t.getListener().a(l(), ironSourceError);
        }
    }

    private void v(IronSourceError ironSourceError, long j) {
        if (ironSourceError.getErrorCode() == 606) {
            r(3306, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"duration", Long.valueOf(j)}});
        } else {
            r(3300, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(j)}});
        }
    }

    private void w(List<String> list, String str) {
        b(list, h(), i(), this.j, str);
    }

    private void x(String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        if (d(m.a.LOAD_IN_PROGRESS)) {
            if (str == null) {
                ironLog.verbose("serverData is null");
                u(new IronSourceError(618, "No available ad to load"));
            } else {
                r(b.c.TROUBLESHOOTING_INSTANCE_LOAD_WITH_ADM, null);
                this.o = new t3();
                this.a.initBannerForBidding(this.p, this.q, this.c, this);
                this.a.loadBannerForDemandOnlyForBidding(this.c, str, this.t, this);
            }
        }
    }

    private boolean z() {
        ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout = this.t;
        return iSDemandOnlyBannerLayout == null || iSDemandOnlyBannerLayout.isDestroyed();
    }

    @Override // com.json.y0, com.json.t0
    public void a(int i, String str, int i2, String str2, long j) {
        IronLog.INTERNAL.verbose("Auction failed. error " + i + " - " + str);
        this.f6311g = null;
        this.h = null;
        r(b.c.TROUBLESHOOTING_INSTANCE_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"reason", str}, new Object[]{"duration", Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_EXT1, k()}});
        if (d(m.a.LOAD_IN_PROGRESS)) {
            u(new IronSourceError(621, "No available ad to load"));
        }
    }

    @Override // com.json.y0
    public void a(d.a aVar, int i, long j, int i2, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        this.f6311g = aVar.a();
        this.h = aVar.f();
        a.C0358a c0358a = new a.C0358a(aVar.h());
        if (!TextUtils.isEmpty(str)) {
            r(88002, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{"reason", str}});
        }
        r(b.c.TROUBLESHOOTING_INSTANCE_AUCTION_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
        r(b.c.TROUBLESHOOTING_INSTANCE_AUCTION_RESPONSE_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, c0358a.a()}});
        if (d(m.a.LOAD_IN_PROGRESS)) {
            if (c0358a.isEmpty()) {
                IronSourceError ironSourceError = new IronSourceError(3306, "There is no available ad to load");
                ironLog.error("loadBanner - empty waterfall");
                u(ironSourceError);
                return;
            }
            d1 d1Var = c0358a.get(0);
            this.r.a(d1Var.b());
            this.r.c(d1Var.g());
            this.r.b(d1Var.f());
            String strJ = d1Var.j();
            b(strJ);
            x(strJ);
        }
    }

    public void a(ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("state=" + k());
        if (iSDemandOnlyBannerLayout == null) {
            r(b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", "bannerLayout is null | state: " + k()}});
            return;
        }
        m.a[] aVarArr = {m.a.NOT_LOADED, m.a.LOADED};
        m.a aVar = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(aVarArr, aVar);
        if (aVarA == aVar || aVarA == m.a.SHOW_IN_PROGRESS) {
            if (iSDemandOnlyBannerLayout.isDestroyed()) {
                r(b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", "bannerLayout is destroyed | state: " + k()}});
                return;
            }
            String str = "banner layout in blocking state | state: " + k();
            iSDemandOnlyBannerLayout.getListener().a(l(), new IronSourceError(619, str));
            r(b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", str}});
            return;
        }
        B();
        r(3002, null);
        if (!o()) {
            ironLog.verbose("can't load banner when isOneFlow = false");
            u(new IronSourceError(1063, "Missing configuration settings"));
            return;
        }
        this.t = iSDemandOnlyBannerLayout;
        this.n = new t3();
        C();
        if (this.s.a()) {
            A();
        } else {
            ironLog.verbose("can't load the banner the auction isn't enabled");
            u(new IronSourceError(1063, "Missing server configuration"));
        }
    }

    public void a(ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout, o oVar) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("state=" + k());
        if (iSDemandOnlyBannerLayout == null) {
            r(b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", "bannerLayout is null | state: " + k()}});
            return;
        }
        m.a[] aVarArr = {m.a.NOT_LOADED, m.a.LOADED};
        m.a aVar = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(aVarArr, aVar);
        if (aVarA == aVar || aVarA == m.a.SHOW_IN_PROGRESS) {
            if (iSDemandOnlyBannerLayout.isDestroyed()) {
                r(b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", "bannerLayout is destroyed | state: " + k()}});
                return;
            }
            String str = "banner layout in blocking state | state: " + k();
            iSDemandOnlyBannerLayout.getListener().a(l(), new IronSourceError(619, str));
            r(b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", str}});
            return;
        }
        B();
        r(3002, null);
        if (iSDemandOnlyBannerLayout.isDestroyed()) {
            u(new IronSourceError(610, "bannerLayout is destroyed"));
            return;
        }
        this.t = iSDemandOnlyBannerLayout;
        if (!n()) {
            IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadBannerForBidder in IAB flow must be called by bidder instances");
            r(3300, null);
            u(ironSourceErrorBuildLoadFailedError);
            return;
        }
        try {
            d.a aVar2 = (d.a) oVar.a(new x3());
            d1 d1VarA = new a.C0358a(aVar2.h()).a(h());
            if (d1VarA == null) {
                IronSourceError ironSourceErrorBuildLoadFailedError2 = ErrorBuilder.buildLoadFailedError("loadBannerForBidder invalid enriched ADM");
                r(3300, null);
                u(ironSourceErrorBuildLoadFailedError2);
                return;
            }
            String strJ = d1VarA.j();
            if (strJ == null) {
                ironLog.error("serverData is null");
                u(new IronSourceError(618, "No available ad to load"));
                return;
            }
            b(strJ);
            a(aVar2.a());
            a(aVar2.f());
            r(b.c.TROUBLESHOOTING_INSTANCE_LOAD_WITH_ADM, null);
            this.r.a(d1VarA.b());
            this.n = new t3();
            C();
            this.a.initBannerForBidding(this.p, this.q, this.c, this);
            this.a.loadBannerForDemandOnlyForBidding(this.c, strJ, iSDemandOnlyBannerLayout, this);
        } catch (Exception e2) {
            u(ErrorBuilder.buildLoadFailedError("loadBannerForBidder: Exception= " + e2.getMessage()));
        }
    }

    @Override // com.json.y0, com.json.t0
    public void a(List<d1> list, String str, d1 d1Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog.INTERNAL.error("onAuctionSuccess - Deprecated: Please use onAuctionSuccess(AuctionDataUtils.AuctionData auctionData, int auctionTrial, long elapsedTime, int troubleshootingErrorCode, String troubleshootingErrorMessage)");
    }

    @Override // com.json.mediationsdk.demandOnly.m
    public Map<String, Object> j() {
        HashMap map = new HashMap();
        try {
            if (z()) {
                map.put("reason", "banner is destroyed");
            } else {
                l.a(map, this.t.getSize());
            }
            AbstractAdapter abstractAdapter = this.a;
            map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, abstractAdapter != null ? abstractAdapter.getVersion() : "");
            AbstractAdapter abstractAdapter2 = this.a;
            map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, abstractAdapter2 != null ? abstractAdapter2.getCoreSDKVersion() : "");
            map.put(IronSourceConstants.EVENTS_SUB_PROVIDER_ID, this.b.i());
            map.put(IronSourceConstants.EVENTS_PROVIDER, this.b.a());
            map.put("isDemandOnly", 1);
            if (o()) {
                map.put("isOneFlow", 1);
            }
            map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
            map.put("instanceType", Integer.valueOf(this.b.d()));
            if (!TextUtils.isEmpty(this.f6311g)) {
                map.put("auctionId", this.f6311g);
            }
            JSONObject jSONObject = this.h;
            if (jSONObject != null && jSONObject.length() > 0) {
                map.put("genericParams", this.h);
            }
            if (!TextUtils.isEmpty(this.j)) {
                map.put(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID, this.j);
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error("Instance: " + h() + " " + e2.getMessage());
        }
        return map;
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdClicked() {
        IronLog.INTERNAL.verbose("smash - " + s());
        r(3008, null);
        if (z()) {
            return;
        }
        this.t.getListener().a(l());
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLeftApplication() {
        IronLog.INTERNAL.verbose("smash - " + s());
        r(3304, null);
        if (z()) {
            return;
        }
        this.t.getListener().b(l());
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLoadFailed(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("smash - " + s());
        r(b.c.TROUBLESHOOTING_INSTANCE_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(t3.a(this.o))}});
        u(ironSourceError);
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLoaded(View view, FrameLayout.LayoutParams layoutParams) {
        IronLog.INTERNAL.verbose("smash = " + s());
        z6 z6Var = this.u;
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
        int iA = z6Var.a(ad_unit);
        r(b.c.TROUBLESHOOTING_INSTANCE_LOAD_SUCCESS, new Object[][]{new Object[]{"sessionDepth", Integer.valueOf(iA)}, new Object[]{"duration", Long.valueOf(t3.a(this.o))}});
        if (e(m.a.LOAD_IN_PROGRESS, m.a.LOADED)) {
            p();
            if (!z()) {
                this.t.c(view, layoutParams);
            }
            r(3005, new Object[][]{new Object[]{"sessionDepth", Integer.valueOf(iA)}, new Object[]{"duration", Long.valueOf(t3.a(this.n))}});
            this.v.b(ad_unit);
            w(this.r.c(), IronSourceUtils.getCurrentMethodName());
            if (z()) {
                return;
            }
            this.t.getListener().c(l());
        }
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdScreenDismissed() {
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdScreenPresented() {
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdShown() {
        if (e(m.a.LOADED, m.a.SHOW_IN_PROGRESS)) {
            IronLog.INTERNAL.verbose("smash - " + s());
            r(3009, null);
            w(this.r.a(), IronSourceUtils.getCurrentMethodName());
            if (z()) {
                return;
            }
            this.t.getListener().d(l());
        }
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitFailed(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("smash - " + s() + " " + ironSourceError.toString());
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitSuccess() {
        IronLog.INTERNAL.verbose("smash - " + s());
    }

    public void r() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        a(new m.a[]{m.a.LOADED, m.a.LOAD_IN_PROGRESS, m.a.SHOW_IN_PROGRESS}, m.a.NOT_LOADED);
        if (z()) {
            ironLog.error("Banner is null or already destroyed and can't be used anymore");
            return;
        }
        p();
        ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout = this.t;
        if (iSDemandOnlyBannerLayout != null) {
            iSDemandOnlyBannerLayout.b();
        }
        this.t = null;
        AbstractAdapter abstractAdapter = this.a;
        if (abstractAdapter == null) {
            ironLog.error("can't destroy adapter. mAdapter == null");
        } else {
            abstractAdapter.destroyBanner(this.c);
        }
        r(3305, null);
        ironLog.verbose("banner layout was destroyed. bannerId: " + l());
    }

    public String s() {
        return this.b.h().isMultipleInstances() ? this.b.h().getProviderTypeForReflection() : this.b.h().getProviderName();
    }

    AuctionRequestParams y() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(h());
        String str = "" + i() + h();
        AuctionRequestParams auctionRequestParams = new AuctionRequestParams(IronSource.AD_UNIT.BANNER);
        auctionRequestParams.a(arrayList);
        auctionRequestParams.b(str);
        auctionRequestParams.a(l());
        auctionRequestParams.b(IronSourceUtils.isEncryptedResponse());
        auctionRequestParams.a(true);
        auctionRequestParams.c(true);
        auctionRequestParams.a(this.t.getSize());
        return auctionRequestParams;
    }
}
