package com.json.mediationsdk.demandOnly;

import android.text.TextUtils;
import android.util.Log;
import com.json.AuctionRequestInstanceInfo;
import com.json.a1;
import com.json.a4;
import com.json.cb;
import com.json.d1;
import com.json.e9;
import com.json.environment.ContextProvider;
import com.json.h0;
import com.json.mediationsdk.AbstractAdapter;
import com.json.mediationsdk.AuctionRequestParams;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.d;
import com.json.mediationsdk.demandOnly.a;
import com.json.mediationsdk.demandOnly.j;
import com.json.mediationsdk.demandOnly.m;
import com.json.mediationsdk.demandOnly.n;
import com.json.mediationsdk.demandOnly.p;
import com.json.mediationsdk.e;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.sdk.RewardedVideoSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.t3;
import com.json.x3;
import com.json.y0;
import com.json.z6;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class l extends m implements n.b, RewardedVideoSmashListener, y0 {
    private t3 n;
    private t3 o;
    private ISDemandOnlyRewardedVideoListener p;
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
            IronLog.INTERNAL.verbose("load timed out state=" + l.this.k());
            l.this.r(new IronSourceError(1055, "load timed out"));
        }
    }

    l(String str, String str2, NetworkSettings networkSettings, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener, long j, AbstractAdapter abstractAdapter, e eVar) {
        super(new h0(networkSettings, networkSettings.getRewardedVideoSettings(), IronSource.AD_UNIT.REWARDED_VIDEO), abstractAdapter);
        this.s = new p.b();
        this.t = e9.h().d();
        this.u = e9.g().b();
        this.p = iSDemandOnlyRewardedVideoListener;
        this.f6310f = j;
        this.r = eVar;
        this.a.initRewardedVideoForDemandOnly(str, str2, this.c, this);
    }

    private void A() {
        if (!this.r.a()) {
            IronLog.INTERNAL.verbose("can't load the rewarded video the auction isn't enabled");
            r(new IronSourceError(1063, "Missing server configuration"));
            return;
        }
        q(j.c.INSTANCE_AUCTION_REQUEST, null);
        AuctionRequestParams auctionRequestParamsX = x();
        IronLog.INTERNAL.verbose("auction waterfallString = " + auctionRequestParamsX.getWaterfallString());
        q(j.c.INSTANCE_AUCTION_REQUEST_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, auctionRequestParamsX.getWaterfallString()}});
        this.r.a(ContextProvider.getInstance().getApplicationContext(), auctionRequestParamsX, this);
    }

    private void B() {
        this.f6311g = null;
        this.h = null;
        this.j = null;
        this.q = new a1();
    }

    private void C() {
        this.n = new t3();
        c(y());
        if (n()) {
            IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadRewardedVideo must be called by non bidder instances");
            q(j.a.LOAD_ERROR, null);
            r(ironSourceErrorBuildLoadFailedError);
        } else if (o()) {
            A();
        } else {
            z();
        }
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
        cb.i().a(new a4(i, new JSONObject(mapJ)));
    }

    private void s(IronSourceError ironSourceError, long j) {
        if (ironSourceError.getErrorCode() == 1058) {
            q(1213, new Object[][]{new Object[]{"duration", Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}});
        } else {
            q(1200, new Object[][]{new Object[]{"duration", Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}});
        }
    }

    private void t(List<String> list, String str) {
        b(list, h(), i(), this.j, str);
    }

    private void u(o oVar) {
        this.n = new t3();
        c(y());
        if (!n()) {
            r(new IronSourceError(j.a.LOAD_ERROR, "loadRewardedVideoWithAdm: must be called by bidder instance"));
            return;
        }
        try {
            d.a aVar = (d.a) oVar.a(new x3());
            d1 d1VarA = new a.C0358a(aVar.h()).a(h());
            if (d1VarA == null) {
                IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadRewardedVideoWithAdm invalid enriched adm");
                q(j.a.LOAD_ERROR, null);
                r(ironSourceErrorBuildLoadFailedError);
                return;
            }
            String strJ = d1VarA.j();
            if (strJ == null) {
                IronLog.INTERNAL.error("serverData is null");
                r(new IronSourceError(1062, "No available ad to load"));
                return;
            }
            b(strJ);
            a(aVar.a());
            a(aVar.f());
            q(j.c.INSTANCE_LOAD_WITH_ADM, null);
            this.q.a(d1VarA.b());
            this.o = new t3();
            this.a.loadRewardedVideoForBidding(this.c, null, strJ, this);
        } catch (Exception e2) {
            r(ErrorBuilder.buildLoadFailedError("loadRewardedVideoWithAdm: Exception= " + e2.getMessage()));
        }
    }

    private void v(String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        if (d(m.a.LOAD_IN_PROGRESS)) {
            if (str == null) {
                ironLog.verbose("serverData is null");
                r(new IronSourceError(1062, "No available ad to load"));
            } else {
                q(j.c.INSTANCE_LOAD_WITH_ADM, null);
                this.a.loadRewardedVideoForBidding(this.c, null, str, this);
            }
        }
    }

    private IronSourceError w() {
        return d(m.a.SHOW_IN_PROGRESS) ? new IronSourceError(1067, "showRewardedVideo error: can't show ad while an ad is already showing") : d(m.a.LOAD_IN_PROGRESS) ? new IronSourceError(1068, "showRewardedVideo error: can't show ad while an ad is loading") : new IronSourceError(1069, "showRewardedVideo error: no available ads to show");
    }

    private AuctionRequestParams x() {
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
        Map<String, Object> rewardedVideoBiddingData = this.a.getRewardedVideoBiddingData(this.c, new JSONObject());
        if (rewardedVideoBiddingData != null) {
            auctionRequestInstanceInfo.b(rewardedVideoBiddingData);
        }
        auctionRequestParams.a(auctionRequestInstanceInfo);
        return auctionRequestParams;
    }

    private TimerTask y() {
        return new a();
    }

    private void z() {
        this.o = new t3();
        this.a.loadRewardedVideo(this.c, null, this);
    }

    @Override // com.json.y0, com.json.t0
    public void a(int i, String str, int i2, String str2, long j) {
        IronLog.INTERNAL.verbose("Auction failed. error " + i + " - " + str);
        this.f6311g = null;
        this.h = null;
        q(j.c.INSTANCE_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"reason", str}, new Object[]{"duration", Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_EXT1, k()}});
        if (d(m.a.LOAD_IN_PROGRESS)) {
            r(new IronSourceError(j.a.INSTANCE_LOAD_AUCTION_FAILED, "No available ad to load"));
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
        q(j.c.INSTANCE_AUCTION_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
        q(j.c.INSTANCE_AUCTION_RESPONSE_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, c0358a.a()}});
        if (d(m.a.LOAD_IN_PROGRESS)) {
            if (!c0358a.isEmpty()) {
                v(strJ);
                return;
            }
            IronSourceError ironSourceError = new IronSourceError(1058, "There is no available ad to load");
            ironLog.error("rewardedVideo - empty waterfall");
            r(ironSourceError);
        }
    }

    @Override // com.json.y0, com.json.t0
    public void a(List<d1> list, String str, d1 d1Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog.INTERNAL.error("Deprecated: Please use onAuctionSuccess(AuctionDataUtils.AuctionData auctionData, int auctionTrial, long elapsedTime, int troubleshootingErrorCode, String troubleshootingErrorMessage)");
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.b
    public boolean a() {
        boolean zIsRewardedVideoAvailable = false;
        if (!d(m.a.LOADED)) {
            return false;
        }
        try {
            zIsRewardedVideoAvailable = this.a.isRewardedVideoAvailable(this.c);
            q(zIsRewardedVideoAvailable ? 1210 : 1211, null);
        } catch (Exception e2) {
            IronLog.INTERNAL.error("exception=" + e2.getMessage());
        }
        return zIsRewardedVideoAvailable;
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.b
    public void b(o oVar) {
        IronLog.INTERNAL.verbose("state=" + k());
        m.a aVar = m.a.NOT_LOADED;
        m.a aVar2 = m.a.LOADED;
        m.a aVar3 = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(new m.a[]{aVar, aVar2}, aVar3);
        if (aVarA != aVar && aVarA != aVar2) {
            r(new IronSourceError(1053, aVarA == aVar3 ? "load already in progress" : "cannot load because show is in progress"));
            return;
        }
        B();
        q(1001, null);
        u(oVar);
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.b
    public void d() {
        IronLog.INTERNAL.verbose("state=" + k());
        m.a aVar = m.a.NOT_LOADED;
        m.a aVar2 = m.a.LOADED;
        m.a aVar3 = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(new m.a[]{aVar, aVar2}, aVar3);
        if (aVarA != aVar && aVarA != aVar2) {
            this.p.onRewardedVideoAdLoadFailed(l(), new IronSourceError(1053, aVarA == aVar3 ? "load already in progress" : "cannot load because show is in progress"));
            return;
        }
        B();
        q(1001, null);
        C();
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.b
    public void e() {
        IronLog.INTERNAL.verbose("instanceName = " + h() + ", state=" + k());
        q(1201, null);
        if (e(m.a.LOADED, m.a.SHOW_IN_PROGRESS)) {
            this.a.showRewardedVideo(this.c, this);
        } else {
            onRewardedVideoAdShowFailed(w());
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        q(1006, new Object[0][]);
        this.p.onRewardedVideoAdClicked(l());
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClosed() {
        f(m.a.NOT_LOADED);
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        q(1203, new Object[][]{new Object[]{"sessionDepth", Integer.valueOf(this.t.a(this.m))}});
        this.u.b(this.m);
        this.p.onRewardedVideoAdClosed(l());
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdEnded() {
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdOpened() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        q(1005, new Object[0][]);
        t(this.q.a(), IronSourceUtils.getCurrentMethodName());
        this.p.onRewardedVideoAdOpened(l());
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdRewarded() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        Map<String, Object> mapJ = j();
        if (!TextUtils.isEmpty(com.json.mediationsdk.p.o().n())) {
            mapJ.put(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, com.json.mediationsdk.p.o().n());
        }
        if (com.json.mediationsdk.p.o().s() != null) {
            for (String str : com.json.mediationsdk.p.o().s().keySet()) {
                mapJ.put("custom_" + str, com.json.mediationsdk.p.o().s().get(str));
            }
        }
        Placement placementA = com.json.mediationsdk.p.o().k().b().getRewardedVideoConfigurations().a();
        if (placementA != null) {
            mapJ.put("placement", placementA.getPlacementName());
            mapJ.put(IronSourceConstants.EVENTS_REWARD_NAME, placementA.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_NAME java.lang.String());
            mapJ.put(IronSourceConstants.EVENTS_REWARD_AMOUNT, Integer.valueOf(placementA.getRewardAmount()));
        } else {
            IronLog.INTERNAL.error("defaultPlacement is null");
        }
        a4 a4Var = new a4(1010, new JSONObject(mapJ));
        a4Var.a(IronSourceConstants.EVENTS_TRANS_ID, IronSourceUtils.getTransId(a4Var.d(), h()));
        cb.i().a(a4Var);
        this.p.onRewardedVideoAdRewarded(l());
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose("error=" + ironSourceError.toString() + " instance name= " + h() + " state=" + k());
        f(m.a.NOT_LOADED);
        q(1202, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}});
        this.p.onRewardedVideoAdShowFailed(l(), ironSourceError);
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdStarted() {
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdVisible() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        q(1206, new Object[0][]);
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAvailabilityChanged(boolean z) {
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoInitFailed(IronSourceError ironSourceError) {
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoInitSuccess() {
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoLoadFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose("error=" + ironSourceError.getErrorMessage() + "instance name= " + h() + " state=" + k());
        q(j.c.INSTANCE_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(t3.a(this.o))}});
        r(ironSourceError);
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoLoadSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h() + " state=" + k());
        p();
        q(j.c.INSTANCE_LOAD_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(t3.a(this.o))}});
        if (e(m.a.LOAD_IN_PROGRESS, m.a.LOADED)) {
            q(1002, new Object[][]{new Object[]{"duration", Long.valueOf(t3.a(this.n))}});
            t(this.q.c(), IronSourceUtils.getCurrentMethodName());
            this.p.onRewardedVideoAdLoadSuccess(l());
        }
    }

    void r(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("instanceName = " + h() + ", error = " + ironSourceError.getErrorMessage());
        p();
        if (e(m.a.LOAD_IN_PROGRESS, m.a.NOT_LOADED)) {
            s(ironSourceError, t3.a(this.n));
            t(this.q.b(), IronSourceUtils.getCurrentMethodName());
            this.p.onRewardedVideoAdLoadFailed(l(), ironSourceError);
        }
    }
}
