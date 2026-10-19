package com.json;

import android.content.Context;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.json.a2;
import com.json.environment.ContextProvider;
import com.json.environment.NetworkStateReceiver;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.mediationsdk.AuctionRequestParams;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceSegment;
import com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.h;
import com.json.mediationsdk.impressionData.ImpressionData;
import com.json.mediationsdk.impressionData.ImpressionDataListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.n;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.t1;
import com.json.v;
import com.json.y;
import com.json.z6;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class q1<Smash extends t1<?>, Listener extends AdapterAdListener> implements a0, t0, u, a9, s9, i, hd, y1, pa {
    private AdInfo A;
    private o8 B;
    private boolean E;
    private dc F;
    private x7 H;
    protected gd<Smash> a;
    protected ConcurrentHashMap<String, h.a> b;
    protected com.json.mediationsdk.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected h f6518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f6519e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected JSONObject f6521g;
    protected d1 h;
    protected Placement i;
    private NetworkStateReceiver k;
    protected rb l;
    protected t3 m;
    protected t3 n;
    protected l o;
    protected f p;
    protected z q;
    protected k4 r;
    protected v s;
    protected x t;
    protected r u;
    protected IronSourceSegment v;
    private Boolean z;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f6520f = "";
    protected boolean j = false;
    protected final Object x = new Object();
    private long y = 0;
    private AtomicBoolean G = new AtomicBoolean(false);
    protected UUID w = UUID.randomUUID();
    final z6 C = e9.h().d();
    final z6.a D = e9.g().b();

    class a extends jb {
        a() {
        }

        @Override // com.json.jb
        public void a() {
            q1.this.q0();
        }
    }

    class b implements Runnable {
        final /* synthetic */ NetworkSettings a;

        b(NetworkSettings networkSettings) {
            this.a = networkSettings;
        }

        @Override // java.lang.Runnable
        public void run() {
            q1.this.T(this.a);
        }
    }

    class c extends TimerTask {
        c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            q1.this.s0();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q1.this.f6521g = new JSONObject();
            q1.this.s.i.a();
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList2 = new ArrayList();
            q1.this.O(map, arrayList, sb, arrayList2);
            if (q1.this.o.getCollectBiddingDataAsyncEnabled()) {
                q1.this.E(map, arrayList, sb, arrayList2);
            } else {
                q1.this.D(map, arrayList, sb.toString());
            }
        }
    }

    class e implements a2.b {
        final /* synthetic */ Map a;
        final /* synthetic */ StringBuilder b;
        final /* synthetic */ List c;

        e(Map map, StringBuilder sb, List list) {
            this.a = map;
            this.b = sb;
            this.c = list;
        }

        @Override // com.ironsource.a2.b
        public void a(List<b2> list, long j, List<String> list2) {
            q1.this.s.h.a(j);
            for (b2 b2Var : list) {
                NetworkSettings networkSettingsA = q1.this.o.a(b2Var.c());
                Map<String, Object> mapR = q1.this.r(networkSettingsA, com.json.mediationsdk.c.b().b(networkSettingsA, q1.this.o.getAdUnit(), q1.this.h()));
                if (b2Var.a() != null) {
                    this.a.put(b2Var.c(), b2Var.a());
                    StringBuilder sb = this.b;
                    sb.append(b2Var.d());
                    sb.append(b2Var.c());
                    sb.append(",");
                    q1.this.s.h.a(mapR, b2Var.e());
                } else {
                    q1.this.s.h.a(mapR, b2Var.e(), b2Var.b());
                }
            }
            Iterator<String> it = list2.iterator();
            while (it.hasNext()) {
                NetworkSettings networkSettingsA2 = q1.this.o.a(it.next());
                q1.this.s.h.b(q1.this.r(networkSettingsA2, com.json.mediationsdk.c.b().b(networkSettingsA2, q1.this.o.getAdUnit(), q1.this.h())), j);
            }
            q1.this.D(this.a, this.c, this.b.toString());
        }

        @Override // com.ironsource.a2.b
        public void onFailure(String str) {
            q1.this.s.h.a(str);
            q1.this.D(this.a, this.c, this.b.toString());
        }
    }

    protected enum f {
        NONE,
        READY_TO_LOAD,
        AUCTION,
        LOADING,
        READY_TO_SHOW,
        SHOWING
    }

    public q1(l lVar, o8 o8Var, IronSourceSegment ironSourceSegment, boolean z) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("adUnit = " + lVar.getAdUnit() + ", loading mode = " + lVar.getLoadingData().a());
        StringBuilder sb = new StringBuilder();
        sb.append(lVar.getAdUnit());
        sb.append(" initiated object per waterfall mode");
        IronSourceUtils.sendAutomationLog(sb.toString());
        t3 t3Var = new t3();
        this.H = o(lVar);
        this.v = ironSourceSegment;
        this.o = lVar;
        this.s = new v(lVar.getAdUnit(), v.b.MEDIATION, this);
        this.t = X();
        this.q = new z(this.o.getLoadingData(), this);
        w(f.NONE);
        this.B = o8Var;
        this.a = new gd<>(this.o.getAuctionSettings().f(), this.o.getAuctionSettings().i(), this);
        this.s.f6679f.a(g0(), this.o.getLoadingData().a().toString());
        this.b = new ConcurrentHashMap<>();
        this.i = null;
        g();
        this.f6521g = new JSONObject();
        if (this.o.r()) {
            this.c = new com.json.mediationsdk.e(new com.json.mediationsdk.f(this.o.getAuctionSettings(), z, IronSourceUtils.getSessionId()));
        }
        this.f6518d = new h(this.o.j(), this.o.getAuctionSettings().c());
        k0();
        j0();
        this.m = new t3();
        w(f.READY_TO_LOAD);
        this.r = new k4(lVar.getAdExpirationInMinutes(), this);
        this.u = new r();
        this.s.f6679f.a(t3.a(t3Var));
        if (this.o.getLoadingData().e()) {
            ironLog.verbose("first automatic load");
            w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(Map<String, Object> map, List<String> list, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(J("auction waterfallString = " + str));
        boolean z = false;
        if (map.size() == 0 && list.size() == 0) {
            ironLog.verbose(J("auction failed - no candidates"));
            this.s.i.a(1005, "No candidates available for auctioning");
            t(s.e(this.o.getAdUnit()), "no available ad to load", false);
            return;
        }
        this.s.i.b(str);
        if (this.c == null) {
            ironLog.error(J("mAuctionHandler is null"));
            return;
        }
        int iA = this.C.a(this.o.getAdUnit());
        AuctionRequestParams auctionRequestParams = new AuctionRequestParams(this.o.getAdUnit());
        auctionRequestParams.b(IronSourceUtils.isEncryptedResponse());
        auctionRequestParams.a(map);
        auctionRequestParams.a(list);
        auctionRequestParams.a(this.f6518d);
        auctionRequestParams.a(iA);
        auctionRequestParams.a(this.v);
        auctionRequestParams.d(this.E);
        dc dcVar = this.F;
        if (dcVar != null && dcVar.a()) {
            z = true;
        }
        auctionRequestParams.e(z);
        u(ContextProvider.getInstance().getApplicationContext(), auctionRequestParams, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(Map<String, Object> map, List<String> list, StringBuilder sb, List<x1> list2) {
        if (list2.isEmpty()) {
            D(map, list, sb.toString());
            return;
        }
        a2 a2Var = new a2();
        e eVar = new e(map, sb, list);
        this.s.h.a();
        a2Var.a(list2, eVar, this.o.getCollectBiddingDataTimeout(), TimeUnit.MILLISECONDS);
    }

    private void G(JSONObject jSONObject) {
        this.u.a(this.o.getAdUnit(), jSONObject != null ? jSONObject.optBoolean(com.json.mediationsdk.d.f6255f, false) : false);
        P(jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(Map<String, Object> map, List<String> list, StringBuilder sb, List<x1> list2) {
        StringBuilder sb2;
        String providerName;
        String string;
        StringBuilder sb3;
        String str;
        for (NetworkSettings networkSettings : this.o.j()) {
            dc dcVar = this.F;
            if (dcVar == null || dcVar.a(networkSettings, this.o.getAdUnit())) {
                if (!this.l.b(new qb(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(this.o.getAdUnit()))) && W(networkSettings)) {
                    AdData adDataM = m(networkSettings, null);
                    if (networkSettings.isBidder(this.o.getAdUnit())) {
                        AdapterBaseInterface adapterBaseInterfaceB = com.json.mediationsdk.c.b().b(networkSettings, this.o.getAdUnit(), h());
                        if (!(adapterBaseInterfaceB instanceof z1)) {
                            if (adapterBaseInterfaceB == null) {
                                sb2 = new StringBuilder();
                                sb2.append("prepareAuctionCandidates - could not load network adapter ");
                                providerName = networkSettings.getProviderName();
                            } else {
                                sb2 = new StringBuilder();
                                sb2.append("network adapter ");
                                sb2.append(networkSettings.getProviderName());
                                providerName = " does not implementing BiddingDataInterface";
                            }
                            sb2.append(providerName);
                            string = sb2.toString();
                        } else if (this.o.getCollectBiddingDataAsyncEnabled()) {
                            list2.add(new x1(networkSettings.getInstanceType(this.o.getAdUnit()), networkSettings.getProviderInstanceName(), adDataM, (z1) adapterBaseInterfaceB, this, networkSettings));
                        } else {
                            try {
                                Map<String, Object> mapA = ((z1) adapterBaseInterfaceB).a(adDataM);
                                if (mapA != null) {
                                    map.put(networkSettings.getProviderInstanceName(), mapA);
                                    sb.append(networkSettings.getInstanceType(this.o.getAdUnit()));
                                    sb.append(networkSettings.getProviderInstanceName());
                                    sb.append(",");
                                } else {
                                    this.s.k.a(r(networkSettings, adapterBaseInterfaceB), "Missing bidding data");
                                }
                            } catch (Exception e2) {
                                e = e2;
                                sb3 = new StringBuilder();
                                str = "prepareAuctionCandidates - exception while calling networkAdapter.getBiddingData - ";
                                sb3.append(str);
                                sb3.append(e.getMessage());
                                string = sb3.toString();
                                IronLog.INTERNAL.error(string);
                                this.s.k.c(string);
                            } catch (NoClassDefFoundError e3) {
                                e = e3;
                                sb3 = new StringBuilder();
                                str = "prepareAuctionCandidates - error while calling networkAdapter.getBiddingData - ";
                                sb3.append(str);
                                sb3.append(e.getMessage());
                                string = sb3.toString();
                                IronLog.INTERNAL.error(string);
                                this.s.k.c(string);
                            }
                        }
                        this.s.k.c(string);
                    } else {
                        list.add(networkSettings.getProviderInstanceName());
                        sb.append(networkSettings.getInstanceType(this.o.getAdUnit()));
                        sb.append(networkSettings.getProviderInstanceName());
                        sb.append(",");
                    }
                }
            }
        }
    }

    private void P(JSONObject jSONObject) {
        int i;
        try {
            if (jSONObject == null) {
                this.o.b(false);
                IronLog.INTERNAL.verbose(J("loading configuration from auction response is null, using the following: " + this.o.s()));
                return;
            }
            try {
                if (jSONObject.has(com.json.mediationsdk.d.o0) && (i = jSONObject.getInt(com.json.mediationsdk.d.o0)) > 0) {
                    this.o.a(i);
                }
                if (jSONObject.has(com.json.mediationsdk.d.p0)) {
                    this.o.a(jSONObject.getBoolean(com.json.mediationsdk.d.p0));
                }
                this.o.b(jSONObject.optBoolean(com.json.mediationsdk.d.q0, false));
            } catch (JSONException e2) {
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.error("failed to update loading configuration for" + this.o.getAdUnit() + " Error: " + e2.getMessage());
                ironLog.verbose(J(this.o.s()));
            }
        } finally {
            IronLog.INTERNAL.verbose(J(this.o.s()));
        }
    }

    private boolean R(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        if (this.a.a(adapterBaseInterface, this.o.getAdUnit(), networkSettings.getProviderInstanceName())) {
            return false;
        }
        return networkSettings.shouldEarlyInit() || networkSettings.isIronSource() || networkSettings.isBidder(this.o.getAdUnit());
    }

    private boolean S(t tVar) {
        return (tVar == t.INIT_STARTED || tVar == t.LOAD_AD || tVar == t.AUCTION_REQUEST || tVar == t.AUCTION_REQUEST_WATERFALL || tVar == t.AUCTION_FAILED_NO_CANDIDATES || tVar == t.COLLECT_TOKEN || tVar == t.COLLECT_TOKENS_COMPLETED || tVar == t.COLLECT_TOKENS_FAILED || tVar == t.INSTANCE_COLLECT_TOKEN || tVar == t.INSTANCE_COLLECT_TOKEN_SUCCESS || tVar == t.INSTANCE_COLLECT_TOKEN_FAILED || tVar == t.INSTANCE_COLLECT_TOKEN_TIMED_OUT) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(NetworkSettings networkSettings) {
        IronLog.INTERNAL.verbose(J(String.format("Start initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName())));
        AdData adDataM = m(networkSettings, this.o.getUserId());
        AdapterBaseInterface adapterBaseInterfaceB = com.json.mediationsdk.c.b().b(networkSettings, this.o.getAdUnit(), h());
        if (adapterBaseInterfaceB != null) {
            try {
                adapterBaseInterfaceB.init(adDataM, ContextProvider.getInstance().getApplicationContext(), null);
            } catch (Exception e2) {
                this.s.k.c("initProvider - exception while calling networkAdapter.init with " + networkSettings.getProviderName() + " - " + e2);
            }
        }
        IronLog.INTERNAL.verbose(J(String.format("Done initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName())));
    }

    private boolean U(t tVar) {
        return tVar == t.LOAD_AD_SUCCESS || tVar == t.LOAD_AD_FAILED || tVar == t.LOAD_AD_FAILED_WITH_REASON || tVar == t.AUCTION_SUCCESS || tVar == t.AUCTION_FAILED || tVar == t.AD_UNIT_CAPPED;
    }

    private boolean V(boolean z) {
        Boolean bool = this.z;
        if (bool == null) {
            return false;
        }
        return (z && !bool.booleanValue() && q()) || (!z && this.z.booleanValue());
    }

    private boolean W(NetworkSettings networkSettings) {
        AdapterBaseInterface adapterBaseInterfaceB = com.json.mediationsdk.c.b().b(networkSettings, this.o.getAdUnit(), h());
        if (adapterBaseInterfaceB instanceof AdapterSettingsInterface) {
            return this.a.a(this.o.getLoadingData().a(), networkSettings.getProviderInstanceName(), networkSettings.getProviderTypeForReflection(), ((AdapterSettingsInterface) adapterBaseInterfaceB).getLoadWhileShowSupportedState(networkSettings), adapterBaseInterfaceB, this.o.getAdUnit());
        }
        return false;
    }

    private List<d1> Z() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (NetworkSettings networkSettings : this.o.j()) {
            if (!networkSettings.isBidder(this.o.getAdUnit()) && W(networkSettings)) {
                qb qbVar = new qb(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(this.o.getAdUnit()));
                if (!this.l.b(qbVar)) {
                    copyOnWriteArrayList.add(new d1(qbVar.c()));
                }
            }
        }
        return copyOnWriteArrayList;
    }

    private kd<Smash> e() {
        IronLog.INTERNAL.verbose();
        return new jd(this.o).d(this.a.b());
    }

    private void f() {
        this.u.a(this.o.getAdUnit(), false);
    }

    private int h0() {
        return 1;
    }

    private void j() {
        IronLog.INTERNAL.verbose(Y());
        synchronized (this.x) {
            f fVar = this.p;
            f fVar2 = f.AUCTION;
            if (fVar == fVar2) {
                return;
            }
            w(fVar2);
            this.G.set(false);
            long jK = this.o.getAuctionSettings().k() - t3.a(this.m);
            if (jK > 0) {
                new Timer().schedule(new c(), jK);
            } else {
                s0();
            }
        }
    }

    private void j0() {
        IronLog.INTERNAL.verbose(Y());
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : this.o.j()) {
            if (R(networkSettings, com.json.mediationsdk.c.b().b(networkSettings, this.o.getAdUnit(), h()))) {
                arrayList.add(new b(networkSettings));
            }
        }
        IronSourceThreadManager.INSTANCE.executeTasks(this.o.getProvidersParallelInit(), this.o.getWaitUntilAllProvidersFinishInit(), arrayList);
    }

    private void k() {
        IronLog.INTERNAL.verbose(Y());
        q(Z(), e0());
    }

    private void k0() {
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : this.o.j()) {
            arrayList.add(new qb(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(this.o.getAdUnit())));
        }
        this.l = new rb(arrayList);
    }

    private Smash n(d1 d1Var, String str) {
        NetworkSettings networkSettingsA = this.o.a(d1Var.c());
        if (networkSettingsA != null) {
            com.json.mediationsdk.c.b().b(networkSettingsA, this.o.getAdUnit(), h());
            BaseAdAdapter<?, Listener> baseAdAdapterL = l(networkSettingsA, this.o.getAdUnit());
            if (baseAdAdapterL != null) {
                Smash smash = (Smash) a(networkSettingsA, baseAdAdapterL, this.C.a(this.o.getAdUnit()), str, d1Var);
                this.b.put(d1Var.c(), h.a.ISAuctionPerformanceDidntAttemptToLoad);
                return smash;
            }
            IronLog.INTERNAL.error(J("addSmashToWaterfall - could not load ad adapter for " + networkSettingsA.getProviderInstanceName()));
        } else {
            String str2 = "could not find matching provider settings for auction response item - item = " + d1Var.c() + " state = " + this.p;
            IronLog.INTERNAL.error(J(str2));
            this.s.k.d(str2);
        }
        return null;
    }

    private x7 o(l lVar) {
        if (lVar.getThreadPerManager()) {
            return IronSourceThreadManager.INSTANCE.createAndStartThread(String.format("%s_%s", lVar.getAdUnit().name(), Integer.valueOf(hashCode())));
        }
        if (lVar.getSharedManagersThread()) {
            return IronSourceThreadManager.INSTANCE.getSharedManagersThread();
        }
        return null;
    }

    private String q(List<d1> list, String str) {
        IronLog.INTERNAL.verbose(J("waterfall.size() = " + list.size()));
        this.b.clear();
        StringBuilder sb = new StringBuilder();
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (int i = 0; i < list.size(); i++) {
            d1 d1Var = list.get(i);
            t1 t1VarN = n(d1Var, str);
            if (t1VarN != null) {
                copyOnWriteArrayList.add(t1VarN);
                sb.append(p(d1Var, t1VarN.l()));
            }
            if (i != list.size() - 1) {
                sb.append(",");
            }
        }
        this.a.a(this.o.getLoadingData().a(), (CopyOnWriteArrayList<Smash>) copyOnWriteArrayList, str);
        IronLog.INTERNAL.verbose(J("updateWaterfall() - next waterfall is " + ((Object) sb)));
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0() {
        f fVar;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(Y());
        synchronized (this.x) {
            if (this.o.getLoadingData().e() && this.l.a()) {
                ironLog.verbose(J("all smashes are capped"));
                t(s.a(this.o.getAdUnit()), "all smashes are capped", false);
                return;
            }
            y.a aVarA = this.o.getLoadingData().a();
            y.a aVar = y.a.AUTOMATIC_LOAD_WHILE_SHOW;
            if (aVarA != aVar && this.p == f.SHOWING) {
                IronLog.API.error(J("load cannot be invoked while showing an ad"));
                IronSourceError ironSourceError = new IronSourceError(s.d(this.o.getAdUnit()), "load cannot be invoked while showing an ad");
                if (this.o.getLoadingData().f()) {
                    v(ironSourceError, l0());
                } else {
                    this.t.a(false, (AdInfo) null);
                }
                return;
            }
            if (this.o.getLoadingData().a() != aVar && (((fVar = this.p) != f.READY_TO_LOAD && fVar != f.READY_TO_SHOW) || n.a().b(this.o.getAdUnit()))) {
                IronLog.API.error(J("load is already in progress"));
                return;
            }
            this.f6521g = new JSONObject();
            f();
            if (l0()) {
                this.s.f6680g.a();
            } else {
                this.s.f6680g.a(i0());
            }
            this.n = new t3();
            if (this.o.r()) {
                if (!this.b.isEmpty()) {
                    this.f6518d.a(this.b);
                    this.b.clear();
                }
                j();
            } else {
                w(f.LOADING);
            }
            if (this.o.r()) {
                return;
            }
            ironLog.verbose(J("auction disabled"));
            k();
            r0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> r(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        HashMap map = new HashMap();
        try {
            map.put(IronSourceConstants.EVENTS_PROVIDER, networkSettings.getProviderDefaultInstance());
            map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, adapterBaseInterface.getAdapterVersion());
            map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, adapterBaseInterface.getNetworkSDKVersion());
            map.put(IronSourceConstants.EVENTS_SUB_PROVIDER_ID, networkSettings.getSubProviderId());
            map.put("instanceType", Integer.valueOf(networkSettings.getInstanceType(this.o.getAdUnit())));
            map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, Integer.valueOf(h0()));
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.INTERNAL, "getProviderEventData " + networkSettings.getProviderDefaultInstance(), e2);
        }
        return map;
    }

    private void r0() {
        kd<Smash> kdVarE = e();
        if (kdVarE.c()) {
            t(509, "Mediation No fill", false);
        }
        Iterator<Smash> it = kdVarE.a().iterator();
        while (it.hasNext()) {
            it.next().D();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        IronLog.INTERNAL.verbose(Y());
        AsyncTask.execute(new d());
    }

    protected void B(t1<?> t1Var, AdInfo adInfo) {
        this.t.c(adInfo);
    }

    protected void C(x xVar) {
        this.t = xVar;
    }

    public void F() {
        Iterator<NetworkSettings> it = this.o.j().iterator();
        while (it.hasNext()) {
            com.json.mediationsdk.c.b().b(it.next(), this.o.getAdUnit(), h());
        }
    }

    protected void H(boolean z, boolean z2, t1<?> t1Var) {
        synchronized (this.x) {
            Boolean bool = this.z;
            if (bool == null || bool.booleanValue() != z) {
                this.z = Boolean.valueOf(z);
                long time = 0;
                if (this.y != 0) {
                    time = new Date().getTime() - this.y;
                }
                this.y = new Date().getTime();
                this.s.f6680g.a(z, time, z2);
                AdInfo adInfoF = t1Var != null ? t1Var.f() : this.A;
                this.A = adInfoF;
                x xVar = this.t;
                if (!z) {
                    adInfoF = null;
                }
                xVar.a(z, adInfoF);
            }
        }
    }

    protected boolean I(f fVar, f fVar2) {
        boolean z;
        synchronized (this.x) {
            if (this.p == fVar) {
                z = true;
                this.p = fVar2;
            } else {
                z = false;
            }
        }
        return z;
    }

    protected String J(String str) {
        String strName = this.o.getAdUnit().name();
        if (TextUtils.isEmpty(str)) {
            return strName;
        }
        return strName + " - " + str;
    }

    protected abstract JSONObject K(NetworkSettings networkSettings);

    protected void L(d1 d1Var, String str) {
        if (d1Var == null) {
            IronLog.INTERNAL.error(J("reportImpressionDataToPublisher - no auctionResponseItem or listener"));
            v vVar = this.s;
            if (vVar != null) {
                vVar.k.c("reportImpressionDataToPublisher - no auctionResponseItem or listener");
                return;
            }
            return;
        }
        ImpressionData impressionDataA = d1Var.a(str);
        if (impressionDataA != null) {
            for (ImpressionDataListener impressionDataListener : new HashSet(this.B.a())) {
                IronLog.CALLBACK.info(J("onImpressionSuccess " + impressionDataListener.getClass().getSimpleName() + ": " + impressionDataA));
                impressionDataListener.onImpressionSuccess(impressionDataA);
            }
        }
    }

    protected void Q(boolean z) {
        H(false, z, null);
    }

    protected abstract x X();

    protected String Y() {
        return J(null);
    }

    protected abstract Smash a(NetworkSettings networkSettings, BaseAdAdapter<?, Listener> baseAdAdapter, int i, String str, d1 d1Var);

    public Map<String, Object> a(t tVar) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        JSONObject jSONObject = this.f6521g;
        if (jSONObject != null && jSONObject.length() > 0) {
            map.put("genericParams", this.f6521g);
        }
        map.put("sessionDepth", Integer.valueOf(this.C.a(this.o.getAdUnit())));
        if (U(tVar)) {
            map.put(IronSourceConstants.AUCTION_TRIALS, Integer.valueOf(this.f6519e));
            if (!TextUtils.isEmpty(this.f6520f)) {
                map.put(IronSourceConstants.AUCTION_FALLBACK, this.f6520f);
            }
        }
        if (S(tVar) && !TextUtils.isEmpty(this.a.c())) {
            map.put("auctionId", this.a.c());
        }
        return map;
    }

    public void a() {
        IronLog.INTERNAL.verbose(Y());
        w();
    }

    @Override // com.json.hd
    public void a(int i) {
        this.s.k.q("waterfalls hold too many with size = " + i);
    }

    @Override // com.json.t0
    public void a(int i, String str, int i2, String str2, long j) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(Y());
        if (!o0()) {
            String str3 = "unexpected auction fail - error = " + i + ", " + str + " state = " + this.p;
            ironLog.error(J(str3));
            this.s.k.e(str3);
            return;
        }
        String str4 = "Auction failed | moving to fallback waterfall (error " + i + " - " + str + ")";
        ironLog.verbose(J(str4));
        IronSourceUtils.sendAutomationLog(c0() + ": " + str4);
        this.f6519e = i2;
        this.f6520f = str2;
        this.f6521g = new JSONObject();
        k();
        this.s.i.a(j, i, str);
        w(f.LOADING);
        r0();
    }

    public void a(Context context, boolean z) {
        IronLog.INTERNAL.verbose(J("track = " + z));
        try {
            this.j = z;
            if (z) {
                if (this.k == null) {
                    this.k = new NetworkStateReceiver(context, this);
                }
                context.getApplicationContext().registerReceiver(this.k, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } else if (this.k != null) {
                context.getApplicationContext().unregisterReceiver(this.k);
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error("Got an error from receiver with message: " + e2.getMessage());
        }
    }

    public void a(dc dcVar) {
        this.F = dcVar;
        this.E = dcVar != null;
        this.z = null;
    }

    public void a(IronSourceSegment ironSourceSegment) {
        this.v = ironSourceSegment;
    }

    @Override // com.json.a0
    public void a(IronSourceError ironSourceError, t1<?> t1Var) {
        kd<Smash> kdVarE;
        t1<?> t1VarC;
        synchronized (this.x) {
            IronLog ironLog = IronLog.INTERNAL;
            ironLog.verbose(J(t1Var.k() + " - error = " + ironSourceError));
            if (t1Var.h().equals(this.a.c()) && this.p != f.AUCTION) {
                this.b.put(t1Var.c(), h.a.ISAuctionPerformanceFailedToLoad);
                if (p0() || n0()) {
                    kdVarE = e();
                    if (kdVarE.c()) {
                        t(509, "Mediation No fill", false);
                        return;
                    }
                } else {
                    kdVarE = null;
                }
                if (kdVarE == null) {
                    return;
                }
                if (this.o.getShowPriorityEnabled()) {
                    synchronized (this.x) {
                        if (kdVarE.b() && m0() && (t1VarC = new jd(this.o).c(this.a.b())) != null) {
                            d0(t1VarC);
                        }
                    }
                }
                Iterator<Smash> it = kdVarE.a().iterator();
                while (it.hasNext()) {
                    it.next().D();
                }
                return;
            }
            ironLog.error(J("onAdLoadFailed was invoked from " + t1Var.c() + " with state =" + this.p + " auctionId: " + t1Var.h() + " and the current id is " + this.a.c()));
            vc vcVar = this.s.k;
            StringBuilder sb = new StringBuilder();
            sb.append("onAdLoadFailed was invoked with state =");
            sb.append(this.p);
            vcVar.j(sb.toString());
        }
    }

    @Override // com.json.y1
    public void a(NetworkSettings networkSettings) {
        AdapterBaseInterface adapterBaseInterfaceB = com.json.mediationsdk.c.b().b(networkSettings, this.o.getAdUnit(), h());
        if (adapterBaseInterfaceB != null) {
            this.s.h.a(r(networkSettings, adapterBaseInterfaceB));
        }
    }

    @Override // com.json.pa
    public void a(Runnable runnable) {
        x7 x7Var = this.H;
        if (x7Var != null) {
            x7Var.a(runnable);
        }
    }

    @Override // com.json.y1
    public void a(String str) {
        this.s.k.c(str);
    }

    @Override // com.json.t0
    public void a(List<d1> list, String str, d1 d1Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(Y());
        if (!o0()) {
            ironLog.error(J("unexpected auction success for auctionId - " + str + " state = " + this.p));
            vc vcVar = this.s.k;
            StringBuilder sb = new StringBuilder();
            sb.append("unexpected auction success, state = ");
            sb.append(this.p);
            vcVar.f(sb.toString());
            return;
        }
        this.f6520f = "";
        this.f6519e = i;
        this.h = d1Var;
        this.f6521g = jSONObject;
        if (!TextUtils.isEmpty(str2)) {
            this.s.k.a(i2, str2);
        }
        G(jSONObject2);
        if (this.u.a(this.o.getAdUnit())) {
            this.s.i.a(str);
            t(IronSourceError.ERROR_AD_UNIT_CAPPED, "Ad unit is capped", true);
            return;
        }
        String strQ = q(list, str);
        this.s.i.a(j, this.o.s());
        this.s.i.c(strQ);
        w(f.LOADING);
        r0();
    }

    @Override // com.json.s9
    public void a(boolean z) {
        if (!this.j || this.o.getLoadingData().f()) {
            return;
        }
        IronLog.INTERNAL.verbose("network availability changed to - " + z);
        if (V(z)) {
            H(z, false, null);
        }
    }

    protected void a0(t1<?> t1Var) {
        this.t.d(t1Var.f());
    }

    @Override // com.json.i
    public void b() {
        if (this.o.getLoadingData().e()) {
            w(f.READY_TO_LOAD);
            Q(true);
            w();
        }
    }

    @Override // com.json.a0
    public void b(t1<?> t1Var) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(J(t1Var.k()));
        this.s.j.e(f0());
        this.a.a(t1Var);
        this.l.a(t1Var);
        if (this.l.b(t1Var)) {
            ironLog.verbose(J(t1Var.c() + " was session capped"));
            t1Var.M();
            IronSourceUtils.sendAutomationLog(t1Var.c() + " was session capped");
        }
        com.json.mediationsdk.utils.b.a(ContextProvider.getInstance().getApplicationContext(), f0(), this.o.getAdUnit());
        if (com.json.mediationsdk.utils.b.b(ContextProvider.getInstance().getApplicationContext(), f0(), this.o.getAdUnit())) {
            ironLog.verbose(J("placement " + f0() + " is capped"));
            this.s.j.i(f0());
        }
        this.D.b(this.o.getAdUnit());
        if (this.o.r()) {
            d1 d1VarI = t1Var.i();
            this.c.a(d1VarI, t1Var.l(), this.h, f0());
            this.b.put(t1Var.c(), h.a.ISAuctionPerformanceShowedSuccessfully);
            if (i()) {
                L(d1VarI, f0());
            }
        }
        a0(t1Var);
        if (this.o.getLoadingData().e()) {
            Q(false);
        }
        this.q.f();
    }

    protected void b0(t1<?> t1Var) {
        if (this.o.getLoadingData().f()) {
            B(t1Var, t1Var.f());
        } else {
            H(true, false, t1Var);
        }
    }

    @Override // com.json.pa
    public boolean c() {
        x7 x7Var = this.H;
        if (x7Var == null || x7Var == Thread.currentThread()) {
            return false;
        }
        return this.o.getThreadPerManager() || this.o.getSharedManagersThread();
    }

    protected abstract String c0();

    protected void d0(t1<?> t1Var) {
        if (this.o.r() && this.G.compareAndSet(false, true)) {
            d1 d1VarI = t1Var.i();
            this.c.a(d1VarI, t1Var.l(), this.h);
            ArrayList<String> arrayList = new ArrayList<>();
            ConcurrentHashMap<String, d1> concurrentHashMap = new ConcurrentHashMap<>();
            for (Smash smash : this.a.b()) {
                arrayList.add(smash.c());
                concurrentHashMap.put(smash.c(), smash.i());
            }
            this.c.a(arrayList, concurrentHashMap, t1Var.l(), this.h, d1VarI);
        }
    }

    @Override // com.json.a0
    public void e(t1<?> t1Var) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(J(t1Var.k()));
        if (!t1Var.h().equals(this.a.c())) {
            ironLog.error(J("invoked from " + t1Var.c() + " with state = " + this.p + " auctionId: " + t1Var.h() + " and the current id is " + this.a.c()));
            vc vcVar = this.s.k;
            StringBuilder sb = new StringBuilder();
            sb.append("onAdLoadSuccess invoked with state = ");
            sb.append(this.p);
            vcVar.k(sb.toString());
            return;
        }
        if (this.o.getShowPriorityEnabled()) {
            List<Smash> listB = this.a.b();
            jd jdVar = new jd(this.o);
            boolean zA = jdVar.a(t1Var, listB);
            synchronized (this.x) {
                if (zA) {
                    if (m0()) {
                        d0(t1Var);
                    }
                }
                if (jdVar.a(listB)) {
                    d0(jdVar.c(listB));
                }
            }
        }
        this.b.put(t1Var.c(), h.a.ISAuctionPerformanceLoadedSuccessfully);
        if (I(f.LOADING, f.READY_TO_SHOW)) {
            long jA = t3.a(this.n);
            if (l0()) {
                this.s.f6680g.a(jA);
            } else {
                this.s.f6680g.a(jA, i0());
            }
            if (this.o.getLoadingData().e()) {
                this.r.a(0L);
            }
            if (!this.o.getShowPriorityEnabled()) {
                d0(t1Var);
            }
            b0(t1Var);
        }
    }

    protected String e0() {
        return "fallback_" + System.currentTimeMillis();
    }

    @Override // com.json.a0
    public void f(t1<?> t1Var) {
        IronLog.INTERNAL.verbose(J(t1Var.k()));
        this.s.j.a(f0());
        this.t.a(this.i, t1Var.f());
    }

    protected String f0() {
        Placement placement = this.i;
        return placement == null ? "" : placement.getPlacementName();
    }

    protected void g() {
        n.a().a(this.o.getAdUnit(), this.o.getDelayLoadFailure());
    }

    abstract String g0();

    public UUID h() {
        return this.w;
    }

    protected boolean i() {
        return true;
    }

    protected boolean i0() {
        return false;
    }

    protected BaseAdAdapter<?, Listener> l(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit) {
        BaseAdAdapter<?, Listener> baseAdAdapter = (BaseAdAdapter<?, Listener>) com.json.mediationsdk.c.b().a(networkSettings, ad_unit, h());
        if (baseAdAdapter != null) {
            return baseAdAdapter;
        }
        return null;
    }

    protected abstract boolean l0();

    protected AdData m(NetworkSettings networkSettings, String str) {
        return AdData.createAdDataForNetworkAdapter(K(networkSettings), this.o.getAdUnit(), str);
    }

    protected boolean m0() {
        boolean z;
        synchronized (this.x) {
            f fVar = this.p;
            z = fVar == f.LOADING || fVar == f.READY_TO_SHOW;
        }
        return z;
    }

    protected boolean n0() {
        boolean z;
        synchronized (this.x) {
            z = this.p == f.READY_TO_SHOW;
        }
        return z;
    }

    protected boolean o0() {
        boolean z;
        synchronized (this.x) {
            z = this.p == f.AUCTION;
        }
        return z;
    }

    protected String p(d1 d1Var, int i) {
        return String.format("%s%s", Integer.valueOf(i), d1Var.c());
    }

    protected boolean p0() {
        boolean z;
        synchronized (this.x) {
            z = this.p == f.LOADING;
        }
        return z;
    }

    protected boolean q() {
        return false;
    }

    protected void t(int i, String str, boolean z) {
        w(f.READY_TO_LOAD);
        IronLog.INTERNAL.verbose(J("errorCode = " + i + ", errorReason = " + str));
        if (this.o.getLoadingData().f()) {
            if (!z) {
                this.s.f6680g.a(t3.a(this.n), i, str);
            }
            v(new IronSourceError(i, str), false);
        } else {
            if (!z) {
                this.s.k.b(i, str);
            }
            Q(false);
        }
        this.q.c();
    }

    protected void u(Context context, AuctionRequestParams auctionRequestParams, t0 t0Var) {
        com.json.mediationsdk.e eVar = this.c;
        if (eVar != null) {
            eVar.a(context, auctionRequestParams, t0Var);
        } else {
            IronLog.INTERNAL.error(J("mAuctionHandler is null"));
        }
    }

    protected void v(IronSourceError ironSourceError, boolean z) {
        n.a().b(this.o.getAdUnit(), ironSourceError, z);
    }

    public void w() {
        if (c()) {
            a(new a());
        } else {
            q0();
        }
    }

    protected void w(f fVar) {
        synchronized (this.x) {
            this.p = fVar;
        }
    }
}
