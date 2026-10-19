package com.json.mediationsdk;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.json.a4;
import com.json.h0;
import com.json.k8;
import com.json.m1;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.bidding.BiddingDataCallback;
import com.json.mediationsdk.config.ConfigFile;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.sdk.BannerSmashListener;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.q7;
import com.json.ra;
import com.json.t3;
import com.json.ub;
import com.json.z1;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class x extends a0 implements BannerSmashListener, ub.a, z1 {
    private k h;
    private ub i;
    private a j;
    private ra k;
    private IronSourceBannerLayout l;
    private String m;
    private JSONObject n;
    private int o;
    private String p;
    private m1 q;
    private final Object r;
    private t3 s;
    private boolean t;
    private boolean u;
    private JSONObject v;

    protected enum a {
        NONE,
        INIT_IN_PROGRESS,
        READY_TO_LOAD,
        LOADING,
        LOADED,
        LOAD_FAILED,
        DESTROYED
    }

    x(k kVar, ra raVar, NetworkSettings networkSettings, AbstractAdapter abstractAdapter, int i, String str, JSONObject jSONObject, int i2, String str2, boolean z) {
        super(new h0(networkSettings, networkSettings.getBannerSettings(), IronSource.AD_UNIT.BANNER), abstractAdapter);
        this.r = new Object();
        this.j = a.NONE;
        this.h = kVar;
        this.i = new ub(kVar.e());
        this.k = raVar;
        this.f6235f = i;
        this.m = str;
        this.o = i2;
        this.p = str2;
        this.n = jSONObject;
        this.t = z;
        this.v = null;
        if (r()) {
            K();
        }
    }

    x(k kVar, ra raVar, NetworkSettings networkSettings, AbstractAdapter abstractAdapter, int i, boolean z) {
        this(kVar, raVar, networkSettings, abstractAdapter, i, "", null, 0, "", z);
    }

    private void C() {
        IronLog.INTERNAL.verbose();
        H(a.INIT_IN_PROGRESS);
        F();
        try {
            if (this.a != null) {
                if (p()) {
                    this.a.initBannerForBidding(this.h.a(), this.h.j(), this.f6233d, this);
                } else {
                    this.a.initBanners(this.h.a(), this.h.j(), this.f6233d, this);
                }
            }
        } catch (Throwable th) {
            IronLog.INTERNAL.error("Exception while trying to init banner from " + this.a.getProviderName() + ", exception =  " + th.getLocalizedMessage());
            th.printStackTrace();
            onBannerInitFailed(new IronSourceError(612, th.getLocalizedMessage()));
            a(IronSourceConstants.TROUBLESHOOTING_BN_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_initFailed)}, new Object[]{"reason", th.getLocalizedMessage()}});
        }
    }

    private boolean D() {
        boolean z;
        synchronized (this.r) {
            z = this.j == a.DESTROYED;
        }
        return z;
    }

    private boolean E() {
        boolean z;
        synchronized (this.r) {
            z = this.j == a.LOADED;
        }
        return z;
    }

    private void F() {
        if (this.a == null) {
            return;
        }
        try {
            String pluginType = ConfigFile.getConfigFile().getPluginType();
            if (TextUtils.isEmpty(pluginType)) {
                return;
            }
            this.a.setPluginData(pluginType);
        } catch (Throwable th) {
            IronLog.INTERNAL.error("Exception while trying to set custom params from " + this.a.getProviderName() + ", exception =  " + th.getLocalizedMessage());
            th.printStackTrace();
            a(IronSourceConstants.TROUBLESHOOTING_BN_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_internal)}, new Object[]{"reason", th.getLocalizedMessage()}});
        }
    }

    private void G(IronSourceError ironSourceError) {
        boolean z = ironSourceError.getErrorCode() == 606;
        boolean z2 = this.t;
        if (z) {
            a(z2 ? IronSourceConstants.BN_INSTANCE_RELOAD_NO_FILL : 3306, new Object[][]{new Object[]{"duration", Long.valueOf(t3.a(this.s))}});
        } else {
            a(z2 ? IronSourceConstants.BN_INSTANCE_RELOAD_ERROR : 3300, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(t3.a(this.s))}});
        }
        ra raVar = this.k;
        if (raVar != null) {
            raVar.a(ironSourceError, this, z);
        }
    }

    private void H(a aVar) {
        IronLog.INTERNAL.verbose(y() + "state = " + aVar.name());
        synchronized (this.r) {
            this.j = aVar;
        }
    }

    private boolean I(a aVar, a aVar2) {
        boolean z;
        synchronized (this.r) {
            if (this.j == aVar) {
                IronLog.INTERNAL.verbose(y() + "set state from '" + this.j + "' to '" + aVar2 + "'");
                z = true;
                this.j = aVar2;
            } else {
                z = false;
            }
        }
        return z;
    }

    private boolean J(int i) {
        return i == 3005 || i == 3002 || i == 3012 || i == 3015 || i == 3008 || i == 3305 || i == 3300 || i == 3306 || i == 3307 || i == 3302 || i == 3303 || i == 3304 || i == 3009;
    }

    private void K() {
        IronLog.INTERNAL.verbose("isBidder = " + p() + ", shouldEarlyInit = " + s());
        this.u = true;
        C();
    }

    private void a(String str, JSONObject jSONObject) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(f());
        if (!I(a.READY_TO_LOAD, a.LOADING)) {
            ironLog.error("wrong state - state = " + this.j);
            return;
        }
        this.s = new t3();
        a(this.t ? IronSourceConstants.BN_INSTANCE_RELOAD : 3002);
        if (this.a != null) {
            try {
                if (p()) {
                    this.a.loadBannerForBidding(this.f6233d, this.v, str, this.l, this);
                } else {
                    this.a.loadBanner(this.f6233d, this.v, this.l, this);
                }
            } catch (Throwable th) {
                IronLog.INTERNAL.error("Exception while trying to load banner from " + this.a.getProviderName() + ", exception =  " + th.getLocalizedMessage());
                th.printStackTrace();
                onBannerAdLoadFailed(new IronSourceError(605, th.getLocalizedMessage()));
                a(IronSourceConstants.TROUBLESHOOTING_BN_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_loadException)}, new Object[]{"reason", th.getLocalizedMessage()}});
            }
        }
    }

    @Override // com.json.z1
    public Map<String, Object> a(AdData adData) {
        AbstractAdapter abstractAdapter;
        JSONObject jSONObjectA = adData != null ? k8.a(adData.getAdUnitData()) : null;
        if (!p() || (abstractAdapter = this.a) == null) {
            return null;
        }
        return abstractAdapter.getBannerBiddingData(this.f6233d, jSONObjectA);
    }

    @Override // com.ironsource.ub.a
    public void a() {
        IronSourceError ironSourceError;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(f());
        a aVar = a.INIT_IN_PROGRESS;
        a aVar2 = a.LOAD_FAILED;
        if (I(aVar, aVar2)) {
            ironLog.verbose("init timed out");
            ironSourceError = new IronSourceError(607, "Timed out");
        } else {
            if (!I(a.LOADING, aVar2)) {
                ironLog.error("unexpected state - " + this.j);
                return;
            }
            ironLog.verbose("load timed out");
            ironSourceError = new IronSourceError(608, "Timed out");
        }
        G(ironSourceError);
    }

    public void a(int i) {
        a(i, (Object[][]) null);
    }

    public void a(int i, Object[][] objArr) {
        Map<String, Object> mapM = m();
        if (D()) {
            mapM.put("reason", "banner is destroyed");
        } else {
            IronSourceBannerLayout ironSourceBannerLayout = this.l;
            if (ironSourceBannerLayout != null) {
                l.a(mapM, ironSourceBannerLayout.getSize());
            }
        }
        if (!TextUtils.isEmpty(this.m)) {
            mapM.put("auctionId", this.m);
        }
        JSONObject jSONObject = this.n;
        if (jSONObject != null && jSONObject.length() > 0) {
            mapM.put("genericParams", this.n);
        }
        m1 m1Var = this.q;
        if (m1Var != null) {
            mapM.put("placement", m1Var.getPlacementName());
        }
        if (J(i)) {
            q7.i().a(mapM, this.o, this.p);
        }
        mapM.put("sessionDepth", Integer.valueOf(this.f6235f));
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    mapM.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronLog.INTERNAL.error(c() + " smash: BN sendMediationEvent " + Log.getStackTraceString(e2));
            }
        }
        q7.i().a(new a4(i, new JSONObject(mapM)));
    }

    public void a(IronSourceBannerLayout ironSourceBannerLayout, m1 m1Var, String str, JSONObject jSONObject) {
        ra raVar;
        IronSourceError ironSourceError;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(f());
        this.q = m1Var;
        this.v = jSONObject;
        if (!l.d(ironSourceBannerLayout)) {
            String str2 = ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed";
            ironLog.verbose(str2);
            raVar = this.k;
            ironSourceError = new IronSourceError(610, str2);
        } else {
            if (this.a != null) {
                this.l = ironSourceBannerLayout;
                this.i.a((ub.a) this);
                try {
                    if (p()) {
                        a(str, this.v);
                    } else {
                        C();
                    }
                    return;
                } catch (Throwable th) {
                    IronLog.INTERNAL.error("exception = " + th.getLocalizedMessage());
                    th.printStackTrace();
                    onBannerAdLoadFailed(new IronSourceError(605, th.getLocalizedMessage()));
                    return;
                }
            }
            ironLog.verbose("mAdapter is null");
            raVar = this.k;
            ironSourceError = new IronSourceError(611, "mAdapter is null");
        }
        raVar.a(ironSourceError, this, false);
    }

    @Override // com.json.z1
    public void a(AdData adData, BiddingDataCallback biddingDataCallback) {
        a(IronSourceConstants.BN_INSTANCE_COLLECT_TOKEN);
        try {
            this.a.collectBannerBiddingData(this.f6233d, adData != null ? k8.a(adData.getAdUnitData()) : null, biddingDataCallback);
        } catch (Throwable th) {
            IronLog.INTERNAL.error("Exception while trying to collectBannerBiddingData from " + this.a.getProviderName() + ", exception =  " + th.getLocalizedMessage());
            th.printStackTrace();
        }
    }

    @Override // com.json.mediationsdk.a0
    public IronSource.AD_UNIT d() {
        return IronSource.AD_UNIT.BANNER;
    }

    @Override // com.json.mediationsdk.a0
    public String k() {
        return "ProgBannerSmash";
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdClicked() {
        IronLog.INTERNAL.verbose(f());
        a(3008);
        ra raVar = this.k;
        if (raVar != null) {
            raVar.b(this);
        }
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLeftApplication() {
        IronLog.INTERNAL.verbose(f());
        a(3304);
        ra raVar = this.k;
        if (raVar != null) {
            raVar.c(this);
        }
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLoadFailed(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose(y() + "error = " + ironSourceError);
        this.i.e();
        if (I(a.LOADING, a.LOAD_FAILED)) {
            G(ironSourceError);
        }
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLoaded(View view, FrameLayout.LayoutParams layoutParams) {
        IronLog.INTERNAL.verbose(f());
        this.i.e();
        if (!I(a.LOADING, a.LOADED)) {
            a(this.t ? IronSourceConstants.BN_INSTANCE_UNEXPECTED_RELOAD_SUCCESS : IronSourceConstants.BN_INSTANCE_UNEXPECTED_LOAD_SUCCESS);
            return;
        }
        a(this.t ? IronSourceConstants.BN_INSTANCE_RELOAD_SUCCESS : 3005, new Object[][]{new Object[]{"duration", Long.valueOf(t3.a(this.s))}});
        ra raVar = this.k;
        if (raVar != null) {
            raVar.a(this, view, layoutParams);
        }
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdScreenDismissed() {
        IronLog.INTERNAL.verbose(f());
        a(IronSourceConstants.BN_INSTANCE_DISMISS_SCREEN);
        ra raVar = this.k;
        if (raVar != null) {
            raVar.e(this);
        }
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdScreenPresented() {
        IronLog.INTERNAL.verbose(f());
        a(IronSourceConstants.BN_INSTANCE_PRESENT_SCREEN);
        ra raVar = this.k;
        if (raVar != null) {
            raVar.d(this);
        }
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdShown() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(f());
        if (E()) {
            a(3009);
            ra raVar = this.k;
            if (raVar != null) {
                raVar.a(this);
                return;
            }
            return;
        }
        ironLog.warning("wrong state - mState = " + this.j);
        a(IronSourceConstants.TROUBLESHOOTING_BN_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1}, new Object[]{"reason", "Wrong State - " + this.j}, new Object[]{IronSourceConstants.EVENTS_EXT1, c()}});
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitFailed(IronSourceError ironSourceError) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(y() + "error = " + ironSourceError);
        this.i.e();
        if (I(a.INIT_IN_PROGRESS, a.NONE)) {
            ra raVar = this.k;
            if (raVar != null) {
                raVar.a(ironSourceError, this, false);
                return;
            }
            return;
        }
        ironLog.warning("wrong state - mState = " + this.j);
    }

    @Override // com.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitSuccess() {
        IronLog.INTERNAL.verbose(f());
        if (I(a.INIT_IN_PROGRESS, a.READY_TO_LOAD)) {
            if (this.u) {
                this.u = false;
            } else {
                if (p()) {
                    return;
                }
                if (l.d(this.l)) {
                    a((String) null, this.v);
                } else {
                    this.k.a(new IronSourceError(605, this.l == null ? "banner is null" : "banner is destroyed"), this, false);
                }
            }
        }
    }

    @Override // com.json.mediationsdk.a0
    public void q() {
        this.i.d();
        super.q();
    }

    public void t() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(f());
        a(3305);
        H(a.DESTROYED);
        AbstractAdapter abstractAdapter = this.a;
        if (abstractAdapter == null) {
            ironLog.warning("mAdapter == null");
            return;
        }
        try {
            abstractAdapter.destroyBanner(this.b.h().getBannerSettings());
        } catch (Throwable th) {
            IronLog.INTERNAL.error("Exception while trying to destroy banner from " + this.a.getProviderName() + ", exception =  " + th.getLocalizedMessage());
            th.printStackTrace();
            a(IronSourceConstants.TROUBLESHOOTING_BN_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.errorCode_destroy)}, new Object[]{"reason", th.getLocalizedMessage()}});
        }
    }

    public String v() {
        return !TextUtils.isEmpty(this.b.h().getAdSourceNameForEvents()) ? this.b.h().getAdSourceNameForEvents() : i();
    }

    public AbstractAdapter w() {
        return this.a;
    }

    public String x() {
        return this.m;
    }

    public String y() {
        return String.format("%s - ", f());
    }

    public String z() {
        return this.b.i();
    }
}
