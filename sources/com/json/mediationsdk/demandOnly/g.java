package com.json.mediationsdk.demandOnly;

import android.text.TextUtils;
import android.util.Log;
import com.json.AuctionRequestInstanceInfo;
import com.json.a1;
import com.json.a4;
import com.json.d1;
import com.json.e9;
import com.json.environment.ContextProvider;
import com.json.h0;
import com.json.mediationsdk.AbstractAdapter;
import com.json.mediationsdk.AuctionRequestParams;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.d;
import com.json.mediationsdk.demandOnly.a;
import com.json.mediationsdk.demandOnly.e;
import com.json.mediationsdk.demandOnly.m;
import com.json.mediationsdk.demandOnly.n;
import com.json.mediationsdk.demandOnly.p;
import com.json.mediationsdk.e;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.sdk.InterstitialSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.q7;
import com.json.t3;
import com.json.x3;
import com.json.y0;
import com.json.z6;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class g extends m implements n.a, InterstitialSmashListener, y0 {
    private t3 n;
    private t3 o;
    private ISDemandOnlyInterstitialListener p;
    private a1 q;
    private e r;
    private p s;
    private final z6 t;
    private final z6.a u;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            IronLog.INTERNAL.verbose("load timed out state=" + g.this.k());
            g.this.r(new IronSourceError(1052, "load timed out"));
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            IronLog.INTERNAL.verbose("load timed out state=" + g.this.k());
            g.this.r(new IronSourceError(1052, "load timed out"));
        }
    }

    public g(String str, String str2, NetworkSettings networkSettings, ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListener, long j, AbstractAdapter abstractAdapter, e eVar) {
        super(new h0(networkSettings, networkSettings.getInterstitialSettings(), IronSource.AD_UNIT.INTERSTITIAL), abstractAdapter);
        this.s = new p.b();
        this.t = e9.h().d();
        this.u = e9.g().b();
        this.p = iSDemandOnlyInterstitialListener;
        this.f6310f = j;
        this.r = eVar;
        this.a.initInterstitial(str, str2, this.c, this);
    }

    private void q(int i, Object[][] objArr) {
        Map<String, Object> mapJ = j();
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    mapJ.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronLog.INTERNAL.error("Exception: " + Log.getStackTraceString(e2));
            }
        }
        q7.i().a(new a4(i, new JSONObject(mapJ)));
    }

    private void r() {
        this.o = new t3();
        this.a.loadInterstitial(this.c, null, this);
    }

    private void s(IronSourceError ironSourceError, long j) {
        if (ironSourceError.getErrorCode() == 1158) {
            q(2213, new Object[][]{new Object[]{"duration", Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}});
        } else {
            q(2200, new Object[][]{new Object[]{"duration", Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}});
        }
    }

    private void t(List<String> list, String str) {
        b(list, h(), i(), this.j, str);
    }

    private void u(o oVar) {
        this.n = new t3();
        c(new a());
        if (!n()) {
            r(new IronSourceError(2303, "loadInterstitialWithAdm: must be called by bidder instance"));
            return;
        }
        try {
            d.a aVar = (d.a) oVar.a(new x3());
            d1 d1VarA = new a.C0358a(aVar.h()).a(h());
            if (d1VarA == null) {
                IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadInterstitialWithAdm invalid enriched adm");
                q(2303, null);
                r(ironSourceErrorBuildLoadFailedError);
                return;
            }
            String strJ = d1VarA.j();
            if (strJ == null) {
                IronLog.INTERNAL.error("serverData is null");
                r(new IronSourceError(e.a.ERROR_INSTANCE_LOAD_EMPTY_SERVER_DATA, "No available ad to load"));
                return;
            }
            b(strJ);
            a(aVar.a());
            a(aVar.f());
            q(e.c.TROUBLESHOOTING_INSTANCE_LOAD_WITH_ADM, null);
            this.q.a(d1VarA.b());
            this.o = new t3();
            this.a.loadInterstitialForBidding(this.c, null, strJ, this);
        } catch (Exception e2) {
            r(ErrorBuilder.buildLoadFailedError("loadInterstitialWithAdm: Exception= " + e2.getMessage()));
        }
    }

    private void v(String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        if (d(m.a.LOAD_IN_PROGRESS)) {
            if (str == null) {
                ironLog.verbose("serverData is null");
                r(new IronSourceError(e.a.ERROR_INSTANCE_LOAD_EMPTY_SERVER_DATA, "No available ad to load"));
            } else {
                q(e.c.TROUBLESHOOTING_INSTANCE_LOAD_WITH_ADM, null);
                this.a.loadInterstitialForBidding(this.c, null, str, this);
            }
        }
    }

    private AuctionRequestParams w() {
        String str = i() + h();
        AuctionRequestParams auctionRequestParams = new AuctionRequestParams(this.m);
        auctionRequestParams.b(IronSourceUtils.isEncryptedResponse());
        auctionRequestParams.a(true);
        auctionRequestParams.c(true);
        auctionRequestParams.b(str);
        auctionRequestParams.a(l());
        auctionRequestParams.a(this.t.a(this.m));
        AuctionRequestInstanceInfo auctionRequestInstanceInfo = new AuctionRequestInstanceInfo(h(), false);
        auctionRequestInstanceInfo.a(this.s.getPlumbus());
        Map<String, Object> interstitialBiddingData = this.a.getInterstitialBiddingData(this.c, new JSONObject());
        if (interstitialBiddingData != null) {
            auctionRequestInstanceInfo.b(interstitialBiddingData);
        }
        auctionRequestParams.a(auctionRequestInstanceInfo);
        return auctionRequestParams;
    }

    private void x() {
        if (!this.r.a()) {
            IronLog.INTERNAL.verbose("can't load the interstitial the auction isn't enabled");
            r(new IronSourceError(1063, "Missing server configuration"));
            return;
        }
        q(e.c.TROUBLESHOOTING_INSTANCE_AUCTION_REQUEST, null);
        AuctionRequestParams auctionRequestParamsW = w();
        IronLog.INTERNAL.verbose("auction waterfallString = " + auctionRequestParamsW.getWaterfallString());
        q(e.c.TROUBLESHOOTING_INSTANCE_AUCTION_REQUEST_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, auctionRequestParamsW.getWaterfallString()}});
        this.r.a(ContextProvider.getInstance().getApplicationContext(), auctionRequestParamsW, this);
    }

    private void y() {
        this.f6311g = null;
        this.h = null;
        this.j = null;
        this.q = new a1();
    }

    private void z() {
        this.n = new t3();
        c(new b());
        if (n()) {
            IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadInterstitial must be called by non bidder instances");
            q(2303, null);
            r(ironSourceErrorBuildLoadFailedError);
        } else if (o()) {
            x();
        } else {
            r();
        }
    }

    @Override // com.json.y0, com.json.t0
    public void a(int i, String str, int i2, String str2, long j) {
        IronLog.INTERNAL.verbose("error " + i + " - " + str);
        this.f6311g = null;
        this.h = null;
        q(e.c.TROUBLESHOOTING_INSTANCE_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"reason", str}, new Object[]{"duration", Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_EXT1, k()}});
        if (d(m.a.LOAD_IN_PROGRESS)) {
            r(new IronSourceError(e.a.ERROR_INSTANCE_LOAD_AUCTION_FAILED, "No available ad to load"));
        }
    }

    @Override // com.json.y0
    public void a(d.a aVar, int i, long j, int i2, String str) {
        String strJ;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        this.f6311g = aVar.a();
        this.h = aVar.f();
        this.s = aVar.a(l());
        a.C0358a c0358a = new a.C0358a(aVar.h());
        if (c0358a.isEmpty()) {
            strJ = "";
        } else {
            d1 d1Var = c0358a.get(0);
            this.q.a(d1Var.b());
            this.q.c(d1Var.g());
            this.q.b(d1Var.f());
            strJ = d1Var.j();
            b(strJ);
        }
        if (!TextUtils.isEmpty(str)) {
            q(88002, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{"reason", str}});
        }
        q(e.c.TROUBLESHOOTING_INSTANCE_AUCTION_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
        q(e.c.TROUBLESHOOTING_INSTANCE_AUCTION_RESPONSE_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, c0358a.a()}});
        if (d(m.a.LOAD_IN_PROGRESS)) {
            if (!c0358a.isEmpty()) {
                v(strJ);
                return;
            }
            IronSourceError ironSourceError = new IronSourceError(1158, "There is no available ad to load");
            ironLog.error("interstitial - empty waterfall");
            r(ironSourceError);
        }
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.a
    public void a(o oVar) {
        IronLog.INTERNAL.verbose("state=" + k());
        m.a aVar = m.a.NOT_LOADED;
        m.a aVar2 = m.a.LOADED;
        m.a aVar3 = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(new m.a[]{aVar, aVar2}, aVar3);
        if (aVarA != aVar && aVarA != aVar2) {
            r(new IronSourceError(1050, aVarA == aVar3 ? "load already in progress" : "cannot load because show is in progress"));
            return;
        }
        y();
        q(2002, null);
        u(oVar);
    }

    @Override // com.json.y0, com.json.t0
    public void a(List<d1> list, String str, d1 d1Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog.INTERNAL.error("Deprecated: Please use onAuctionSuccess(AuctionDataUtils.AuctionData auctionData, int auctionTrial, long elapsedTime, int troubleshootingErrorCode, String troubleshootingErrorMessage)");
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.a
    public boolean a() {
        boolean zIsInterstitialReady = false;
        if (!d(m.a.LOADED)) {
            return false;
        }
        try {
            zIsInterstitialReady = this.a.isInterstitialReady(this.c);
            q(zIsInterstitialReady ? 2211 : 2212, null);
        } catch (Exception e2) {
            IronLog.INTERNAL.error("exception=" + e2.getMessage());
        }
        return zIsInterstitialReady;
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.a
    public void b() {
        IronLog.INTERNAL.verbose("instanceName = " + h() + ", state=" + k());
        q(2201, null);
        m.a aVar = m.a.LOADED;
        m.a aVar2 = m.a.SHOW_IN_PROGRESS;
        if (e(aVar, aVar2)) {
            this.a.showInterstitial(this.c, this);
        } else {
            onInterstitialAdShowFailed(d(aVar2) ? new IronSourceError(1064, "showInterstitial error: can't show ad while an ad is already showing") : d(m.a.LOAD_IN_PROGRESS) ? new IronSourceError(1065, "showInterstitial error: can't show ad while an ad is loading") : new IronSourceError(1066, "showInterstitial error: no available ads to show"));
        }
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.a
    public void c() {
        IronLog.INTERNAL.verbose("state=" + k());
        m.a aVar = m.a.NOT_LOADED;
        m.a aVar2 = m.a.LOADED;
        m.a aVar3 = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(new m.a[]{aVar, aVar2}, aVar3);
        if (aVarA != aVar && aVarA != aVar2) {
            this.p.onInterstitialAdLoadFailed(l(), new IronSourceError(1050, aVarA == aVar3 ? "load already in progress" : "cannot load because show is in progress"));
            return;
        }
        y();
        q(2002, null);
        z();
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        q(2006, new Object[0][]);
        this.p.onInterstitialAdClicked(l());
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdClosed() {
        f(m.a.NOT_LOADED);
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        q(2204, new Object[][]{new Object[]{"sessionDepth", Integer.valueOf(this.t.a(this.m))}});
        this.u.b(this.m);
        this.p.onInterstitialAdClosed(l());
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdLoadFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose("error=" + ironSourceError.getErrorMessage() + " instance name= " + h() + " state=" + k());
        q(e.c.TROUBLESHOOTING_INSTANCE_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(t3.a(this.o))}});
        r(ironSourceError);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdOpened() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        q(2005, new Object[0][]);
        t(this.q.a(), IronSourceUtils.getCurrentMethodName());
        this.p.onInterstitialAdOpened(l());
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdReady() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h() + " state=" + k());
        p();
        q(e.c.TROUBLESHOOTING_INSTANCE_LOAD_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(t3.a(this.o))}});
        if (e(m.a.LOAD_IN_PROGRESS, m.a.LOADED)) {
            q(2003, new Object[][]{new Object[]{"duration", Long.valueOf(t3.a(this.n))}});
            t(this.q.c(), IronSourceUtils.getCurrentMethodName());
            this.p.onInterstitialAdReady(l());
        }
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdShowFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose("error=" + ironSourceError.toString() + " instance name= " + h() + " state=" + k());
        f(m.a.NOT_LOADED);
        q(2203, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}});
        this.p.onInterstitialAdShowFailed(l(), ironSourceError);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdShowSucceeded() {
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdVisible() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        q(2210, new Object[0][]);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialInitFailed(IronSourceError ironSourceError) {
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialInitSuccess() {
    }

    void r(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("instanceName = " + h() + ", error = " + ironSourceError.getErrorMessage());
        p();
        if (e(m.a.LOAD_IN_PROGRESS, m.a.NOT_LOADED)) {
            s(ironSourceError, t3.a(this.n));
            t(this.q.b(), IronSourceUtils.getCurrentMethodName());
            this.p.onInterstitialAdLoadFailed(l(), ironSourceError);
        }
    }
}
