package com.json.mediationsdk;

import android.text.TextUtils;
import android.util.Log;
import com.json.a4;
import com.json.cb;
import com.json.e9;
import com.json.h0;
import com.json.k8;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.bidding.BiddingDataCallback;
import com.json.mediationsdk.config.ConfigFile;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.sdk.RewardedVideoSmashListener;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.u8;
import com.json.z1;
import com.json.z6;
import java.util.Date;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class r extends a0 implements RewardedVideoSmashListener, z1 {
    private b h;
    private u8 i;
    private Timer j;
    private int k;
    private String l;
    private String m;
    private Placement n;
    private long o;
    private String p;
    private JSONObject q;
    private int r;
    private String s;
    private final Object t;
    private final Object u;
    private long v;
    private final z6.a w;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            int i;
            boolean z;
            b bVar = r.this.h;
            b bVar2 = b.LOAD_IN_PROGRESS;
            String str = "Rewarded Video - load instance time out";
            if (bVar == bVar2 || r.this.h == b.INIT_IN_PROGRESS) {
                if (r.this.h == bVar2) {
                    i = 1025;
                } else {
                    i = IronSourceError.ERROR_RV_INIT_FAILED_TIMEOUT;
                    str = "Rewarded Video - init instance time out";
                }
                r.this.H(b.NOT_LOADED);
                z = true;
            } else {
                i = 510;
                z = false;
            }
            r.this.a(str);
            if (!z) {
                r.this.a(IronSourceConstants.RV_INSTANCE_AVAILABILITY_FALSE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1025}, new Object[]{"duration", Long.valueOf(r.this.N())}, new Object[]{IronSourceConstants.EVENTS_EXT1, r.this.h.name()}});
                return;
            }
            r.this.a(1200, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"duration", Long.valueOf(r.this.N())}});
            r.this.a(IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"reason", str}, new Object[]{"duration", Long.valueOf(r.this.N())}});
            r.this.i.c(r.this);
        }
    }

    protected enum b {
        NO_INIT,
        INIT_IN_PROGRESS,
        NOT_LOADED,
        LOAD_IN_PROGRESS,
        LOADED,
        SHOW_IN_PROGRESS,
        ENDED
    }

    public r(r rVar, u8 u8Var, AbstractAdapter abstractAdapter, int i, String str, JSONObject jSONObject, int i2, String str2) {
        this(rVar.l, rVar.m, rVar.b.h(), u8Var, rVar.k, abstractAdapter, i);
        this.p = str;
        this.q = jSONObject;
        this.r = i2;
        this.s = str2;
    }

    public r(String str, String str2, NetworkSettings networkSettings, u8 u8Var, int i, AbstractAdapter abstractAdapter, int i2) {
        super(new h0(networkSettings, networkSettings.getRewardedVideoSettings(), IronSource.AD_UNIT.REWARDED_VIDEO), abstractAdapter);
        this.t = new Object();
        this.u = new Object();
        this.w = e9.g().b();
        this.l = str;
        this.m = str2;
        this.i = u8Var;
        this.j = null;
        this.k = i;
        this.f6235f = i2;
        this.h = b.NO_INIT;
        this.v = 0L;
        if (r()) {
            t();
        }
    }

    private void C() {
        try {
            String pluginType = ConfigFile.getConfigFile().getPluginType();
            if (TextUtils.isEmpty(pluginType)) {
                return;
            }
            this.a.setPluginData(pluginType);
        } catch (Throwable th) {
            a("setCustomParams() " + th.getMessage());
        }
    }

    private void D() {
        synchronized (this.u) {
            Timer timer = new Timer();
            this.j = timer;
            timer.schedule(new a(), this.k * 1000);
        }
    }

    private void E() {
        synchronized (this.u) {
            Timer timer = this.j;
            if (timer != null) {
                timer.cancel();
                this.j = null;
            }
        }
    }

    private void G(int i, Object[][] objArr, boolean z) {
        Placement placement;
        Map<String, Object> mapM = m();
        if (!TextUtils.isEmpty(this.p)) {
            mapM.put("auctionId", this.p);
        }
        JSONObject jSONObject = this.q;
        if (jSONObject != null && jSONObject.length() > 0) {
            mapM.put("genericParams", this.q);
        }
        if (z && (placement = this.n) != null && !TextUtils.isEmpty(placement.getPlacementName())) {
            mapM.put("placement", this.n.getPlacementName());
        }
        if (M(i)) {
            cb.i().a(mapM, this.r, this.s);
        }
        mapM.put("sessionDepth", Integer.valueOf(this.f6235f));
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    mapM.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, c() + " smash: RV sendProviderEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        cb.i().a(new a4(i, new JSONObject(mapM)));
        if (i == 1203) {
            this.w.b(IronSource.AD_UNIT.REWARDED_VIDEO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(b bVar) {
        a("current state=" + this.h + ", new state=" + bVar);
        synchronized (this.t) {
            this.h = bVar;
        }
    }

    private void K(int i) {
        b(i, (Object[][]) null);
    }

    private boolean M(int i) {
        return i == 1001 || i == 1002 || i == 1200 || i == 1212 || i == 1213 || i == 1005 || i == 1203 || i == 1201 || i == 1202 || i == 1006 || i == 1010;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long N() {
        return new Date().getTime() - this.o;
    }

    private void t() {
        a("isBidder = " + p() + ", shouldEarlyInit = " + s());
        H(b.INIT_IN_PROGRESS);
        C();
        try {
            this.a.initRewardedVideoWithCallback(this.l, this.m, this.f6233d, this);
        } catch (Throwable th) {
            b("initForBidding exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            onRewardedVideoInitFailed(new IronSourceError(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, th.getLocalizedMessage()));
        }
    }

    public boolean A() {
        if (this.h != b.LOADED) {
            return false;
        }
        try {
            return this.a.isRewardedVideoAvailable(this.f6233d);
        } catch (Throwable th) {
            b("isReadyToShow exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            a(IronSourceConstants.TROUBLESHOOTING_RV_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_isReadyException)}, new Object[]{"reason", th.getLocalizedMessage()}});
            return false;
        }
    }

    public void B() {
        a(IronSourceConstants.RV_CAP_SESSION);
    }

    @Override // com.json.z1
    public Map<String, Object> a(AdData adData) {
        JSONObject jSONObjectA = adData != null ? k8.a(adData.getAdUnitData()) : null;
        if (p()) {
            return this.a.getRewardedVideoBiddingData(this.f6233d, jSONObjectA);
        }
        return null;
    }

    public void a(int i) {
        G(i, null, false);
    }

    public void a(int i, Object[][] objArr) {
        G(i, objArr, false);
    }

    @Override // com.json.z1
    public void a(AdData adData, BiddingDataCallback biddingDataCallback) {
        a(1020);
        try {
            this.a.collectRewardedVideoBiddingData(this.f6233d, adData != null ? k8.a(adData.getAdUnitData()) : null, biddingDataCallback);
        } catch (Throwable th) {
            b("collectBiddingData exception: " + th.getLocalizedMessage());
            th.printStackTrace();
        }
    }

    public void a(Placement placement) {
        E();
        a("showVideo()");
        this.n = placement;
        H(b.SHOW_IN_PROGRESS);
        K(1201);
        try {
            this.a.showRewardedVideo(this.f6233d, this);
        } catch (Throwable th) {
            b("showVideo exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            onRewardedVideoAdShowFailed(new IronSourceError(IronSourceError.ERROR_RV_SHOW_EXCEPTION, th.getLocalizedMessage()));
        }
    }

    public void a(String str, JSONObject jSONObject) {
        b bVar;
        b bVar2;
        a("loadVideo() auctionId: " + this.p + " state: " + this.h);
        this.f6236g = null;
        a(false);
        synchronized (this.t) {
            bVar = this.h;
            bVar2 = b.LOAD_IN_PROGRESS;
            if (bVar != bVar2 && bVar != b.SHOW_IN_PROGRESS) {
                H(bVar2);
            }
        }
        if (bVar == bVar2) {
            a(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_loadInProgress)}, new Object[]{"reason", "load during load"}});
            return;
        }
        if (bVar == b.SHOW_IN_PROGRESS) {
            a(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_showInProgress)}, new Object[]{"reason", "load during show"}});
            return;
        }
        D();
        this.o = new Date().getTime();
        a(1001);
        try {
            if (p()) {
                this.a.loadRewardedVideoForBidding(this.f6233d, jSONObject, str, this);
            } else {
                C();
                this.a.initAndLoadRewardedVideo(this.l, this.m, this.f6233d, jSONObject, this);
            }
        } catch (Throwable th) {
            b("loadVideo exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            a(IronSourceConstants.TROUBLESHOOTING_RV_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(p() ? IronSourceConstants.errorCode_loadException : IronSourceConstants.errorCode_initFailed)}, new Object[]{"reason", th.getLocalizedMessage()}});
        }
    }

    public void b(int i, Object[][] objArr) {
        G(i, objArr, true);
    }

    public void b(boolean z) {
        Object[][] objArr = new Object[1][];
        Object[] objArr2 = new Object[2];
        objArr2[0] = "status";
        objArr2[1] = z ? "true" : "false";
        objArr[0] = objArr2;
        b(IronSourceConstants.RV_INSTANCE_SHOW_CHANCE, objArr);
    }

    @Override // com.json.mediationsdk.a0
    public IronSource.AD_UNIT d() {
        return IronSource.AD_UNIT.REWARDED_VIDEO;
    }

    @Override // com.json.mediationsdk.a0
    public String k() {
        return "LWSProgRvSmash";
    }

    @Override // com.json.mediationsdk.a0
    public int l() {
        return 2;
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClicked() {
        a("onRewardedVideoAdClicked");
        this.i.b(this, this.n);
        K(1006);
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClosed() {
        a("onRewardedVideoAdClosed");
        synchronized (this.t) {
            if (this.h == b.SHOW_IN_PROGRESS) {
                H(b.ENDED);
                this.v = new Date().getTime();
                this.i.b(this);
            } else {
                K(1203);
                a(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_adClosed)}, new Object[]{"reason", "adClosed: " + this.h}});
            }
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdEnded() {
        a("onRewardedVideoAdEnded");
        this.i.f(this);
        K(IronSourceConstants.RV_INSTANCE_ENDED);
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdOpened() {
        a("onRewardedVideoAdOpened");
        this.i.d(this);
        K(1005);
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdRewarded() {
        a("onRewardedVideoAdRewarded");
        long time = new Date().getTime();
        this.i.a(this, this.n);
        Map<String, Object> mapM = m();
        Placement placement = this.n;
        if (placement != null) {
            mapM.put("placement", placement.getPlacementName());
            mapM.put(IronSourceConstants.EVENTS_REWARD_NAME, this.n.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_NAME java.lang.String());
            mapM.put(IronSourceConstants.EVENTS_REWARD_AMOUNT, Integer.valueOf(this.n.getRewardAmount()));
        }
        if (!TextUtils.isEmpty(p.o().n())) {
            mapM.put(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, p.o().n());
        }
        if (p.o().s() != null) {
            for (String str : p.o().s().keySet()) {
                mapM.put("custom_" + str, p.o().s().get(str));
            }
        }
        if (!TextUtils.isEmpty(this.p)) {
            mapM.put("auctionId", this.p);
        }
        JSONObject jSONObject = this.q;
        if (jSONObject != null && jSONObject.length() > 0) {
            mapM.put("genericParams", this.q);
        }
        if (M(1010)) {
            cb.i().a(mapM, this.r, this.s);
        }
        mapM.put("sessionDepth", Integer.valueOf(this.f6235f));
        a4 a4Var = new a4(1010, new JSONObject(mapM));
        a4Var.a(IronSourceConstants.EVENTS_TRANS_ID, IronSourceUtils.getTransId(a4Var.d(), c()));
        long j = this.v;
        if (j != 0) {
            long j2 = time - j;
            a("onRewardedVideoAdRewarded timeAfterClosed=" + j2);
            a4Var.a("duration", Long.valueOf(j2));
        }
        cb.i().a(a4Var);
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
        a("onRewardedVideoAdShowFailed error=" + ironSourceError.getErrorMessage());
        b(1202, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}});
        synchronized (this.t) {
            if (this.h == b.SHOW_IN_PROGRESS) {
                H(b.ENDED);
                this.i.a(ironSourceError, this);
                return;
            }
            a(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_showFailed)}, new Object[]{"reason", "showFailed: " + this.h}});
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdStarted() {
        a("onRewardedVideoAdStarted");
        this.i.a(this);
        K(IronSourceConstants.RV_INSTANCE_STARTED);
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdVisible() {
        a("onRewardedVideoAdVisible");
        K(1206);
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAvailabilityChanged(boolean z) {
        boolean z2;
        a("onRewardedVideoAvailabilityChanged available=" + z + " state=" + this.h.name());
        synchronized (this.t) {
            if (this.h == b.LOAD_IN_PROGRESS) {
                H(z ? b.LOADED : b.NOT_LOADED);
                z2 = false;
            } else {
                z2 = true;
            }
        }
        if (z2) {
            if (z) {
                a(IronSourceConstants.RV_INSTANCE_AVAILABILITY_TRUE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, this.h.name()}});
                return;
            } else {
                a(IronSourceConstants.RV_INSTANCE_AVAILABILITY_FALSE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_RV_LOAD_UNEXPECTED_CALLBACK)}, new Object[]{"duration", Long.valueOf(N())}, new Object[]{IronSourceConstants.EVENTS_EXT1, this.h.name()}});
                return;
            }
        }
        E();
        a(z ? 1002 : 1200, new Object[][]{new Object[]{"duration", Long.valueOf(N())}});
        if (z) {
            this.i.e(this);
        } else {
            this.i.c(this);
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoInitFailed(IronSourceError ironSourceError) {
        a("onRewardedVideoInitFailed error=" + ironSourceError.getErrorMessage());
        E();
        a(1200, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_RV_LOAD_FAIL_DUE_TO_INIT)}, new Object[]{"duration", Long.valueOf(N())}});
        a(IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(N())}});
        synchronized (this.t) {
            if (this.h == b.INIT_IN_PROGRESS) {
                H(b.NO_INIT);
                this.i.c(this);
                return;
            }
            a(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_initFailed)}, new Object[]{"reason", "initFailed: " + this.h}});
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoInitSuccess() {
        a("onRewardedVideoInitSuccess");
        synchronized (this.t) {
            if (this.h == b.INIT_IN_PROGRESS) {
                H(b.NOT_LOADED);
                return;
            }
            a(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_initSuccess)}, new Object[]{"reason", "initSuccess: " + this.h}});
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoLoadFailed(IronSourceError ironSourceError) {
        if (ironSourceError.getErrorCode() == 1058) {
            a(1213, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"duration", Long.valueOf(N())}});
            return;
        }
        if (ironSourceError.getErrorCode() == 1057) {
            this.f6236g = Long.valueOf(System.currentTimeMillis());
        }
        a(IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(N())}});
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoLoadSuccess() {
    }

    public String u() {
        return this.p;
    }

    public LoadWhileShowSupportState w() {
        try {
            return this.a.getLoadWhileShowSupportState(this.f6233d);
        } catch (Throwable th) {
            b("Exception while calling adapter.getLoadWhileShowSupportState() - " + th.getLocalizedMessage());
            return LoadWhileShowSupportState.NONE;
        }
    }

    public Placement x() {
        return this.n;
    }

    public boolean y() {
        return this.h == b.LOADED;
    }

    public boolean z() {
        b bVar = this.h;
        return bVar == b.INIT_IN_PROGRESS || bVar == b.LOAD_IN_PROGRESS;
    }
}
