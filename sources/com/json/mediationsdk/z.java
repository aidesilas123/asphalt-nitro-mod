package com.json.mediationsdk;

import android.text.TextUtils;
import com.json.a4;
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
import com.json.mediationsdk.sdk.InterstitialSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import com.json.q7;
import com.json.sa;
import com.json.z1;
import java.util.Date;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class z extends a0 implements InterstitialSmashListener, z1 {
    private b h;
    private sa i;
    private Timer j;
    private int k;
    private String l;
    private String m;
    private long n;
    private JSONObject o;
    private final Object p;
    private boolean q;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            z.this.a("timed out state=" + z.this.h.name() + " isBidder=" + z.this.p());
            if (z.this.h == b.INIT_IN_PROGRESS && z.this.p()) {
                z.this.u(b.NO_INIT);
                return;
            }
            z.this.u(b.LOAD_FAILED);
            z.this.i.a(ErrorBuilder.buildLoadFailedError("timed out"), z.this, new Date().getTime() - z.this.n);
        }
    }

    protected enum b {
        NO_INIT,
        INIT_IN_PROGRESS,
        INIT_SUCCESS,
        LOAD_IN_PROGRESS,
        LOADED,
        LOAD_FAILED
    }

    public z(String str, String str2, NetworkSettings networkSettings, sa saVar, int i, AbstractAdapter abstractAdapter) {
        super(new h0(networkSettings, networkSettings.getInterstitialSettings(), IronSource.AD_UNIT.INTERSTITIAL), abstractAdapter);
        this.p = new Object();
        this.h = b.NO_INIT;
        this.l = str;
        this.m = str2;
        this.i = saVar;
        this.j = null;
        this.k = i;
        this.o = null;
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
        synchronized (this.p) {
            a("start timer");
            E();
            Timer timer = new Timer();
            this.j = timer;
            timer.schedule(new a(), this.k * 1000);
        }
    }

    private void E() {
        synchronized (this.p) {
            Timer timer = this.j;
            if (timer != null) {
                timer.cancel();
                this.j = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(b bVar) {
        a("current state=" + this.h + ", new state=" + bVar);
        this.h = bVar;
    }

    private void y(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "ProgIsSmash " + c() + " : " + str, 0);
    }

    @Override // com.json.z1
    public Map<String, Object> a(AdData adData) {
        JSONObject jSONObjectA = adData != null ? k8.a(adData.getAdUnitData()) : null;
        if (p()) {
            return this.a.getInterstitialBiddingData(this.f6233d, jSONObjectA);
        }
        return null;
    }

    public void a(int i, Object[][] objArr) {
        Map<String, Object> mapM = m();
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    mapM.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                b("IS sendProviderEvent " + e2.getMessage());
            }
        }
        q7.i().a(new a4(i, new JSONObject(mapM)));
    }

    @Override // com.json.z1
    public void a(AdData adData, BiddingDataCallback biddingDataCallback) {
        a(IronSourceConstants.IS_INSTANCE_COLLECT_TOKEN, (Object[][]) null);
        try {
            this.a.collectInterstitialBiddingData(this.f6233d, adData != null ? k8.a(adData.getAdUnitData()) : null, biddingDataCallback);
        } catch (Throwable th) {
            b("collectBiddingData exception: " + th.getLocalizedMessage());
            th.printStackTrace();
        }
    }

    public void a(String str, JSONObject jSONObject) {
        try {
            this.n = new Date().getTime();
            this.o = jSONObject;
            a(o2.g.K);
            a(false);
            if (p()) {
                D();
                u(b.LOAD_IN_PROGRESS);
                this.a.loadInterstitialForBidding(this.f6233d, jSONObject, str, this);
            } else if (this.h != b.NO_INIT) {
                D();
                u(b.LOAD_IN_PROGRESS);
                this.a.loadInterstitial(this.f6233d, jSONObject, this);
            } else {
                D();
                u(b.INIT_IN_PROGRESS);
                C();
                this.a.initInterstitial(this.l, this.m, this.f6233d, this);
            }
        } catch (Throwable th) {
            b("loadInterstitial exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            onInterstitialAdLoadFailed(new IronSourceError(IronSourceConstants.errorCode_loadException, th.getLocalizedMessage()));
        }
    }

    @Override // com.json.mediationsdk.a0
    public IronSource.AD_UNIT d() {
        return IronSource.AD_UNIT.INTERSTITIAL;
    }

    @Override // com.json.mediationsdk.a0
    public String k() {
        return "ProgIsSmash";
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdClicked() {
        y("onInterstitialAdClicked");
        this.i.d(this);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdClosed() {
        y("onInterstitialAdClosed");
        this.i.c(this);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdLoadFailed(IronSourceError ironSourceError) {
        y("onInterstitialAdLoadFailed error=" + ironSourceError.getErrorMessage() + " state=" + this.h.name());
        E();
        if (this.h != b.LOAD_IN_PROGRESS) {
            return;
        }
        u(b.LOAD_FAILED);
        this.i.a(ironSourceError, this, new Date().getTime() - this.n);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdOpened() {
        y("onInterstitialAdOpened");
        this.i.a(this);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdReady() {
        y("onInterstitialAdReady state=" + this.h.name());
        E();
        if (this.h != b.LOAD_IN_PROGRESS) {
            return;
        }
        u(b.LOADED);
        this.i.a(this, new Date().getTime() - this.n);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdShowFailed(IronSourceError ironSourceError) {
        y("onInterstitialAdShowFailed error=" + ironSourceError.getErrorMessage());
        this.i.b(ironSourceError, this);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdShowSucceeded() {
        y("onInterstitialAdShowSucceeded");
        this.i.f(this);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdVisible() {
        y("onInterstitialAdVisible");
        this.i.e(this);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialInitFailed(IronSourceError ironSourceError) {
        y("onInterstitialInitFailed error" + ironSourceError.getErrorMessage() + " state=" + this.h.name());
        if (this.h != b.INIT_IN_PROGRESS) {
            return;
        }
        E();
        u(b.NO_INIT);
        this.i.a(ironSourceError, this);
        if (p()) {
            return;
        }
        this.i.a(ironSourceError, this, new Date().getTime() - this.n);
    }

    @Override // com.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialInitSuccess() {
        y("onInterstitialInitSuccess state=" + this.h.name());
        if (this.h != b.INIT_IN_PROGRESS) {
            return;
        }
        E();
        if (p() || this.q) {
            this.q = false;
            u(b.INIT_SUCCESS);
        } else {
            u(b.LOAD_IN_PROGRESS);
            D();
            try {
                this.a.loadInterstitial(this.f6233d, this.o, this);
            } catch (Throwable th) {
                b("onInterstitialInitSuccess exception: " + th.getLocalizedMessage());
                th.printStackTrace();
                onInterstitialAdLoadFailed(new IronSourceError(IronSourceConstants.errorCode_loadException, th.getLocalizedMessage()));
            }
        }
        this.i.b(this);
    }

    public void t() {
        a("isBidder = " + p() + ", shouldEarlyInit = " + s());
        this.q = true;
        u(b.INIT_IN_PROGRESS);
        C();
        try {
            if (p()) {
                this.a.initInterstitialForBidding(this.l, this.m, this.f6233d, this);
            } else {
                this.a.initInterstitial(this.l, this.m, this.f6233d, this);
            }
        } catch (Throwable th) {
            b(c() + " initForBidding exception : " + th.getLocalizedMessage());
            th.printStackTrace();
            onInterstitialInitFailed(new IronSourceError(IronSourceError.ERROR_IS_INSTANCE_INIT_EXCEPTION, th.getLocalizedMessage()));
        }
    }

    public boolean u() {
        b bVar = this.h;
        return bVar == b.INIT_IN_PROGRESS || bVar == b.LOAD_IN_PROGRESS;
    }

    public boolean v() {
        if (this.h != b.LOADED) {
            return false;
        }
        try {
            return this.a.isInterstitialReady(this.f6233d);
        } catch (Throwable th) {
            b("isReadyToShow exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            a(IronSourceConstants.TROUBLESHOOTING_IS_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_isReadyException)}, new Object[]{"reason", th.getLocalizedMessage()}});
            return false;
        }
    }

    public void x() {
        try {
            this.a.showInterstitial(this.f6233d, this);
        } catch (Throwable th) {
            b(c() + "showInterstitial exception : " + th.getLocalizedMessage());
            th.printStackTrace();
            onInterstitialAdShowFailed(new IronSourceError(IronSourceError.ERROR_IS_SHOW_EXCEPTION, th.getLocalizedMessage()));
        }
    }
}
